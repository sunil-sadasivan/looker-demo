view: appeal_series {
  sql_table_name: public.appeal_series ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: incomplete {
    type: yesno
    sql: ${TABLE}.incomplete ;;
  }

  dimension: merged_appeal_count {
    type: number
    sql: ${TABLE}.merged_appeal_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id, legacy_appeals.count]
  }
}
