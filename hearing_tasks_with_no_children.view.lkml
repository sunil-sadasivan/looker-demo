view: hearing_tasks_with_no_children {
  derived_table: {
    sql: SELECT
        tasks.type  AS "tasks.type",
        tasks.appeal_id  AS "tasks.appeal_id",
        tasks.appeal_type  AS "tasks.appeal_type",
        COUNT(child_tasks.id) AS "count_of_child_tasks"
      FROM public.tasks  AS tasks
      LEFT JOIN public.tasks AS child_tasks ON child_tasks.parent_id = tasks.id
      WHERE
        (tasks.type = 'HearingTask')
      GROUP BY 1,2,3
      HAVING count(child_tasks.id) = 0
      ORDER BY 1 DESC
      LIMIT 500
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

  dimension: count_of_child_tasks {
    type: number
    sql: ${TABLE}.count_of_child_tasks ;;
  }

  set: detail {
    fields: [tasks_type, tasks_appeal_id, tasks_appeal_type, count_of_child_tasks]
  }
}

explore: hearing_tasks_with_no_children {}
