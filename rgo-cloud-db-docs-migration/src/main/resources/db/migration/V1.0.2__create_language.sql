CREATE SEQUENCE language_sequence;

CREATE TABLE LANGUAGE (
    ENTITY_ID BIGINT PRIMARY KEY DEFAULT nextval('language_sequence'),
    NAME      VARCHAR(128) NOT NULL
) TABLESPACE ${tbsTables};

CREATE UNIQUE INDEX lang_name_idx
    ON LANGUAGE (NAME)
    TABLESPACE ${tbsIdx};

GRANT SELECT, INSERT, UPDATE, DELETE ON LANGUAGE TO ${appRole};
GRANT SELECT ON LANGUAGE TO ${readerRole};