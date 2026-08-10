# Write your MySQL query statement below
Select
    Date_Format(trans_date, '%Y-%m') As month,
    country,
    Count(*) AS trans_count,
    Sum(Case When state = 'approved' Then 1 Else 0 end) AS approved_count,
    Sum(amount) AS trans_total_amount,
    Sum(Case When state = 'approved' Then amount Else 0 end) AS approved_total_amount
From Transactions
Group By month, country;