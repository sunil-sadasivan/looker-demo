view: hearing_tasks {
  derived_table: {
    sql: SELECT
  tasks.id AS "tasks.id",
  tasks.type  AS "tasks.type",
  tasks.appeal_id  AS "tasks.appeal_id",
  tasks.appeal_type  AS "tasks.appeal_type",
  hearing_task_associations.id AS "hearing_task_associations.id",
  legacy_appeals.vacols_id AS "legacy_appeals.vacols_id",
  legacy_appeals.vbms_id AS "legacy_appeals.vbms_id",
  (case when tasks.appeal_type = 'Appeal' then appeals.uuid else legacy_appeals.vacols_id end) AS external_id,
  (case when tasks.appeal_type = 'Appeal' then appeals.closest_regional_office else legacy_appeals.closest_regional_office end)
    AS closest_regional_office,
  (
    SELECT count(child_tasks.id) FROM tasks AS child_tasks
    WHERE child_tasks.parent_id = tasks.id
  ) AS "count_of_child_tasks",
  (
    SELECT count(child_tasks.id) FROM tasks AS child_tasks
    WHERE child_tasks.parent_id = tasks.id AND
    child_tasks.type = 'ScheduleHearingTask'
  ) AS "schedule_hearing_tasks",
  (
    SELECT count(child_tasks.id) FROM tasks AS child_tasks
    WHERE child_tasks.parent_id = tasks.id AND
    child_tasks.type = 'DispositionTask'
  ) AS "disposition_tasks",
  (
    SELECT count(child_tasks.id) FROM tasks AS child_tasks
    WHERE child_tasks.parent_id = tasks.id AND
    child_tasks.type = 'ChangeDispositionTask'
  ) AS "change_disposition_tasks"
FROM public.tasks AS tasks
LEFT JOIN public.hearing_task_associations AS hearing_task_associations ON hearing_task_associations.hearing_task_id = tasks.id
LEFT JOIN public.hearings AS hearings ON hearing_task_associations.hearing_id = hearings.id
  AND tasks.appeal_type = 'Appeal'
LEFT JOIN public.legacy_hearings AS legacy_hearings ON hearing_task_associations.hearing_id = legacy_hearings.id
  AND tasks.appeal_type = 'LegacyAppeal'
LEFT JOIN public.appeals AS appeals ON tasks.appeal_id = appeals.id
  AND tasks.appeal_type = 'Appeal'
LEFT JOIN public.legacy_appeals AS legacy_appeals ON tasks.appeal_id = legacy_appeals.id
  AND tasks.appeal_type = 'LegacyAppeal'
WHERE
  (tasks.type = 'HearingTask')
GROUP BY 1,2,3,4,5,6,7,8,9
ORDER BY 1 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tasks_type {
    type: string
    sql: ${TABLE}."tasks.type" ;;
  }

  dimension: tasks_appeal_id {
    type: number
    sql: ${TABLE}."tasks.appeal_id" ;;
  }

  dimension: tasks_appeal_type {
    type: string
    sql: ${TABLE}."tasks.appeal_type" ;;
  }

  dimension: hearing_task_associations_id {
    type: string
    sql: ${TABLE}."hearing_task_associations.id" ;;
  }

  dimension: legacy_appeals_vacols_id {
    type: string
    sql: ${TABLE}."legacy_appeals.vacols_id" ;;
  }

  dimension: legacy_appeals_vbms_id {
    type: string
    sql: ${TABLE}."legacy_appeals.vbms_id" ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: closest_regional_office {
    type: string
    sql: ${TABLE}.closest_regional_office ;;
  }

  dimension: schedule_hearing_tasks {
    type: number
    sql: ${TABLE}.schedule_hearing_tasks ;;
  }

  dimension: disposition_tasks {
    type: number
    sql: ${TABLE}.disposition_tasks ;;
  }

  dimension: change_disposition_tasks {
    type: number
    sql: ${TABLE}.change_disposition_tasks ;;
  }

  dimension: count_of_child_tasks {
    type: number
    sql: ${TABLE}.count_of_child_tasks ;;
  }

  set: detail {
    fields: [tasks_type, tasks_appeal_id, tasks_appeal_type, count_of_child_tasks]
  }
}

explore: hearing_tasks {}
