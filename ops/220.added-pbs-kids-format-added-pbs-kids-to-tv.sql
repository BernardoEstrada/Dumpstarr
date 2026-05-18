-- @operation: export
-- @entity: batch
-- @name: Added PBS Kids format|Added PBS Kids to TV
-- @exportedAt: 2026-05-18T13:27:28.472Z
-- @opIds: 784, 785, 786, 787, 788, 789, 790

-- --- BEGIN op 784 ( create regular_expression "PBS Kids" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PBS Kids', '\b(PBSK)\b', NULL, NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PBS Kids', 'Streaming Service');
-- --- END op 784

-- --- BEGIN op 785 ( create custom_format "PBSK" )
insert into "custom_formats" ("name", "description") values ('PBSK', '');
-- --- END op 785

-- --- BEGIN op 786 ( update custom_format "PBSK" )
update "custom_formats" set "description" = 'Matches releases from the PBS Kids channel.' where "name" = 'PBSK' and "description" = '';
-- --- END op 786

-- --- BEGIN op 787 ( update custom_format "PBSK" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('PBSK', 'Streaming Service');
-- --- END op 787

-- --- BEGIN op 788 ( update custom_format "PBSK" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PBSK', 'PBS Kids', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PBSK', 'PBS Kids', 'PBS Kids');
-- --- END op 788

-- --- BEGIN op 789 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'PBSK', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'PBSK'
    AND arr_type = 'sonarr'
);
-- --- END op 789

-- --- BEGIN op 790 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'PBSK', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'PBSK'
    AND arr_type = 'sonarr'
);
-- --- END op 790
