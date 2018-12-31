view: request_issues_by_previous_adjudication {
  derived_table: {
    sql: SELECT distinct request_issue.id AS request_issue_id, request_issue.disposition, election.option_selected
      FROM ramp_issues refiling_issue, ramp_issues source_issue, ramp_elections election, ramp_refilings refiling, appeals appeal, request_issues request_issue
      WHERE
      refiling_issue.source_issue_id = source_issue.id AND
      refiling_issue.review_type = 'RampRefiling' AND
      refiling_issue.review_id = refiling.id AND
      refiling.option_selected = 'appeal' AND
      source_issue.review_type = 'RampElection' AND
      source_issue.review_id = election.id AND
      refiling.veteran_file_number = appeal.veteran_file_number AND
      request_issue.review_request_id = appeal.id
       ;;
  }

  dimension: request_issue_id {
    type: number
    sql: ${TABLE}.request_issue_id ;;
  }

  dimension: previous_adjudication {
    type: string
    sql: ${TABLE}.option_selected ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  set: detail {
    fields: [request_issue_id, previous_adjudication, disposition]
  }

  measure: count {
    type: count
    drill_fields: [request_issue_id]
  }
}
