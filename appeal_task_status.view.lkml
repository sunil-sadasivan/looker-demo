view: appeal_task_status {
  derived_table: {
    # This returns all entries of vacols.folder, along side an AOD count (to replicate the vacols.aod_cnt() function in VACOLS)
    sql: SELECT *,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_task_status,
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
          ) as judge_name
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

  dimension: judge_task_status {
    type: string
    sql: ${TABLE}.judge_task_status;;
  }

  dimension: decision_signed_by_judge {
    type: yesno
    sql: ${judge_task_status} = 'completed' ;;
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

  dimension: decision_status {
    type: string
    case: {
      when: {
        sql: ${judge_task_status} is null ;;
        label: "1_not_distributed"
      }
      when: {
        sql: (${judge_task_status} = 'assigned' or ${judge_task_status} = 'in_progress') and ${attorney_task_status} is null;;
        label: "2_distributed_to_judge"
      }
      when: {
        sql: ${judge_task_status} = 'on_hold' and ${attorney_task_status} = 'assigned';;
        label: "3_assigned_to_attorney"
      }
      when: {
        sql: ${judge_task_status} = 'on_hold' and ${attorney_task_status} = 'in_progress';;
        label: "4_decision_in_progress"
      }
      when: {
        sql: (${judge_task_status} = 'assigned' or ${judge_task_status} = 'in_progress') and ${attorney_task_status} = 'completed';;
        label: "5_decision_ready_for_signature"
      }
      when: {
        sql: ${judge_task_status} = 'completed' and ${attorney_task_status} = 'completed';;
        label: "6_decision_signed"
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
      field: decision_signed_by_judge
      value: "yes"
    }
  }
}
