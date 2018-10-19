view: vacols_staff {
  sql_table_name: vacols.staff ;;

  dimension: sactive {
    description: "Active/Inactive flag"
    type: string
    sql: ${TABLE}.sactive ;;
  }

  dimension: saddrcnty {
    description: "Staff member country"
    type: string
    sql: ${TABLE}.saddrcnty ;;
  }

  dimension: saddrcty {
    description: "Staff member city"
    type: string
    sql: ${TABLE}.saddrcty ;;
  }

  dimension: saddrst1 {
    description: "First line of staff member street address"
    type: string
    sql: ${TABLE}.saddrst1 ;;
  }

  dimension: saddrst2 {
    description: "Second line of staff member street address"
    type: string
    sql: ${TABLE}.saddrst2 ;;
  }

  dimension: saddrstt {
    description: "Staff member state"
    type: string
    sql: ${TABLE}.saddrstt ;;
  }

  dimension: saddrzip {
    description: "Staff member zipcode"
    type: string
    sql: ${TABLE}.saddrzip ;;
  }

  dimension: sattyid {
    description: "Attorney number"
    type: string
    sql: ${TABLE}.sattyid ;;
  }

  dimension: sdept {
    description: "Staff member department"
    type: string
    sql: ${TABLE}.sdept ;;
  }

  dimension: sdomainid {
    description: "Staff css id"
    type: string
    sql: ${TABLE}.sdomainid ;;
  }

  dimension: sfoiasec {
    description: "FOIA security access"
    type: number
    sql: ${TABLE}.sfoiasec ;;
  }

  dimension: sinvsec {
    type: string
    sql: ${TABLE}.sinvsec ;;
  }

  dimension: slogid {
    description: "Staff member unique ID"
    type: string
    sql: ${TABLE}.slogid ;;
  }

  dimension: smemgrp {
    description: "Writes for VLJ"
    type: string
    sql: ${TABLE}.smemgrp ;;
  }

  dimension: snamef {
    description: "Staff Member first name"
    label: "First name"
    type: string
    sql: ${TABLE}.snamef ;;
  }

  dimension: snamel {
    description: "Staff Member last name"
    label: "Last name"
    type: string
    sql: ${TABLE}.snamel ;;
  }

  dimension: snamemi {
    description: "Staff Member middle initial"
    type: string
    sql: ${TABLE}.snamemi ;;
  }

  dimension: snotes {
    description: "notes"
    type: string
    sql: ${TABLE}.snotes ;;
  }

  dimension: sorc1 {
    description: "Mail security"
    type: number
    sql: ${TABLE}.sorc1 ;;
  }

  dimension: sorc2 {
    description: "Hearing security"
    type: number
    sql: ${TABLE}.sorc2 ;;
  }

  dimension: sorc3 {
    description: "Atty fee security"
    type: number
    sql: ${TABLE}.sorc3 ;;
  }

  dimension: sorc4 {
    description: "QR security"
    type: number
    sql: ${TABLE}.sorc4 ;;
  }

  dimension: sorg {
    description: "Organization"
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
