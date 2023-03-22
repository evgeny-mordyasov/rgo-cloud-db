CREATE SEQUENCE classification_sequence;

CREATE TABLE CLASSIFICATION (
    ENTITY_ID BIGINT PRIMARY KEY DEFAULT nextval('classification_sequence'),
    NAME      VARCHAR(128) NOT NULL
) TABLESPACE ${tbsTables};

CREATE UNIQUE INDEX cl_name_uq_idx
    ON CLASSIFICATION (NAME)
    TABLESPACE ${tbsIdx};

GRANT SELECT, INSERT, UPDATE, DELETE ON CLASSIFICATION TO ${appRole};
GRANT SELECT ON CLASSIFICATION TO ${readerRole};