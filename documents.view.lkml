view: documents {
  sql_table_name: public.documents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category_medical {
    type: yesno
    sql: ${TABLE}.category_medical ;;
  }

  dimension: category_other {
    type: yesno
    sql: ${TABLE}.category_other ;;
  }

  dimension: category_procedural {
    type: yesno
    sql: ${TABLE}.category_procedural ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: file_number {
    type: string
    sql: ${TABLE}.file_number ;;
  }

  dimension: previous_document_version_id {
    type: number
    sql: ${TABLE}.previous_document_version_id ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.received_at ;;
  }

  dimension: series_id {
    type: string
    sql: ${TABLE}.series_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: vbms_document_id {
    type: string
    sql: ${TABLE}.vbms_document_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, annotations.count, attorney_case_reviews.count, documents_tags.count, document_views.count]
  }
}
