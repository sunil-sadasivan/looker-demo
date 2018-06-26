view: document_views {
  sql_table_name: public.document_views ;;

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

  dimension_group: first_viewed {
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
    sql: ${TABLE}.first_viewed_at ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.full_name, users.id, documents.id]
  }
}
