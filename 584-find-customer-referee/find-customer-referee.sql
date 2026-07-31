# Write your MySQL query statement below
select name 
from Customer 
where Coalesce(referee_id,0) != 2;