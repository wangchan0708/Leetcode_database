--#177 Nth Highest Salary (自定義函數)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
  RETURN (  
      select distinct salary
      from Employee
      order by salary desc
      limit 1 OFFSET N
  );
END