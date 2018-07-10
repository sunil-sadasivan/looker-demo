view: legacy_veterans {
  derived_table: {
    explore_source: legacy_appeals {
      column: count {}
      column: vbms_id {}
    }
  }
  dimension: count {
    type: number
    label: "Appeal Count"
  }
  dimension: vbms_id {}
}
