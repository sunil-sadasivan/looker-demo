view: max_nonpriority_any_docket_index {
  derived_table: {
    sql: (SELECT
              distributions.id  AS "distribution_id",
              (SELECT MAX(distributed_cases.docket_index)
                       FROM distributed_cases
                       WHERE distributed_cases.distribution_id = distributions.id and distributed_cases.priority='false' and distributed_cases.genpop_query='any' GROUP BY distributions.id) AS "max_nonpriority_any_docket_index"
            FROM public.distributions  AS distributions);;
  }

  dimension: distribution_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.distribution_id ;;
  }

  dimension: docket_index {
    type: number
    sql: ${TABLE}.max_nonpriority_any_docket_index;;
  }
}
