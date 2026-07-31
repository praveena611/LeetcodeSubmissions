# Write your MySQL query statement below

select author_id as id
from Views
Where author_id = viewer_id
Group by author_id
Order by id asc;