-- #175 Combine Two Table
select P.FirstName, P.LastName, A.City, A.State
From Person as P left join Address as A 
on P.PersonId=A.PersonID;

-- #176 The Second Highest Salary
select 
    (SELECT DISTINCT --刪去重複資料
        Salary 
        From 
            Employee
        Order BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary

--#181. Employees Earning More Than Their Managers
select a.Name AS "Employee"
FROM Employee AS a, Employee AS b
where a.ManagerId=b.Id	 and a.salary>=b.salary;

--#182. Duplicate Emails
Select Distinct a.Email 

--#183. Customers Who Never Order
select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);

From Person AS a,Person AS b
where a.Id != b.Id and a.Email = b.Email