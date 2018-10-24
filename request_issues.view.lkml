view: request_issues {
  sql_table_name: public.request_issues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contention_reference_id {
    type: string
    sql: ${TABLE}.contention_reference_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: issue_category {
    type: string
    sql: ${TABLE}.issue_category ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension_group: rating_issue_profile {
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
    sql: ${TABLE}.rating_issue_profile_date ;;
  }

  dimension: rating_issue_reference_id {
    type: string
    sql: ${TABLE}.rating_issue_reference_id ;;
  }

  dimension: review_request_id {
    type: number
    sql: ${TABLE}.review_request_id ;;
  }

  dimension: review_request_type {
    type: string
    sql: ${TABLE}.review_request_type ;;
  }

  measure: appeal_request_issue_count {
    type: count
    drill_fields: [id, review_request_id]
  }

  measure: count {
    type: count
    drill_fields: [id, issue_category, description]
  }
}
