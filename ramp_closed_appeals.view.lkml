view: ramp_closed_appeals {
  sql_table_name: public.ramp_closed_appeals ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: nod {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.nod_date ;;
  }

  dimension: ramp_election_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ramp_election_id ;;
  }

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ramp_elections.id]
  }
}
