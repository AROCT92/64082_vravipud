-- Run to Drop existing tables 
/*
DROP TABLE P_DOG_BREED_PERCENTAGE;
DROP TABLE P_OWNER_DOG_INT;
DROP TABLE P_SERVICE_CERTIFICATIONS;
DROP TABLE P_SERVICE_DOGS;
DROP TABLE P_OWNER;
DROP TABLE P_PET;
DROP TABLE P_PHOTO;
DROP TABLE P_INCIDENT;
DROP TABLE P_DOGBREED;
DROP TABLE P_DOG;
*/

-- Run to create table "DOG" 
CREATE TABLE P_DOG(
DOG_ID                CHAR(5)                             NOT NULL,
DOG_NAME              VARCHAR2(30) DEFAULT 'UNKNOWN'      NOT NULL,
DOG_BIRTH_MONTH       NUMBER(2,0)                             NULL,
DOG_BIRTH_YEAR        NUMBER(4,0)                         NOT NULL,
SEX                   CHAR(1)                             NOT NULL,
SPAYED_OR_NEUTERED    CHAR(1)      DEFAULT 'N'             NOT NULL,
         CONSTRAINT    P_DOG_PK         PRIMARY KEY (DOG_ID),
         --1. In the P_DOG table, constrain the dog’s birth month to be between 1 and 12, inclusive. 
         CONSTRAINT    DOG_BIRTH_MONTH_CHK   CHECK(DOG_BIRTH_MONTH BETWEEN 1 AND 12),
         --2. In the P_DOG table, constrain the dog’s birth year to be between 1980 and 2030, inclusive.  
         CONSTRAINT    DOG_BIRTH_YEAR_CHK    CHECK(DOG_BIRTH_YEAR BETWEEN 1980 AND 2030),
         --3. In the P_DOG table, constrain the dog’s sex to m, M, f, F only.  Make this constraint case insensitive by using a function. 
         CONSTRAINT    SEX_CHK CHECK(UPPER(SEX) IN ('M','F')),
         CONSTRAINT    SEX_CHK1 CHECK(LOWER(SEX) IN ('m','f'))
);







-- Run to create table "DOGBREED" 
CREATE TABLE P_DOGBREED (
BREED_ID              CHAR(5)                                 NOT NULL,
BREED_COMMON_NAME     VARCHAR2(60)                            NOT NULL,
CONSTRAINT      P_DOGBREED_PK         PRIMARY KEY (BREED_ID),
CONSTRAINT      P_DOGBREED_UK1         UNIQUE(BREED_COMMON_NAME)
);






-- Run to create table "DOG BREED PERCENTAGE" 
CREATE TABLE P_DOG_BREED_PERCENTAGE(
DOG_ID        CHAR(5)                            NOT NULL,
BREED_ID      CHAR(5)                            NOT NULL,
PERCENT       NUMBER(5,2)     DEFAULT 100.00     NOT NULL,
         CONSTRAINT    P_DOG_BREED_PERCENTAGE_PK         PRIMARY KEY (DOG_ID,BREED_ID),
         CONSTRAINT    P_DOG_BREED_PERCENTAGE_P_DOG_FK              FOREIGN KEY (DOG_ID)
                            REFERENCES P_DOG (DOG_ID),
         CONSTRAINT    P_DOG_BREED_PERCENTAGE_P_DOGBREED_FK         FOREIGN KEY (BREED_ID)
                            REFERENCES P_DOGBREED (BREED_ID),
         --4. In the P_DOG_BREED_PERCENTAGE table, constrain the percent field to be between 0 and 100, inclusive. 
         CONSTRAINT    PERCENT_CHK    CHECK(PERCENT BETWEEN 0 AND 100)
);







-- Run to create table "INCIDENT" 
CREATE TABLE P_INCIDENT (
DOG_ID                      CHAR(5)                                NOT NULL,
INCIDENT_NUM                NUMBER(3,0)     DEFAULT 1              NOT NULL,
INCIDENT_TYPE               VARCHAR2(30)    DEFAULT 'OFF LEASH'    NOT NULL,
DATE_OF_INCIDENT            DATE            DEFAULT SYSDATE        NOT NULL,
HAS_MAJOR_HUMAN_INJURY      CHAR(1)         DEFAULT 'N'            NOT NULL,
INC_DESCRIPTION             VARCHAR2(1000)                         NULL,
         CONSTRAINT    P_INCIDENT_PK         PRIMARY KEY (DOG_ID, INCIDENT_NUM),
         CONSTRAINT    P_INCIDENT_P_DOG_FK   FOREIGN KEY (DOG_ID)
                        REFERENCES P_DOG (DOG_ID),
         --7. Given in provided CREATE TABLE statement: In the P_INCIDENT table, constrain the ‘has major human injury’ field to the values: ‘Y’, or ‘N’. 
         CONSTRAINT    P_INCIDENT_HUMAN_INJURY_CHK  CHECK
                      (HAS_MAJOR_HUMAN_INJURY IN ('Y','N'))
);









-- Run to create table "OWNER" 
CREATE TABLE P_OWNER (
OWNER_ID             CHAR(5)                                  NOT NULL,
OWNER_FNAME          VARCHAR2(40)                                 NULL,
OWNER_LNAME          VARCHAR2(60)                             NOT NULL,
STREETADDRESS1       VARCHAR2(60)                                 NULL, 
STREETADDRESS2       VARCHAR2(60)                                 NULL,
CITY                 VARCHAR2(60)      DEFAULT 'LARKSVILLE'       NULL,
STATE                CHAR(2)           DEFAULT 'PA'               NULL,
ZIP                  CHAR(5)           DEFAULT'18704'             NULL,
TIMESTAMP            TIMESTAMP(2)    DEFAULT SYSDATE          NOT NULL,
PHONE                CHAR(10)                                     NULL,
EMAIL                VARCHAR2(40)                                 NULL,
         CONSTRAINT    P_OWNER_PK         PRIMARY KEY (OWNER_ID),
         CONSTRAINT    P_OWNER_UK1         UNIQUE(OWNER_FNAME,OWNER_LNAME,STREETADDRESS1,STREETADDRESS2,ZIP),
         --5. In the P_OWNER table, constrain the zip field to the values: ‘18704’, ‘18708’ or ‘18651’. 
         CONSTRAINT     P_OWNER_ZIP_CHK        CHECK(ZIP in (18704,18708,18651)),
        -- 6. Implement a constraint that checks to make sure all email addresses in the P_OWNER table are of the form [Anytext]@[Anytext].[Anytext].  Whereever you see [Anytext] this means that there must be at least one character (but no upper limit) in that spot to be a valid input.  Therefore, ‘me@hh.com’, ‘abrandyb@kent.edu’, ‘x@x.x’ would all be valid inputs.  However, your constraint should reject these entries: ‘@.’, ‘me at hh.com’, ‘me.com@hh’, ‘test@test@com’, ‘x@x, ‘a.kent.edu’. 
         CONSTRAINT       EMAIL_CHK    CHECK(EMAIL LIKE '%_@_%.%_' )
);    







-- Run to create table "OWNER DOG INT" 
CREATE TABLE P_OWNER_DOG_INT (
OWNER_ID     CHAR(5)          NOT NULL,
DOG_ID       CHAR(5)          NOT NULL,
        CONSTRAINT    P_OWNER_DOG_INT_PK         PRIMARY KEY (OWNER_ID,DOG_ID),
        CONSTRAINT    P_OWNER_DOG_INT_P_DOG_FK   FOREIGN KEY (DOG_ID)
                         REFERENCES P_DOG (DOG_ID),
        CONSTRAINT    P_OWNER_DOG_INT_P_OWNER_FK   FOREIGN KEY (OWNER_ID)
                         REFERENCES P_OWNER (OWNER_ID)
);







-- Run to create table "PET" 
CREATE TABLE P_PET (
DOG_ID                          CHAR (5)                              NOT NULL,
PET_DOG_LICENSE_NUM             CHAR(10)      DEFAULT 'UNLICENSED'    NOT NULL,
DATE_OF_LAST_PAYMENT            DATE          DEFAULT SYSDATE         NULL,
TOTAL_FEES_CURRENT_YEAR         NUMBER(5,2)   DEFAULT 25              NOT NULL,
TOTAL_PAYMENTS_CURRENT_YEAR     NUMBER(5,2)   DEFAULT 0               NOT NULL,
BALANCE_DUE_CURRENT_YEAR        NUMBER (5,2)                          NULL,
        CONSTRAINT      P_PET_PK          PRIMARY KEY (DOG_ID),
        CONSTRAINT      P_PET_UK1         UNIQUE(PET_DOG_LICENSE_NUM),
        CONSTRAINT      P_PET_P_DOG_FK          FOREIGN KEY (DOG_ID)
                       REFERENCES P_DOG(DOG_ID)
);






-- Run to create table "PHOTO" 
CREATE TABLE P_PHOTO (
PHOTO_ID                CHAR(5)                                      NOT NULL,
PHOTO_FILENAME          VARCHAR2(60)        DEFAULT 'NOIMAGE.JPG'    NOT NULL,
PHOTO_TIMESTAMP         TIMESTAMP(2)        DEFAULT SYSDATE          NOT NULL,
DOG_ID                  CHAR(5)                                      NOT NULL,
         CONSTRAINT     P_PHOTO_PK         PRIMARY KEY (PHOTO_ID),
         CONSTRAINT     P_PHOTO_P_DOG_FK    FOREIGN KEY (DOG_ID)
                          REFERENCES P_DOG(DOG_ID),
         --8. Given in provided CREATE TABLE statement: In the P_PHOTO table, constrain the entry for the picture file to always end in ‘.jpg’ (not including quotes).  This check should be case insensitive.  This means it should allow any of these entries: filename.jpg, filename.JPG, filename.JpG, filename.JPg, etc.  Do not create a separate condition for each case and OR them together.  Use an appropriate function.                  
         CONSTRAINT     P_PHOTO_CHK        CHECK (UPPER(PHOTO_FILENAME) LIKE '%.JPG')                                    
);





-- Run to create table "SERVICE DOGS" 
CREATE TABLE P_SERVICE_DOGS (
DOG_ID                        CHAR(5)        NOT NULL,
SERVICE_DOG_LICENSE_NUM       VARCHAR2(20)   NOT NULL,
OWNER_ID_ASSIGNED             CHAR(5)            NULL,
          CONSTRAINT     P_SERVICE_DOGS_PK         PRIMARY KEY (DOG_ID),
          CONSTRAINT    P_SERVICE_DOGS_UK1           UNIQUE (SERVICE_DOG_LICENSE_NUM),
          CONSTRAINT    P_SERVICE_DOGS_P_DOG_FK   FOREIGN KEY (DOG_ID)
                         REFERENCES P_DOG (DOG_ID),
          CONSTRAINT    P_SERVICE_DOGS_P_OWNER_FK   FOREIGN KEY (OWNER_ID_ASSIGNED)
                         REFERENCES P_OWNER (OWNER_ID)
);






-- Run to create table "SERVICE CERTIFICATIONS" 
CREATE TABLE P_SERVICE_CERTIFICATIONS (
CERT_ID                     CHAR(5)               NOT NULL,
CERTIFICATION               VARCHAR2(40)          NOT NULL,
ORIGINATION_DATE            DATE                  NULL,
MOST_RECENT_RENEWAL_DATE    DATE                  NULL,
CERT_EXPIRATION_DATE        DATE                  NULL,
DOG_ID                      CHAR(5)               NOT NULL,
            CONSTRAINT    P_SERVICE_CERTIFICATIONS_PK           PRIMARY KEY (CERT_ID),
            CONSTRAINT    P_SERVICE_CERTIFICATIONS_UK1           UNIQUE (CERTIFICATION,DOG_ID),
            CONSTRAINT    P_SERVICE_CERT_P_SERVICE_DOGS_FK      FOREIGN KEY (DOG_ID)
                              REFERENCES P_SERVICE_DOGS(DOG_ID)
);




-- When the script is properly executed, the tables will be successfully constructed using the supplied constraints. To input data into the required tables, run the insert data file.

