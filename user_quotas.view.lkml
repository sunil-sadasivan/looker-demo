view: user_quotas {
  sql_table_name: public.user_quotas ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: locked_task_count {
    type: number
    sql: ${TABLE}.locked_task_count ;;
  }

  dimension: team_quota_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.team_quota_id ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.full_name, users.id, team_quotas.id]
  }
}
