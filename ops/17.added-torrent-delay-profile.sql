-- @operation: export
-- @entity: batch
-- @name: Added torrent delay profile
-- @exportedAt: 2026-02-25T21:40:28.153Z
-- @opIds: 344, 345

-- --- BEGIN op 344 ( create delay_profile "Default Torrent" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Default Torrent', 'prefer_usenet', 60, 60, 0, 0, NULL);
-- --- END op 344

-- --- BEGIN op 345 ( update delay_profile "Default Torrent" )
update "delay_profiles" set "preferred_protocol" = 'prefer_torrent' where "name" = 'Default Torrent' and "preferred_protocol" = 'prefer_usenet';
-- --- END op 345
