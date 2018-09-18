---- Searching for patterns into a field with LIKE operator and  wildcards % , _ 
--- % : instead of too many characters (recognizable by TOAD)
--- _ : instead of one character (recognizable by TOAD)

--- Return the column1, column2 for the records where column3 has the pattern whatever characters ended with aabra_cada_bra text
SELECT column1, column2 FROM table_name WHERE column3 LIKE '%aabra_cada_bra';

--- Return the column1, column2 for the records where column3 has the pattern starts with A whatever character and ends with S
SELECT column1, column2 FROM table_name WHERE column3 LIKE 'A_S';

--- Return the column1, column2 for the records where column3 starts with 1 whatever characters and ends with 1
SELECT column1, column2 FROM table_name WHERE column3 LIKE '1%1';