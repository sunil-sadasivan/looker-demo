view: ramp_refilings {
  sql_table_name: public.ramp_refilings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_docket {
    type: string
    sql: ${TABLE}.appeal_docket ;;
  }

  dimension: end_product_reference_id {
    type: string
    sql: ${TABLE}.end_product_reference_id ;;
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

  dimension: has_ineligible_issue {
    type: yesno
    sql: ${TABLE}.has_ineligible_issue ;;
  }

  dimension: option_selected {
    type: string
    sql: ${TABLE}.option_selected ;;
  }

  dimension: ramp_election_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ramp_election_id ;;
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

  measure: count {
    type: count
    drill_fields: [id, ramp_elections.id]
  }
}
