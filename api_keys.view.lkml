view: api_keys {
  sql_table_name: public.api_keys ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: consumer_name {
    type: string
    sql: ${TABLE}.consumer_name ;;
  }

  dimension: key_digest {
    type: string
    sql: ${TABLE}.key_digest ;;
  }

  measure: count {
    type: count
    drill_fields: [id, consumer_name, api_views.count]
  }
}
