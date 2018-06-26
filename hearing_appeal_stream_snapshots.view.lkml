view: hearing_appeal_stream_snapshots {
  sql_table_name: public.hearing_appeal_stream_snapshots ;;

  dimension: appeal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appeal_id ;;
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

  dimension: hearing_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hearing_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hearings.id, appeals.id]
  }
}
