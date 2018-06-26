view: hearings {
  sql_table_name: public.hearings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appeal_id ;;
  }

  dimension: military_service {
    type: string
    sql: ${TABLE}.military_service ;;
  }

  dimension: prepped {
    type: yesno
    sql: ${TABLE}.prepped ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  dimension: witness {
    type: string
    sql: ${TABLE}.witness ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.full_name,
      users.id,
      appeals.id,
      hearing_appeal_stream_snapshots.count,
      hearing_views.count
    ]
  }
}
