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

explore: appeals {}

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
}

explore: legacy_appeals {
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

explore: request_issues {}

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
    sql_on: ${tasks.appeal_id} = ${appeals.id} ;;
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

explore: vacols_brieff {}

explore: vacols_corres {}

explore: vacols_decass {}
