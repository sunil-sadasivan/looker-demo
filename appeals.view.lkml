view: appeals {

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
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_name
          from public.appeals as appeals ;;
  }

  dimension: attorney_task_status {
    type: string
    sql: ${TABLE}.attorney_task_status;;
  }

  dimension: judge_task_status {
    type: string
    sql: ${TABLE}.judge_task_status;;
  }

  dimension: task_judge_name {
    type: string
    sql: ${TABLE}.judge_name;;
  }

  dimension: task_attorney_name {
    type: string
    sql: ${TABLE}.attorney_name;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: docket_type {
    type: string
    sql: ${TABLE}.docket_type ;;
  }

  dimension_group: established {
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
    sql: ${TABLE}.established_at ;;
  }

  dimension_group: receipt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.receipt_date ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: veteran_file_number {
    type: string
    sql: ${TABLE}.veteran_file_number ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      appeal_views.count,
      claims_folder_searches.count,
      dispatch_tasks.count,
      hearing_appeal_stream_snapshots.count,
      hearings.count,
      tasks.count,
      worksheet_issues.count
    ]
  }
}
