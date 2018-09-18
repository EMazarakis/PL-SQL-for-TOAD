--- For the selected table return  all the records (*)
SELECT * FROM table_name;   

--- Return only the column1 field for all records of the table
SELECT column1  FROM table_name; 

---  Return only the column1 & column2  fields for all records of the table
SELECT  column1, column2  FROM table_name; 

--- Return only the column1 field for all records of the table but results displaying with the column name newNameOfTheColumn1
--- If you want to rename the title of the  displaying results
SELECT column1 AS "newNameOfTheColumn1" FROM table_name; 

--- Return the disctinct values of the column1 field
SELECT DISTINCT colums1 FROM table_name;
                                                      
                                                      
---- WHERE : the fields of the SELECT part are returned when the WHERE part is TRUE.
---- Compare Characters: 'A' < 'B' < 'C' < 'D' < .... 
---- Compare Numbers:

--- Return the values of the column1, column2 when column3 (field) has value equal to 'searchValue'                                 
SELECT column1, column2 FROM table_name WHERE column3 = 'searchValue';

--- Return the values of the column1, column2 when column3 (field) has value less than 'searchValue'
SELECT column1, column2 FROM table_name WHERE column3 < 'searchValue';

--- Return the values of the column1, column2 when column3 (field) has value less than OR equal to 'searchValue'
SELECT column1, column2 FROM table_name WHERE column3 <= 'searchValue';

--- Return the values of the column1, column2 when column3 (field) has value bigger than 'searchValue'
SELECT column1, column2 FROM table_name WHERE column3 > 'searchValue';

--- Return the values of the column1, column2 when column3 (field) has value bigger than OR equal to 'searchValue'
SELECT column1, column2 FROM table_name WHERE column3 >= 'searchValue';

--- Return the values of the column1, column2 when column3 (field) has value different than 'searchValue'
SELECT column1, column2 FROM table_name WHERE column3 <> 'searchValue';
SELECT column1, column2 FROM table_name WHERE column3 != 'searchValue';
