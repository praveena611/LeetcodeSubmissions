# Write your MySQL query statement below
Select 
    query_name,
    Round(AVG(rating / position), 2) As quality,
    Round(
        SUM(Case When rating < 3 Then 1 Else 0 End) * 100.0 / Count(*),
        2
    ) As poor_query_percentage
From Queries
Group By query_name;