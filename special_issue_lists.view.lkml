view: special_issue_lists {
  sql_table_name: public.special_issue_lists ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_id {
    type: number
    sql: ${TABLE}.appeal_id ;;
  }

  dimension: appeal_type {
    type: string
    sql: ${TABLE}.appeal_type ;;
  }

  dimension: contaminated_water_at_camp_lejeune {
    type: string
    sql: ${TABLE}.contaminated_water_at_camp_lejeune ;;
  }

  dimension: dic_death_or_accrued_benefits_united_states {
    type: string
    sql: ${TABLE}.dic_death_or_accrued_benefits_united_states ;;
  }

  dimension: education_gi_bill_dependents_educational_assistance_scholars {
    type: string
    sql: ${TABLE}.education_gi_bill_dependents_educational_assistance_scholars ;;
  }

  dimension: foreign_claim_compensation_claims_dual_claims_appeals {
    type: string
    sql: ${TABLE}.foreign_claim_compensation_claims_dual_claims_appeals ;;
  }

  dimension: foreign_pension_dic_all_other_foreign_countries {
    type: string
    sql: ${TABLE}.foreign_pension_dic_all_other_foreign_countries ;;
  }

  dimension: foreign_pension_dic_mexico_central_and_south_america_caribb {
    type: string
    sql: ${TABLE}.foreign_pension_dic_mexico_central_and_south_america_caribb ;;
  }

  dimension: hearing_including_travel_board_video_conference {
    type: string
    sql: ${TABLE}.hearing_including_travel_board_video_conference ;;
  }

  dimension: home_loan_guaranty {
    type: string
    sql: ${TABLE}.home_loan_guaranty ;;
  }

  dimension: incarcerated_veterans {
    type: string
    sql: ${TABLE}.incarcerated_veterans ;;
  }

  dimension: insurance {
    type: string
    sql: ${TABLE}.insurance ;;
  }

  dimension: manlincon_compliance {
    type: string
    sql: ${TABLE}.manlincon_compliance ;;
  }

  dimension: mustard_gas {
    type: string
    sql: ${TABLE}.mustard_gas ;;
  }

  dimension: national_cemetery_administration {
    type: string
    sql: ${TABLE}.national_cemetery_administration ;;
  }

  dimension: nonrating_issue {
    type: string
    sql: ${TABLE}.nonrating_issue ;;
  }

  dimension: pension_united_states {
    type: string
    sql: ${TABLE}.pension_united_states ;;
  }

  dimension: private_attorney_or_agent {
    type: string
    sql: ${TABLE}.private_attorney_or_agent ;;
  }

  dimension: radiation {
    type: string
    sql: ${TABLE}.radiation ;;
  }

  dimension: rice_compliance {
    type: string
    sql: ${TABLE}.rice_compliance ;;
  }

  dimension: spina_bifida {
    type: string
    sql: ${TABLE}.spina_bifida ;;
  }

  dimension: us_territory_claim_american_samoa_guam_northern_mariana_isla {
    type: string
    sql: ${TABLE}.us_territory_claim_american_samoa_guam_northern_mariana_isla ;;
  }

  dimension: us_territory_claim_philippines {
    type: string
    sql: ${TABLE}.us_territory_claim_philippines ;;
  }

  dimension: us_territory_claim_puerto_rico_and_virgin_islands {
    type: string
    sql: ${TABLE}.us_territory_claim_puerto_rico_and_virgin_islands ;;
  }

  dimension: vamc {
    type: string
    sql: ${TABLE}.vamc ;;
  }

  dimension: vocational_rehab {
    type: string
    sql: ${TABLE}.vocational_rehab ;;
  }

  dimension: waiver_of_overpayment {
    type: string
    sql: ${TABLE}.waiver_of_overpayment ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
