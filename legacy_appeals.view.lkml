view: legacy_appeals {
  sql_table_name: public.legacy_appeals ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appeal_series_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appeal_series_id ;;
  }

  dimension: contaminated_water_at_camp_lejeune {
    type: yesno
    sql: ${TABLE}.contaminated_water_at_camp_lejeune ;;
  }

  dimension: dic_death_or_accrued_benefits_united_states {
    type: yesno
    sql: ${TABLE}.dic_death_or_accrued_benefits_united_states ;;
  }

  dimension: dispatched_to_station {
    type: string
    sql: ${TABLE}.dispatched_to_station ;;
  }

  dimension: education_gi_bill_dependents_educational_assistance_scholars {
    type: yesno
    sql: ${TABLE}.education_gi_bill_dependents_educational_assistance_scholars ;;
  }

  dimension: foreign_claim_compensation_claims_dual_claims_appeals {
    type: yesno
    sql: ${TABLE}.foreign_claim_compensation_claims_dual_claims_appeals ;;
  }

  dimension: foreign_pension_dic_all_other_foreign_countries {
    type: yesno
    sql: ${TABLE}.foreign_pension_dic_all_other_foreign_countries ;;
  }

  dimension: foreign_pension_dic_mexico_central_and_south_america_caribb {
    type: yesno
    sql: ${TABLE}.foreign_pension_dic_mexico_central_and_south_america_caribb ;;
  }

  dimension: hearing_including_travel_board_video_conference {
    type: yesno
    sql: ${TABLE}.hearing_including_travel_board_video_conference ;;
  }

  dimension: home_loan_guaranty {
    type: yesno
    sql: ${TABLE}.home_loan_guaranty ;;
  }

  dimension: incarcerated_veterans {
    type: yesno
    sql: ${TABLE}.incarcerated_veterans ;;
  }

  dimension: insurance {
    type: yesno
    sql: ${TABLE}.insurance ;;
  }

  dimension: issues_pulled {
    type: yesno
    sql: ${TABLE}.issues_pulled ;;
  }

  dimension: manlincon_compliance {
    type: yesno
    sql: ${TABLE}.manlincon_compliance ;;
  }

  dimension: mustard_gas {
    type: yesno
    sql: ${TABLE}.mustard_gas ;;
  }

  dimension: national_cemetery_administration {
    type: yesno
    sql: ${TABLE}.national_cemetery_administration ;;
  }

  dimension: nonrating_issue {
    type: yesno
    sql: ${TABLE}.nonrating_issue ;;
  }

  dimension: pension_united_states {
    type: yesno
    sql: ${TABLE}.pension_united_states ;;
  }

  dimension: private_attorney_or_agent {
    type: yesno
    sql: ${TABLE}.private_attorney_or_agent ;;
  }

  dimension: radiation {
    type: yesno
    sql: ${TABLE}.radiation ;;
  }

  dimension: rice_compliance {
    type: yesno
    sql: ${TABLE}.rice_compliance ;;
  }

  dimension: spina_bifida {
    type: yesno
    sql: ${TABLE}.spina_bifida ;;
  }

  dimension: us_territory_claim_american_samoa_guam_northern_mariana_isla {
    type: yesno
    sql: ${TABLE}.us_territory_claim_american_samoa_guam_northern_mariana_isla ;;
  }

  dimension: us_territory_claim_philippines {
    type: yesno
    sql: ${TABLE}.us_territory_claim_philippines ;;
  }

  dimension: us_territory_claim_puerto_rico_and_virgin_islands {
    type: yesno
    sql: ${TABLE}.us_territory_claim_puerto_rico_and_virgin_islands ;;
  }

  dimension: vacols_id {
    type: string
    sql: ${TABLE}.vacols_id ;;
  }

  dimension: vamc {
    type: yesno
    sql: ${TABLE}.vamc ;;
  }

  dimension: vbms_id {
    type: string
    sql: ${TABLE}.vbms_id ;;
  }

  dimension: vocational_rehab {
    type: yesno
    sql: ${TABLE}.vocational_rehab ;;
  }

  dimension: waiver_of_overpayment {
    type: yesno
    sql: ${TABLE}.waiver_of_overpayment ;;
  }

  measure: count {
    type: count
    drill_fields: [id, appeal_series.id]
  }
}
