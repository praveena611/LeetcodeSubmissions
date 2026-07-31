# Write your MySQL query statement below

select Distinct author_id as id
from Views
Where author_id = viewer_id
Order by id asc;