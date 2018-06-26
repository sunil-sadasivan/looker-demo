view: docket_tracers {
  sql_table_name: public.docket_tracers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ahead_and_ready_count {
    type: number
    sql: ${TABLE}.ahead_and_ready_count ;;
  }

  dimension: ahead_count {
    type: number
    sql: ${TABLE}.ahead_count ;;
  }

  dimension: docket_snapshot_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.docket_snapshot_id ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.month ;;
  }

  measure: count {
    type: count
    drill_fields: [id, docket_snapshots.id]
  }
}
