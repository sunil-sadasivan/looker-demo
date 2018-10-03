view: vacols_issues {
  sql_table_name: vacols.issues ;;

  dimension_group: issadtime {
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
    sql: ${TABLE}.issadtime ;;
  }

  dimension: issaduser {
    type: string
    sql: ${TABLE}.issaduser ;;
  }

  dimension: isscode {
    type: string
    sql: ${TABLE}.isscode ;;
  }

  dimension: issdc {
    type: string
    sql: ${TABLE}.issdc ;;
  }

  dimension_group: issdcls {
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
    sql: ${TABLE}.issdcls ;;
  }

  dimension: issdesc {
    type: string
    sql: ${TABLE}.issdesc ;;
  }

  dimension: issdev {
    type: string
    sql: ${TABLE}.issdev ;;
  }

  dimension: issgr {
    type: string
    sql: ${TABLE}.issgr ;;
  }

  dimension: isskey {
    type: string
    sql: ${TABLE}.isskey ;;
  }

  dimension: isslev1 {
    type: string
    sql: ${TABLE}.isslev1 ;;
  }

  dimension: isslev2 {
    type: string
    sql: ${TABLE}.isslev2 ;;
  }

  dimension: isslev3 {
    type: string
    sql: ${TABLE}.isslev3 ;;
  }

  dimension_group: issmdtime {
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
    sql: ${TABLE}.issmdtime ;;
  }

  dimension: issmduser {
    type: string
    sql: ${TABLE}.issmduser ;;
  }

  dimension: issprog {
    type: string
    sql: ${TABLE}.issprog ;;
  }

  dimension: isssel {
    type: string
    sql: ${TABLE}.isssel ;;
  }

  dimension: issseq {
    type: number
    sql: ${TABLE}.issseq ;;
  }

  measure: issdc_count {
    type: count
    drill_fields: [issdc]
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
