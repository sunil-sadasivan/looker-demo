view: remand_reasons {
  sql_table_name: public.remand_reasons ;;

  dimension: code {
    type: string
    sql:  ${TABLE}.code ;;
  }

  dimension: post_aoj {
    type: string
    sql:  ${TABLE}.post_aoj ;;
  }

  dimension: request_issue_id {
    type: number
    sql:  ${TABLE}.request_issue_id ;;
  }

  measure: remand_reason_code_count {
    type: count
    drill_fields: [code]
  }
}
