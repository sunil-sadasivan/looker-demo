# If necessary, uncomment the line below to include explore_source.
# include: "caseflow_rds_demo.model.lkml"

view: distributed_cases_any {
  derived_table: {
    explore_source: distributed_cases {
      column: case_id {}
      column: docket_index {}
      column: docket {}
      column: distribution_id {}
      column: id {}
      column: priority {}
      column: priority_wait_time {}
      column: ready_date {}
      column: ready_month {}
      column: ready_quarter {}
      column: ready_time {}
      column: ready_week {}
      column: ready_year {}
      column: average_priority_case_wait {}
      column: count {}
      column: judge_priority_count {}
      column: genpop_query {}
      column: genpop {}
      filters: {
        field: distributed_cases.genpop_query
        value: "any"
      }
      filters: {
        field: distributed_cases.priority
        value: "false"
      }
    }
  }
  dimension: case_id {}
  dimension: docket_index {
    type: number
  }
  dimension: docket {}
  dimension: distribution_id {
    type: number
  }
  dimension: id {
    type: number
  }
  dimension: priority {}
  dimension: priority_wait_time {
    type: number
  }
  dimension: ready_date {
    type: date_date
  }
  dimension: ready_month {
    type: date_month
  }
  dimension: ready_quarter {
    type: date_quarter
  }
  dimension: ready_time {
    type: date_time
  }
  dimension: ready_week {
    type: date_week
  }
  dimension: ready_year {
    type: date_year
  }
  dimension: average_priority_case_wait {
    type: number
  }
  dimension: count {
    type: number
  }
  dimension: judge_priority_count {
    type: number
  }
  dimension: genpop_query {}
  dimension: genpop {}
}
