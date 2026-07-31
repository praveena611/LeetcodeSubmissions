# Write your MySQL query statement below
SELECT emp.employee_id
FROM Employees emp
LEFT JOIN Employees man
ON emp.manager_id = man.employee_id
WHERE emp.salary < 30000
  AND emp.manager_id IS NOT NULL
  AND man.employee_id IS NULL
ORDER BY emp.employee_id;