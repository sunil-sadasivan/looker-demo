view: documents_tags {
  sql_table_name: public.documents_tags ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.document_id ;;
  }

  dimension: tag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tag_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tags.id, documents.id]
  }
}
