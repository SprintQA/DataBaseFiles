SELECT * FROM university.instructor;


SELECT inst_name, salary, salary*1.2 AS new_salary from instructor;

select dept_name, budget as old_budget, budget*0.9 as new_budget from department;

select customerName, state, country, creditLimit from customers where country='USA'
and creditLimit>100000;

#Write query to retrive all employee sitting in office 2 and jobTitle is SalesRep
select * from employees where officeCode=2 or jobTitle='Sales Rep';

#Display all USA and France customer

SELECT 
    customerName, country
FROM
    customers
WHERE
    country IN ('USA' , 'France', 'Poland', 'Denmark');
    
select inst_name,salary from instructor where salary between 50000 And 100000;    
    
select * from payments where paymentDate between '2003-01-01' And '2003-12-31' ;

#Distinct Keyword
select distinct inst_dept from instructor;

#Aggregate function
SELECT count(*) FROM instructor;
