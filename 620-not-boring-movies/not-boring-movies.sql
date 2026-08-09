# Write your MySQL query statement below
Select *
From Cinema
Where MOD(id, 2) = 1
And description <> 'boring'
Order By rating Desc;