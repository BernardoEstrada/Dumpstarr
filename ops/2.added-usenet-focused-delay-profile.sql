-- @operation: export
-- @entity: batch
-- @name: Added usenet focused delay profile
-- @exportedAt: 2026-02-19T23:38:44.480Z
-- @opIds: 71

-- --- BEGIN op 71 ( create delay_profile "Default" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Default', 'prefer_usenet', 60, 60, 1, 1, 1);
-- --- END op 71
