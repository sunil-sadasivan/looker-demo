view: ramp_issues {
  sql_table_name: public.ramp_issues ;;

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

  dimension: review_id {
    type: number
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_type {
    type: string
    sql: ${TABLE}.review_type ;;
  }

  dimension: source_issue_id {
    type: number
    sql: ${TABLE}.source_issue_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
