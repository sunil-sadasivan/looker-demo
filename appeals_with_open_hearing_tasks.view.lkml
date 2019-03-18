view: appeals_with_open_hearing_tasks {
  derived_table: {
    sql: SELECT appeals.id AS id, uuid AS external_id, closest_regional_office, "Appeal" AS appeal_type,
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
    ) AS "total_open_tasks",
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
      AND type = 'HearingTask'
    ) AS "open_hearing_tasks",
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
      AND type = 'Schedule_HearingTask'
    ) AS "open_schedule_hearing_tasks",
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
      AND type = 'HearingTask'
    ) AS "open_disposition_tasks"
    FROM appeals
    UNION
    SELECT legacy_appeals.id AS id, vacols_id AS external_id, closest_regional_office, "LegacyAppeal" AS appeal_type
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = legacy_appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
    ) AS "total_open_tasks",
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = legacy_appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
      AND type = 'HearingTask'
    ) AS "open_hearing_tasks",
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = legacy_appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
      AND type = 'Schedule_HearingTask'
    ) AS "open_schedule_hearing_tasks",
    (
      SELECT count(child_tasks.id) FROM tasks AS child_tasks
      WHERE child_tasks.appeal_id = legacy_appeals.id AND child_tasks.appeal_type = appeal_type
      AND status IN ['assigned', 'on_hold', NULL]
      AND type = 'HearingTask'
    ) AS "open_disposition_tasks"
    FROM legacy_appeals
             ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: external_id {
    type: number
    sql: ${TABLE}."external_id" ;;
  }

  dimension: closest_regional_office {
    type: string
    sql: ${TABLE}."closest_regional_office" ;;
  }

  dimension: appeal_type {
    type: string
    sql: ${TABLE}."appeal_type" ;;
  }

  dimension: total_open_tasks {
    type: number
    sql: ${TABLE}."total_open_tasks" ;;
  }

  dimension: open_hearing_tasks {
    type: number
    sql: ${TABLE}."open_hearing_tasks" ;;
  }

  dimension: open_schedule_hearing_tasks {
    type: number
    sql: ${TABLE}."open_schedule_hearing_tasks" ;;
  }

  dimension: open_disposition_tasks {
    type: number
    sql: ${TABLE}."open_disposition_tasks" ;;
  }

  set: detail {
    fields: [appeal_type, closest_regional_office, total_open_tasks, open_hearing_tasks, open_schedule_hearing_tasks, open_disposition_tasks]
  }
}

explore: appeals_with_open_hearing_tasks {}
