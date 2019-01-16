view: legacy_hearings {
  sql_table_name: public.legacy_hearings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_id {
    type: number
    sql: ${TABLE}.appeal_id ;;
  }

  dimension: military_service {
    type: string
    sql: ${TABLE}.military_service ;;
  }

  dimension: prepped {
    type: string
    sql: ${TABLE}.prepped ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: user_id {
    type: number
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
    drill_fields: [id]
  }
}
