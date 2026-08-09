# Write your MySQL query statement below
Select 
    p.product_id,
    Round(
        Coalesce(SUM(p.price * u.units) / SUM(u.units), 0),
        2
    ) AS average_price
From Prices p
Left Join UnitsSold u
    ON p.product_id = u.product_id
    AND u.purchase_date Between p.start_date And p.end_date
Group By p.product_id;