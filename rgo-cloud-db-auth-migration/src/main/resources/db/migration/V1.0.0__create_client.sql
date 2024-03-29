CREATE SEQUENCE client_sequence;

CREATE TABLE CLIENT (
    ENTITY_ID          BIGINT PRIMARY KEY DEFAULT nextval('client_sequence'),
    SURNAME            VARCHAR(128) NOT NULL,
    NAME               VARCHAR(128) NOT NULL,
    PATRONYMIC         VARCHAR(128) NOT NULL,
    MAIL               VARCHAR(128) NOT NULL,
    PASSWORD           VARCHAR(512) NOT NULL,
    CREATED_DATE       TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    LAST_MODIFIED_DATE TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    IS_VERIFIED        BOOLEAN DEFAULT FALSE,
    ROLE               VARCHAR(16) DEFAULT 'USER'
) TABLESPACE ${tbsTables};

CREATE UNIQUE INDEX ct_mail_uq_idx
    ON CLIENT (MAIL)
    TABLESPACE ${tbsIdx};

GRANT SELECT, INSERT, UPDATE, DELETE ON CLIENT TO ${appRole};
GRANT SELECT ON CLIENT TO ${readerRole};