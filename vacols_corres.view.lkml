view: vacols_corres {
  sql_table_name: "VACOLS"."CORRES" ;;

  dimension: sactive {
    type: string
    sql: ${TABLE}."SACTIVE" ;;
    description: "Active/Inactive Flag"
  }

  dimension: saddrcnty {
    description: "Appellant Residence Country"
    type: string
    sql: ${TABLE}."SADDRCNTY" ;;
  }

  dimension: saddrcty {
    description: "Appellant Residence City"
    type: string
    sql: ${TABLE}."SADDRCTY" ;;
  }

  dimension: saddrnum {
    description: "Not Used"
    type: string
    sql: ${TABLE}."SADDRNUM" ;;
  }

  dimension: saddrst1 {
    description: "First Line of Appellant Residence Address"
    type: string
    sql: ${TABLE}."SADDRST1" ;;
  }

  dimension: saddrst2 {
    description: "Second Line of Appellant Residence Address"
    type: string
    sql: ${TABLE}."SADDRST2" ;;
  }

  dimension: saddrstt {
    description: "Appellant Residence State"
    type: string
    sql: ${TABLE}."SADDRSTT" ;;
  }


  dimension: saddrzip {
    description: "Appellant Residence Zip Code"
    type: string
    sql: ${TABLE}."SADDRZIP" ;;
  }

  dimension: sadvage {
    description: "Advanced Age"
    type: string
    sql: ${TABLE}."SADVAGE" ;;
  }

  dimension: sals {
    description: "ALS"
    type: string
    sql: ${TABLE}."SALS" ;;
  }

  dimension: sdept {
    description: "Department"
    type: string
    sql: ${TABLE}."SDEPT" ;;
  }

  dimension_group: sdob {
    description: "Date of Birth"
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
    sql: ${TABLE}."SDOB" ;;
  }

  dimension: sfinhard {
    description: "Financial Hardship"
    type: string
    sql: ${TABLE}."SFINHARD" ;;
  }

  dimension_group: sfnod {
    description: "Date/Time Final Notice of Death"
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
    sql: ${TABLE}."SFNOD" ;;
  }

  dimension: sgender {
    description: "Gender"
    type: string
    sql: ${TABLE}."SGENDER" ;;
  }

  dimension: shomeless {
    description: "Homeless Vet"
    type: string
    sql: ${TABLE}."SHOMELESS" ;;
  }

  dimension: sincar {
    type: string
    sql: ${TABLE}."SINCAR" ;;
  }

  dimension: slogid {
    description: "Appellant ID/Claim Number"
    type: string
    sql: ${TABLE}."SLOGID" ;;
  }

  dimension: smoh {
    description: "Medal of Honor"
    type: string
    sql: ${TABLE}."SMOH" ;;
  }

  dimension: snamef {
    description: "First Name of Veteran"
    type: string
    sql: ${TABLE}."SNAMEF" ;;
  }

  dimension: snamel {
    description: "Last Name of Veteran"
    type: string
    sql: ${TABLE}."SNAMEL" ;;
  }

  dimension: snamemi {
    description: "Middle Initial of Veteran"
    type: string
    sql: ${TABLE}."SNAMEMI" ;;
  }

  dimension: snotes {
    description: "Notes"
    type: string
    sql: ${TABLE}."SNOTES" ;;
  }

  dimension: sorc1 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."SORC1" ;;
  }

  dimension: sorc2 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."SORC2" ;;
  }

  dimension: sorc3 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."SORC3" ;;
  }

  dimension: sorc4 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."SORC4" ;;
  }

  dimension: sorg {
    description: "Organization"
    type: string
    sql: ${TABLE}."SORG" ;;
  }

  dimension: spgwv {
    description: "Persian Gulf War Veteran"
    type: string
    sql: ${TABLE}."SPGWV" ;;
  }

  dimension: spow {
    description: "POW"
    type: string
    sql: ${TABLE}."SPOW" ;;
  }

  dimension: ssalut {
    description: "Salutation"
    type: string
    sql: ${TABLE}."SSALUT" ;;
  }

  dimension: ssn {
    description: "Social Security Number"
    type: string
    sql: ${TABLE}."SSN" ;;
  }

  dimension: sspare1 {
    description: "Appellant Last Name (if different from Veteran)"
    type: string
    sql: ${TABLE}."SSPARE1" ;;
  }

  dimension: sspare2 {
    description: "Appellant First Name"
    type: string
    sql: ${TABLE}."SSPARE2" ;;
  }

  dimension: sspare3 {
    description: "Appellant MI"
    type: string
    sql: ${TABLE}."SSPARE3" ;;
  }

  dimension: sspare4 {
    description: "Appellant Suffix"
    type: string
    sql: ${TABLE}."SSPARE4" ;;
  }

  dimension: ssys {
    description: "Not Used"
    type: string
    sql: ${TABLE}."SSYS" ;;
  }

  dimension_group: stadtime {
    description: "Date/Time Correspondence Added"
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
    sql: ${TABLE}."STADTIME" ;;
  }

  dimension: staduser {
    description: "Staff Member Who Added Correspondence"
    type: string
    sql: ${TABLE}."STADUSER" ;;
  }

  dimension: stafkey {
    description: "Unique Primary Key [Brieff(bfcorkey), Folder(ticorkey)]"
    type: string
    sql: ${TABLE}."STAFKEY" ;;
  }

  dimension: stc1 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."STC1" ;;
  }

  dimension: stc2 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."STC2" ;;
  }

  dimension: stc3 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."STC3" ;;
  }

  dimension: stc4 {
    description: "Not Used"
    type: number
    sql: ${TABLE}."STC4" ;;
  }

  dimension: stelfax {
    description: "Appellant Residence Fax Number"
    type: string
    sql: ${TABLE}."STELFAX" ;;
  }

  dimension: stelh {
    description: "Appellant Home Phone Number"
    type: string
    sql: ${TABLE}."STELH" ;;
  }

  dimension: stelw {
    description: "Appellant Work Phone Number"
    type: string
    sql: ${TABLE}."STELW" ;;
  }

  dimension: stelwex {
    description: "Appellant Extra Phone Number"
    type: string
    sql: ${TABLE}."STELWEX" ;;
  }

  dimension: stermill {
    description: "Terminally Ill"
    type: string
    sql: ${TABLE}."STERMILL" ;;
  }

  dimension: stitle {
    description: "Appellant Title"
    type: string
    sql: ${TABLE}."STITLE" ;;
  }

  dimension_group: stmdtime {
    description: "Date/Time Correspondence Modified"
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
    sql: ${TABLE}."STMDTIME" ;;
  }

  dimension: stmduser {
    description: "Staff Member Who Modified Correspondence"
    type: string
    sql: ${TABLE}."STMDUSER" ;;
  }

  dimension: susrpw {
    description: "Not Used"
    type: string
    sql: ${TABLE}."SUSRPW" ;;
  }

  dimension: susrsec {
    description: "Not Used"
    type: string
    sql: ${TABLE}."SUSRSEC" ;;
  }

  dimension: susrtyp {
    description: "Relationship to Veteran"
    type: string
    sql: ${TABLE}."SUSRTYP" ;;
  }

  dimension: svsi {
    description: "Very Serious Ilness"
    type: string
    sql: ${TABLE}."SVSI" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
