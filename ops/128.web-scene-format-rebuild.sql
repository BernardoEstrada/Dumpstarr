-- @operation: export
-- @entity: batch
-- @name: WEB Scene Format Rebuild
-- @exportedAt: 2026-03-12T05:46:11.895Z
-- @opIds: 693, 694, 695, 696, 697, 698, 699, 700, 701

-- --- BEGIN op 693 ( create regular_expression "INFLATE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('INFLATE', '^(4KDVS)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('INFLATE', 'Release Group');
-- --- END op 693

-- --- BEGIN op 694 ( update regular_expression "INFLATE" )
update "regular_expressions" set "pattern" = '^(INFLATE)$' where "name" = 'INFLATE' and "pattern" = '^(4KDVS)$';
-- --- END op 694

-- --- BEGIN op 695 ( create custom_format "WEB Scene" )
insert into "custom_formats" ("name", "description") values ('WEB Scene', '');
-- --- END op 695

-- --- BEGIN op 696 ( update custom_format "WEB Scene" )
update "custom_formats" set "description" = 'One of the few scene groups that released quality releases.' where "name" = 'WEB Scene' and "description" = '';
-- --- END op 696

-- --- BEGIN op 697 ( update custom_format "WEB Scene" )
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('WEB Scene', 'TRaSH');
-- --- END op 697

-- --- BEGIN op 698 ( update custom_format "WEB Scene" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Scene', 'DEFLATE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Scene', 'DEFLATE', 'DEFLATE');
-- --- END op 698

-- --- BEGIN op 699 ( update custom_format "WEB Scene" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Scene', 'INFLATE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Scene', 'INFLATE', 'INFLATE');
-- --- END op 699

-- --- BEGIN op 700 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'WEB Scene', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'WEB Scene'
    AND arr_type = 'sonarr'
);
-- --- END op 700

-- --- BEGIN op 701 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'WEB Scene', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'WEB Scene'
    AND arr_type = 'sonarr'
);
-- --- END op 701
