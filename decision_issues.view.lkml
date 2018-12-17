view: decision_issues {
  sql_table_name: public.decision_issues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: decision_review_id {
    type: number
    sql: ${TABLE}.decision_review_id ;;
  }

  dimension: decision_review_type {
    type: string
    sql: ${TABLE}.decision_review_type ;;
  }

  dimension: decision_text {
    type: string
    sql: ${TABLE}.decision_text ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: disposition_date {
    type: string
    sql: ${TABLE}.disposition_date ;;
  }

  dimension: participant_id {
    type: number
    sql: ${TABLE}.participant_id ;;
  }

  dimension_group: profile {
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
    sql: ${TABLE}.profile_date ;;
  }

  dimension_group: promulgation {
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
    sql: ${TABLE}.promulgation_date ;;
  }

  dimension: rating_issue_reference_id {
    type: string
    sql: ${TABLE}.rating_issue_reference_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
