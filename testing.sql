------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--- TESTING SEVETAL QUERIES ---
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

--- ARITHMITIKES SYGKRISEIS

SELECT request, customer_id, co_id FROM mdsrrtab WHERE status=11;

SELECT * FROM mdsrrtab WHERE status  < 11;

SELECT request AS "ÁÉÔÇÌÁ", co_id AS "ÔÁÕÔÏÔÇÔÁ ÐÅËÁÔÇ", insert_date AS "ÇÌÅÑÏÌÇÍÉÁ ÊÁÔÁ×ÙÑÇÓÇÓ" FROM mdsrrtab WHERE status=11;


--- alfarithmitikes sigkriseis
SELECT  userid AS "ÔÁÕÔÏÔÇÔÁ ×ÑÇÓÔÇ" FROM mdsrrtab WHERE userid > 'CMSBEAGW' AND userid < 'P';


--- IMEROMIIA 
--- Every record of the table where they have been inserted into it before 13-09-2018
--- Ypu have to use the embedded  function to_date('dd/mm/yyyy')

SELECT * FROM mdsrrtab WHERE insert_date > to_date('13/09/2018', 'dd/mm/yyyy'); 


select insert_date FROM mdsrrtab;

--- How many are status 2 and they are 

SELECT * FROM mdsrrtab WHERE status = 2 AND action_date > to_date('25/09/2018'); 
 

--- PRAXEIS KAI STO SELECT KAI STO WHERE

--- If you do not use  AS operator the diplay column will be status+1
SELECT status + 1 AS "INCREASED STATUS" FROM mdsrrtab WHERE status = 2;

SELECT (status + 1)*2/4 AS "INCREASED STATUS" FROM mdsrrtab WHERE status = 2;


SELECT plcode AS "CODEEEEE" FROM mdsrrtab WHERE  plcode + 1 >= 1038;



---- Ordering

SELECT request, plcode, userid FROM mdsrrtab ORDER by userid; 


SELECT userid, plcode, request, action_date FROM mdsrrtab WHERE userid='EVHLHS' ORDER BY action_date DESC;


SELECT request AS "ÁÉÔÇÌÁ", userid AS "×ÑÇÓÔÇÓ", plcode AS "ÊÙÄÉÊÙÓ", action_date AS "ÇÌÅÑÏÌÇÍÉÁ ÅÊÔÅËÅÓÇÓ" FROM mdsrrtab WHERE userid='EVHLHS' ORDER BY action_date DESC;

select distinct userid AS "ÊÙÄÉÊÏÓ" from mdsrrtab where status = 2; 

;
--- DISTINCTION SELECT

SELECT userid FROM mdsrrtab;    --- return for all the records the userid. So we have too many repetitions

--- distinct : åõäéÜêñéôïò / óáöÞò
SELECT DISTINCT userid FROM mdsrrtab;--- return the disctinct userids


SELECT tmcode, des AS "Ðåñéãñáöç Ðñïãñáììáôïò" FROM rateplan WHERE tmcode > 900 ORDER BY tmcode DESC;


---- null or not null

SELECT * FROM gmd_action WHERE mo_type IS NULL; ---- return all the records where mo_type field is null/empty

SELECT CONCAT(mo_level,' eugene') FROM gmd_action WHERE mo_type IS NOT NULL; 


SELECT CONCAT( CONCAT(action_id, ' :  '), action_des) AS "TOTAL DESCRIPTION" FROM gmd_action ORDER BY action_id;


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

--- create patterns for searching 

--- searching to find all the records where the userid (field) har the pattern '%BEAGW' [too many characters in front of BEAGW] 
SELECT * FROM gmd_request_history WHERE userid LIKE '%BEAGW';
 
SELECT * FROM gmd_request_history WHERE userid LIKE 'C_SBEAGW';

SELECT * FROM gmd_request_history WHERE PLCODE LIKE '1%1';

SELECT * FROM gmd_action WHERE  action_des LIKE 'Deact_vate cont__ct';

SELECT * FROM gmd_action WHERE action_des LIKE '% sto_age %';

SELECT plcode, status, userid FROM mdsrrtab WHERE userid != 'CMSBEAGW';

-----------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

SELECT * FROM gmd_action ORDER BY action_des ASC;

SELECT * FROM gmd_action ORDER BY action_des DESC;

SELECT * FROM mdsrrtab WHERE userid = 'EVHLHS' AND plcode = '1001';


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

--- in operator 

select * from mdsrrtab where status in (4,11);

select * from mdsrrtab where status not in (2);

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------


--- BE careful without the  hours, minutes and seconds the second part does not contained.
SELECT *  FROM mdsrrtab WHERE insert_date BETWEEN to_date('2018/09/28:00:00:00' ,'RRRR/MM/DD:HH24:MI:SS' ) AND to_date('2018/09/30:23:59:59' ,'RRRR/MM/DD:HH24:MI:SS') ORDER BY insert_date;


SELECT *  FROM mdsrrtab WHERE insert_date NOT BETWEEN to_date('28/09/2018:00:00:00','dd/mm/yyyy:hh24:mi:ss') AND to_date('30/09/2018:23:59:59','dd/mm/yyyy:hh24:mi:ss') ORDER BY insert_date;


SELECT * FROM mdsrrtab WHERE plcode BETWEEN 1000 AND 1050 ORDER BY plcode;


SELECT * FROM mdsrrtab WHERE plcode NOT BETWEEN 1000 AND 1050 ORDER BY plcode;
-----------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

select plcode from mdsrrtab where status not in (2);


--Embedded functions of SQL
--SUM
select SUM(plcode) AS "Áèñïéóìá", SUM(PLCODE*0.5) AS "half" from mdsrrtab where status not in (2);

SELECT SUM(column1) AS "Sum of all column1's records" FROM table_name;

--AVG
SELECT AVG(plcode) AS "Ì.Ï plcode", AVG(PLCODE*0.5) AS "Ì.Ï plcode/2"  FROM mdsrrtab WHERE userid = 'CMSBEAGW';

SELECT AVG(column1) AS "Average of all column1's records" FROM table_name;


