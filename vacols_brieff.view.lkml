view: vacols_brieff {

  derived_table: {
    sql:select *, ((select count(*) into dcnt from vacols.assign
            where tsktknm = bf.bfkey  and tskactcd in ('B', 'B1', 'B2')
        ) +
        (select count(*) into hcnt from vacols.hearsched where folder_nr = bf.bfkey
          and hearing_type in ('C', 'T', 'V') and aod in ('G', 'Y'))
        ) as aod_count
         from vacols.brieff bf
        ;;
  }

  dimension: _aod_cnt {
    description:  "AOD Status Count (if > 0, then this is indicated as AOD status)"
    type: number
    sql: ${TABLE}.aod_count;;
  }

  dimension: is_aod {
    description: "Is AOD based on AOD Status count"
    type: yesno
    sql: ${_aod_cnt} > 0 ;;
  }

  dimension_group: bf41_stat {
    description: "Date/Time Certified to BVA"
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
    sql: ${TABLE}."BF41STAT" ;;
  }

  dimension: bfac {
    description: "Type Action"
    type: string
    sql: ${TABLE}."BFAC" ;;
  }

  dimension: bfac_translated {
    description: "Type Action"
    type: string
    sql: CASE
        WHEN ${bfac} = 1 THEN 'Original'
        WHEN ${bfac} = 2 THEN 'Supplemental'
        WHEN ${bfac} = 3 THEN 'Post Remand'
        WHEN ${bfac} = 4 THEN 'Reconsideration'
        WHEN ${bfac} = 5 THEN 'Vacated'
        WHEN ${bfac} = 6 THEN 'De Novo'
        WHEN ${bfac} = 7 THEN 'Court Remand'
        WHEN ${bfac} = 8 THEN 'Designation of Record'
        WHEN ${bfac} = 9 THEN 'CUE'
        ELSE ${bfac}
      END
      ;;
  }


  dimension: bfarc {
    description: "Appeals Recource Center (for brokered appeals)"
    type: string
    sql: ${TABLE}."BFARC" ;;
  }

  dimension: bfarcdisp {
    description: "ARC (Broker) disposition"
    type: string
    sql: ${TABLE}."BFARCDISP" ;;
  }

  dimension: bfattid {
    description: "Attorney ID"
    type: string
    sql: ${TABLE}."BFATTID" ;;
  }

  dimension: bfboard {
    description: "Decision Team"
    type: string
    sql: ${TABLE}."BFBOARD" ;;
  }

  dimension: bfbox {
    description: "Specialty Case Tracking (SCT) group"
    type: string
    sql: ${TABLE}."BFBOX" ;;
  }

  dimension_group: bfbsasgn {
    description: "Date/Time Assigned to Decision Team"
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
    sql: ${TABLE}."BFBSASGN" ;;
  }

  dimension: bfcallup {
    description: "Outbased Travel Board Ind"
    type: string
    sql: ${TABLE}."BFCALLUP" ;;
  }

  dimension: bfcallyymm {
    description: "CAPRI Patient List Add/Del Indicator"
    type: string
    sql: ${TABLE}."BFCALLYYMM" ;;
  }

  dimension: bfcasev {
    description: "Appeal Program Area"
    type: string
    sql: ${TABLE}."BFCASEV" ;;
  }

  dimension: bfcaseva {
    description: "Not Used"
    type: string
    sql: ${TABLE}."BFCASEVA" ;;
  }

  dimension: bfcasevb {
    description: "Not Used"
    type: string
    sql: ${TABLE}."BFCASEVB" ;;
  }

  dimension: bfcasevc {
    description: "Not Used"
    type: string
    sql: ${TABLE}."BFCASEVC" ;;
  }

  dimension: bfcclkid {
    description: "CAVC folder number"
    type: string
    sql: ${TABLE}."BFCCLKID" ;;
  }

  dimension: bfcorkey {
    description: "Corres Table Key"
    type: string
    sql: ${TABLE}."BFCORKEY" ;;
  }

  dimension: bfcorlid {
    description: "Appellant ID (SSN or Claim Number)"
    type: string
    sql: ${TABLE}."BFCORLID" ;;
  }

  dimension: bfcurloc {
    description: "Current Location of Case File"
    type: string
    sql: ${TABLE}."BFCURLOC" ;;
  }

  dimension_group: bfd19 {
    description: "Date/Time Form 9 Received"
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
    sql: ${TABLE}."BFD19" ;;
  }

  dimension_group: bfdarcin {
    description: "Date to ARC"
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
    sql: ${TABLE}."BFDARCIN" ;;
  }

  dimension_group: bfdarcout {
    description: "Date from ARC"
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
    sql: ${TABLE}."BFDARCOUT" ;;
  }

  dimension_group: bfdasgn {
    description: "Date/Time assigned to Attorney"
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
    sql: ${TABLE}."BFDASGN" ;;
  }

  dimension: bfdc {
    description: "Disposition of Appeal"
    type: string
    sql: ${TABLE}."BFDC" ;;
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
    sql: ${TABLE}."BFDCERTOOL" ;;
  }

  dimension: bfdcfld1 {
    description: "DRO Informal Hearing"
    type: string
    sql: ${TABLE}."BFDCFLD1" ;;
  }

  dimension: bfdcfld2 {
    description: "DRO Formal Hearing"
    type: string
    sql: ${TABLE}."BFDCFLD2" ;;
  }

  dimension: bfdcfld3 {
    description: "DRO"
    type: string
    sql: ${TABLE}."BFDCFLD3" ;;
  }

  dimension: bfdcn {
    description: "Stays Indicator (CUE, Tobacco, IVM)"
    type: string
    sql: ${TABLE}."BFDCN" ;;
  }

  dimension_group: bfdcue {
    description: "Date/Time of CUE"
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
    sql: ${TABLE}."BFDCUE" ;;
  }

  dimension_group: bfddec {
    description: "Date/Time of Decision"
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
    sql: ${TABLE}."BFDDEC" ;;
  }

  dimension_group: bfddro {
    description: "Date DRO requested"
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
    sql: ${TABLE}."BFDDRO" ;;
  }

  dimension_group: bfddvdsp {
    description: "Date developent dispatched"
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
    sql: ${TABLE}."BFDDVDSP" ;;
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
    sql: ${TABLE}."BFDDVIN" ;;
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
    sql: ${TABLE}."BFDDVOUT" ;;
  }

  dimension_group: bfddvret {
    description: "Date development returned"
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
    sql: ${TABLE}."BFDDVRET" ;;
  }

  dimension_group: bfddvwrk {
    description: "Date development work began"
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
    sql: ${TABLE}."BFDDVWRK" ;;
  }

  dimension_group: bfdlocin {
    description: "Date/Time Location In"
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
    sql: ${TABLE}."BFDLOCIN" ;;
  }

  dimension_group: bfdloout {
    description: "Date/Time Location Out"
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
    sql: ${TABLE}."BFDLOOUT" ;;
  }

  dimension_group: bfdmcon {
    description: "Mail Control Date/Time"
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
    sql: ${TABLE}."BFDMCON" ;;
  }

  dimension_group: bfdmem {
    description: "Date/Time assigned Board Member"
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
    sql: ${TABLE}."BFDMEM" ;;
  }

  dimension_group: bfdnod {
    description: "Date/Time Notice of Disagreement Received"
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
    sql: ${TABLE}."BFDNOD" ;;
  }

  dimension: bfdocind {
    description: "Video Hearing Requested Indicator"
    type: string
    sql: ${TABLE}."BFDOCIND" ;;
  }

  dimension_group: bfdorg {
    description: "Date/Time to Service Organization"
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
    sql: ${TABLE}."BFDORG" ;;
  }

  dimension_group: bfdpdcn {
    description: "Date/Time of Prior Decision"
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
    sql: ${TABLE}."BFDPDCN" ;;
  }

  dimension_group: bfdqrsnt {
    description: "Date/Time sent to Quality Review"
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
    sql: ${TABLE}."BFDQRSNT" ;;
  }

  dimension_group: bfdrocket {
    description: "Rocket Docket date (S = Selected or R = Reviewed not selected H=Hearing select)"
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
    sql: ${TABLE}."BFDROCKET" ;;
  }

  dimension_group: bfdrodec {
    description: "RO Notification Date"
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
    sql: ${TABLE}."BFDRODEC" ;;
  }

  dimension: bfdroid {
    description: "DRO Id"
    type: string
    sql: ${TABLE}."BFDROID" ;;
  }

  dimension: bfdrortr {
    description: "Ready to Rate by DRO"
    type: string
    sql: ${TABLE}."BFDRORTR" ;;
  }

  dimension_group: bfdsoc {
    description: "Date/Time Statement of the Case Issued"
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
    sql: ${TABLE}."BFDSOC" ;;
  }

  dimension_group: bfdtb {
    description: "Date/Time of Travel Board Request"
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
    sql: ${TABLE}."BFDTB" ;;
  }

  dimension_group: bfdtbready {
    description: "Date Ready for Travel Board"
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
    sql: ${TABLE}."BFDTBREADY" ;;
  }

  dimension_group: bfdthurb {
    description: "Thurber Date (obsolete)"
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
    sql: ${TABLE}."BFDTHURB" ;;
  }

  dimension: bfha {
    description: "Hearing Action"
    type: string
    sql: ${TABLE}."BFHA" ;;
  }

  dimension: bfhines {
    description: "GenPop ind for Ret VLJ Hearing cases"
    type: string
    sql: ${TABLE}."BFHINES" ;;
  }

  dimension: bfhr {
    description: "Travel Board Hearing Requested"
    type: string
    sql: ${TABLE}."BFHR" ;;
  }

  dimension: bfic {
    description: "Not Used"
    type: string
    sql: ${TABLE}."BFIC" ;;
  }

  dimension: bfio {
    description: "Not Used (old Primary Issue Code used prior to 6/99)"
    type: string
    sql: ${TABLE}."BFIO" ;;
  }

  dimension: bfissnr {
    description: "Number of Issues (computed via batch update)"
    type: string
    sql: ${TABLE}."BFISSNR" ;;
  }

  dimension: bfkey {
    description: "Folder Number (Unique Primary Key)"
    primary_key: yes
    type: string
    sql: ${TABLE}."BFKEY" ;;
  }

  dimension: bflot {
    description: "OVLJ Admin Action"
    type: string
    sql: ${TABLE}."BFLOT" ;;
  }

  dimension: bfmemid {
    description: "Board Member Id"
    type: string
    sql: ${TABLE}."BFMEMID" ;;
  }

  dimension: bfmpro {
    description: "Appeal Status"
    type: string
    sql: ${TABLE}."BFMPRO" ;;
  }

  dimension: bfms {
    description: "Mailing Status (R - Remand returned A - Adv Sent)"
    type: string
    sql: ${TABLE}."BFMS" ;;
  }

  dimension: bfmstat {
    description: "Mail Status"
    type: string
    sql: ${TABLE}."BFMSTAT" ;;
  }

  dimension: bfnrci {
    description: "Number of Copies for Congressional Interest"
    type: string
    sql: ${TABLE}."BFNRCI" ;;
  }

  dimension: bfnrcopy {
    description: "Total Number of Copies for Duplication"
    type: string
    sql: ${TABLE}."BFNRCOPY" ;;
  }

  dimension: bfoc {
    description: "Opinion Code"
    type: string
    sql: ${TABLE}."BFOC" ;;
  }

  dimension: bforgtic {
    description: "Sub-location - Home , Shelf loc, VSO employee"
    type: string
    sql: ${TABLE}."BFORGTIC" ;;
  }

  dimension: bfpdnum {
    description: "Insurance/Loan Number"
    type: string
    sql: ${TABLE}."BFPDNUM" ;;
  }

  dimension: bfrdmref {
    description: "Remand Destination (D=AMC R=RO V=VHA G=GC N=NCA)"
    type: string
    sql: ${TABLE}."BFRDMREF" ;;
  }

  dimension: bfregoff {
    description: "Regional Office"
    type: string
    sql: ${TABLE}."BFREGOFF" ;;
  }

  dimension: bfro1 {
    description: "Resource Center (Remands) (RO15, RO25, RO17, RO46, RO97)"
    type: string
    sql: ${TABLE}."BFRO1" ;;
  }

  dimension: bfrocdoc {
    description: "Rocket Docket indicator (S = Selected or R = Reviewed not selected H=Hearing select)"
    type: string
    sql: ${TABLE}."BFROCDOC" ;;
  }

  dimension: bfsh {
    description: "Special Handling"
    type: string
    sql: ${TABLE}."BFSH" ;;
  }

  dimension: bfso {
    description: "Service Organization"
    type: string
    sql: ${TABLE}."BFSO" ;;
  }

  dimension_group: bfssoc1 {
    description: "Date/Time Supplement Statement of Case Issued"
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
    sql: ${TABLE}."BFSSOC1" ;;
  }

  dimension_group: bfssoc2 {
    description: "Date/Time Supplement Statement of Case Issued"
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
    sql: ${TABLE}."BFSSOC2" ;;
  }

  dimension_group: bfssoc3 {
    description: "Date/Time Supplement Statement of Case Issued"
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
    sql: ${TABLE}."BFSSOC3" ;;
  }

  dimension_group: bfssoc4 {
    description: "Date/Time Supplement Statement of Case Issued"
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
    sql: ${TABLE}."BFSSOC4" ;;
  }

  dimension_group: bfssoc5 {
    description: "Date/Time Supplement Statement of Case Issued"
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
    sql: ${TABLE}."BFSSOC5" ;;
  }

  dimension: bfst {
    description: "DRO Partial Grant/Denial (P or D)"
    type: string
    sql: ${TABLE}."BFST" ;;
  }

  dimension: bfstasgn {
    description: "Medical Facility"
    type: string
    sql: ${TABLE}."BFSTASGN" ;;
  }

  dimension: bfsub {
    description: "Substitution appeal indicator ('S' or null)"
    type: string
    sql: ${TABLE}."BFSUB" ;;
  }

  dimension: bftbind {
    description: "Travel Board Ready"
    type: string
    sql: ${TABLE}."BFTBIND" ;;
  }

  measure: action_decision_count {
    type: count
    drill_fields: [bfdc, bfha]
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
