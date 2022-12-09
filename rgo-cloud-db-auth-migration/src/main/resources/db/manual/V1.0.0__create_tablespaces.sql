CREATE TABLESPACE ${tbsTables}
    OWNER postgres
    LOCATION '${tbsTablesDataFile}';

CREATE TABLESPACE ${tbsIdx}
    OWNER postgres
    LOCATION '${tbsIdxDataFile}';