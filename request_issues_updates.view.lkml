view: request_issues_updates {
  sql_table_name: public.request_issues_updates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: after_request_issue_ids {
    type: string
    sql: ${TABLE}.after_request_issue_ids ;;
  }

  dimension_group: attempted {
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
    sql: ${TABLE}.attempted_at ;;
  }

  dimension: before_request_issue_ids {
    type: string
    sql: ${TABLE}.before_request_issue_ids ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension_group: last_submitted {
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
    sql: ${TABLE}.last_submitted_at ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.processed_at ;;
  }

  dimension: review_id {
    type: number
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_type {
    type: string
    sql: ${TABLE}.review_type ;;
  }

  dimension_group: submitted {
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
    sql: ${TABLE}.submitted_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
