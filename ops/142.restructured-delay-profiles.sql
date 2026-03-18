-- @operation: export
-- @entity: batch
-- @name: Restructured Delay Profiles
-- @exportedAt: 2026-03-18T21:53:29.970Z
-- @opIds: 1161, 1162, 1163

-- --- BEGIN op 1161 ( update delay_profile "Dumpstarr Delay" )
update "delay_profiles" set "name" = 'Dumpstarr Delay', "preferred_protocol" = 'prefer_usenet' where "name" = 'Default Torrent' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 1161

-- --- BEGIN op 1162 ( delete delay_profile "Default Usenet" )
delete from "delay_profiles" where "name" = 'Default Usenet' and "preferred_protocol" = 'prefer_usenet' and "bypass_if_highest_quality" = 0 and "bypass_if_above_custom_format_score" = 0 and "usenet_delay" = 60 and "torrent_delay" = 60 and "minimum_custom_format_score" is null;
-- --- END op 1162

-- --- BEGIN op 1163 ( update delay_profile "Default Delay" )
update "delay_profiles" set "name" = 'Default Delay' where "name" = 'Dumpstarr Delay';
-- --- END op 1163
