-- @operation: export
-- @entity: batch
-- @name: More V2 prep
-- @exportedAt: 2026-02-21T18:28:06.820Z
-- @opIds: 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85

-- --- BEGIN op 75 ( update radarr_naming "Radarr" )
update "radarr_naming" set "name" = 'Radarr' where "name" = 'default';
-- --- END op 75

-- --- BEGIN op 76 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "name" = 'Sonarr' where "name" = 'default';
-- --- END op 76

-- --- BEGIN op 77 ( update radarr_quality_definitions "Radarr" )
delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'BR-DISK' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'CAM' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'DVD-R' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'DVDSCR' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'REGIONAL' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'TELECINE' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'TELESYNC' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

delete from "radarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WORKPRINT' and "min_size" = 0 and "max_size" = 2000 and "preferred_size" = 1990;

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'BR-DISK', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-1080p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-2160p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-480p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-576p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-720p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'CAM', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD-R', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVDSCR', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-1080p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-2160p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-720p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'REGIONAL', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Raw-HD', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-1080p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-2160p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'SDTV', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELECINE', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELESYNC', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Unknown', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-1080p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-2160p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-480p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-720p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-1080p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-2160p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-480p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-720p', 0, 0, 1990);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WORKPRINT', 0, 0, 1990);
-- --- END op 77

-- --- BEGIN op 78 ( update sonarr_quality_definitions "Sonarr" )
delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

delete from "sonarr_quality_definitions" where "name" = 'default' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 1000 and "preferred_size" = 990;

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-1080p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-2160p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-480p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-576p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-720p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'DVD', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-1080p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-2160p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-720p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Raw-HD', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-1080p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-2160p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'SDTV', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Unknown', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-1080p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-2160p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-480p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-720p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-1080p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-2160p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-480p', 0, 0, 990);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-720p', 0, 0, 990);
-- --- END op 78

-- --- BEGIN op 79 ( update radarr_media_settings "Radarr" )
update "radarr_media_settings" set "name" = 'Radarr' where "name" = 'default';
-- --- END op 79

-- --- BEGIN op 80 ( update sonarr_media_settings "Sonarr" )
update "sonarr_media_settings" set "name" = 'Sonarr' where "name" = 'default';
-- --- END op 80

-- --- BEGIN op 81 ( create delay_profile "Default Usenet" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Default Usenet', 'prefer_usenet', 60, 60, 1, 1, 1000);
-- --- END op 81

-- --- BEGIN op 82 ( update delay_profile "Default Usenet" )
update "delay_profiles" set "minimum_custom_format_score" = 750 where "name" = 'Default Usenet' and "minimum_custom_format_score" = 1000;
-- --- END op 82

-- --- BEGIN op 83 ( update delay_profile "Default Usenet" )
update "delay_profiles" set "bypass_if_above_custom_format_score" = 0, "minimum_custom_format_score" = NULL where "name" = 'Default Usenet' and "bypass_if_above_custom_format_score" = 1 and "minimum_custom_format_score" = 750;
-- --- END op 83

-- --- BEGIN op 84 ( update radarr_naming "Radarr" )
update "radarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Radarr' and "replace_illegal_characters" = 0;
-- --- END op 84

-- --- BEGIN op 85 ( update radarr_naming "Radarr" )
update "radarr_naming" set "replace_illegal_characters" = 0 where "name" = 'Radarr' and "replace_illegal_characters" = 1;
-- --- END op 85
