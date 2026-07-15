-- @operation: export
-- @entity: batch
-- @name: Added DUDU/HiggsBoson/JFF to Dumpstarr LQ
-- @exportedAt: 2026-07-15T14:31:53.572Z
-- @opIds: 3370, 3371, 3372, 3373, 3374, 3375, 3377, 3378, 3379, 3380, 3381, 3382, 3383, 3384, 3385, 3386, 3387, 3388, 3389

-- --- BEGIN op 3370 ( create custom_format "LQ Allowed 1080p" )
insert into "custom_formats" ("name", "description") values ('LQ Allowed 1080p', '');
-- --- END op 3370

-- --- BEGIN op 3371 ( update custom_format "LQ Allowed 1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Allowed 1080p', '1080p', 'resolution', 'sonarr', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('LQ Allowed 1080p', '1080p', '1080p');
-- --- END op 3371

-- --- BEGIN op 3372 ( update custom_format "LQ Allowed 1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Allowed 1080p', 'MeGusta', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Allowed 1080p', 'MeGusta', 'MeGusta');
-- --- END op 3372

-- --- BEGIN op 3373 ( update custom_format "LQ Allowed 1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ Allowed 1080p', 'iVy', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ Allowed 1080p', 'iVy', 'iVy');
-- --- END op 3373

-- --- BEGIN op 3374 ( update custom_format "LQ 1080p Disallowed" )
update "custom_formats" set "name" = 'LQ 1080p Disallowed' where "name" = 'LQ Allowed 1080p';
-- --- END op 3374

-- --- BEGIN op 3375 ( update custom_format "LQ Disallowed" )
update "custom_formats" set "name" = 'LQ Disallowed' where "name" = 'LQ 1080p Disallowed';
-- --- END op 3375

-- --- BEGIN op 3377 ( update custom_format "LQ Disallowed" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'LQ Disallowed'
  AND name = '1080p'
  AND type = 'resolution'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3377

-- --- BEGIN op 3378 ( update custom_format "LQ Disallowed" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'LQ Disallowed'
  AND name = 'MeGusta'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3378

-- --- BEGIN op 3379 ( update custom_format "LQ Disallowed" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'LQ Disallowed'
  AND name = 'iVy'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 3379

-- --- BEGIN op 3380 ( update custom_format "LQ Disallowed" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'LQ Disallowed'
  AND name = 'MeGusta'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 1
  AND required = 0;
-- --- END op 3380

-- --- BEGIN op 3381 ( update custom_format "LQ Disallowed" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'LQ Disallowed'
  AND name = 'iVy'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 1
  AND required = 0;
-- --- END op 3381

-- --- BEGIN op 3382 ( update custom_format "LQ Disallowed" )
update "custom_formats" set "description" = 'The format targets release that are 1080p and are NOT in SIDCA Tier 01.' where "name" = 'LQ Disallowed' and "description" = '';
-- --- END op 3382

-- --- BEGIN op 3383 ( update custom_format "LQ Disallowed" )
update "custom_formats" set "description" = 'The format targets releases that are 1080p and are NOT in SIDCA Tier 01.' where "name" = 'LQ Disallowed' and "description" = 'The format targets release that are 1080p and are NOT in SIDCA Tier 01.';
-- --- END op 3383

-- --- BEGIN op 3384 ( create regular_expression "HiggsBoson" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiggsBoson', '^(HiggsBosson)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiggsBoson', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiggsBoson', 'Banned');
-- --- END op 3384

-- --- BEGIN op 3385 ( create regular_expression "JFF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JFF', '^(JFF)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JFF', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JFF', 'Banned');
-- --- END op 3385

-- --- BEGIN op 3386 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'HiggsBoson', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'HiggsBoson', 'HiggsBoson');
-- --- END op 3386

-- --- BEGIN op 3387 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'JFF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'JFF', 'JFF');
-- --- END op 3387

-- --- BEGIN op 3388 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'DUDU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'DUDU', 'DUDU');
-- --- END op 3388

-- --- BEGIN op 3389 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups (Automation)'
	  AND name = 'DUDU'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3389
