view: distributions {
  sql_table_name: public.distributions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
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

  dimension: judge_id {
    type: number
    sql: ${TABLE}.judge_id ;;
  }

  dimension: statistics {
    type: string
    sql: ${TABLE}.statistics ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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
    drill_fields: [id, distributed_cases.count]
  }

  measure: max_docket_index {
    type:  max
    sql: (SELECT MAX(distributed_cases.docket_index)
     FROM distributed_cases
     WHERE distributed_cases.distribution_id = ${TABLE}.id);;
  }

  measure: max_nonpriority_not_genpop_docket_index {
    type:  max
    sql: (SELECT MAX(distributed_cases.docket_index)
           FROM distributed_cases
           WHERE distributed_cases.distribution_id = ${TABLE}.id and distributed_cases.priority='false' and distributed_cases.genpop = 'false');;
  }

  measure: max_nonpriority_any_docket_index {
    type:  max
    sql: (SELECT MAX(distributed_cases.docket_index)
           FROM distributed_cases
           WHERE distributed_cases.distribution_id = ${TABLE}.id and distributed_cases.priority='false' and distributed_cases.genpop_query='any');;
  }

#   measure: max_nonpriority_any_docket_index_case_id {
#     type:  max
#     sql: (SELECT MAX(distributed_cases.docket_index)
#            FROM distributed_cases
#            WHERE distributed_cases.distribution_id = ${TABLE}.id and distributed_cases.priority='false' and distributed_cases.genpop_query='any');;
#   }

#   measure: is_max_nonpriority_any_docket_index_genpop {
#     type: string
#     sql: (SELECT (distributed_cases.genpop)
#            FROM distributed_cases
#            WHERE distributed_cases.distribution_id = ${TABLE}.id and distributed_cases.priority='false' and distributed_cases.genpop_query='any');;
#   }

  measure: number_of_nonpriority_not_genpop_cases {
    type: number
    sql: (SELECT count(*)
           FROM distributed_cases
           WHERE distributed_cases.distribution_id = ${TABLE}.id and distributed_cases.priority='false' and distributed_cases.genpop = 'false');;
  }


}
