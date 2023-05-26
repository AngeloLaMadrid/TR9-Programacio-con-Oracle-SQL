/*NOTA RAPIDA
USUARIO:     ADMIN
CONTRASE�A:  ADMIN     
*/


/* Crear tablespace dBRestaurante */
CREATE TABLESPACE tbs_dbRestaurante
DATAFILE 'tbs_dBRestaurante'
SIZE 500M;

/* Permitor ejecuci�n de script */
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

/* Crear usuario */
CREATE USER ADMIN
IDENTIFIED BY ADMIN
DEFAULT TABLESPACE tbs_dbRestaurante    
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON tbs_dbRestaurante;

/* Determinar los privilegios del usuario */
GRANT CREATE SESSION TO ADMIN;
GRANT CREATE TABLE TO ADMIN;
GRANT CREATE VIEW TO ADMIN;
GRANT CREATE PROCEDURE TO ADMIN;
GRANT CREATE TRIGGER TO ADMIN;
GRANT CREATE SEQUENCE TO ADMIN;
GRANT CREATE JOB TO ADMIN;
GRANT UNLIMITED TABLESPACE TO ADMIN;