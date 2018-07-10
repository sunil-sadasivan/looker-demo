view: dispatch_tasks {
  sql_table_name: public.dispatch_tasks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aasm_state {
    type: string
    sql: ${TABLE}.aasm_state ;;
  }

  dimension: appeal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appeal_id ;;
  }

  dimension_group: assigned {
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
    sql: ${TABLE}.assigned_at ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
  }

  dimension: completion_status {
    type: number
    sql: ${TABLE}.completion_status ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: lock_version {
    type: number
    sql: ${TABLE}.lock_version ;;
  }

  dimension: outgoing_reference_id {
    type: string
    sql: ${TABLE}.outgoing_reference_id ;;
  }

  dimension_group: prepared {
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
    sql: ${TABLE}.prepared_at ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: time_to_complete {
    description: "Time (in days) between task creation and completed date"
    type: number
    sql:  ${completed_date} - ${created_date} ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: average_completed_time {
    description: "Average time (in days) between task creation and completed date"
    type: average
    sql: ${time_to_complete};;
    value_format: "0"
    drill_fields: [id, appeals.id, users.full_name, users.id]
  }

  measure: median_completed_time {
    description: "Median time (in days) between task creation and completed date"
    type: median
    sql: ${time_to_complete};;
    drill_fields: [id, appeals.id, users.full_name, users.id, aasm_state, created_date, prepared_date, started_date, assigned_date, completed_date, time_to_complete]
  }

  measure: count {
    type: count
    drill_fields: [id, appeals.id, users.full_name, users.id, aasm_state, created_date, prepared_date, started_date, assigned_date, completed_date, time_to_complete]
  }
}
