view: vacols_raw_issues {
  sql_table_name: VACOLS.ISSUES ;;

  dimension_group: issadtime {
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
    sql: ${TABLE}.ISSADTIME ;;
  }

  dimension: issaduser {
    type: string
    sql: ${TABLE}.ISSADUSER ;;
  }

  dimension: isscode {
    type: string
    sql: ${TABLE}.ISSCODE ;;
  }

  dimension: issdc {
    type: string
    sql: ${TABLE}.ISSDC ;;
  }

  dimension_group: issdcls {
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
    sql: ${TABLE}.ISSDCLS ;;
  }

  dimension: issdesc {
    type: string
    sql: ${TABLE}.ISSDESC ;;
  }

  dimension: issdev {
    type: string
    sql: ${TABLE}.ISSDEV ;;
  }

  dimension: issgr {
    type: string
    sql: ${TABLE}.ISSGR ;;
  }

  dimension: isskey {
    type: string
    sql: ${TABLE}.ISSKEY ;;
  }

  dimension: isslev1 {
    type: string
    sql: ${TABLE}.ISSLEV1 ;;
  }

  dimension: isslev2 {
    type: string
    sql: ${TABLE}.ISSLEV2 ;;
  }

  dimension: isslev3 {
    type: string
    sql: ${TABLE}.ISSLEV3 ;;
  }

  dimension_group: issmdtime {
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
    sql: ${TABLE}.ISSMDTIME ;;
  }

  dimension: issmduser {
    type: string
    sql: ${TABLE}.ISSMDUSER ;;
  }

  dimension: issprog {
    type: string
    sql: ${TABLE}.ISSPROG ;;
  }

  dimension: isssel {
    type: string
    sql: ${TABLE}.ISSSEL ;;
  }

  dimension: issseq {
    type: number
    sql: ${TABLE}.ISSSEQ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
