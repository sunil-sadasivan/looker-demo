view: vacols_staff {
  sql_table_name: vacols.staff ;;

  dimension: sactive {
    type: string
    sql: ${TABLE}.sactive ;;
  }

  dimension: saddrcnty {
    type: string
    sql: ${TABLE}.saddrcnty ;;
  }

  dimension: saddrcty {
    type: string
    sql: ${TABLE}.saddrcty ;;
  }

  dimension: saddrnum {
    type: string
    sql: ${TABLE}.saddrnum ;;
  }

  dimension: saddrst1 {
    type: string
    sql: ${TABLE}.saddrst1 ;;
  }

  dimension: saddrst2 {
    type: string
    sql: ${TABLE}.saddrst2 ;;
  }

  dimension: saddrstt {
    type: string
    sql: ${TABLE}.saddrstt ;;
  }

  dimension: saddrzip {
    type: string
    sql: ${TABLE}.saddrzip ;;
  }

  dimension: sattyid {
    type: string
    sql: ${TABLE}.sattyid ;;
  }

  dimension: sdept {
    type: string
    sql: ${TABLE}.sdept ;;
  }

  dimension: sdomainid {
    type: string
    sql: ${TABLE}.sdomainid ;;
  }

  dimension: sfoiasec {
    type: number
    sql: ${TABLE}.sfoiasec ;;
  }

  dimension: sinvsec {
    type: string
    sql: ${TABLE}.sinvsec ;;
  }

  dimension: slogid {
    type: string
    sql: ${TABLE}.slogid ;;
  }

  dimension: smemgrp {
    type: string
    sql: ${TABLE}.smemgrp ;;
  }

  dimension: snamef {
    type: string
    sql: ${TABLE}.snamef ;;
  }

  dimension: snamel {
    type: string
    sql: ${TABLE}.snamel ;;
  }

  dimension: snamemi {
    type: string
    sql: ${TABLE}.snamemi ;;
  }

  dimension: snotes {
    type: string
    sql: ${TABLE}.snotes ;;
  }

  dimension: sorc1 {
    type: number
    sql: ${TABLE}.sorc1 ;;
  }

  dimension: sorc2 {
    type: number
    sql: ${TABLE}.sorc2 ;;
  }

  dimension: sorc3 {
    type: number
    sql: ${TABLE}.sorc3 ;;
  }

  dimension: sorc4 {
    type: number
    sql: ${TABLE}.sorc4 ;;
  }

  dimension: sorg {
    type: string
    sql: ${TABLE}.sorg ;;
  }

  dimension: srptsec {
    type: number
    sql: ${TABLE}.srptsec ;;
  }

  dimension: ssalut {
    type: string
    sql: ${TABLE}.ssalut ;;
  }

  dimension: sspare1 {
    type: string
    sql: ${TABLE}.sspare1 ;;
  }

  dimension: sspare2 {
    type: string
    sql: ${TABLE}.sspare2 ;;
  }

  dimension: sspare3 {
    type: string
    sql: ${TABLE}.sspare3 ;;
  }

  dimension: ssys {
    type: string
    sql: ${TABLE}.ssys ;;
  }

  dimension_group: stadtime {
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
    sql: ${TABLE}.stadtime ;;
  }

  dimension: staduser {
    type: string
    sql: ${TABLE}.staduser ;;
  }

  dimension: stafkey {
    type: string
    sql: ${TABLE}.stafkey ;;
  }

  dimension: stc1 {
    type: number
    sql: ${TABLE}.stc1 ;;
  }

  dimension: stc2 {
    type: number
    sql: ${TABLE}.stc2 ;;
  }

  dimension: stc3 {
    type: number
    sql: ${TABLE}.stc3 ;;
  }

  dimension: stc4 {
    type: number
    sql: ${TABLE}.stc4 ;;
  }

  dimension: stelfax {
    type: string
    sql: ${TABLE}.stelfax ;;
  }

  dimension: stelh {
    type: string
    sql: ${TABLE}.stelh ;;
  }

  dimension: stelw {
    type: string
    sql: ${TABLE}.stelw ;;
  }

  dimension: stelwex {
    type: string
    sql: ${TABLE}.stelwex ;;
  }

  dimension: stitle {
    type: string
    sql: ${TABLE}.stitle ;;
  }

  dimension_group: stmdtime {
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
    sql: ${TABLE}.stmdtime ;;
  }

  dimension: stmduser {
    type: string
    sql: ${TABLE}.stmduser ;;
  }

  dimension: susrpw {
    type: string
    sql: ${TABLE}.susrpw ;;
  }

  dimension: susrsec {
    type: string
    sql: ${TABLE}.susrsec ;;
  }

  dimension: susrtyp {
    type: string
    sql: ${TABLE}.susrtyp ;;
  }

  dimension: svlj {
    type: string
    sql: ${TABLE}.svlj ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
