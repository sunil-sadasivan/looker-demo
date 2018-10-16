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
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_name
          from public.appeals as appeals ;;
  }

  dimension: appeal_id {
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
}
