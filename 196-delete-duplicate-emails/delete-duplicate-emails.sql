# Write your MySQL query statement below
delete duplicate from Person og join Person duplicate on Strcmp(og.email, duplicate.email)=0 and og.id < duplicate.id;