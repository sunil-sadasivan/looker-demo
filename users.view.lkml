view: users {
  sql_table_name: public.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: css_id {
    type: string
    sql: ${TABLE}.css_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.roles ;;
  }

  dimension: selected_regional_office {
    type: string
    sql: ${TABLE}.selected_regional_office ;;
  }

  dimension: station_id {
    type: string
    sql: ${TABLE}.station_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      full_name,
      annotations.count,
      appeal_views.count,
      certifications.count,
      claims_folder_searches.count,
      dispatch_tasks.count,
      document_views.count,
      hearings.count,
      hearing_views.count,
      intakes.count,
      pg_stat_statements.count,
      ramp_election_rollbacks.count,
      reader_users.count,
      schedule_periods.count,
      user_quotas.count
    ]
  }
}
