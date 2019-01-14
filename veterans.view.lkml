view: veterans {
  sql_table_name: public.veterans ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: file_number {
    type: string
    sql: ${TABLE}.file_number ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }


  dimension: name_suffix {
    type: string
    sql: ${TABLE}.name_suffix ;;
  }

  dimension: participant_id {
    type: string
    sql: ${TABLE}.participant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
