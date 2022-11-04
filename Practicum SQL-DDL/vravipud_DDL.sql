--------------------------------------------------------
--  File created - Friday-November-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table P_DOG
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_DOG" 
   (	"DOG_ID" CHAR(5 BYTE), 
	"DOG_NAME" VARCHAR2(30 BYTE) DEFAULT 'UNKNOWN', 
	"DOG_BIRTH_MONTH" NUMBER(2,0), 
	"DOG_BIRTH_YEAR" NUMBER(4,0), 
	"SEX" CHAR(1 BYTE), 
	"SPAYED_OR_NEUTERED" CHAR(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_DOG_BREED_PERCENTAGE
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" 
   (	"DOG_ID" CHAR(5 BYTE), 
	"BREED_ID" CHAR(5 BYTE), 
	"PERCENT" NUMBER(5,2) DEFAULT 100.00
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_DOGBREED
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_DOGBREED" 
   (	"BREED_ID" CHAR(5 BYTE), 
	"BREED_COMMON_NAME" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_INCIDENT
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_INCIDENT" 
   (	"DOG_ID" CHAR(5 BYTE), 
	"INCIDENT_NUM" NUMBER(3,0) DEFAULT 1, 
	"INCIDENT_TYPE" VARCHAR2(30 BYTE) DEFAULT 'OFF LEASH', 
	"DATE_OF_INCIDENT" DATE DEFAULT SYSDATE, 
	"HAS_MAJOR_HUMAN_INJURY" CHAR(1 BYTE) DEFAULT 'N', 
	"INC_DESCRIPTION" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_OWNER
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_OWNER" 
   (	"OWNER_ID" CHAR(5 BYTE), 
	"OWNER_FNAME" VARCHAR2(40 BYTE), 
	"OWNER_LNAME" VARCHAR2(60 BYTE), 
	"STREETADDRESS1" VARCHAR2(60 BYTE), 
	"STREETADDRESS2" VARCHAR2(60 BYTE), 
	"CITY" VARCHAR2(60 BYTE) DEFAULT 'LARKSVILLE', 
	"STATE" CHAR(2 BYTE) DEFAULT 'PA', 
	"ZIP" CHAR(5 BYTE) DEFAULT '18704', 
	"TIMESTAMP" TIMESTAMP (2) DEFAULT SYSDATE, 
	"PHONE" CHAR(10 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_OWNER_DOG_INT
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_OWNER_DOG_INT" 
   (	"OWNER_ID" CHAR(5 BYTE), 
	"DOG_ID" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_PET
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_PET" 
   (	"DOG_ID" CHAR(5 BYTE), 
	"PET_DOG_LICENSE_NUM" CHAR(10 BYTE) DEFAULT 'UNLICENSED', 
	"DATE_OF_LAST_PAYMENT" DATE DEFAULT SYSDATE, 
	"TOTAL_FEES_CURRENT_YEAR" NUMBER(5,2) DEFAULT 25, 
	"TOTAL_PAYMENTS_CURRENT_YEAR" NUMBER(5,2) DEFAULT 0, 
	"BALANCE_DUE_CURRENT_YEAR" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_PHOTO
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_PHOTO" 
   (	"PHOTO_ID" CHAR(5 BYTE), 
	"PHOTO_FILENAME" VARCHAR2(60 BYTE) DEFAULT 'NOIMAGE.JPG', 
	"PHOTO_TIMESTAMP" TIMESTAMP (2) DEFAULT SYSDATE, 
	"DOG_ID" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_SERVICE_CERTIFICATIONS
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" 
   (	"CERT_ID" CHAR(5 BYTE), 
	"CERTIFICATION" VARCHAR2(40 BYTE), 
	"ORIGINATION_DATE" DATE, 
	"MOST_RECENT_RENEWAL_DATE" DATE, 
	"CERT_EXPIRATION_DATE" DATE, 
	"DOG_ID" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Table P_SERVICE_DOGS
--------------------------------------------------------

  CREATE TABLE "S072FA22"."P_SERVICE_DOGS" 
   (	"DOG_ID" CHAR(5 BYTE), 
	"SERVICE_DOG_LICENSE_NUM" VARCHAR2(20 BYTE), 
	"OWNER_ID_ASSIGNED" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_DOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_DOG_PK" ON "S072FA22"."P_DOG" ("DOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_DOG_BREED_PERCENTAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_DOG_BREED_PERCENTAGE_PK" ON "S072FA22"."P_DOG_BREED_PERCENTAGE" ("DOG_ID", "BREED_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_DOGBREED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_DOGBREED_PK" ON "S072FA22"."P_DOGBREED" ("BREED_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_DOGBREED_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_DOGBREED_UK1" ON "S072FA22"."P_DOGBREED" ("BREED_COMMON_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_INCIDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_INCIDENT_PK" ON "S072FA22"."P_INCIDENT" ("DOG_ID", "INCIDENT_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_OWNER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_OWNER_PK" ON "S072FA22"."P_OWNER" ("OWNER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_OWNER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_OWNER_UK1" ON "S072FA22"."P_OWNER" ("OWNER_FNAME", "OWNER_LNAME", "STREETADDRESS1", "STREETADDRESS2", "ZIP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_OWNER_DOG_INT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_OWNER_DOG_INT_PK" ON "S072FA22"."P_OWNER_DOG_INT" ("OWNER_ID", "DOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_PET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_PET_PK" ON "S072FA22"."P_PET" ("DOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_PET_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_PET_UK1" ON "S072FA22"."P_PET" ("PET_DOG_LICENSE_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_PHOTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_PHOTO_PK" ON "S072FA22"."P_PHOTO" ("PHOTO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_SERVICE_CERTIFICATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_SERVICE_CERTIFICATIONS_PK" ON "S072FA22"."P_SERVICE_CERTIFICATIONS" ("CERT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_SERVICE_CERTIFICATIONS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_SERVICE_CERTIFICATIONS_UK1" ON "S072FA22"."P_SERVICE_CERTIFICATIONS" ("CERTIFICATION", "DOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_SERVICE_DOGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_SERVICE_DOGS_PK" ON "S072FA22"."P_SERVICE_DOGS" ("DOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  DDL for Index P_SERVICE_DOGS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "S072FA22"."P_SERVICE_DOGS_UK1" ON "S072FA22"."P_SERVICE_DOGS" ("SERVICE_DOG_LICENSE_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22" ;
--------------------------------------------------------
--  Constraints for Table P_DOG
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_DOG" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG" MODIFY ("DOG_NAME" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG" MODIFY ("DOG_BIRTH_YEAR" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG" MODIFY ("SEX" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG" MODIFY ("SPAYED_OR_NEUTERED" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG" ADD CONSTRAINT "DOG_BIRTH_MONTH_CHK" CHECK (DOG_BIRTH_MONTH BETWEEN 1 AND 12) ENABLE;
  ALTER TABLE "S072FA22"."P_DOG" ADD CONSTRAINT "DOG_BIRTH_YEAR_CHK" CHECK (DOG_BIRTH_YEAR BETWEEN 1980 AND 2030) ENABLE;
  ALTER TABLE "S072FA22"."P_DOG" ADD CONSTRAINT "SEX_CHK" CHECK (UPPER(SEX) IN ('M','F')) ENABLE;
  ALTER TABLE "S072FA22"."P_DOG" ADD CONSTRAINT "SEX_CHK1" CHECK (LOWER(SEX) IN ('m','f')) ENABLE;
  ALTER TABLE "S072FA22"."P_DOG" ADD CONSTRAINT "P_DOG_PK" PRIMARY KEY ("DOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_DOG_BREED_PERCENTAGE
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" MODIFY ("BREED_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" MODIFY ("PERCENT" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" ADD CONSTRAINT "PERCENT_CHK" CHECK (PERCENT BETWEEN 0 AND 100) ENABLE;
  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" ADD CONSTRAINT "P_DOG_BREED_PERCENTAGE_PK" PRIMARY KEY ("DOG_ID", "BREED_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_DOGBREED
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_DOGBREED" MODIFY ("BREED_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOGBREED" MODIFY ("BREED_COMMON_NAME" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_DOGBREED" ADD CONSTRAINT "P_DOGBREED_PK" PRIMARY KEY ("BREED_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
  ALTER TABLE "S072FA22"."P_DOGBREED" ADD CONSTRAINT "P_DOGBREED_UK1" UNIQUE ("BREED_COMMON_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_INCIDENT
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_INCIDENT" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_INCIDENT" MODIFY ("INCIDENT_NUM" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_INCIDENT" MODIFY ("INCIDENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_INCIDENT" MODIFY ("DATE_OF_INCIDENT" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_INCIDENT" MODIFY ("HAS_MAJOR_HUMAN_INJURY" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_INCIDENT" ADD CONSTRAINT "P_INCIDENT_HUMAN_INJURY_CHK" CHECK (HAS_MAJOR_HUMAN_INJURY IN ('Y','N')) ENABLE;
  ALTER TABLE "S072FA22"."P_INCIDENT" ADD CONSTRAINT "P_INCIDENT_PK" PRIMARY KEY ("DOG_ID", "INCIDENT_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_OWNER
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_OWNER" MODIFY ("OWNER_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_OWNER" MODIFY ("OWNER_LNAME" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_OWNER" MODIFY ("TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_OWNER" ADD CONSTRAINT "P_OWNER_ZIP_CHK" CHECK (ZIP in (18704,18708,18651)) ENABLE;
  ALTER TABLE "S072FA22"."P_OWNER" ADD CONSTRAINT "EMAIL_CHK" CHECK (LOWER (EMAIL) LIKE '%_@_%.%_' ) ENABLE;
  ALTER TABLE "S072FA22"."P_OWNER" ADD CONSTRAINT "P_OWNER_PK" PRIMARY KEY ("OWNER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
  ALTER TABLE "S072FA22"."P_OWNER" ADD CONSTRAINT "P_OWNER_UK1" UNIQUE ("OWNER_FNAME", "OWNER_LNAME", "STREETADDRESS1", "STREETADDRESS2", "ZIP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_OWNER_DOG_INT
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_OWNER_DOG_INT" MODIFY ("OWNER_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_OWNER_DOG_INT" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_OWNER_DOG_INT" ADD CONSTRAINT "P_OWNER_DOG_INT_PK" PRIMARY KEY ("OWNER_ID", "DOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_PET
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_PET" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PET" MODIFY ("PET_DOG_LICENSE_NUM" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PET" MODIFY ("TOTAL_FEES_CURRENT_YEAR" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PET" MODIFY ("TOTAL_PAYMENTS_CURRENT_YEAR" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PET" ADD CONSTRAINT "P_PET_PK" PRIMARY KEY ("DOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
  ALTER TABLE "S072FA22"."P_PET" ADD CONSTRAINT "P_PET_UK1" UNIQUE ("PET_DOG_LICENSE_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_PHOTO
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_PHOTO" MODIFY ("PHOTO_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PHOTO" MODIFY ("PHOTO_FILENAME" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PHOTO" MODIFY ("PHOTO_TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PHOTO" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_PHOTO" ADD CONSTRAINT "P_PHOTO_CHK" CHECK (UPPER(PHOTO_FILENAME) LIKE '%.JPG') ENABLE;
  ALTER TABLE "S072FA22"."P_PHOTO" ADD CONSTRAINT "P_PHOTO_PK" PRIMARY KEY ("PHOTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_SERVICE_CERTIFICATIONS
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" MODIFY ("CERT_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" MODIFY ("CERTIFICATION" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" ADD CONSTRAINT "P_SERVICE_CERTIFICATIONS_PK" PRIMARY KEY ("CERT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
  ALTER TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" ADD CONSTRAINT "P_SERVICE_CERTIFICATIONS_UK1" UNIQUE ("CERTIFICATION", "DOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Constraints for Table P_SERVICE_DOGS
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_SERVICE_DOGS" MODIFY ("DOG_ID" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_SERVICE_DOGS" MODIFY ("SERVICE_DOG_LICENSE_NUM" NOT NULL ENABLE);
  ALTER TABLE "S072FA22"."P_SERVICE_DOGS" ADD CONSTRAINT "P_SERVICE_DOGS_PK" PRIMARY KEY ("DOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
  ALTER TABLE "S072FA22"."P_SERVICE_DOGS" ADD CONSTRAINT "P_SERVICE_DOGS_UK1" UNIQUE ("SERVICE_DOG_LICENSE_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "S072FA22"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_DOG_BREED_PERCENTAGE
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" ADD CONSTRAINT "P_DOG_BREED_PERCENTAGE_P_DOG_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_DOG" ("DOG_ID") ENABLE;
  ALTER TABLE "S072FA22"."P_DOG_BREED_PERCENTAGE" ADD CONSTRAINT "P_DOG_BREED_PERCENTAGE_P_DOGBREED_FK" FOREIGN KEY ("BREED_ID")
	  REFERENCES "S072FA22"."P_DOGBREED" ("BREED_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_INCIDENT
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_INCIDENT" ADD CONSTRAINT "P_INCIDENT_P_DOG_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_DOG" ("DOG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_OWNER_DOG_INT
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_OWNER_DOG_INT" ADD CONSTRAINT "P_OWNER_DOG_INT_P_DOG_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_DOG" ("DOG_ID") ENABLE;
  ALTER TABLE "S072FA22"."P_OWNER_DOG_INT" ADD CONSTRAINT "P_OWNER_DOG_INT_P_OWNER_FK" FOREIGN KEY ("OWNER_ID")
	  REFERENCES "S072FA22"."P_OWNER" ("OWNER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_PET
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_PET" ADD CONSTRAINT "P_PET_P_DOG_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_DOG" ("DOG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_PHOTO
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_PHOTO" ADD CONSTRAINT "P_PHOTO_P_DOG_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_DOG" ("DOG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_SERVICE_CERTIFICATIONS
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_SERVICE_CERTIFICATIONS" ADD CONSTRAINT "P_SERVICE_CERT_P_SERVICE_DOGS_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_SERVICE_DOGS" ("DOG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table P_SERVICE_DOGS
--------------------------------------------------------

  ALTER TABLE "S072FA22"."P_SERVICE_DOGS" ADD CONSTRAINT "P_SERVICE_DOGS_P_DOG_FK" FOREIGN KEY ("DOG_ID")
	  REFERENCES "S072FA22"."P_DOG" ("DOG_ID") ENABLE;
  ALTER TABLE "S072FA22"."P_SERVICE_DOGS" ADD CONSTRAINT "P_SERVICE_DOGS_P_OWNER_FK" FOREIGN KEY ("OWNER_ID_ASSIGNED")
	  REFERENCES "S072FA22"."P_OWNER" ("OWNER_ID") ENABLE;
