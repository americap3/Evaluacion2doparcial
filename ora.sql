-- DATABASE LINK ORACLE 1 --> ORACLE 2 

CREATE DATABASE LINK ORACLE1_ORACLE2
CONNECT TO system IDENTIFIED BY "123"
USING 'ORACLE2';

-- VISTA GLOBAL DE TABLA CUSTOMERS

CREATE OR REPLACE VIEW VG_CUSTOMERS AS
SELECT * FROM CUSTOMERS
UNION ALL
SELECT * FROM CUSTOMERS@ORACLE1_ORACLE2;

-- SINÓNIMO PARA EL DATABASE LINK 

CREATE SYNONYM CUST2 FOR CUSTOMERS@ORACLE1_ORACLE2;

-- VISTA MATERIALIZADA 

SHOW USER
GRANT CREATE ANY MATERIALIZED VIEW TO SYSTEM;

CREATE MATERIALIZED VIEW VM_CUSTOMERS
REFRESH COMPLETE ON DEMAND
AS SELECT * FROM VG_CUSTOMERS;

