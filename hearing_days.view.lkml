view: hearing_days {
  sql_table_name: public.hearing_days ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bva_poc {
    type: string
    sql: ${TABLE}.bva_poc ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: hearing_type {
    type: string
    sql: ${TABLE}.hearing_type ;;
  }

  dimension: judge_id {
    type: number
    sql: ${TABLE}.judge_id ;;
  }

  dimension: lock {
    type: string
    sql: ${TABLE}.lock ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: regional_office {
    type: string
    sql: ${TABLE}.regional_office ;;
  }

  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }

  dimension_group: scheduled_for {
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
    sql: ${TABLE}.scheduled_for ;;
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

  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
