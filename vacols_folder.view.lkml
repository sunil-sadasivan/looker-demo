view: vacols_folder {
  sql_table_name: vacols.folder ;;

  dimension: ti38us {
    description: "38 U.S.C. 1151"
    type: string
    sql: ${TABLE}.ti38us ;;
  }

  dimension: tiaddrto {
    description: "CAVC Docket number for Motions"
    type: string
    sql: ${TABLE}.tiaddrto ;;
  }

  dimension_group: tiadtime {
    description: "Datetime added to Docket"
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
    description: "Staff who added to docket"
    type: string
    sql: ${TABLE}.tiaduser ;;
  }

  dimension: tiagor {
    description: "Special interests Agent Orange"
    type: string
    sql: ${TABLE}.tiagor ;;
  }

  dimension: tiaids {
    description: "AIDS/HIV"
    type: string
    sql: ${TABLE}.tiaids ;;
  }

  dimension: tiasbt {
    description: "Asbestos"
    type: string
    sql: ${TABLE}.tiasbt ;;
  }

  dimension_group: ticerullo {
    description: "Cerullo Order date for motions"
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
    description: "Folder Number (Assign(tsktknm), Attach(imgtkky) Brieff(bfkey), Hearsched(folder_nr), Priorloc(lockey))"
    type: string
    sql: ${TABLE}.ticknum ;;
  }

  dimension: ticlcw {
    type: string
    sql: ${TABLE}.ticlcw ;;
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
    description: "Keyword"
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
    description: "Mustard Gas"
    type: string
    sql: ${TABLE}.timgas ;;
  }

  dimension: tinnme {
    description: "No New and Material "
    type: string
    sql: ${TABLE}.tinnme ;;
  }

  dimension: tinoot {
    type: string
    sql: ${TABLE}.tinoot ;;
  }

  dimension: tinosc {
    description: "No special contentions"
    type: string
    sql: ${TABLE}.tinosc ;;
  }

  dimension: tinum {
    description: "Docket number"
    type: string
    sql: ${TABLE}.tinum ;;
  }

  dimension: tinwgr {
    description: "Not well grounded"
    type: string
    sql: ${TABLE}.tinwgr ;;
  }

  dimension_group: tioctime {
    description: "Outcode date"
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
    description: "Outcoder"
    type: string
    sql: ${TABLE}.tiocuser ;;
  }

  dimension: tiplexpress {
    description: "Pilot express lane"
    type: string
    sql: ${TABLE}.tiplexpress ;;
  }

  dimension: tiplnod {
    description: "Pilot standardized NOD"
    type: string
    sql: ${TABLE}.tiplnod ;;
  }

  dimension: tiplwaiver {
    description: "Pilot waiver form"
    type: string
    sql: ${TABLE}.tiplwaiver ;;
  }

  dimension: tipres {
    description: "Pre-discharge VA exam"
    type: string
    sql: ${TABLE}.tipres ;;
  }

  dimension: tiptsd {
    description: "PTSD"
    type: string
    sql: ${TABLE}.tiptsd ;;
  }

  dimension_group: tipulac {
    description: "Pulac Order Date (for Motions)"
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
    description: "Radiation Bomb"
    type: string
    sql: ${TABLE}.tiradb ;;
  }

  dimension: tiradn {
    description: "Radiation Non-bomb"
    type: string
    sql: ${TABLE}.tiradn ;;
  }

  dimension: tiread2 {
    description: "Citation number"
    type: string
    sql: ${TABLE}.tiread2 ;;
  }

  dimension: tiresp1 {
    description: "Transferring Regional Office"
    type: string
    sql: ${TABLE}.tiresp1 ;;
  }

  dimension: tisarc {
    description: "Sarcoidosis"
    type: string
    sql: ${TABLE}.tisarc ;;
  }

  dimension: tisexh {
    description: "Sexual Harrasement"
    type: string
    sql: ${TABLE}.tisexh ;;
  }

  dimension: tisnl {
    description: "SNL indicator"
    type: string
    sql: ${TABLE}.tisnl ;;
  }

  dimension: tispare1 {
    description: "GC Attorney Last for motions"
    type: string
    sql: ${TABLE}.tispare1 ;;
  }

  dimension: tispare2 {
    description: "GC Attorney First for motions"
    type: string
    sql: ${TABLE}.tispare2 ;;
  }

  dimension: tispare3 {
    description: "Character Count for Decision (Archive Process)"
    type: string
    sql: ${TABLE}.tispare3 ;;
  }

  dimension: tistkey {
    description: "Staff Owner"
    type: string
    sql: ${TABLE}.tistkey ;;
  }

  dimension: tisubj {
    description: "NOA filed (for Motions)"
    type: string
    sql: ${TABLE}.tisubj ;;
  }

  dimension: tisubj1 {
    description: "ECA Appeal ind."
    type: string
    sql: ${TABLE}.tisubj1 ;;
  }

  dimension: tisubj2 {
    description: "Paperless Appeal (Virtual VA)"
    type: string
    sql: ${TABLE}.tisubj2 ;;
  }

  dimension: titoba {
    description: "Tobacco"
    type: string
    sql: ${TABLE}.titoba ;;
  }

  dimension: titrnum {
    description: "Appeal Id"
    type: string
    sql: ${TABLE}.titrnum ;;
  }

  dimension: titrtm {
    description: "Total rating termination"
    type: string
    sql: ${TABLE}.titrtm ;;
  }

  dimension: tivbms {
    description: "VBMS appeal indicator"
    type: string
    sql: ${TABLE}.tivbms ;;
  }

  dimension: tiwpptr {
    description: "Motion Notes for motions"
    type: string
    sql: ${TABLE}.tiwpptr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
