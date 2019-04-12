view: hearings {
  sql_table_name: public.hearings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_id {
    type: number
    sql: ${TABLE}.appeal_id ;;
  }

  dimension: bva_poc {
    type: string
    sql: ${TABLE}.bva_poc ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: evidence_window_waived {
    type: string
    sql: ${TABLE}.evidence_window_waived ;;
  }

  dimension: hearing_day_id {
    type: number
    sql: ${TABLE}.hearing_day_id ;;
  }

  dimension: judge_id {
    type: number
    sql: ${TABLE}.judge_id ;;
  }

  dimension: military_service {
    type: string
    sql: ${TABLE}.military_service ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: prepped {
    type: string
    sql: ${TABLE}.prepped ;;
  }

  dimension: representative_name {
    type: string
    sql: ${TABLE}.representative_name ;;
  }

  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }

  dimension: scheduled_time {
    type: string
    sql: ${TABLE}.scheduled_time ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: transcript_requested {
    type: string
    sql: ${TABLE}.transcript_requested ;;
  }

  dimension_group: transcript_sent {
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
    sql: ${TABLE}.transcript_sent_date ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: witness {
    type: string
    sql: ${TABLE}.witness ;;
  }

  measure: count {
    type: count
    drill_fields: [id, representative_name]
  }
}
