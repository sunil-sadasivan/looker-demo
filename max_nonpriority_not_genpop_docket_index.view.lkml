view: max_nonpriority_not_genpop_docket_index {
  derived_table: {
    sql: select distinct d_id, coalesce, id, case_id from (select t.d_id, t.coalesce, m.id, m.case_id from(SELECT distributions.id as d_id, coalesce(max(distributed_cases.docket_index),0)
           FROM public.distributions as distributions
           LEFT OUTER JOIN public.distributed_cases as distributed_cases ON (distributed_cases.distribution_id = distributions.id
           and distributed_cases.priority='false' and distributed_cases.genpop_query='not_genpop')
           group by 1 order by 1) t LEFT OUTER JOIN distributed_cases m ON m.distribution_id = t.d_id AND t.coalesce = m.docket_index  order by d_id) ;;
  }

  dimension: distribution_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.d_id ;;
  }

  dimension: docket_index {
    type: number
    sql: ${TABLE}.coalesce;;
  }

  dimension: distribution_case_id {
    type: number
    sql: ${TABLE}.id;;
  }

  dimension: distribution_case_folder_id {
    type: number
    sql: ${TABLE}.case_id;;
  }
}
