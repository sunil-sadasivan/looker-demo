view: vacols_issref {
  sql_table_name: vacols.issref ;;

  dimension: iss_code {
    type: string
    sql: ${TABLE}.iss_code ;;
  }

  dimension: iss_desc {
    type: string
    sql: ${TABLE}.iss_desc ;;
  }

  dimension: lev1_code {
    type: string
    sql: ${TABLE}.lev1_code ;;
  }

  dimension: lev1_desc {
    type: string
    sql: ${TABLE}.lev1_desc ;;
  }

  dimension: lev2_code {
    type: string
    sql: ${TABLE}.lev2_code ;;
  }

  dimension: lev2_desc {
    type: string
    sql: ${TABLE}.lev2_desc ;;
  }

  dimension: lev3_code {
    type: string
    sql: ${TABLE}.lev3_code ;;
  }

  dimension: lev3_desc {
    type: string
    sql: ${TABLE}.lev3_desc ;;
  }

  dimension: prog_code {
    type: string
    sql: ${TABLE}.prog_code ;;
  }

  dimension: prog_desc {
    type: string
    sql: ${TABLE}.prog_desc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
