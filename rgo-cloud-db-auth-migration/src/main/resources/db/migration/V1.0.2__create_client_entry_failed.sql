CREATE SEQUENCE client_entry_failed_sequence;

CREATE TABLE CLIENT_ENTRY_FAILED (
    ENTITY_ID  BIGINT PRIMARY KEY DEFAULT nextval('client_entry_failed_sequence'),
    MAIL       VARCHAR(128) REFERENCES CLIENT(MAIL) NOT NULL,
    ATTEMPTS   INT DEFAULT 0,
    BLOCK_DATE TIMESTAMP DEFAULT '1970-01-01T00:00:00.000000'
) TABLESPACE ${tbsTables};

CREATE UNIQUE INDEX cef_mail_uq_idx
    ON CLIENT_ENTRY_FAILED (MAIL)
    TABLESPACE ${tbsIdx};

GRANT SELECT, INSERT, UPDATE, DELETE ON CLIENT_ENTRY_FAILED TO ${appRole};
GRANT SELECT ON CLIENT_ENTRY_FAILED TO ${readerRole};