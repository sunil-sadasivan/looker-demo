view: average_time_for_decision {
  derived_table: {
    sql: SELECT AVG(DATEDIFF(days, appeals.established_at, decision_documents.decision_date)) as average_time_for_decision
         from public.appeals as appeals
         left outer join public.decision_documents as decision_documents on appeals.id = decision_documents.appeal_id
      ;;
  }

  dimension: average_time_for_decision {
    type: number
    sql: ${TABLE}.average_time_for_decision ;;
  }
}
