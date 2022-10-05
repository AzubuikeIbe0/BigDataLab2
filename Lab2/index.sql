CREATE OR REPLACE custinfo as OBJECT
(
    customer custinfo
    contactAddres address
),

CREATE TABLE myCustomers of custinfo;

INSERT INTO myCustomers VALUES
(CUSTINFO(cust(
    123,
    'Sean',
    '08947483934'
),
address(
    999,
    'Main Street',
    'NULL',
    'Dublin',
    'NULL',
    'NULL'
)
));


CREATE TABLE orders_table
(
    order_id INTEGER,
    sales_rep VARCHAR2,
    cust-details cust
);

insert INTO orders_table VALUES
(
    456,
    'Jim Byrne',
    cust(
        9123,
    'Pat Murphy',
    NULL
    )
);

CREATE TABLE studentDetails
(
    student.info Student,
    term.address address,
    home_address address,
    mentor person
);

INSERT INTO studentDetails VALUES
(
    student(
        234,
        'Kylian',
        '08933738373',
        893,
        'data Analysis'
    ),
    address(
        99,
        'Crescent',
        NULL,
        'Galway',
        NULL,
        NULL    
    ),
    address(
        24,
        'Boulevard',
        NULL,
        'Limerick',
        NULL,
        NULL  
    ),
    person(
        345,
        'Peter',
        '08737837423'
    )
);


CREATE TYPE location as OBJECT
(
    building_no NUMBER,
    city VARCHAR2(49)
);

CREATE TABLE dept
(
    deptno VARCHAR2(5) PRIMARY KEY,


    dept_name VARCHAR2(20),
    dept_mgr person(DEFAUL person(1, 'Mr CEO) NOT NULL
)


CREATE TYPE person AS OBJECT 
(
    id INTEGER PRIMARY KEY,
    firstname VARCHAR2(30),
    lastname VARCHAR2(30),
    email VARCHAR2(50),
    phone VARCHAR2(15)
);


CREATE TABLE customers OF person
(
    id PRIMARY KEY,
    lastname NOT NULL
);

CREATE TABLE customers OF person
(
    empid PRIMARY KEY,
    expectancy person,
    salary NUMBER(1,2),
    Role VARCHAR2(20;)
)


CREATE OR REPLACE TYPE address AS OBJECT
(
    id INTEGER PRIMARY KEY,
    flatNo INTEGER,
    streetName VARCHAR2(255) NOT NULL,
    town VARCHAR2(255) NOT NULL,
    city VARCHAR2(255) NOT NULL,
    eircode VARCHAR2(15) NOT NULL
);

CREATE OR REPLACE TYPE staffMember AS OBJECT
(
    id INTEGER PRIMARY KEY,
    firstName VARCHAR2(50),
    lastName VARCHAR2(50),
    department VARCHAR2(50),
    phoneNo NUMBER(15),
    email VARCHAR2(50),
    contactAddres VARCHAR2(255)
);

CREATE TABLE fullTimeEmp OF staffMember
(

)

INSERT INTO fullTimeEmp VALUES
(
    1, 'Jerry', 'Martin', 'Security', 0890988998, 'jerry@mail.com', '23 Jonson Boulevard Cherrywood Dublin 15'
)