-- @operation: export
-- @entity: batch
-- @name: Added Discovery+ format and fixed SKST
-- @exportedAt: 2026-04-06T05:14:05.353Z
-- @opIds: 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637

-- --- BEGIN op 2630 ( create regular_expression "Discovery+" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Discovery+', '\b((dscp|dcp|disc)\b|dscv\+?)[ ._-]web[ ._-]?(dl|rip)?\b', NULL, NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Discovery+', 'Streaming Service');
-- --- END op 2630

-- --- BEGIN op 2631 ( create custom_format "DSCP" )
insert into "custom_formats" ("name", "description") values ('DSCP', '');
-- --- END op 2631

-- --- BEGIN op 2632 ( update custom_format "DSCP" )
update "custom_formats" set "description" = 'Discovery+ (pronounced "Discovery Plus"; stylized as discovery+) is an American subscription video on-demand over-the-top streaming service owned by Warner Bros. Discovery (WBD). The service focuses on factual programming drawn from the libraries of Discovery''s main channel brands, as well as original series (including spin-offs of programs from Discovery''s television networks), and other acquired content.' where "name" = 'DSCP' and "description" = '';
-- --- END op 2632

-- --- BEGIN op 2633 ( update custom_format "DSCP" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('DSCP', 'Streaming Service');
-- --- END op 2633

-- --- BEGIN op 2634 ( update custom_format "DSCP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'Discovery+', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'Discovery+', 'Discovery+');
-- --- END op 2634

-- --- BEGIN op 2635 ( update custom_format "SKST" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SKST', 'SkyShowTime', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SKST', 'SkyShowTime', 'SkyShowTime');
-- --- END op 2635

-- --- BEGIN op 2636 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'DSCP', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 2636

-- --- BEGIN op 2637 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'DSCP', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 2637
