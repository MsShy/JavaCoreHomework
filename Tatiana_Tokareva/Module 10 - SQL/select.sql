select * from METADATA ;


SELECT LASTNAME, FIRSTNAME, PASSWORD, EMAIL  
FROM USERS;


SELECT PASSWORD  
FROM USERS 
WHERE EMAIL ='emi@mail.com';


SELECT FIRSTNAME, EMAIL  
FROM USERS 
WHERE ID=2;


SELECT ID, FIRSTNAME, EMAIL, PASSWORD 
FROM USERS 
WHERE ID  > 5 AND FIRSTNAME <> 'Nick'
ORDER BY FIRSTNAME DESC;


SELECT *
FROM USERS 
WHERE ID IN (3,4,5)
AND(FIRSTNAME='Ilia' OR LASTNAME ='Felix');


SELECT LASTNAME, FIRSTNAME, EMAIL, PASSWORD 
FROM USERS 
WHERE ID BETWEEN 3 AND 10
ORDER BY LASTNAME;


SELECT TOP 2 * FROM METADATA;


SELECT FIRSTNAME, EMAIL 
FROM USERS 
WHERE FIRSTNAME LIKE 'T%';


SELECT m.ID, m.COOKIE_ID, c.COOKIE, m.USER_ID, u.LASTNAME, u.FIRSTNAME 
FROM METADATA AS m
JOIN USERS u 
ON u.ID = m.USER_ID 
JOIN COOKIES c
ON c.ID = m.COOKIE_ID ;

select * from USERS ;


SELECT LASTNAME, FIRSTNAME, PASSWORD, EMAIL  
FROM USERS;


SELECT PASSWORD  
FROM USERS 
WHERE EMAIL='emi@mail.com';


SELECT FIRSTNAME, EMAIL  
FROM USERS 
WHERE ID=2;


SELECT ID, FIRSTNAME, EMAIL, PASSWORD 
FROM USERS 
WHERE ID > 5 AND FIRSTNAME <> 'Nick'
ORDER BY FIRSTNAME DESC;


SELECT *
FROM USERS 
WHERE ID IN (3,4,5)
AND (FIRSTNAME ='Ilia' OR LASTNAME ='Felix');


SELECT LASTNAME, FIRSTNAME, EMAIL, PASSWORD 
FROM USERS 
WHERE ID BETWEEN 3 AND 10
ORDER BY LASTNAME;



SELECT COUNT (ID) AS Count_OF_Users 
FROM USERS;


SELECT FIRSTNAME, EMAIL 
FROM USERS 
WHERE FIRSTNAME LIKE 'T%';


select * from METADATA;


SELECT TOP 2 * FROM METADATA;


select * from COOKIES;


SELECT  COOKIES.ID, COOKIES.COOKIE, METADATA.USER_ID 
FROM COOKIES
LEFT JOIN METADATA 
ON COOKIES.ID = METADATA.COOKIE_ID
WHERE COOKIES.ID NOT IN (2,3,4)
ORDER BY COOKIES.ID;


SELECT m.ID, m.COOKIE_ID ,c.COOKIE ,m.USER_ID , u.LASTNAME , u.FIRSTNAME 
FROM METADATA AS m
JOIN USERS u 
ON u.ID = m.USER_ID 
JOIN COOKIES c
ON c.ID = m.COOKIE_ID  
WHERE m.USER_ID BETWEEN 4  AND 7
ORDER BY m.ID;


SELECT MAX ( TIME_ADDED ) AS latest_actions 
FROM METADATA  ;


SELECT  METADATA.COOKIE_ID, USERS.ID, USERS.FIRSTNAME, USERS.EMAIL 
FROM METADATA 
RIGHT JOIN USERS 
ON METADATA.USER_ID=USERS.ID 
ORDER BY METADATA.COOKIE_ID ;


SELECT USERS.LASTNAME, USERS.FIRSTNAME, METADATA.TIME_ADDED 
FROM USERS 
JOIN METADATA 
ON USERS.ID = METADATA.USER_ID
ORDER BY USERS.FIRSTNAME;


SELECT USERS.LASTNAME, USERS.FIRSTNAME, COOKIES.COOKIE, METADATA.TIME_ADDED 
FROM USERS 
JOIN COOKIES 
ON COOKIES.ID = METADATA.COOKIE_ID 
JOIN METADATA 
ON USERS.ID = METADATA.USER_ID
ORDER BY USERS.FIRSTNAME;