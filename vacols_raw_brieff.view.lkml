view: vacols_raw_brieff {
  sql_table_name: VACOLS.BRIEFF ;;

  dimension_group: bf41_stat {
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
    sql: ${TABLE}.BF41STAT ;;
  }

  dimension: bfac {
    type: string
    sql: ${TABLE}.BFAC ;;
  }

  dimension: bfarc {
    type: string
    sql: ${TABLE}.BFARC ;;
  }

  dimension: bfarcdisp {
    type: string
    sql: ${TABLE}.BFARCDISP ;;
  }

  dimension: bfattid {
    type: string
    sql: ${TABLE}.BFATTID ;;
  }

  dimension: bfboard {
    type: string
    sql: ${TABLE}.BFBOARD ;;
  }

  dimension: bfbox {
    type: string
    sql: ${TABLE}.BFBOX ;;
  }

  dimension_group: bfbsasgn {
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
    sql: ${TABLE}.BFBSASGN ;;
  }

  dimension: bfcallup {
    type: string
    sql: ${TABLE}.BFCALLUP ;;
  }

  dimension: bfcallyymm {
    type: string
    sql: ${TABLE}.BFCALLYYMM ;;
  }

  dimension: bfcasev {
    type: string
    sql: ${TABLE}.BFCASEV ;;
  }

  dimension: bfcaseva {
    type: string
    sql: ${TABLE}.BFCASEVA ;;
  }

  dimension: bfcasevb {
    type: string
    sql: ${TABLE}.BFCASEVB ;;
  }

  dimension: bfcasevc {
    type: string
    sql: ${TABLE}.BFCASEVC ;;
  }

  dimension: bfcclkid {
    type: string
    sql: ${TABLE}.BFCCLKID ;;
  }

  dimension: bfcorkey {
    type: string
    sql: ${TABLE}.BFCORKEY ;;
  }

  dimension: bfcorlid {
    type: string
    sql: ${TABLE}.BFCORLID ;;
  }

  dimension: bfcurloc {
    type: string
    sql: ${TABLE}.BFCURLOC ;;
  }

  dimension_group: bfd19 {
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
    sql: ${TABLE}.BFD19 ;;
  }

  dimension_group: bfdarcin {
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
    sql: ${TABLE}.BFDARCIN ;;
  }

  dimension_group: bfdarcout {
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
    sql: ${TABLE}.BFDARCOUT ;;
  }

  dimension_group: bfdasgn {
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
    sql: ${TABLE}.BFDASGN ;;
  }

  dimension: bfdc {
    type: string
    sql: ${TABLE}.BFDC ;;
  }

  dimension_group: bfdcertool {
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
    sql: ${TABLE}.BFDCERTOOL ;;
  }

  dimension: bfdcfld1 {
    type: string
    sql: ${TABLE}.BFDCFLD1 ;;
  }

  dimension: bfdcfld2 {
    type: string
    sql: ${TABLE}.BFDCFLD2 ;;
  }

  dimension: bfdcfld3 {
    type: string
    sql: ${TABLE}.BFDCFLD3 ;;
  }

  dimension: bfdcn {
    type: string
    sql: ${TABLE}.BFDCN ;;
  }

  dimension_group: bfdcue {
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
    sql: ${TABLE}.BFDCUE ;;
  }

  dimension_group: bfddec {
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
    sql: ${TABLE}.BFDDEC ;;
  }

  dimension_group: bfddro {
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
    sql: ${TABLE}.BFDDRO ;;
  }

  dimension_group: bfddvdsp {
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
    sql: ${TABLE}.BFDDVDSP ;;
  }

  dimension_group: bfddvin {
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
    sql: ${TABLE}.BFDDVIN ;;
  }

  dimension_group: bfddvout {
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
    sql: ${TABLE}.BFDDVOUT ;;
  }

  dimension_group: bfddvret {
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
    sql: ${TABLE}.BFDDVRET ;;
  }

  dimension_group: bfddvwrk {
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
    sql: ${TABLE}.BFDDVWRK ;;
  }

  dimension_group: bfdlocin {
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
    sql: ${TABLE}.BFDLOCIN ;;
  }

  dimension_group: bfdloout {
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
    sql: ${TABLE}.BFDLOOUT ;;
  }

  dimension_group: bfdmcon {
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
    sql: ${TABLE}.BFDMCON ;;
  }

  dimension_group: bfdmem {
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
    sql: ${TABLE}.BFDMEM ;;
  }

  dimension_group: bfdnod {
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
    sql: ${TABLE}.BFDNOD ;;
  }

  dimension: bfdocind {
    type: string
    sql: ${TABLE}.BFDOCIND ;;
  }

  dimension_group: bfdorg {
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
    sql: ${TABLE}.BFDORG ;;
  }

  dimension_group: bfdpdcn {
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
    sql: ${TABLE}.BFDPDCN ;;
  }

  dimension_group: bfdqrsnt {
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
    sql: ${TABLE}.BFDQRSNT ;;
  }

  dimension_group: bfdrocket {
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
    sql: ${TABLE}.BFDROCKET ;;
  }

  dimension_group: bfdrodec {
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
    sql: ${TABLE}.BFDRODEC ;;
  }

  dimension: bfdroid {
    type: string
    sql: ${TABLE}.BFDROID ;;
  }

  dimension: bfdrortr {
    type: string
    sql: ${TABLE}.BFDRORTR ;;
  }

  dimension_group: bfdsoc {
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
    sql: ${TABLE}.BFDSOC ;;
  }

  dimension_group: bfdtb {
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
    sql: ${TABLE}.BFDTB ;;
  }

  dimension_group: bfdtbready {
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
    sql: ${TABLE}.BFDTBREADY ;;
  }

  dimension_group: bfdthurb {
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
    sql: ${TABLE}.BFDTHURB ;;
  }

  dimension: bfha {
    type: string
    sql: ${TABLE}.BFHA ;;
  }

  dimension: bfhines {
    type: string
    sql: ${TABLE}.BFHINES ;;
  }

  dimension: bfhr {
    type: string
    sql: ${TABLE}.BFHR ;;
  }

  dimension: bfic {
    type: string
    sql: ${TABLE}.BFIC ;;
  }

  dimension: bfio {
    type: string
    sql: ${TABLE}.BFIO ;;
  }

  dimension: bfissnr {
    type: string
    sql: ${TABLE}.BFISSNR ;;
  }

  dimension: bfkey {
    type: string
    sql: ${TABLE}.BFKEY ;;
  }

  dimension: bflot {
    type: string
    sql: ${TABLE}.BFLOT ;;
  }

  dimension: bfmemid {
    type: string
    sql: ${TABLE}.BFMEMID ;;
  }

  dimension: bfmpro {
    type: string
    sql: ${TABLE}.BFMPRO ;;
  }

  dimension: bfms {
    type: string
    sql: ${TABLE}.BFMS ;;
  }

  dimension: bfmstat {
    type: string
    sql: ${TABLE}.BFMSTAT ;;
  }

  dimension: bfnrci {
    type: string
    sql: ${TABLE}.BFNRCI ;;
  }

  dimension: bfnrcopy {
    type: string
    sql: ${TABLE}.BFNRCOPY ;;
  }

  dimension: bfoc {
    type: string
    sql: ${TABLE}.BFOC ;;
  }

  dimension: bforgtic {
    type: string
    sql: ${TABLE}.BFORGTIC ;;
  }

  dimension: bfpdnum {
    type: string
    sql: ${TABLE}.BFPDNUM ;;
  }

  dimension: bfrdmref {
    type: string
    sql: ${TABLE}.BFRDMREF ;;
  }

  dimension: bfregoff {
    type: string
    sql: ${TABLE}.BFREGOFF ;;
  }

  dimension: bfro1 {
    type: string
    sql: ${TABLE}.BFRO1 ;;
  }

  dimension: bfrocdoc {
    type: string
    sql: ${TABLE}.BFROCDOC ;;
  }

  dimension: bfsh {
    type: string
    sql: ${TABLE}.BFSH ;;
  }

  dimension: bfso {
    type: string
    sql: ${TABLE}.BFSO ;;
  }

  dimension_group: bfssoc1 {
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
    sql: ${TABLE}.BFSSOC1 ;;
  }

  dimension_group: bfssoc2 {
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
    sql: ${TABLE}.BFSSOC2 ;;
  }

  dimension_group: bfssoc3 {
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
    sql: ${TABLE}.BFSSOC3 ;;
  }

  dimension_group: bfssoc4 {
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
    sql: ${TABLE}.BFSSOC4 ;;
  }

  dimension_group: bfssoc5 {
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
    sql: ${TABLE}.BFSSOC5 ;;
  }

  dimension: bfst {
    type: string
    sql: ${TABLE}.BFST ;;
  }

  dimension: bfstasgn {
    type: string
    sql: ${TABLE}.BFSTASGN ;;
  }

  dimension: bfsub {
    type: string
    sql: ${TABLE}.BFSUB ;;
  }

  dimension: bftbind {
    type: string
    sql: ${TABLE}.BFTBIND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
