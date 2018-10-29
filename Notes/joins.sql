SELECT customer.fname, 
       customer.lname, 
       animal.NAME, 
       animal.species 

FROM   customer 

       INNER JOIN animal 

               ON customer.idcustomer = animal.idcustomer 

WHERE  animal.species LIKE 'horse'; 

*****************************************************************

SELECT customer.fname AS 'Customer First Name',
       customer.lname AS 'Customer Last Name', 
       animal.NAME AS 'Animal Name', 
       animal.gender AS 'Animal Gender',
       animal.species AS 'Animal species',
       animal.yearBorn AS 'Animal Year/Born'
FROM   customer 
       INNER JOIN animal 
               ON customer.idcustomer = animal.idcustomer 
WHERE  animal.gender LIKE 'F' 
       ORDER by animal.yearBorn DESC;


*****************************************************************

SELECT customer.fname AS 'Customer First Name',
       customer.lname AS 'Customer Last Name', 
       customer.state AS 'State',
       animal.NAME AS 'Animal Name', 
       animal.gender AS 'Animal Gender',
       animal.species AS 'Animal species',
       animal.yearBorn AS 'Animal Year/Born'
FROM   customer 
       INNER JOIN animal 
               ON customer.idcustomer = animal.idcustomer 
WHERE  customer.state LIKE 'id' 
       AND animal.gender LIKE 'f'
       AND animal.species LIKE 'cat'
       ORDER by customer.lname;
