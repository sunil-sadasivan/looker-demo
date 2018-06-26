view: certifications {
  sql_table_name: public.certifications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: already_certified {
    type: yesno
    sql: ${TABLE}.already_certified ;;
  }

  dimension: bgs_rep_address_line_1 {
    type: string
    sql: ${TABLE}.bgs_rep_address_line_1 ;;
  }

  dimension: bgs_rep_address_line_2 {
    type: string
    sql: ${TABLE}.bgs_rep_address_line_2 ;;
  }

  dimension: bgs_rep_address_line_3 {
    type: string
    sql: ${TABLE}.bgs_rep_address_line_3 ;;
  }

  dimension: bgs_rep_city {
    type: string
    sql: ${TABLE}.bgs_rep_city ;;
  }

  dimension: bgs_rep_country {
    type: string
    sql: ${TABLE}.bgs_rep_country ;;
  }

  dimension: bgs_rep_state {
    type: string
    sql: ${TABLE}.bgs_rep_state ;;
  }

  dimension: bgs_rep_zip {
    type: string
    sql: ${TABLE}.bgs_rep_zip ;;
  }

  dimension: bgs_representative_name {
    type: string
    sql: ${TABLE}.bgs_representative_name ;;
  }

  dimension: bgs_representative_type {
    type: string
    sql: ${TABLE}.bgs_representative_type ;;
  }

  dimension: certification_date {
    type: string
    sql: ${TABLE}.certification_date ;;
  }

  dimension: certifying_office {
    type: string
    sql: ${TABLE}.certifying_office ;;
  }

  dimension: certifying_official_name {
    type: string
    sql: ${TABLE}.certifying_official_name ;;
  }

  dimension: certifying_official_title {
    type: string
    sql: ${TABLE}.certifying_official_title ;;
  }

  dimension: certifying_username {
    type: string
    sql: ${TABLE}.certifying_username ;;
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

  dimension_group: form8_started {
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
    sql: ${TABLE}.form8_started_at ;;
  }

  dimension_group: form9_matching {
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
    sql: ${TABLE}.form9_matching_at ;;
  }

  dimension: form9_type {
    type: string
    sql: ${TABLE}.form9_type ;;
  }

  dimension: hearing_change_doc_found_in_vbms {
    type: yesno
    sql: ${TABLE}.hearing_change_doc_found_in_vbms ;;
  }

  dimension: hearing_preference {
    type: string
    sql: ${TABLE}.hearing_preference ;;
  }

  dimension: loading_data {
    type: yesno
    sql: ${TABLE}.loading_data ;;
  }

  dimension: loading_data_failed {
    type: yesno
    sql: ${TABLE}.loading_data_failed ;;
  }

  dimension_group: nod_matching {
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
    sql: ${TABLE}.nod_matching_at ;;
  }

  dimension: poa_correct_in_bgs {
    type: yesno
    sql: ${TABLE}.poa_correct_in_bgs ;;
  }

  dimension: poa_correct_in_vacols {
    type: yesno
    sql: ${TABLE}.poa_correct_in_vacols ;;
  }

  dimension: poa_matches {
    type: yesno
    sql: ${TABLE}.poa_matches ;;
  }

  dimension: representative_name {
    type: string
    sql: ${TABLE}.representative_name ;;
  }

  dimension: representative_type {
    type: string
    sql: ${TABLE}.representative_type ;;
  }

  dimension_group: soc_matching {
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
    sql: ${TABLE}.soc_matching_at ;;
  }

  dimension_group: ssocs_matching {
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
    sql: ${TABLE}.ssocs_matching_at ;;
  }

  dimension: ssocs_required {
    type: yesno
    sql: ${TABLE}.ssocs_required ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: v2 {
    type: yesno
    sql: ${TABLE}.v2 ;;
  }

  dimension: vacols_data_missing {
    type: yesno
    sql: ${TABLE}.vacols_data_missing ;;
  }

  dimension: vacols_hearing_preference {
    type: string
    sql: ${TABLE}.vacols_hearing_preference ;;
  }

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  dimension: vacols_representative_name {
    type: string
    sql: ${TABLE}.vacols_representative_name ;;
  }

  dimension: vacols_representative_type {
    type: string
    sql: ${TABLE}.vacols_representative_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      certifying_official_name,
      certifying_username,
      representative_name,
      vacols_representative_name,
      bgs_representative_name,
      users.full_name,
      users.id,
      certification_cancellations.count,
      form8s.count
    ]
  }
}
