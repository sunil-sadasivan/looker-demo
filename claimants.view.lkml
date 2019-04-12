view: claimants {
  sql_table_name: public.claimants ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: participant_id {
    type: string
    sql: ${TABLE}.participant_id ;;
  }

  dimension: review_request_id {
    type: number
    sql: ${TABLE}.decision_review_id ;;
  }

  dimension: review_request_type {
    type: string
    sql: ${TABLE}.decision_review_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
