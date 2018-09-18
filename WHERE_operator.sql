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
