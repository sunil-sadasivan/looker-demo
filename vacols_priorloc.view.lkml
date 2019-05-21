view: vacols_priorloc {
  sql_table_name: vacols.priorloc ;;

  dimension_group: locdin {
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
    sql: ${TABLE}.locdin ;;
  }

  dimension_group: locdout {
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
    sql: ${TABLE}.locdout ;;
  }

  dimension: days_in_location {
    type: number
    sql: ${locdin_date} - ${locdout_date} ;;
  }

  dimension_group: locdto {
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
    sql: ${TABLE}.locdto ;;
  }

  dimension: locexcep {
    type: string
    sql: ${TABLE}.locexcep ;;
  }

  dimension: lockey {
    type: string
    sql: ${TABLE}.lockey ;;
  }

  dimension: loclcode {
    type: string
    sql: ${TABLE}.loclcode ;;
  }

  dimension: locstout {
    type: string
    sql: ${TABLE}.locstout ;;
  }

  dimension: locstrcv {
    type: string
    sql: ${TABLE}.locstrcv ;;
  }

  dimension: locstto {
    type: string
    sql: ${TABLE}.locstto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: days_in_location_average {
    type: average
    sql: ${days_in_location} ;;
  }

  measure: days_in_location_99th_percentile {
    type: percentile
    percentile: 99
    sql: ${days_in_location} ;;
  }

  measure: days_in_location_median {
    type: median
    sql: ${days_in_location} ;;
  }
}
