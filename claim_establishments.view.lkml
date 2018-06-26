view: claim_establishments {
  sql_table_name: public.claim_establishments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: decision_type {
    type: number
    sql: ${TABLE}.decision_type ;;
  }

  dimension: email_recipient {
    type: string
    sql: ${TABLE}.email_recipient ;;
  }

  dimension: email_ro_id {
    type: string
    sql: ${TABLE}.email_ro_id ;;
  }

  dimension: ep_code {
    type: string
    sql: ${TABLE}.ep_code ;;
  }

  dimension_group: outcoding {
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
    sql: ${TABLE}.outcoding_date ;;
  }

  dimension: task_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.task_id ;;
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

  measure: count {
    type: count
    drill_fields: [id, tasks.id]
  }
}
