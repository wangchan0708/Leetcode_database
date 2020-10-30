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
From Person AS a,Person AS b
where a.Id != b.Id and a.Email = b.Email

--#183. Customers Who Never Order
select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);

--#196. Delete Duplicate Emails
select a.Id,a.Email
FROM Person as a, Person as b
WHERE a.Email =b.Email and a.Id < b.Id
ORDER BY a.Id ASC

--#197. Rising Temperature
SELECT
    weather.id AS 'Id'
FROM
    weather
        JOIN
    weather w ON DATEDIFF(weather.recordDate, w.recordDate) = 1
        AND weather.Temperature > w.Temperature

--#595. Big Countries
SELECT w.name, w.population, w.area
FROM World AS w
WHERE (w.area>3000000) OR (w.population> 25000000)

--#596. Classes More Than 5 Students
SELECT courses.class
FROM 
    courses 
GROUP BY courses.class
HAVING COUNT(DISTINCT student)>=5

--#620 Not Boring Movies
SELECT *
From cinema
WHERE mod(cinema.id,2)=1 AND cinema.description !="boring"
Order BY cinema.rating DESC

--# 626 Exchange Seats 
SELECT
    s1.id, COALESCE(s2.student, s1.student) AS student
FROM
    seat s1
        LEFT JOIN
    seat s2 ON ((s1.id + 1) ^ 1) - 1 = s2.id
ORDER BY s1.id;