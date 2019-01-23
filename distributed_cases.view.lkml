view: distributed_cases {
  sql_table_name: public.distributed_cases ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: case_id {
    type: string
    sql: ${TABLE}.case_id ;;
  }

  dimension: distribution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.distribution_id ;;
  }

  dimension: docket {
    type: string
    sql: ${TABLE}.docket ;;
  }

  dimension: docket_index {
    type: number
    sql: ${TABLE}.docket_index ;;
  }

  dimension: genpop {
    type: string
    sql: ${TABLE}.genpop ;;
  }

  dimension: genpop_query {
    type: string
    sql: ${TABLE}.genpop_query ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension_group: ready {
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
    sql: ${TABLE}.ready_at ;;
  }

  dimension: priority_wait_time {
    type: number
    sql: DATEDIFF(days, DATE(${ready_date}), ${distributions.completed_date}) ;;
  }

  measure: judge_priority_count {
    type: count
    drill_fields: [distributions.judge_id, distribution_id]
    filters: {
      field: priority
      value: "true"
    }
  }

  measure: average_priority_case_wait {
    type: average
    sql: ${priority_wait_time} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, distributions.id]
  }

  measure: not_genpop_non_priority_count {
    type: count
    drill_fields: [distribution_id]
    filters: {
      field: priority
      value: "false"
    }
    filters: {
      field: genpop_query
      value: "not_genpop"
    }
  }

}
