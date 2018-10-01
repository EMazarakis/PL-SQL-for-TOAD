--- Return all the records where  column3 has values in space [ value1, value2 ]
SELECT column1, column2, FROM table_name WHERE column3 BETWEEN value1 AND value2;


--- Return all the records where column3 has not values in [ value1, value2 ]
SELECT column1, column2, FROM table_name WHERE column3 NOT BETWEEN value1 AND value2;
