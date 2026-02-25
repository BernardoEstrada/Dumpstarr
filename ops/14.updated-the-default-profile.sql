-- @operation: export
-- @entity: batch
-- @name: Updated the default profile
-- @exportedAt: 2026-02-25T17:57:06.592Z
-- @opIds: 335

-- --- BEGIN op 335 ( update delay_profile "Default Usenet" )
update "delay_profiles" set "bypass_if_highest_quality" = 0 where "name" = 'Default Usenet' and "bypass_if_highest_quality" = 1;
-- --- END op 335
