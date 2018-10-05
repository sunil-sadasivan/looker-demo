view: decision_issues {
  sql_table_name: public.decision_issues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: request_issue_id {
    type: number
    sql: ${TABLE}.request_issue_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
