--- Return the sum for all the records of the field column1
SELECT SUM(column1) AS "Sum of all column1's records" FROM table_name;

--- Return the average value for all the records of the field column1
SELECT AVG(column1) AS "Average of all column1's records" FROM table_name;

--- Return the minimum value of the field column1
SELECT MIN(column1)  FROM  table_name;

--- Return the maximum value of the field column1
SELECT MAX(column1)  FROM  table_name;

--- Return the number of rows where column1 is not null
select count(column1) from table_name;
