view: form8s {
  sql_table_name: public.form8s ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _initial_appellant_name {
    type: string
    sql: ${TABLE}._initial_appellant_name ;;
  }

  dimension: _initial_appellant_relationship {
    type: string
    sql: ${TABLE}._initial_appellant_relationship ;;
  }

  dimension: _initial_hearing_requested {
    type: string
    sql: ${TABLE}._initial_hearing_requested ;;
  }

  dimension_group: _initial_increased_rating_notification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._initial_increased_rating_notification_date ;;
  }

  dimension: _initial_insurance_loan_number {
    type: string
    sql: ${TABLE}._initial_insurance_loan_number ;;
  }

  dimension_group: _initial_other_notification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._initial_other_notification_date ;;
  }

  dimension: _initial_representative_name {
    type: string
    sql: ${TABLE}._initial_representative_name ;;
  }

  dimension: _initial_representative_type {
    type: string
    sql: ${TABLE}._initial_representative_type ;;
  }

  dimension_group: _initial_service_connection_notification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._initial_service_connection_notification_date ;;
  }

  dimension_group: _initial_soc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._initial_soc_date ;;
  }

  dimension: _initial_ssoc_required {
    type: string
    sql: ${TABLE}._initial_ssoc_required ;;
  }

  dimension: _initial_veteran_name {
    type: string
    sql: ${TABLE}._initial_veteran_name ;;
  }

  dimension: agent_accredited {
    type: string
    sql: ${TABLE}.agent_accredited ;;
  }

  dimension: appellant_name {
    type: string
    sql: ${TABLE}.appellant_name ;;
  }

  dimension: appellant_relationship {
    type: string
    sql: ${TABLE}.appellant_relationship ;;
  }

  dimension_group: certification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.certification_date ;;
  }

  dimension: certification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.certification_id ;;
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

  dimension: certifying_official_title_specify_other {
    type: string
    sql: ${TABLE}.certifying_official_title_specify_other ;;
  }

  dimension: certifying_username {
    type: string
    sql: ${TABLE}.certifying_username ;;
  }

  dimension: contested_claims_procedures_applicable {
    type: string
    sql: ${TABLE}.contested_claims_procedures_applicable ;;
  }

  dimension: contested_claims_requirements_followed {
    type: string
    sql: ${TABLE}.contested_claims_requirements_followed ;;
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

  dimension: file_number {
    type: string
    sql: ${TABLE}.file_number ;;
  }

  dimension_group: form9 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.form9_date ;;
  }

  dimension: form_646_not_of_record_explanation {
    type: string
    sql: ${TABLE}.form_646_not_of_record_explanation ;;
  }

  dimension: form_646_of_record {
    type: string
    sql: ${TABLE}.form_646_of_record ;;
  }

  dimension: hearing_held {
    type: string
    sql: ${TABLE}.hearing_held ;;
  }

  dimension: hearing_preference {
    type: string
    sql: ${TABLE}.hearing_preference ;;
  }

  dimension: hearing_requested {
    type: string
    sql: ${TABLE}.hearing_requested ;;
  }

  dimension: hearing_requested_explanation {
    type: string
    sql: ${TABLE}.hearing_requested_explanation ;;
  }

  dimension: hearing_transcript_on_file {
    type: string
    sql: ${TABLE}.hearing_transcript_on_file ;;
  }

  dimension: increased_rating_for {
    type: string
    sql: ${TABLE}.increased_rating_for ;;
  }

  dimension_group: increased_rating_notification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.increased_rating_notification_date ;;
  }

  dimension: insurance_loan_number {
    type: string
    sql: ${TABLE}.insurance_loan_number ;;
  }

  dimension_group: nod {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.nod_date ;;
  }

  dimension: other_for {
    type: string
    sql: ${TABLE}.other_for ;;
  }

  dimension_group: other_notification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.other_notification_date ;;
  }

  dimension: power_of_attorney {
    type: string
    sql: ${TABLE}.power_of_attorney ;;
  }

  dimension: power_of_attorney_file {
    type: string
    sql: ${TABLE}.power_of_attorney_file ;;
  }

  dimension: record_cf_or_xcf {
    type: string
    sql: ${TABLE}.record_cf_or_xcf ;;
  }

  dimension: record_clinical_rec {
    type: string
    sql: ${TABLE}.record_clinical_rec ;;
  }

  dimension: record_dental_f {
    type: string
    sql: ${TABLE}.record_dental_f ;;
  }

  dimension: record_dep_ed_f {
    type: string
    sql: ${TABLE}.record_dep_ed_f ;;
  }

  dimension: record_hospital_cor {
    type: string
    sql: ${TABLE}.record_hospital_cor ;;
  }

  dimension: record_inactive_cf {
    type: string
    sql: ${TABLE}.record_inactive_cf ;;
  }

  dimension: record_insurance_f {
    type: string
    sql: ${TABLE}.record_insurance_f ;;
  }

  dimension: record_loan_guar_f {
    type: string
    sql: ${TABLE}.record_loan_guar_f ;;
  }

  dimension: record_other {
    type: string
    sql: ${TABLE}.record_other ;;
  }

  dimension: record_other_explanation {
    type: string
    sql: ${TABLE}.record_other_explanation ;;
  }

  dimension: record_outpatient_f {
    type: string
    sql: ${TABLE}.record_outpatient_f ;;
  }

  dimension: record_r_and_e_f {
    type: string
    sql: ${TABLE}.record_r_and_e_f ;;
  }

  dimension: record_slides {
    type: string
    sql: ${TABLE}.record_slides ;;
  }

  dimension: record_tissue_blocks {
    type: string
    sql: ${TABLE}.record_tissue_blocks ;;
  }

  dimension: record_training_sub_f {
    type: string
    sql: ${TABLE}.record_training_sub_f ;;
  }

  dimension: record_x_rays {
    type: string
    sql: ${TABLE}.record_x_rays ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: representative_name {
    type: string
    sql: ${TABLE}.representative_name ;;
  }

  dimension: representative_type {
    type: string
    sql: ${TABLE}.representative_type ;;
  }

  dimension: representative_type_specify_other {
    type: string
    sql: ${TABLE}.representative_type_specify_other ;;
  }

  dimension: service_connection_for {
    type: string
    sql: ${TABLE}.service_connection_for ;;
  }

  dimension_group: service_connection_notification {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.service_connection_notification_date ;;
  }

  dimension_group: soc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.soc_date ;;
  }

  dimension_group: ssoc_date_1 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ssoc_date_1 ;;
  }

  dimension_group: ssoc_date_2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ssoc_date_2 ;;
  }

  dimension_group: ssoc_date_3 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ssoc_date_3 ;;
  }

  dimension: ssoc_required {
    type: string
    sql: ${TABLE}.ssoc_required ;;
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

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  dimension: veteran_name {
    type: string
    sql: ${TABLE}.veteran_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      _initial_representative_name,
      _initial_veteran_name,
      _initial_appellant_name,
      certifying_official_name,
      certifying_username,
      appellant_name,
      veteran_name,
      representative_name,
      certifications.id,
      certifications.certifying_official_name,
      certifications.certifying_username,
      certifications.representative_name,
      certifications.vacols_representative_name,
      certifications.bgs_representative_name
    ]
  }
}
