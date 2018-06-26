view: allocations {
  sql_table_name: public.allocations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allocated_days {
    type: number
    sql: ${TABLE}.allocated_days ;;
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

  dimension: regional_office {
    type: string
    sql: ${TABLE}.regional_office ;;
  }

  dimension: schedule_period_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.schedule_period_id ;;
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
    drill_fields: [id, schedule_periods.file_name, schedule_periods.id]
  }
}
