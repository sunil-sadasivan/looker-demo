view: intakes {
  sql_table_name: public.intakes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cancel_other {
    type: string
    sql: ${TABLE}.cancel_other ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
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

  dimension_group: completion_started {
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
    sql: ${TABLE}.completion_started_at ;;
  }

  dimension: completion_status {
    type: string
    sql: ${TABLE}.completion_status ;;
  }

  dimension: detail_id {
    type: number
    sql: ${TABLE}.detail_id ;;
  }

  dimension: detail_type {
    type: string
    sql: ${TABLE}.detail_type ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: veteran_file_number {
    type: string
    sql: ${TABLE}.veteran_file_number ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.full_name, users.id]
  }
}
