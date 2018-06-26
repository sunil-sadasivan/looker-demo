view: certification_cancellations {
  sql_table_name: public.certification_cancellations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cancellation_reason {
    type: string
    sql: ${TABLE}.cancellation_reason ;;
  }

  dimension: certification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.certification_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: other_reason {
    type: string
    sql: ${TABLE}.other_reason ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      certifications.id,
      certifications.certifying_official_name,
      certifications.certifying_username,
      certifications.representative_name,
      certifications.vacols_representative_name,
      certifications.bgs_representative_name
    ]
  }
}
