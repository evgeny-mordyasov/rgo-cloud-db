CREATE SCHEMA ${userOwner} AUTHORIZATION owner_role_${userOwner};

ALTER ROLE ${appRole} SET search_path TO ${userOwner}, public;
GRANT USAGE ON SCHEMA ${userOwner}
    TO ${appRole};

ALTER ROLE ${readerRole} SET search_path TO ${userOwner}, public;
GRANT USAGE ON SCHEMA ${userOwner}
    TO ${readerRole};