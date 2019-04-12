view: hearing_issue_notes {
  sql_table_name: public.hearing_issue_notes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow {
    type: string
    sql: ${TABLE}.allow ;;
  }

  dimension: deny {
    type: string
    sql: ${TABLE}.deny ;;
  }

  dimension: dismiss {
    type: string
    sql: ${TABLE}.dismiss ;;
  }

  dimension: hearing_id {
    type: number
    sql: ${TABLE}.hearing_id ;;
  }

  dimension: remand {
    type: string
    sql: ${TABLE}.remand ;;
  }

  dimension: reopen {
    type: string
    sql: ${TABLE}.reopen ;;
  }

  dimension: request_issue_id {
    type: number
    sql: ${TABLE}.request_issue_id ;;
  }

  dimension: worksheet_notes {
    type: string
    sql: ${TABLE}.worksheet_notes ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
