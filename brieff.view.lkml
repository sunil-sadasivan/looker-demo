view: brieff {
  sql_table_name: vacols.brieff ;;

  dimension_group: bf41stat {
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
    sql: ${TABLE}.bf41stat ;;
  }

  dimension: bfac {
    type: string
    sql: ${TABLE}.bfac ;;
  }

  dimension: bfarc {
    type: string
    sql: ${TABLE}.bfarc ;;
  }

  dimension: bfarcdisp {
    type: string
    sql: ${TABLE}.bfarcdisp ;;
  }

  dimension: bfattid {
    type: string
    sql: ${TABLE}.bfattid ;;
  }

  dimension: bfboard {
    type: string
    sql: ${TABLE}.bfboard ;;
  }

  dimension: bfbox {
    type: string
    sql: ${TABLE}.bfbox ;;
  }

  dimension_group: bfbsasgn {
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
    sql: ${TABLE}.bfbsasgn ;;
  }

  dimension: bfcallup {
    type: string
    sql: ${TABLE}.bfcallup ;;
  }

  dimension: bfcallyymm {
    type: string
    sql: ${TABLE}.bfcallyymm ;;
  }

  dimension: bfcasev {
    type: string
    sql: ${TABLE}.bfcasev ;;
  }

  dimension: bfcaseva {
    type: string
    sql: ${TABLE}.bfcaseva ;;
  }

  dimension: bfcasevb {
    type: string
    sql: ${TABLE}.bfcasevb ;;
  }

  dimension: bfcasevc {
    type: string
    sql: ${TABLE}.bfcasevc ;;
  }

  dimension: bfcclkid {
    type: string
    sql: ${TABLE}.bfcclkid ;;
  }

  dimension: bfcorkey {
    type: string
    sql: ${TABLE}.bfcorkey ;;
  }

  dimension: bfcorlid {
    type: string
    sql: ${TABLE}.bfcorlid ;;
  }

  dimension: bfcurloc {
    type: string
    sql: ${TABLE}.bfcurloc ;;
  }

  dimension_group: bfd19 {
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
    sql: ${TABLE}.bfd19 ;;
  }

  dimension_group: bfdarcin {
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
    sql: ${TABLE}.bfdarcin ;;
  }

  dimension_group: bfdarcout {
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
    sql: ${TABLE}.bfdarcout ;;
  }

  dimension_group: bfdasgn {
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
    sql: ${TABLE}.bfdasgn ;;
  }

  dimension: bfdc {
    type: string
    sql: ${TABLE}.bfdc ;;
  }

  dimension_group: bfdcertool {
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
    sql: ${TABLE}.bfdcertool ;;
  }

  dimension: bfdcfld1 {
    type: string
    sql: ${TABLE}.bfdcfld1 ;;
  }

  dimension: bfdcfld2 {
    type: string
    sql: ${TABLE}.bfdcfld2 ;;
  }

  dimension: bfdcfld3 {
    type: string
    sql: ${TABLE}.bfdcfld3 ;;
  }

  dimension: bfdcn {
    type: string
    sql: ${TABLE}.bfdcn ;;
  }

  dimension_group: bfdcue {
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
    sql: ${TABLE}.bfdcue ;;
  }

  dimension_group: bfddec {
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
    sql: ${TABLE}.bfddec ;;
  }

  dimension_group: bfddro {
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
    sql: ${TABLE}.bfddro ;;
  }

  dimension_group: bfddvdsp {
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
    sql: ${TABLE}.bfddvdsp ;;
  }

  dimension_group: bfddvin {
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
    sql: ${TABLE}.bfddvin ;;
  }

  dimension_group: bfddvout {
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
    sql: ${TABLE}.bfddvout ;;
  }

  dimension_group: bfddvret {
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
    sql: ${TABLE}.bfddvret ;;
  }

  dimension_group: bfddvwrk {
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
    sql: ${TABLE}.bfddvwrk ;;
  }

  dimension_group: bfdlocin {
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
    sql: ${TABLE}.bfdlocin ;;
  }

  dimension_group: bfdloout {
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
    sql: ${TABLE}.bfdloout ;;
  }

  dimension_group: bfdmcon {
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
    sql: ${TABLE}.bfdmcon ;;
  }

  dimension_group: bfdmem {
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
    sql: ${TABLE}.bfdmem ;;
  }

  dimension_group: bfdnod {
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
    sql: ${TABLE}.bfdnod ;;
  }

  dimension: bfdocind {
    type: string
    sql: ${TABLE}.bfdocind ;;
  }

  dimension_group: bfdorg {
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
    sql: ${TABLE}.bfdorg ;;
  }

  dimension_group: bfdpdcn {
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
    sql: ${TABLE}.bfdpdcn ;;
  }

  dimension_group: bfdqrsnt {
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
    sql: ${TABLE}.bfdqrsnt ;;
  }

  dimension_group: bfdrocket {
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
    sql: ${TABLE}.bfdrocket ;;
  }

  dimension_group: bfdrodec {
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
    sql: ${TABLE}.bfdrodec ;;
  }

  dimension: bfdroid {
    type: string
    sql: ${TABLE}.bfdroid ;;
  }

  dimension: bfdrortr {
    type: string
    sql: ${TABLE}.bfdrortr ;;
  }

  dimension_group: bfdsoc {
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
    sql: ${TABLE}.bfdsoc ;;
  }

  dimension_group: bfdtb {
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
    sql: ${TABLE}.bfdtb ;;
  }

  dimension_group: bfdtbready {
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
    sql: ${TABLE}.bfdtbready ;;
  }

  dimension_group: bfdthurb {
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
    sql: ${TABLE}.bfdthurb ;;
  }

  dimension: bfha {
    type: string
    sql: ${TABLE}.bfha ;;
  }

  dimension: bfhines {
    type: string
    sql: ${TABLE}.bfhines ;;
  }

  dimension: bfhr {
    type: string
    sql: ${TABLE}.bfhr ;;
  }

  dimension: bfic {
    type: string
    sql: ${TABLE}.bfic ;;
  }

  dimension: bfio {
    type: string
    sql: ${TABLE}.bfio ;;
  }

  dimension: bfissnr {
    type: string
    sql: ${TABLE}.bfissnr ;;
  }

  dimension: bfkey {
    type: string
    sql: ${TABLE}.bfkey ;;
  }

  dimension: bflot {
    type: string
    sql: ${TABLE}.bflot ;;
  }

  dimension: bfmemid {
    type: string
    sql: ${TABLE}.bfmemid ;;
  }

  dimension: bfmpro {
    type: string
    sql: ${TABLE}.bfmpro ;;
  }

  dimension: bfms {
    type: string
    sql: ${TABLE}.bfms ;;
  }

  dimension: bfmstat {
    type: string
    sql: ${TABLE}.bfmstat ;;
  }

  dimension: bfnrci {
    type: string
    sql: ${TABLE}.bfnrci ;;
  }

  dimension: bfnrcopy {
    type: string
    sql: ${TABLE}.bfnrcopy ;;
  }

  dimension: bfoc {
    type: string
    sql: ${TABLE}.bfoc ;;
  }

  dimension: bforgtic {
    type: string
    sql: ${TABLE}.bforgtic ;;
  }

  dimension: bfpdnum {
    type: string
    sql: ${TABLE}.bfpdnum ;;
  }

  dimension: bfrdmref {
    type: string
    sql: ${TABLE}.bfrdmref ;;
  }

  dimension: bfregoff {
    type: string
    sql: ${TABLE}.bfregoff ;;
  }

  dimension: bfro1 {
    type: string
    sql: ${TABLE}.bfro1 ;;
  }

  dimension: bfrocdoc {
    type: string
    sql: ${TABLE}.bfrocdoc ;;
  }

  dimension: bfsh {
    type: string
    sql: ${TABLE}.bfsh ;;
  }

  dimension: bfso {
    type: string
    sql: ${TABLE}.bfso ;;
  }

  dimension_group: bfssoc1 {
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
    sql: ${TABLE}.bfssoc1 ;;
  }

  dimension_group: bfssoc2 {
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
    sql: ${TABLE}.bfssoc2 ;;
  }

  dimension_group: bfssoc3 {
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
    sql: ${TABLE}.bfssoc3 ;;
  }

  dimension_group: bfssoc4 {
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
    sql: ${TABLE}.bfssoc4 ;;
  }

  dimension_group: bfssoc5 {
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
    sql: ${TABLE}.bfssoc5 ;;
  }

  dimension: bfst {
    type: string
    sql: ${TABLE}.bfst ;;
  }

  dimension: bfstasgn {
    type: string
    sql: ${TABLE}.bfstasgn ;;
  }

  dimension: bfsub {
    type: string
    sql: ${TABLE}.bfsub ;;
  }

  dimension: bftbind {
    type: string
    sql: ${TABLE}.bftbind ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
