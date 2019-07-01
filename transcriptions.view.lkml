view: transcriptions {
  sql_table_name: public.transcriptions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: expected_return {
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
    sql: ${TABLE}.expected_return_date ;;
  }

  dimension: hearing_id {
    type: number
    sql: ${TABLE}.hearing_id ;;
  }

  dimension_group: problem_notice_sent {
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
    sql: ${TABLE}.problem_notice_sent_date ;;
  }

  dimension: problem_type {
    type: string
    sql: ${TABLE}.problem_type ;;
  }

  dimension: requested_remedy {
    type: string
    sql: ${TABLE}.requested_remedy ;;
  }

  dimension_group: sent_to_transcriber {
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
    sql: ${TABLE}.sent_to_transcriber_date ;;
  }

  dimension: task_number {
    type: string
    sql: ${TABLE}.task_number ;;
  }

  dimension: transcriber {
    type: string
    sql: ${TABLE}.transcriber ;;
  }

  dimension_group: uploaded_to_vbms {
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
    sql: ${TABLE}.uploaded_to_vbms_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
