view: api_views {
  sql_table_name: public.api_views ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: api_key_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.api_key_id ;;
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

  dimension: vbms_id {
    type: string
    sql: ${TABLE}.vbms_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, api_keys.consumer_name, api_keys.id]
  }
}
