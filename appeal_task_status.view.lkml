view: appeal_task_status {
  derived_table: {
    # This returns all entries of vacols.folder, along side an AOD count (to replicate the vacols.aod_cnt() function in VACOLS)
    sql: SELECT *,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_task_status,
          (select tasks.started_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_task_status_started_date,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_task_status,
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_name,
          (select vacols.staff.sattyid
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_id,
          (select vacols.staff.sattyid
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_id,
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_name,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'BvaDispatchTask'
            limit 1
          ) as bva_dispatch_task_status,
          (select tasks.completed_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'BvaDispatchTask'
            limit 1
          ) as bva_dispatch_task_status_completed_date
          from public.appeals as appeals ;;
  }

  dimension: appeal_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attorney_task_status {
    type: string
    sql: ${TABLE}.attorney_task_status;;
  }

  dimension_group: attorney_task_status_started_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.attorney_task_status_started_date;;
  }

  dimension: bva_dispatch_task_status {
    type: string
    sql: ${TABLE}.bva_dispatch_task_status;;
  }

  dimension_group: bva_dispatch_task_status_completed_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.bva_dispatch_task_status_completed_date;;
  }

dimension: time_from_attorney_assignment_to_dispatch_complete {
  description: "Dispatch Completed Date - Attorney Start Date"
  type: number
  sql: ${bva_dispatch_task_status_completed_at_date} - ${attorney_task_status_started_at_date};;
}

  dimension: judge_task_status {
    type: string
    sql: ${TABLE}.judge_task_status;;
  }

  dimension: decision_signed_by_judge {
    type: yesno
    sql: ${judge_task_status} = 'completed' ;;
  }

  dimension: case_completed_by_attorney {
    type: yesno
    sql: ${attorney_task_status} = 'completed' ;;
  }

  dimension: task_judge_name {
    type: string
    sql: ${TABLE}.judge_name;;
  }

  dimension: task_attorney_name {
    type: string
    sql: ${TABLE}.attorney_name;;
  }

  dimension: task_attorney_id {
    type: string
    sql: ${TABLE}.attorney_id;;
  }

  dimension: task_judge_id {
    type: string
    sql: ${TABLE}.judge_id;;
  }

  dimension: decision_status {
    type: string
    case: {
      when: {
        sql: ${judge_task_status} is null ;;
        label: "1. Not distributed"
      }
      when: {
        sql: (${judge_task_status} = 'assigned' or ${judge_task_status} = 'in_progress') and ${attorney_task_status} is null;;
        label: "2. Distributed to judge"
      }
      when: {
        sql: ${judge_task_status} = 'on_hold' and ${attorney_task_status} = 'assigned';;
        label: "3. Assigned to attorney"
      }
      when: {
        sql: ${judge_task_status} = 'on_hold' and ${attorney_task_status} = 'in_progress';;
        label: "4. Decision in progress"
      }
      when: {
        sql: (${judge_task_status} = 'assigned' or ${judge_task_status} = 'in_progress') and ${attorney_task_status} = 'completed';;
        label: "5. Decision ready for signature"
      }
      when: {
        sql: ${judge_task_status} = 'completed' and ${attorney_task_status} = 'completed' and (${bva_dispatch_task_status} is null or ${bva_dispatch_task_status} != 'completed');;
        label: "6. Decision signed"
      }
      when: {
        sql: ${judge_task_status} = 'completed' and ${attorney_task_status} = 'completed' and ${bva_dispatch_task_status} = 'completed';;
        label: "7. Decision dispatched"
      }
      when: {
        sql: ${judge_task_status} = 'on_hold' and ${attorney_task_status} = 'on_hold';;
        label: "ON HOLD"
      }
    }
  }

  measure: num_cases_signed_by_judge {
    type: count
    drill_fields: [task_judge_name, decision_signed_by_judge]
    filters: {
      field: decision_signed_by_judge
      value: "yes"
    }
  }

  measure: num_cases_completed_by_attorney {
    type: count
    drill_fields: [task_attorney_name, decision_signed_by_judge]
    filters: {
      field: case_completed_by_attorney
      value: "yes"
    }
  }

  measure: median_attorney_start_to_dispatch_complete_days {
    description: "Median time (in days) between dispatch complete - attorney start date"
    type: median
    sql: ${time_from_attorney_assignment_to_dispatch_complete};;
    drill_fields: [appeal_id, appeal.veteran_file_number, attorney_task_status_started_at_date, bva_dispatch_task_status_completed_at_date]
  }
}