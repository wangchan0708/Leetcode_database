-- #175 Combine Two Table
select P.FirstName, P.LastName, A.City, A.State
From Person as P left join Address as A 
on P.PersonId=A.PersonID;

-- #176 The Second Highest Salary
select 
    (SELECT DISTINCT --�R�h���Ƹ��
        Salary 
        From 
            Employee
        Order BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary