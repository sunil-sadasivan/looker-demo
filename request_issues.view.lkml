view: request_issues {
  sql_table_name: public.request_issues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: parent_request_issue_id {
    type: number
    sql: ${TABLE}.parent_request_issue_id ;;
  }

  dimension: benefit_type {
    type: string
    sql: ${TABLE}.benefit_type ;;
  }

  dimension: contention_reference_id {
    type: number
    sql: ${TABLE}.contention_reference_id ;;
  }

  dimension: contested_decision_issue_id {
    type: number
    sql: ${TABLE}.contested_decision_issue_id ;;
  }

  dimension: contested_issue_description {
    type: string
    sql:  ${TABLE}.contested_issue_description ;;
  }

  dimension: unidentified_issue_text {
    type: string
    sql:  ${TABLE}.unidentified_issue_text ;;
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

  dimension_group: decision {
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
    sql: ${TABLE}.decision_date ;;
  }

  dimension_group: decision_sync_attempted {
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
    sql: ${TABLE}.decision_sync_attempted_at ;;
  }

  dimension: decision_sync_error {
    type: string
    sql: ${TABLE}.decision_sync_error ;;
  }

  dimension_group: decision_sync_processed {
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
    sql: ${TABLE}.decision_sync_processed_at ;;
  }

  dimension_group: decision_sync_submitted {
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
    sql: ${TABLE}.decision_sync_submitted_at ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: end_product_establishment_id {
    type: number
    sql: ${TABLE}.end_product_establishment_id ;;
  }

  dimension: ineligible_due_to_id {
    type: number
    sql: ${TABLE}.ineligible_due_to_id ;;
  }

  dimension: ineligible_reason {
    type: string
    sql: ${TABLE}.ineligible_reason ;;
  }

  dimension: is_unidentified {
    type: string
    sql: ${TABLE}.is_unidentified ;;
  }

  dimension: issue_category {
    type: string
    sql: ${TABLE}.issue_category ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: ramp_claim_id {
    type: string
    sql: ${TABLE}.ramp_claim_id ;;
  }

  dimension_group: rating_issue_associated {
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
    sql: ${TABLE}.rating_issue_associated_at ;;
  }

  dimension_group: removed {
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
    sql: ${TABLE}.removed_at ;;
  }

  dimension: decision_review_id {
    type: number
    sql: ${TABLE}.decision_review_id ;;
  }

  dimension: untimely_exemption {
    type: string
    sql: ${TABLE}.untimely_exemption ;;
  }

  dimension: untimely_exemption_notes {
    type: string
    sql: ${TABLE}.untimely_exemption_notes ;;
  }

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  dimension: vacols_sequence_id {
    type: string
    sql: ${TABLE}.vacols_sequence_id ;;
  }

  dimension: decision_doc_date {
    type: date
    sql: decision_documents.decision_date ;;
  }

  measure: pending_appeal_request_issue_count {
    type: count
    filters: {
      field: decision_doc_date
      value: "NULL"
    }
    drill_fields: [id, decision_review_id]
  }

  measure: average_pending_days {
    type: average
    sql: DATEDIFF(day, ${appeals.receipt_date}, CURRENT_DATE) ;;
    filters: {
      field: decision_doc_date
      value: "NULL"
    }
  }

  measure: completed_appeal_request_issue_count {
    type: count
    filters: {
      field: decision_doc_date
      value: "-NULL"
    }
    drill_fields: [id, decision_review_id]
  }

  measure: average_completed_days {
    type: average
    sql: DATEDIFF(day, ${appeals.receipt_date}, CURRENT_DATE) ;;
    filters: {
      field: decision_doc_date
      value: "-NULL"
    }
  }

  measure: appeal_request_issue_count {
    type: count
    drill_fields: [id, decision_review_id]
  }

  measure: count {
    type: count
    drill_fields: [parent_request_issue_id]
  }
}
