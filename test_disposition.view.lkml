view: test_disposition {
  derived_table: {
    sql: WITH appeal_task_status AS (SELECT *,
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_name,
          (select tasks.status
            FROM tasks  AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_task_status,
          (select tasks.completed_at
            FROM tasks AS tasks
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_task_completion,
          (select vacols.staff.sattyid
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type = 'AttorneyTask'
            limit 1
          ) as attorney_id,
          (select vacols.staff.sattyid
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_id,
          (select users.full_name
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as judge_name,
          (select vacols.staff.smemgrp
            FROM tasks  AS tasks
            join users on tasks.assigned_to_id = users.id
            join vacols.staff on users.css_id = vacols.staff.sdomainid
            where tasks.appeal_id = appeals.id  AND tasks.type = 'JudgeTask'
            limit 1
          ) as chief_group
          from public.appeals as appeals )
SELECT
  appeals.id  AS "appeals.id",
  appeal_task_status.judge_task_completion  AS "appeal_task_status.judge_task_completion",
  appeal_task_status.attorney_id AS "appeal_task_status.task_attorney_id",
  appeal_task_status.attorney_name AS "appeal_task_status.task_attorney_name",
  appeal_task_status.judge_id AS "appeal_task_status.task_judge_id",
  appeal_task_status.judge_name AS "appeal_task_status.task_judge_name",
  appeal_task_status.chief_group AS "appeal_task_status.chief_group",
  CASE WHEN decisions.citation_number IS NOT NULL   THEN 'Yes' ELSE 'No' END
 AS "decisions.bva_decision_dispatched",
  request_issues.id as "request_issues.id",
  request_issues.disposition as "request_issues.disposition"
FROM public.appeals AS appeals
LEFT JOIN public.request_issues  AS request_issues ON appeals.id = request_issues.review_request_id AND
    request_issues.review_request_type = 'Appeal'
LEFT JOIN public.decisions  AS decisions ON decisions.appeal_id = appeals.id
LEFT JOIN appeal_task_status ON appeal_task_status.id = appeals.id

WHERE appeal_task_status.judge_task_status = 'completed'

ORDER BY 2,1
LIMIT 500
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: appeals_id {
    type: number
    sql: ${TABLE}."appeals.id" ;;
  }

  dimension_group: appeal_task_status_judge_task_completion {
    type: time
    sql: ${TABLE}."appeal_task_status.judge_task_completion" ;;
  }

  dimension: appeal_task_status_task_attorney_id {
    type: string
    sql: ${TABLE}."appeal_task_status.task_attorney_id" ;;
  }

  dimension: appeal_task_status_task_attorney_name {
    type: string
    sql: ${TABLE}."appeal_task_status.task_attorney_name" ;;
  }

  dimension: appeal_task_status_task_judge_id {
    type: string
    sql: ${TABLE}."appeal_task_status.task_judge_id" ;;
  }

  dimension: appeal_task_status_task_judge_name {
    type: string
    sql: ${TABLE}."appeal_task_status.task_judge_name" ;;
  }

  dimension: appeal_task_status_chief_group {
    type: string
    sql: ${TABLE}."appeal_task_status.chief_group" ;;
  }

  dimension: decisions_bva_decision_dispatched {
    type: string
    sql: ${TABLE}."decisions.bva_decision_dispatched" ;;
  }

  dimension: request_issues_id {
    type: number
    sql: ${TABLE}."request_issues.id" ;;
  }

  dimension: request_issues_disposition {
    type: string
    sql: ${TABLE}."request_issues.disposition" ;;
  }

  set: detail {
    fields: [
      appeals_id,
      appeal_task_status_judge_task_completion_time,
      appeal_task_status_task_attorney_id,
      appeal_task_status_task_attorney_name,
      appeal_task_status_task_judge_id,
      appeal_task_status_task_judge_name,
      appeal_task_status_chief_group,
      decisions_bva_decision_dispatched,
      request_issues_id,
      request_issues_disposition
    ]
  }
}
