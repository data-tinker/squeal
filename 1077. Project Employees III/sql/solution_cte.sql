WITH project_and_employee AS (
    SELECT
        p.project_id,
        p.employee_id,
        experience_years
    FROM
        project p
        JOIN employee e
        ON p.employee_id = e.employee_id
)
SELECT
    pe.project_id,
    employee_id
FROM
    project_and_employee pe
    JOIN
        (SELECT project_id, MAX(experience_years) AS max_experience FROM project_and_employee GROUP BY 1) me
    ON pe.project_id = me.project_id AND pe.experience_years = me.max_experience;
