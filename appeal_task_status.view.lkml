view: appeal_task_status {
  derived_table: {
    # This returns all entries of vacols.folder, along side an AOD count (to replicate the vacols.aod_cnt() function in VACOLS)
    sql: SELECT *,
    (select max(tasks.updated_at)
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id
            limit 1
          ) as task_max_updated_at,
          (select tasks.id
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id AND tasks.type = 'AttorneyTask' AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as attorney_task_id,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND (tasks.type = 'AttorneyTask' or tasks.type = 'AttorneyRewriteTask') AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as attorney_task_status,
          (select tasks.started_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND (tasks.type = 'AttorneyTask' or tasks.type = 'AttorneyRewriteTask') AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as attorney_task_status_started_date,
          (select tasks.closed_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND (tasks.type = 'AttorneyTask' or tasks.type = 'AttorneyRewriteTask') AND tasks.appeal_type='Appeal'
            order by tasks.closed_at desc
            limit 1
          ) as attorney_task_status_completed_date,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeAssignTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as judge_assign_task_status,
          (select tasks.started_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeAssignTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as judge_assign_task_status_started_date,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeDecisionReviewTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as judge_review_task_status,
          (select tasks.started_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeDecisionReviewTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as judge_review_task_status_started_date,
          (select tasks.closed_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeDecisionReviewTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as judge_review_task_status_completed_date,
          (select tasks.status
            FROM tasks  AS tasks
              where tasks.appeal_id = appeals.id  AND tasks.type = 'ColocatedTask' AND tasks.appeal_type='Appeal'
            order by tasks.closed_at desc
            limit 1
          ) as colocated_task_status,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'QualityReviewTask' AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as quality_review_task_status,
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask' AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as attorney_name,
          (select vacols.staff.sattyid
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask' AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as vacols_attorney_id,
          (select vacols.staff.sattyid
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type IN ('JudgeAssignTask', 'JudgeDecisionReviewTask')  AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as vacols_judge_id,
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type IN ('JudgeAssignTask', 'JudgeDecisionReviewTask') AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as judge_name,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type IN ('JudgeAssignTask', 'JudgeDecisionReviewTask') AND tasks.appeal_type='Appeal'
            order by tasks.assigned_at desc
            limit 1
          ) as judge_task_status,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'BvaDispatchTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as bva_dispatch_task_status,
          (select tasks.closed_at
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'BvaDispatchTask' AND tasks.appeal_type='Appeal'
            limit 1
          ) as bva_dispatch_task_status_completed_date
          from public.appeals as appeals ;;
  }

  dimension: appeal_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    link: {
      label: "Link"
      url: "https://caseflow-looker.va.gov/looks/136?f[appeals.id]={{ appeal_id }}&f[appeals.veteran_file_number]="
    }
  }

  dimension: attorney_task_id {
    type: number
    sql: ${TABLE}.attorney_task_id;;
  }

  dimension: attorney_task_status {
    type: string
    sql: ${TABLE}.attorney_task_status;;
  }

  dimension: colocated_task_status {
    type: string
    sql:  ${TABLE}.colocated_task_status ;;
  }

  dimension_group: task_most_recently_updated_at {
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
    sql: ${TABLE}.task_max_updated_at;;
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

  dimension_group: attorney_task_status_completed_at{
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
    sql: ${TABLE}.attorney_task_status_completed_date;;
  }

  dimension: judge_assign_task_status {
    type: string
    sql: ${TABLE}.judge_assign_task_status ;;
  }

  dimension_group: judge_assign_task_status_started_at {
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
    sql: ${TABLE}.judge_assign_task_status_started_date;;
  }

  dimension_group: judge_assign_task_status_completed_at {
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
    sql: ${TABLE}.judge_assign_task_status_completed_date;;
  }

  dimension: judge_review_task_status {
    type: string
    sql: ${TABLE}.judge_review_task_status ;;
  }

  dimension_group: judge_review_task_status_started_at {
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
    sql: ${TABLE}.judge_review_task_status_started_date;;
  }

  dimension_group: judge_review_task_status_completed_at {
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
    sql: ${TABLE}.judge_review_task_status_completed_date;;
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

  dimension: time_from_attorney_complete_to_signing_complete {
    description: "JudgeDecisionReviewTask Completion Date - Attorney Completed Date"
    type: number
    sql: ${judge_review_task_status_completed_at_date} - ${attorney_task_status_completed_at_date};;
  }

  dimension: time_from_judge_reviewing_to_signing_complete {
    description: "JudgeDecisionReviewTask Completion Date - JudgeDecisionReviewTask Started Date"
    type: number
    sql: ${judge_review_task_status_completed_at_date} - ${judge_review_task_status_started_at_date};;
  }

  dimension: time_from_judge_signing_to_dispatch_complete {
    description: "Dispatch Completed Date - JudgeDecisionReviewTask Completion Date"
    type: number
    sql: ${bva_dispatch_task_status_completed_at_date} - ${judge_review_task_status_completed_at_date};;
  }

  dimension: quality_review_task_status {
    type:  string
    sql:  ${TABLE}.quality_review_task_status ;;
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

  dimension: vacols_attorney_id {
    type: string
    sql: ${TABLE}.vacols_attorney_id;;
  }

  dimension: vacols_judge_id {
    type: string
    sql: ${TABLE}.vacols_judge_id;;
  }

  dimension: decision_status {
    type: string
    case: {
      when: {
        sql: ${judge_task_status} is null ;;
        label: "1. Not distributed"
      }
      when: {
        sql: (${judge_task_status} = 'assigned' or ${judge_task_status} = 'in_progress' or
          (${colocated_task_status} = 'assigned' or ${colocated_task_status} = 'on_hold')) and ${attorney_task_status} is null;;
        label: "2. Distributed to judge"
      }
      when: {
        sql: (${judge_task_status} = 'on_hold' or ${quality_review_task_status} = 'on_hold') and ${attorney_task_status} = 'assigned';;
        label: "3. Assigned to attorney"
      }
      when: {
        sql: (${judge_task_status} = 'on_hold' or ${attorney_task_status} = 'on_hold') and ${colocated_task_status} = 'assigned' or ${colocated_task_status} = 'in_progress';;
        label: "4. Assigned to colocated"
      }
      when: {
        sql: (${judge_task_status} = 'on_hold' or ${quality_review_task_status} = 'on_hold') and ${attorney_task_status} = 'in_progress';;
        label: "5. Decision in progress"
      }
      when: {
        sql: (${judge_task_status} = 'assigned' or ${judge_task_status} = 'in_progress') and ${attorney_task_status} = 'completed';;
        label: "6. Decision ready for signature"
      }
      when: {
        sql: ${judge_task_status} = 'completed' and ${attorney_task_status} = 'completed' and (${bva_dispatch_task_status} is null or ${bva_dispatch_task_status} != 'completed');;
        label: "7. Decision signed"
      }
      when: {
        sql: ${judge_task_status} = 'completed' and ${attorney_task_status} = 'completed' and ${bva_dispatch_task_status} = 'completed';;
        label: "8. Decision dispatched"
      }
      when: {
        sql: ${judge_task_status} = 'on_hold' and ${attorney_task_status} = 'on_hold' and ${colocated_task_status} = 'on_hold';;
        label: "ON HOLD"
      }
      when: {
        sql: ${judge_task_status} = 'cancelled' or ${attorney_task_status} = 'cancelled';;
        label: "CANCELLED"
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

  measure: attorney_completed_task_count {
    type: count
    filters: {
      field: attorney_task_status
      value: "completed"
    }
    drill_fields: [attorney_task_id, decision_status]
  }

  measure: attorney_decisions_drafed_count {
    type: count
    filters: {
      field: attorney_task_status
      value: "completed"
    }
    filters: {
      field: attorney_task_status
      value: "completed"
    }
  }


  measure: average_days_to_complete {
    type: average
    sql: DATEDIFF(days, appeals.established_at, decision_documents.decision_date);;
    value_format: "0"
  }


  measure: median_attorney_start_to_dispatch_complete_days {
    description: "Median time (in days) between dispatch complete - attorney start date"
    type: median
    sql: ${time_from_attorney_assignment_to_dispatch_complete};;
    drill_fields: [appeal_id, appeal.veteran_file_number, attorney_task_status_started_at_date, bva_dispatch_task_status_completed_at_date]
  }

  measure: median_judge_complete_to_dispatch_complete_days {
    description: "Median time (in days) between judge signing decision to dispatch complete"
    type: median
    sql: ${time_from_judge_signing_to_dispatch_complete};;
    drill_fields: [appeal_id, appeal.veteran_file_number, attorney_task_status_started_at_date, bva_dispatch_task_status_completed_at_date]
  }

  measure: median_judge_review_to_complete_days {
    description: "Median time (in days) between judge reviewing to signing a decision"
    type: median
    sql: ${time_from_judge_reviewing_to_signing_complete};;
    drill_fields: [appeal_id, appeal.veteran_file_number, attorney_task_status_started_at_date, bva_dispatch_task_status_completed_at_date]
  }
}
