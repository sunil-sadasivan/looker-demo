view: distributions {
  sql_table_name: public.distributions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: judge_id {
    type: number
    sql: ${TABLE}.judge_id ;;
  }

  dimension: statistics {
    type: string
    sql: ${TABLE}.statistics ;;
  }

  dimension: priority_case_count {
    type: number
    sql: json_extract_path_text(${statistics}, 'priority_count') ;;
  }

  dimension: total_case_batch_size {
    type: number
    sql: json_extract_path_text(${statistics}, 'total_batch_size') ;;
  }

  dimension: case_batch_size {
    type: number
    sql: json_extract_path_text(${statistics}, 'batch_size') ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  measure: count {
    type: count
    drill_fields: [id, distributed_cases.count]
  }
}
