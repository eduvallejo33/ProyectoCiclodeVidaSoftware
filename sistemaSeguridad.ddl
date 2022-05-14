-- Generado por Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   en:        2022-05-14 16:44:53 CEST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aerolinea (
    id          NUMBER(5) NOT NULL,
    nombre      VARCHAR2(20 CHAR) NOT NULL,
    apellidos   VARCHAR2(30 CHAR) NOT NULL,
    horaentrada TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono    NUMBER(12) NOT NULL
);

ALTER TABLE aerolinea ADD CONSTRAINT aerolinea_pk PRIMARY KEY ( id );

CREATE TABLE aerolinea_basededatosv1 (
    aerolinea_id   NUMBER(5) NOT NULL,
    basededatos_id NUMBER(5) NOT NULL
);

ALTER TABLE aerolinea_basededatosv1 ADD CONSTRAINT aerolinea_basededatosv1_pk PRIMARY KEY ( aerolinea_id,
                                                                                            basededatos_id );

CREATE TABLE agencias (
    id          NUMBER(5) NOT NULL,
    nombre      VARCHAR2(20 CHAR) NOT NULL,
    apellidos   VARCHAR2(30 CHAR) NOT NULL,
    horaentrada TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono    NUMBER(12) NOT NULL
);

ALTER TABLE agencias ADD CONSTRAINT agencias_pk PRIMARY KEY ( id );

CREATE TABLE agencias_basededatos (
    agencias_id    NUMBER(5) NOT NULL,
    basededatos_id NUMBER(5) NOT NULL
);

ALTER TABLE agencias_basededatos ADD CONSTRAINT agencias_basededatos_pk PRIMARY KEY ( agencias_id,
                                                                                      basededatos_id );

CREATE TABLE basededatos (
    id           NUMBER(5) NOT NULL,
    nombre       VARCHAR2(20 CHAR) NOT NULL,
    apellidos    VARCHAR2(30 CHAR) NOT NULL,
    horaentrada  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida   TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono     NUMBER(12) NOT NULL,
    rrhh_id      NUMBER(5) NOT NULL,
    seguridad_id NUMBER(5) NOT NULL
);

ALTER TABLE basededatos ADD CONSTRAINT basededatos_pk PRIMARY KEY ( id );

CREATE TABLE central (
    id          NUMBER(5) NOT NULL,
    nombre      VARCHAR2(20 CHAR) NOT NULL,
    apellidos   VARCHAR2(30 CHAR) NOT NULL,
    horaentrada TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono    NUMBER(12) NOT NULL
);

ALTER TABLE central ADD CONSTRAINT central_pk PRIMARY KEY ( id );

CREATE TABLE central_basededatos (
    central_id     NUMBER(5) NOT NULL,
    basededatos_id NUMBER(5) NOT NULL
);

ALTER TABLE central_basededatos ADD CONSTRAINT central_basededatos_pk PRIMARY KEY ( central_id,
                                                                                    basededatos_id );

CREATE TABLE hoteles (
    id          NUMBER(6) NOT NULL,
    nombre      VARCHAR2(20 CHAR) NOT NULL,
    apellidos   VARCHAR2(30 CHAR) NOT NULL,
    horaentrada TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono    NUMBER(12) NOT NULL
);

ALTER TABLE hoteles ADD CONSTRAINT hoteles_pk PRIMARY KEY ( id );

CREATE TABLE hoteles_basededatos (
    hoteles_id     NUMBER(6) NOT NULL,
    basededatos_id NUMBER(5) NOT NULL
);

ALTER TABLE hoteles_basededatos ADD CONSTRAINT hoteles_basededatos_pk PRIMARY KEY ( hoteles_id,
                                                                                    basededatos_id );

CREATE TABLE rrhh (
    id          NUMBER(5) NOT NULL,
    nombre      VARCHAR2(20 CHAR) NOT NULL,
    apellidos   VARCHAR2(30 CHAR) NOT NULL,
    horaentrada TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono    NUMBER(12) NOT NULL
);

ALTER TABLE rrhh ADD CONSTRAINT rrhh_pk PRIMARY KEY ( id );

CREATE TABLE seguridad (
    id          NUMBER(5) NOT NULL,
    nombre      VARCHAR2(20 CHAR) NOT NULL,
    apellidos   VARCHAR2(30 CHAR) NOT NULL,
    horaentrada TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    horasalida  TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    telefono    NUMBER(12) NOT NULL
);

ALTER TABLE seguridad ADD CONSTRAINT seguridad_pk PRIMARY KEY ( id );

ALTER TABLE aerolinea_basededatosv1
    ADD CONSTRAINT aerolinea_bd_aer_fk FOREIGN KEY ( aerolinea_id )
        REFERENCES aerolinea ( id );

ALTER TABLE aerolinea_basededatosv1
    ADD CONSTRAINT aerolinea_bd_bd_fk FOREIGN KEY ( basededatos_id )
        REFERENCES basededatos ( id );

ALTER TABLE agencias_basededatos
    ADD CONSTRAINT agencias_bd_age_fk FOREIGN KEY ( agencias_id )
        REFERENCES agencias ( id );

ALTER TABLE agencias_basededatos
    ADD CONSTRAINT agencias_bd_bd_fk FOREIGN KEY ( basededatos_id )
        REFERENCES basededatos ( id );

ALTER TABLE basededatos
    ADD CONSTRAINT basededatos_rrhh_fk FOREIGN KEY ( rrhh_id )
        REFERENCES rrhh ( id );

ALTER TABLE basededatos
    ADD CONSTRAINT basededatos_seguridad_fk FOREIGN KEY ( seguridad_id )
        REFERENCES seguridad ( id );

ALTER TABLE central_basededatos
    ADD CONSTRAINT central_bd_bd_fk FOREIGN KEY ( basededatos_id )
        REFERENCES basededatos ( id );

ALTER TABLE central_basededatos
    ADD CONSTRAINT central_bd_central_fk FOREIGN KEY ( central_id )
        REFERENCES central ( id );

ALTER TABLE hoteles_basededatos
    ADD CONSTRAINT hoteles_bd_bd_fk FOREIGN KEY ( basededatos_id )
        REFERENCES basededatos ( id );

ALTER TABLE hoteles_basededatos
    ADD CONSTRAINT hoteles_bd_hot_fk FOREIGN KEY ( hoteles_id )
        REFERENCES hoteles ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                             21
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
