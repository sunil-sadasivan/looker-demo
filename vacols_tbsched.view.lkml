view: vacols_tbsched {
  sql_table_name: vacols.tbsched ;;

  dimension_group: tbaddtime {
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
    sql: ${TABLE}.tbaddtime ;;
  }

  dimension: tbadduser {
    type: string
    sql: ${TABLE}.tbadduser ;;
  }

  dimension: tbaty1 {
    type: string
    sql: ${TABLE}.tbaty1 ;;
  }

  dimension: tbaty2 {
    type: string
    sql: ${TABLE}.tbaty2 ;;
  }

  dimension: tbaty3 {
    type: string
    sql: ${TABLE}.tbaty3 ;;
  }

  dimension: tbaty4 {
    type: string
    sql: ${TABLE}.tbaty4 ;;
  }

  dimension: tbbvapoc {
    type: string
    sql: ${TABLE}.tbbvapoc ;;
  }

  dimension: tbcancel {
    type: string
    sql: ${TABLE}.tbcancel ;;
  }

  dimension_group: tbenddate {
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
    sql: ${TABLE}.tbenddate ;;
  }

  dimension: tbleg {
    type: number
    sql: ${TABLE}.tbleg ;;
  }

  dimension: tbmem1 {
    type: string
    sql: ${TABLE}.tbmem1 ;;
  }

  dimension: tbmem2 {
    type: string
    sql: ${TABLE}.tbmem2 ;;
  }

  dimension: tbmem3 {
    type: string
    sql: ${TABLE}.tbmem3 ;;
  }

  dimension: tbmem4 {
    type: string
    sql: ${TABLE}.tbmem4 ;;
  }

  dimension_group: tbmodtime {
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
    sql: ${TABLE}.tbmodtime ;;
  }

  dimension: tbmoduser {
    type: string
    sql: ${TABLE}.tbmoduser ;;
  }

  dimension: tbro {
    type: string
    sql: ${TABLE}.tbro ;;
  }

  dimension: tbropoc {
    type: string
    sql: ${TABLE}.tbropoc ;;
  }

  dimension_group: tbstdate {
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
    sql: ${TABLE}.tbstdate ;;
  }

  dimension: tbtrip {
    type: number
    sql: ${TABLE}.tbtrip ;;
  }

  dimension: tbyear {
    type: string
    sql: ${TABLE}.tbyear ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
