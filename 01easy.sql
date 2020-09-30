-- #175 Combine Two Table
select P.FirstName, P.LastName, A.City, A.State
From Person as P left join Address as A 
on P.PersonId=A.PersonID;

-- #176 The Second Highest Salary
