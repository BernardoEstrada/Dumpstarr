-- @operation: export
-- @entity: batch
-- @name: Added SkyShowTime Format to TV
-- @exportedAt: 2026-04-06T02:46:39.502Z
-- @opIds: 2621, 2622, 2623, 2624, 2625, 2626

-- --- BEGIN op 2621 ( create regular_expression "SkyShowTime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SkyShowTime', '\b(SKST)\b', 'SkyShowtime is a European joint-venture between Comcast and Paramount Skydance Corporation which combines programming from Peacock and Paramount+ as well as Sky Studios', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SkyShowTime', 'Streaming Service');
-- --- END op 2621

-- --- BEGIN op 2622 ( create custom_format "SKST" )
insert into "custom_formats" ("name", "description") values ('SKST', '');
-- --- END op 2622

-- --- BEGIN op 2623 ( update custom_format "SKST" )
update "custom_formats" set "description" = 'SkyShowTime Streaming Service' where "name" = 'SKST' and "description" = '';
-- --- END op 2623

-- --- BEGIN op 2624 ( update custom_format "SKST" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('SKST', 'Streaming Service');
-- --- END op 2624

-- --- BEGIN op 2625 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'SKST', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2625

-- --- BEGIN op 2626 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'SKST', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2626
