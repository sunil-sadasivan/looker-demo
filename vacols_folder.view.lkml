view: vacols_folder {
  sql_table_name: vacols.folder ;;

  dimension: ti38us {
    description: "38 U.S.C. 1151"
    type: string
    sql: ${TABLE}.ti38us ;;
  }

  dimension: tiaddrto {
    type: string
    sql: ${TABLE}.tiaddrto ;;
  }

  dimension_group: tiadtime {
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
    sql: ${TABLE}.tiadtime ;;
  }

  dimension: tiaduser {
    type: string
    sql: ${TABLE}.tiaduser ;;
  }

  dimension: tiagor {
    type: string
    sql: ${TABLE}.tiagor ;;
  }

  dimension: tiaids {
    type: string
    sql: ${TABLE}.tiaids ;;
  }

  dimension: tiasbt {
    type: string
    sql: ${TABLE}.tiasbt ;;
  }

  dimension_group: ticerullo {
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
    sql: ${TABLE}.ticerullo ;;
  }

  dimension: ticknum {
    type: string
    sql: ${TABLE}.ticknum ;;
  }

  dimension: ticlcw {
    type: string
    sql: ${TABLE}.ticlcw ;;
  }

  dimension_group: ticlstme {
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
    sql: ${TABLE}.ticlstme ;;
  }

  dimension: ticorkey {
    description: "Corres foriegn key"
    type: string
    sql: ${TABLE}.ticorkey ;;
  }

  dimension_group: tidcls {
    description: "Date/Time of the decision"
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
    sql: ${TABLE}.tidcls ;;
  }

  dimension_group: tiddue {
    description: "ECA Revoked (db trigger)"
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
    sql: ${TABLE}.tiddue ;;
  }

  dimension_group: tidktime {
    description: "Docket process date"
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
    sql: ${TABLE}.tidktime ;;
  }

  dimension: tidkuser {
    description: "Docker processor"
    type: string
    sql: ${TABLE}.tidkuser ;;
  }

  dimension_group: tidrecv {
    description: "Datetime folder received at BVA"
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
    sql: ${TABLE}.tidrecv ;;
  }

  dimension: tifiloc {
    description: "Reason for Advancing on Docket"
    type: string
    sql: ${TABLE}.tifiloc ;;
  }

  dimension: tigwui {
    description: "Gulf War undiagnosed illness"
    type: string
    sql: ${TABLE}.tigwui ;;
  }

  dimension: tihepc {
    description: "Hepatitis C"
    type: string
    sql: ${TABLE}.tihepc ;;
  }

  dimension: tikeywrd {
    description: "Key word"
    type: string
    sql: ${TABLE}.tikeywrd ;;
  }

  dimension_group: timdtime {
    description: "Datetime last modified"
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
    sql: ${TABLE}.timdtime ;;
  }

  dimension: timduser {
    description: "Staff that last modified"
    type: string
    sql: ${TABLE}.timduser ;;
  }

  dimension: timgas {
    type: string
    sql: ${TABLE}.timgas ;;
  }

  dimension: timt {
    type: string
    sql: ${TABLE}.timt ;;
  }

  dimension: tinnme {
    type: string
    sql: ${TABLE}.tinnme ;;
  }

  dimension: tinoot {
    type: string
    sql: ${TABLE}.tinoot ;;
  }

  dimension: tinosc {
    type: string
    sql: ${TABLE}.tinosc ;;
  }

  dimension: tinum {
    type: string
    sql: ${TABLE}.tinum ;;
  }

  dimension: tinwgr {
    type: string
    sql: ${TABLE}.tinwgr ;;
  }

  dimension_group: tioctime {
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
    sql: ${TABLE}.tioctime ;;
  }

  dimension: tiocuser {
    type: string
    sql: ${TABLE}.tiocuser ;;
  }

  dimension: tiplexpress {
    type: string
    sql: ${TABLE}.tiplexpress ;;
  }

  dimension: tiplnod {
    type: string
    sql: ${TABLE}.tiplnod ;;
  }

  dimension: tiplwaiver {
    type: string
    sql: ${TABLE}.tiplwaiver ;;
  }

  dimension: tipres {
    type: string
    sql: ${TABLE}.tipres ;;
  }

  dimension: tiptsd {
    type: string
    sql: ${TABLE}.tiptsd ;;
  }

  dimension_group: tipulac {
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
    sql: ${TABLE}.tipulac ;;
  }

  dimension: tiradb {
    type: string
    sql: ${TABLE}.tiradb ;;
  }

  dimension: tiradn {
    type: string
    sql: ${TABLE}.tiradn ;;
  }

  dimension: tiread1 {
    type: string
    sql: ${TABLE}.tiread1 ;;
  }

  dimension: tiread2 {
    type: string
    sql: ${TABLE}.tiread2 ;;
  }

  dimension: tiresp1 {
    type: string
    sql: ${TABLE}.tiresp1 ;;
  }

  dimension: tisarc {
    type: string
    sql: ${TABLE}.tisarc ;;
  }

  dimension: tisexh {
    type: string
    sql: ${TABLE}.tisexh ;;
  }

  dimension: tisnl {
    type: string
    sql: ${TABLE}.tisnl ;;
  }

  dimension: tispare1 {
    type: string
    sql: ${TABLE}.tispare1 ;;
  }

  dimension: tispare2 {
    type: string
    sql: ${TABLE}.tispare2 ;;
  }

  dimension: tispare3 {
    type: string
    sql: ${TABLE}.tispare3 ;;
  }

  dimension: tistkey {
    type: string
    sql: ${TABLE}.tistkey ;;
  }

  dimension: tisubj {
    type: string
    sql: ${TABLE}.tisubj ;;
  }

  dimension: tisubj1 {
    type: string
    sql: ${TABLE}.tisubj1 ;;
  }

  dimension: tisubj2 {
    type: string
    sql: ${TABLE}.tisubj2 ;;
  }

  dimension: tisys {
    type: string
    sql: ${TABLE}.tisys ;;
  }

  dimension: titoba {
    type: string
    sql: ${TABLE}.titoba ;;
  }

  dimension: titrnum {
    type: string
    sql: ${TABLE}.titrnum ;;
  }

  dimension: titrtm {
    type: string
    sql: ${TABLE}.titrtm ;;
  }

  dimension: tivbms {
    type: string
    sql: ${TABLE}.tivbms ;;
  }

  dimension: tiwpptr {
    type: string
    sql: ${TABLE}.tiwpptr ;;
  }

  dimension: tiwpptrt {
    type: string
    sql: ${TABLE}.tiwpptrt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
