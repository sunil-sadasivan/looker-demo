view: task_timers_incomplete_and_pending {
  derived_table: {
    sql: select *
      from task_timers
      where created_at < (current_timestamp - interval '1 day')
        and submitted_at < (current_timestamp - interval '2 days')
        and processed_at is null
        and canceled_at is null;
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: submitted_at {
    type: time
    sql: ${TABLE}.submitted_at ;;
  }

  dimension_group: attempted_at {
    type: time
    sql: ${TABLE}.attempted_at ;;
  }

  dimension_group: processed_at {
    type: time
    sql: ${TABLE}.processed_at ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension_group: last_submitted_at {
    type: time
    sql: ${TABLE}.last_submitted_at ;;
  }

  dimension_group: canceled_at {
    type: time
    sql: ${TABLE}.canceled_at ;;
  }

  set: detail {
    fields: [
      id,
      task_id,
      created_at_time,
      updated_at_time,
      submitted_at_time,
      attempted_at_time,
      processed_at_time,
      error,
      last_submitted_at_time,
      canceled_at_time
    ]
  }
}
