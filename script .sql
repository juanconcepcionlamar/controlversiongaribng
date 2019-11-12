CREATE TABLE DISTRIBUCION_PAGO
(  
  TIPO_PAGO              VARCHAR2(3 BYTE)       NOT NULL,
  TIPO_DOC               VARCHAR2(10 BYTE)      NOT NULL,
  NO_DOCUMENTO           VARCHAR2(10 BYTE)      NOT NULL,
  MONTO                  NUMBER(14,4)           NOT NULL,
  NO_REF                 VARCHAR2(20 BYTE)      NOT NULL,
  USUARIO                VARCHAR2(30 BYTE)      NOT NULL,
  FECHA_INSERCION        DATE                   NOT NULL,
  USUARIO_INSERCION      VARCHAR2(30 BYTE),  
  ESTADO_DISTR_PAGO      VARCHAR2(1 BYTE),
  MONEDA                 VARCHAR2(3 BYTE)       NOT NULL,
  ESTADO                 VARCHAR2(1 BYTE)       NOT NULL,
  TIPO_REF               VARCHAR2(10 BYTE),
  IDENTIFICACION         VARCHAR2(50 BYTE),  
  ID_APERTURA_TURNO      VARCHAR2(10 BYTE),  
  DEVUELTA               NUMBER(14,4),
  FECHA_ANULACION        DATE
);



ALTER TABLE DISTRIBUCION_PAGO ADD (
  CONSTRAINT PK_DISTRIBUCION_PAGO
  PRIMARY KEY
  (MONEDA, TIPO_PAGO, TIPO_DOC, NO_DOCUMENTO, NO_REF)
  USING INDEX PK_DISTRIBUCION_PAGO
  ENABLE VALIDATE);

ALTER TABLE DISTRIBUCION_PAGO ADD (
  CONSTRAINT FK1_DISTRIBUCION_PAGO 
  FOREIGN KEY (ID_EMPRESA, TIPO_PAGO) 
  REFERENCES TIPO_PAGO (ID_EMPRESA,TIPO_PAGO)
  ENABLE NOVALIDATE);