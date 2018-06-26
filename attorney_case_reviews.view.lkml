view: attorney_case_reviews {
  sql_table_name: public.attorney_case_reviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attorney_id {
    type: number
    sql: ${TABLE}.attorney_id ;;
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

  dimension: document_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.document_id ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: overtime {
    type: yesno
    sql: ${TABLE}.overtime ;;
  }

  dimension: reviewing_judge_id {
    type: number
    sql: ${TABLE}.reviewing_judge_id ;;
  }

  dimension: task_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.task_id ;;
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

  dimension: work_product {
    type: string
    sql: ${TABLE}.work_product ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tasks.id, documents.id]
  }
}
