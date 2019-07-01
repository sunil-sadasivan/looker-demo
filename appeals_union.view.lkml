view: appeals_union {
  derived_table: {
    sql: SELECT id, uuid AS external_id, docket_type, veteran_file_number as veteran_id, closest_regional_office, 'Appeal' as type
    FROM public.appeals
    UNION
    SELECT id, vacols_id as external_id, 'N/A' as docket_type, vbms_id as veteran_id, closest_regional_office, 'LegacyAppeal' as type
    FROM public.legacy_appeals;;
  }

  dimension: external_id {
    description: ""
    type: string
    sql: ${TABLE}.external_id;;
  }

  dimension: docket_type {
     description: ""
     type: string
     sql: ${TABLE}.docket_type;;
  }

  dimension: veteran_id {
    description: "SSN or VBMS_ID"
    type: string
    sql: ${TABLE}.veteran_id;;
  }

  dimension: closest_regional_office {
    description: ""
    type: string
    sql: ${TABLE}.closest_regional_office;;
  }

  dimension: type {
    description: ""
    type: string
    sql: ${TABLE}.type;;
  }
}
