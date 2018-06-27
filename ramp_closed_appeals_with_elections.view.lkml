view: ramp_closed_appeals_with_elections {

  derived_table: {
    sql:
      SELECT ramp_closed_appeals.id as ramp_closed_appeals_id,*
      FROM public.ramp_closed_appeals
      LEFT JOIN public.ramp_elections ramp_elections
      ON ramp_closed_appeals.ramp_election_id = ramp_elections.id;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ramp_closed_appeals_id ;;
  }

  dimension_group: nod {
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
    sql: ${TABLE}.nod_date ;;
  }

  dimension: ramp_election_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ramp_election_id ;;
  }

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ramp_elections.id]
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

  dimension: nod_to_establish_time {
    type: number
    sql:  ${established_date} - ${nod_date} ;;
  }

  measure: nod_to_establish_time_average {
    type: number
    sql: FLOOR(AVG(${nod_to_establish_time}));;
    drill_fields: [id, notice_date, established_date, receipt_date, option_selected, end_product_status, ramp_closed_appeals.count, ramp_election_rollbacks.count, ramp_refilings.count, nod_to_establish_time]
  }
}
