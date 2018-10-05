view: decass {
  sql_table_name: VACOLS.DECASS ;;

  dimension: de1_touch {
    type: string
    sql: ${TABLE}.DE1TOUCH ;;
  }

  dimension_group: deadtim {
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
    sql: ${TABLE}.DEADTIM ;;
  }

  dimension: deadusr {
    type: string
    sql: ${TABLE}.DEADUSR ;;
  }

  dimension: dearem {
    type: string
    sql: ${TABLE}.DEAREM ;;
  }

  dimension_group: deassign {
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
    sql: ${TABLE}.DEASSIGN ;;
  }

  dimension: deatcom {
    type: string
    sql: ${TABLE}.DEATCOM ;;
  }

  dimension: deatty {
    type: string
    sql: ${TABLE}.DEATTY ;;
  }

  dimension: debmcom {
    type: string
    sql: ${TABLE}.DEBMCOM ;;
  }

  dimension_group: decomp {
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
    sql: ${TABLE}.DECOMP ;;
  }

  dimension_group: dedeadline {
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
    sql: ${TABLE}.DEDEADLINE ;;
  }

  dimension: dedocid {
    type: string
    sql: ${TABLE}.DEDOCID ;;
  }

  dimension: defcr {
    type: number
    sql: ${TABLE}.DEFCR ;;
  }

  dimension: defdiff {
    type: string
    sql: ${TABLE}.DEFDIFF ;;
  }

  dimension: defolder {
    type: string
    sql: ${TABLE}.DEFOLDER ;;
  }

  dimension: dehours {
    type: number
    sql: ${TABLE}.DEHOURS ;;
  }

  dimension: deicr {
    type: number
    sql: ${TABLE}.DEICR ;;
  }

  dimension: delock {
    type: string
    sql: ${TABLE}.DELOCK ;;
  }

  dimension_group: demdtim {
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
    sql: ${TABLE}.DEMDTIM ;;
  }

  dimension: demdusr {
    type: string
    sql: ${TABLE}.DEMDUSR ;;
  }

  dimension: dememid {
    type: string
    sql: ${TABLE}.DEMEMID ;;
  }

  dimension: deoq {
    type: string
    sql: ${TABLE}.DEOQ ;;
  }

  dimension: depdiff {
    type: string
    sql: ${TABLE}.DEPDIFF ;;
  }

  dimension: deprod {
    type: string
    sql: ${TABLE}.DEPROD ;;
  }

  dimension_group: deprogrev {
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
    sql: ${TABLE}.DEPROGREV ;;
  }

  dimension: deqr1 {
    type: string
    sql: ${TABLE}.DEQR1 ;;
  }

  dimension: deqr10 {
    type: string
    sql: ${TABLE}.DEQR10 ;;
  }

  dimension: deqr11 {
    type: string
    sql: ${TABLE}.DEQR11 ;;
  }

  dimension: deqr2 {
    type: string
    sql: ${TABLE}.DEQR2 ;;
  }

  dimension: deqr3 {
    type: string
    sql: ${TABLE}.DEQR3 ;;
  }

  dimension: deqr4 {
    type: string
    sql: ${TABLE}.DEQR4 ;;
  }

  dimension: deqr5 {
    type: string
    sql: ${TABLE}.DEQR5 ;;
  }

  dimension: deqr6 {
    type: string
    sql: ${TABLE}.DEQR6 ;;
  }

  dimension: deqr7 {
    type: string
    sql: ${TABLE}.DEQR7 ;;
  }

  dimension: deqr8 {
    type: string
    sql: ${TABLE}.DEQR8 ;;
  }

  dimension: deqr9 {
    type: string
    sql: ${TABLE}.DEQR9 ;;
  }

  dimension_group: dereceive {
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
    sql: ${TABLE}.DERECEIVE ;;
  }

  dimension: derecommend {
    type: string
    sql: ${TABLE}.DERECOMMEND ;;
  }

  dimension: deteam {
    type: string
    sql: ${TABLE}.DETEAM ;;
  }

  dimension: detrem {
    type: string
    sql: ${TABLE}.DETREM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
