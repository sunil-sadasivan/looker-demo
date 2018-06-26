view: global_admin_logins {
  sql_table_name: public.global_admin_logins ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: admin_css_id {
    type: string
    sql: ${TABLE}.admin_css_id ;;
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

  dimension: target_css_id {
    type: string
    sql: ${TABLE}.target_css_id ;;
  }

  dimension: target_station_id {
    type: string
    sql: ${TABLE}.target_station_id ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
