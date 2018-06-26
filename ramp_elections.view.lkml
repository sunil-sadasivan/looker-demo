view: ramp_elections {
  sql_table_name: public.ramp_elections ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: end_product_reference_id {
    type: string
    sql: ${TABLE}.end_product_reference_id ;;
  }

  dimension: end_product_status {
    type: string
    sql: ${TABLE}.end_product_status ;;
  }

  dimension_group: end_product_status_last_synced {
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
    sql: ${TABLE}.end_product_status_last_synced_at ;;
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

  dimension_group: notice {
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
    sql: ${TABLE}.notice_date ;;
  }

  dimension: option_selected {
    type: string
    sql: ${TABLE}.option_selected ;;
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

  dimension: veteran_file_number {
    type: string
    sql: ${TABLE}.veteran_file_number ;;
  }

  dimension: response_time_days {
    type: number
    sql:  ${receipt_date} - ${notice_date} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, notice_date, established_date, receipt_date, option_selected, end_product_status, ramp_closed_appeals.count, ramp_election_rollbacks.count, ramp_refilings.count, response_time_days]
  }

  measure: response_time_average {
    type: number
    sql: FLOOR(AVG(${response_time_days}));;
    drill_fields: [id, notice_date, established_date, receipt_date, option_selected, end_product_status, ramp_closed_appeals.count, ramp_election_rollbacks.count, ramp_refilings.count, response_time_days]
  }
}
