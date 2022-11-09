CREATE OR REPLACE TYPE employee AS OBJECT
(
    id INTEGER,
    firstName VARCHAR2(50),
    lastName VARCHAR2(50),
    department VARCHAR2(50),
    phoneNo NUMBER(15),
    email VARCHAR2(50),
    contactAddress VARCHAR2(255)
);

ALTER TYPE person NOT FINAL CASCADE;


CREATE TYPE employee UNDER person (
empno INTEGER,
ppsn VARCHAR2(10)
) NOT FINAL ;

CREATE TABLE employee_table OF person;

SELECT e.pname.lastname FROM employee_table e WHERE value(e) IS OF
(PERSON);


/////////////////////////////////////////////////////////

CREATE TYPE O_PERSON AS OBJECT 
(
    id INTEGER,
    firstname VARCHAR2(30),
    lastname VARCHAR2(30),
    email VARCHAR2(50),
    phone VARCHAR2(15)
);

ALTER TYPE O_PERSON NOT FINAL CASCADE;

CREATE TYPE O_EMPLOYEES UNDER O_PERSON (
empId INTEGER,
ppsn VARCHAR2(10),
emp_status VARCHAR2(10)
) NOT FINAL ;

CREATE TABLE CONTACT_TABLE OF O_PERSON
(
    person O_PERSON,
    
)


INSERT INTO CONTACT_TABLE VALUES
(
     O_PERSON(
        001,
        'Kylian',
        'Terry',
        'kylian@mail.com',
        0875858474,
     ),   
    O_EMPLOYEES(
        23,
        '38445YT',
        'employed'
    )
    
);