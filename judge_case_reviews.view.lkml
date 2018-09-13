view: judge_case_reviews {
  sql_table_name: public.judge_case_reviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: areas_for_improvement {
    type: string
    sql: ${TABLE}.areas_for_improvement ;;
  }

  dimension: attorney_id {
    type: number
    sql: ${TABLE}.attorney_id ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: complexity {
    type: string
    sql: ${TABLE}.complexity ;;
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

  dimension: factors_not_considered {
    type: string
    sql: ${TABLE}.factors_not_considered ;;
  }

  dimension: is_legacy {
    type: yesno
    sql: strpos(${task_id}, '-') > 0 ;;
  }

  dimension: judge_id {
    type: number
    sql: ${TABLE}.judge_id ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: task_id {
    type: string
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
