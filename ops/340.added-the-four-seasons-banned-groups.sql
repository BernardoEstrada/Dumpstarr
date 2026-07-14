-- @operation: export
-- @entity: batch
-- @name: Added The Four Seasons Banned Groups
-- @exportedAt: 2026-07-14T20:27:13.616Z
-- @opIds: 3358, 3359, 3360, 3361, 3362, 3363, 3364, 3365, 3366, 3367, 3368

-- --- BEGIN op 3358 ( create regular_expression "The Four Seasons Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Four Seasons Banned Groups', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Four Seasons Banned Groups', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Four Seasons Banned Groups', 'Custom');
-- --- END op 3358

-- --- BEGIN op 3359 ( update regular_expression "The Four Seasons Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(iVy)\b' where "name" = 'The Four Seasons Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b';
-- --- END op 3359

-- --- BEGIN op 3360 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Phineas and Ferb Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3360

-- --- BEGIN op 3361 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'The Office (US) S9 Banned Groups'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 3361

-- --- BEGIN op 3362 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Phineas and Ferb', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Phineas and Ferb', 'Phineas and Ferb Banned Groups');
-- --- END op 3362

-- --- BEGIN op 3363 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office (US) S9', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office (US) S9', 'The Office (US) S09E23 Banned Groups');
-- --- END op 3363

-- --- BEGIN op 3364 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Four Seasons', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Four Seasons', 'The Four Seasons Banned Groups');
-- --- END op 3364

-- --- BEGIN op 3365 ( update regular_expression "The Four Seasons Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBosom|iVy)\b' where "name" = 'The Four Seasons Banned Groups' and "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(iVy)\b';
-- --- END op 3365

-- --- BEGIN op 3366 ( update regular_expression "The Four Seasons Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBoson|iVy)\b' where "name" = 'The Four Seasons Banned Groups' and "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBosom|iVy)\b';
-- --- END op 3366

-- --- BEGIN op 3367 ( update regular_expression "The Four Seasons Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBoson|iVy|KONTRAST)\b' where "name" = 'The Four Seasons Banned Groups' and "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBoson|iVy)\b';
-- --- END op 3367

-- --- BEGIN op 3368 ( update regular_expression "The Four Seasons Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBoson|iVy|KONTRAST|TFA)\b' where "name" = 'The Four Seasons Banned Groups' and "pattern" = '(?i)^the[ ._-]+four[ ._-]+seasons.*-(HiggsBoson|iVy|KONTRAST)\b';
-- --- END op 3368
