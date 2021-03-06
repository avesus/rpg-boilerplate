-- Deploy rpg_local:jwt to pg
-- requires: 6_schema_account
-- requires: 4_extension_uuidOssp

begin;

/*
create type account.jwt
as (
  role text,
  profile_id uuid
);
*/

alter type account.jwt drop attribute if exists device_id;

comment on type account.jwt is 'jwt type used to map authentication response to a json web token';

commit;