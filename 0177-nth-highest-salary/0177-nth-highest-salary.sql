CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      with result as
      (
        select *,
          dense_rank() over (order by salary desc) as getNthHighestSalary
        from Employee
      )
      
      select salary
      from result
      where getNthHighestSalary = N
      limit 1
      
  );
END