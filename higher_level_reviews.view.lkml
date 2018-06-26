view: higher_level_reviews {
  sql_table_name: public.higher_level_reviews ;;

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

  dimension: informal_conference {
    type: yesno
    sql: ${TABLE}.informal_conference ;;
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

  dimension: same_office {
    type: yesno
    sql: ${TABLE}.same_office ;;
  }

  dimension: veteran_file_number {
    type: string
    sql: ${TABLE}.veteran_file_number ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
