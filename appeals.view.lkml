view: appeals {
  sql_table_name: public.appeals ;;

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

  dimension: docket_number {
    type: string
    sql: to_char(${receipt_date}, 'yymmdd') || '-' || ${id} ;;
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
