CREATE ROLE owner_role_${userOwner};
GRANT CREATE ON DATABASE ${database} TO owner_role_${userOwner};
GRANT CREATE ON TABLESPACE ${tbsTables} to owner_role_${userOwner};
GRANT CREATE ON TABLESPACE ${tbsIdx} to owner_role_${userOwner};
CREATE USER ${userOwner} WITH PASSWORD '${userOwnerPass}';
GRANT owner_role_${userOwner} TO ${userOwner};

ALTER USER ${userOwner} SET default_tablespace = ${tbsTables};

CREATE ROLE ${appRole};
CREATE USER ${userApp} WITH PASSWORD '${userAppPass}';
GRANT ${appRole} TO ${userApp};

CREATE ROLE ${readerRole};