view: worksheet_issues {
  sql_table_name: public.worksheet_issues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow {
    type: yesno
    sql: ${TABLE}.allow ;;
  }

  dimension: appeal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appeal_id ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: deny {
    type: yesno
    sql: ${TABLE}.deny ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dismiss {
    type: yesno
    sql: ${TABLE}.dismiss ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: from_vacols {
    type: yesno
    sql: ${TABLE}.from_vacols ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: omo {
    type: yesno
    sql: ${TABLE}.omo ;;
  }

  dimension: remand {
    type: yesno
    sql: ${TABLE}.remand ;;
  }

  dimension: reopen {
    type: yesno
    sql: ${TABLE}.reopen ;;
  }

  dimension: vacols_sequence_id {
    type: string
    sql: ${TABLE}.vacols_sequence_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, appeals.id]
  }
}
