# Write your MySQL query statement below
select emp.name , bon.bonus 
From Employee emp left join Bonus bon on emp.empId = bon.empId
Where bon.bonus < 1000 or bon.bonus is null