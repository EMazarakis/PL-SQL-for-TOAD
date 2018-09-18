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


---- Searching for patterns into a field with LIKE operator and  wildcards % , _ 
--- % : instead of too many characters
--- _ : instead of one character

--- Return the column1, column2 for the records where column3 has the pattern whatever characters ended with aabra_cada_bra text
SELECT column1, column2 FROM table_name WHERE column3 LIKE '%aabra_cada_bra';

--- Return the column1, column2 for the records where column3 has the pattern starts with A whatever character and ends with S
SELECT column1, column2 FROM table_name WHERE column3 LIKE 'A_S';



