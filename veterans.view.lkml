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

  dimension: participant_id {
    type: string
    sql: ${TABLE}.participant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
