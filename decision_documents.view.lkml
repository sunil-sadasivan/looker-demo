view: decision_documents {
  sql_table_name: public.decision_documents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_id {
    type: number
    sql: ${TABLE}.appeal_id ;;
  }

  dimension: citation_number {
    type: string
    sql: ${TABLE}.citation_number ;;
  }

  dimension: bva_decision_dispatched {
    type:  yesno
    sql: ${citation_number} IS NOT NULL  ;;
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

  dimension: redacted_document_location {
    type: string
    sql: ${TABLE}.redacted_document_location ;;
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

  dimension_group: submitted {
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
    sql: ${TABLE}.submitted_at ;;
  }

  dimension_group: attempted {
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
    sql: ${TABLE}.attempted_at ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.processed_at ;;
  }


  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension_group: uploaded_to_vbms {
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
    sql: ${TABLE}.uploaded_to_vbms_at ;;
  }

  measure: bva_decision_dispatched_count {
    type: count
    filters: {
      field: bva_decision_dispatched
      value: "yes"
    }
    drill_fields: [id]
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
