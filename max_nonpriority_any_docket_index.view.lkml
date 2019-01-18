view: max_nonpriority_any_docket_index {
  derived_table: {
    sql: (SELECT distributions.id as distribution_id, coalesce(max(distributed_cases.docket_index),0) as max_nonpriority_any_docket_index
           FROM public.distributions as distributions
           LEFT OUTER JOIN public.distributed_cases as distributed_cases ON (distributed_cases.distribution_id = distributions.id
           and distributed_cases.priority='false' and distributed_cases.genpop_query='any') GROUP BY distributions.id);;
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
