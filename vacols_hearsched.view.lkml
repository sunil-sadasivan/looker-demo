view: vacols_hearsched {
  sql_table_name: vacols.hearsched ;;

  dimension: addon {
    type: string
    sql: ${TABLE}.addon ;;
  }

  dimension_group: addtime {
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
    sql: ${TABLE}.addtime ;;
  }

  dimension: adduser {
    type: string
    sql: ${TABLE}.adduser ;;
  }

  dimension: aod {
    type: string
    sql: ${TABLE}.aod ;;
  }

  dimension: board_member {
    type: string
    sql: ${TABLE}.board_member ;;
  }

  dimension_group: canceldate {
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
    sql: ${TABLE}.canceldate ;;
  }

  dimension_group: clsdate {
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
    sql: ${TABLE}.clsdate ;;
  }

  dimension_group: conret {
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
    sql: ${TABLE}.conret ;;
  }

  dimension_group: consent {
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
    sql: ${TABLE}.consent ;;
  }

  dimension: contapes {
    type: string
    sql: ${TABLE}.contapes ;;
  }

  dimension: folder_nr {
    type: string
    sql: ${TABLE}.folder_nr ;;
  }

  dimension_group: hearing {
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
    sql: ${TABLE}.hearing_date ;;
  }

  dimension: hearing_disp {
    type: string
    sql: ${TABLE}.hearing_disp ;;
  }

  dimension: hearing_pkseq {
    type: number
    sql: ${TABLE}.hearing_pkseq ;;
  }

  dimension: hearing_type {
    type: string
    sql: ${TABLE}.hearing_type ;;
  }

  dimension: holddays {
    type: number
    sql: ${TABLE}.holddays ;;
  }

  dimension_group: mdtime {
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
    sql: ${TABLE}.mdtime ;;
  }

  dimension: mduser {
    type: string
    sql: ${TABLE}.mduser ;;
  }

  dimension: notes1 {
    type: string
    sql: ${TABLE}.notes1 ;;
  }

  dimension: recmed {
    type: string
    sql: ${TABLE}.recmed ;;
  }

  dimension: recprob {
    type: string
    sql: ${TABLE}.recprob ;;
  }

  dimension: rep_state {
    type: string
    sql: ${TABLE}.rep_state ;;
  }

  dimension: repname {
    type: string
    sql: ${TABLE}.repname ;;
  }

  dimension_group: reqdate {
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
    sql: ${TABLE}.reqdate ;;
  }

  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }

  dimension: taskno {
    type: string
    sql: ${TABLE}.taskno ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  dimension: tranreq {
    type: string
    sql: ${TABLE}.tranreq ;;
  }

  dimension_group: transent {
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
    sql: ${TABLE}.transent ;;
  }

  dimension: vdbvapoc {
    type: string
    sql: ${TABLE}.vdbvapoc ;;
  }

  dimension: vdkey {
    type: string
    sql: ${TABLE}.vdkey ;;
  }

  dimension: vdropoc {
    type: string
    sql: ${TABLE}.vdropoc ;;
  }

  dimension: wbbackup {
    type: string
    sql: ${TABLE}.wbbackup ;;
  }

  dimension_group: wbsent {
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
    sql: ${TABLE}.wbsent ;;
  }

  dimension: wbtapes {
    type: number
    sql: ${TABLE}.wbtapes ;;
  }

  measure: count {
    type: count
    drill_fields: [repname]
  }
}
