connection: "dsva-appeals-certification-prod-replica"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: caseflow_rds_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: caseflow_rds_demo_default_datagroup

explore: allocations {
  join: schedule_periods {
    type: left_outer
    sql_on: ${allocations.schedule_period_id} = ${schedule_periods.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${schedule_periods.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: annotations {
  join: documents {
    type: left_outer
    sql_on: ${annotations.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${annotations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: api_keys {}

explore: api_views {
  join: api_keys {
    type: left_outer
    sql_on: ${api_views.api_key_id} = ${api_keys.id} ;;
    relationship: many_to_one
  }

  join: legacy_veterans {
    type: left_outer
    sql_on: ${api_views.vbms_id} = ${legacy_veterans.vbms_id} ;;
    relationship: one_to_one
  }
}

explore: appeal_series {}

explore: appeal_views {
  join: users {
    type: left_outer
    sql_on: ${appeal_views.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${appeal_views.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }
}

explore: appeals {
  join: tasks {
    relationship: one_to_many
    sql_on: ${tasks.appeal_id} = ${appeals.id} AND ${tasks.appeal_type} = 'Appeal' ;;
  }

  join: request_issues {
    relationship: one_to_many
    sql_on: ${appeals.id} = ${request_issues.review_request_id} AND
    ${request_issues.review_request_type} = 'Appeal' ;;
  }

  join: decisions {
    relationship: one_to_many
    sql_on: ${decisions.appeal_id} = ${appeals.id} ;;
  }

  join: appeal_task_status {
    relationship: one_to_one
    sql_on: ${appeal_task_status.appeal_id} = ${appeals.id} ;;
  }
}

explore: ar_internal_metadata {}

explore: attorney_case_reviews {
  join: tasks {
    type: left_outer
    sql_on: ${attorney_case_reviews.task_id} = ${tasks.id} ;;
    relationship: many_to_one
  }

  join: documents {
    type: left_outer
    sql_on: ${attorney_case_reviews.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${tasks.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }

  join: request_issues {
    type: left_outer
    sql_on: ${tasks.appeal_id} = ${request_issues.review_request_id} ;;
    relationship: many_to_one
  }

  join: attorneys {
    from: users
    type: left_outer
    sql_on: ${attorney_case_reviews.attorney_id} = ${attorneys.id} ;;
    relationship: many_to_one
  }

  join: judges {
    from: users
    type: left_outer
    sql_on: ${attorney_case_reviews.reviewing_judge_id} = ${judges.id} ;;
    relationship: many_to_one

  }
}

explore: certification_cancellations {
  join: certifications {
    type: left_outer
    sql_on: ${certification_cancellations.certification_id} = ${certifications.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${certifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: certifications {
  join: users {
    type: left_outer
    sql_on: ${certifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: claim_establishments {
  join: tasks {
    type: left_outer
    sql_on: ${claim_establishments.task_id} = ${tasks.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${tasks.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }
}

explore: claimants {}

explore: claims_folder_searches {
  join: users {
    type: left_outer
    sql_on: ${claims_folder_searches.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${claims_folder_searches.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }
}

explore: decision_issues {}

explore: dispatch_tasks {
  join: appeals {
    type: left_outer
    sql_on: ${dispatch_tasks.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${dispatch_tasks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: docket_snapshots {}

explore: docket_tracers {
  join: docket_snapshots {
    type: left_outer
    sql_on: ${docket_tracers.docket_snapshot_id} = ${docket_snapshots.id} ;;
    relationship: many_to_one
  }
}

explore: document_views {
  join: users {
    type: left_outer
    sql_on: ${document_views.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: documents {
    type: left_outer
    sql_on: ${document_views.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }
}

explore: documents {}

explore: documents_tags {
  join: tags {
    type: left_outer
    sql_on: ${documents_tags.tag_id} = ${tags.id} ;;
    relationship: many_to_one
  }

  join: documents {
    type: left_outer
    sql_on: ${documents_tags.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }
}

explore: form8s {
  join: certifications {
    type: left_outer
    sql_on: ${form8s.certification_id} = ${certifications.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${certifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: global_admin_logins {}

explore: hearing_appeal_stream_snapshots {
  join: hearings {
    type: left_outer
    sql_on: ${hearing_appeal_stream_snapshots.hearing_id} = ${hearings.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${hearing_appeal_stream_snapshots.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${hearings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hearing_views {
  join: hearings {
    type: left_outer
    sql_on: ${hearing_views.hearing_id} = ${hearings.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${hearing_views.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${hearings.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }
}

explore: hearings {
  join: users {
    type: left_outer
    sql_on: ${hearings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${hearings.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }
}

explore: higher_level_reviews {}

explore: intakes {
  join: users {
    type: left_outer
    sql_on: ${intakes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: judge_case_reviews {
  join: tasks {
    type: left_outer
    sql_on: ${judge_case_reviews.task_id} = ${tasks.id} ;;
    relationship: many_to_one
  }

  join: appeals {
    type: left_outer
    sql_on: ${tasks.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }

  join: users {
    type:  left_outer
    sql_on: ${judge_case_reviews.judge_id} = ${users.id} ;;
    relationship: many_to_one
  }

}

explore: legacy_appeals {
  join: tasks {
    relationship: one_to_many
    sql_on: ${tasks.appeal_id} = ${legacy_appeals.id} AND ${tasks.appeal_type} = 'LegacyAppeal' ;;
  }

  join: appeal_series {
    type: left_outer
    sql_on: ${legacy_appeals.appeal_series_id} = ${appeal_series.id} ;;
    relationship: many_to_one
  }

  join: vacols_brieff {
    type: left_outer
    sql_on: ${vacols_brieff.bfkey} = ${legacy_appeals.vacols_id} ;;
    relationship: one_to_one
  }
}

explore: non_availabilities {
  join: schedule_periods {
    type: left_outer
    sql_on: ${non_availabilities.schedule_period_id} = ${schedule_periods.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${schedule_periods.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: organizations {}

explore: pg_stat_statements {
  join: users {
    type: left_outer
    sql_on: ${pg_stat_statements.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: ramp_closed_appeals_with_elections {

}

explore: ramp_election_rollbacks {
  join: users {
    type: left_outer
    sql_on: ${ramp_election_rollbacks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: ramp_elections {
    type: left_outer
    sql_on: ${ramp_election_rollbacks.ramp_election_id} = ${ramp_elections.id} ;;
    relationship: many_to_one
  }
}

explore: ramp_elections {}

explore: ramp_issues {}

explore: ramp_refilings {
  join: ramp_elections {
    type: left_outer
    sql_on: ${ramp_refilings.ramp_election_id} = ${ramp_elections.id} ;;
    relationship: many_to_one
  }
}

explore: reader_users {
  join: users {
    type: left_outer
    sql_on: ${reader_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: remand_reasons {}

explore: request_issues {
  join: remand_reasons {
    sql_on: ${request_issues.id} = ${remand_reasons.request_issue_id};;
    relationship: many_to_one
  }
}

explore: schedule_periods {
  join: users {
    type: left_outer
    sql_on: ${schedule_periods.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: supplemental_claims {}

explore: tags {}

explore: tasks {
  join: appeals {
    type: left_outer
    sql_on: ${tasks.appeal_id} = ${appeals.id} AND ${tasks.appeal_type} = 'Appeal';;
    relationship: many_to_one
  }

  join: legacy_appeals {
    type: left_outer
    sql_on: ${tasks.appeal_id} = ${legacy_appeals.id} AND ${tasks.appeal_type} = 'LegacyAppeal';;
    relationship: many_to_one
  }

  join: assigned_to_user {
    from: users
    type: left_outer
    sql_on: ${tasks.assigned_to_type} = 'User' AND ${tasks.assigned_to_id} = ${assigned_to_user.id} ;;
    relationship: many_to_one
  }

  join: assigned_by_user {
    from: users
    type: left_outer
    sql_on: ${tasks.assigned_to_type} = 'User' AND ${tasks.assigned_by_id} = ${assigned_by_user.id} ;;
    relationship: many_to_one
  }

  join: assigned_to_organization {
    from: organizations
    type: left_outer
    sql_on: ${tasks.assigned_to_type} = 'Organization' AND ${tasks.assigned_to_id} = ${assigned_to_organization.id} ;;
  }

  join: request_issues {
    sql_on: ${tasks.appeal_id} = ${request_issues.review_request_id};;
    relationship: many_to_many
  }

  join: remand_reasons {
    sql_on: ${request_issues.id} = ${remand_reasons.request_issue_id};;
    relationship: many_to_many
  }

  join: decision_issues {
    sql_on: ${tasks.appeal_id} = ${decision_issues.request_issue_id};;
    relationship: many_to_one
  }

  join: decisions {
    sql_on: ${tasks.appeal_id} = ${decisions.appeal_id};;
    relationship: many_to_one
  }
}

explore: team_quotas {}

explore: user_quotas {
  join: users {
    type: left_outer
    sql_on: ${user_quotas.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: team_quotas {
    type: left_outer
    sql_on: ${user_quotas.team_quota_id} = ${team_quotas.id} ;;
    relationship: many_to_one
  }
}

explore: users {}


explore: versions {}

explore: veterans {}

explore: worksheet_issues {
  join: appeals {
    type: left_outer
    sql_on: ${worksheet_issues.appeal_id} = ${appeals.id} ;;
    relationship: many_to_one
  }
}

explore: vacols_brieff {
  join: vacols_staff {
    type: left_outer
    sql_on: ${vacols_brieff.bfmemid} = ${vacols_staff.sattyid} ;;
    relationship: many_to_one
  }
}

explore: vacols_corres {}

explore: vacols_decass {
  join: vacols_issues {
    type: left_outer
    relationship: many_to_one
    sql_on: ${vacols_decass.defolder} = ${vacols_issues.isskey} ;;
  }

  join: vacols_staff {
    type: left_outer
    relationship: many_to_one
    sql_on: ${vacols_decass.deatty} = ${vacols_staff.sattyid} ;;
  }
}

explore: vacols_hearsched {
  join: vacols_brieff {
    type: left_outer
    sql_on:  ${vacols_hearsched.folder_nr} = ${vacols_brieff.bfkey} ;;
    relationship: many_to_one
  }

  join: vacols_staff {
    type:  left_outer
    sql_on: ${vacols_hearsched.board_member} = ${vacols_staff.sattyid} ;;
    relationship: many_to_one
  }
}

explore: vacols_folder {
  join: vacols_brieff {
    type: left_outer
    sql_on: ${vacols_brieff.bfkey} = ${vacols_folder.ticknum} ;;
    relationship: many_to_one
  }

}

explore: vacols_staff {}

explore: vacols_issref {}

explore: vacols_issues{
  join: vacols_brieff {
    type: left_outer
    sql_on: ${vacols_issues.isskey} = ${vacols_brieff.bfkey} ;;
    relationship: many_to_one
  }

  join: vacols_staff {
    type: left_outer
    relationship: many_to_one
    sql_on: ${vacols_brieff.bfmemid} = ${vacols_staff.sattyid} ;;
  }

  join: vacols_decass {
    type: left_outer
    relationship: many_to_one
    sql_on: ${vacols_issues.isskey} = ${vacols_decass.defolder} ;;
  }
}

explore: vacols_tbsched {}
