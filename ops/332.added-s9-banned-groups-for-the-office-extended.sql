-- @operation: export
-- @entity: batch
-- @name: Added S9 Banned Groups for The Office Extended
-- @exportedAt: 2026-07-12T06:28:28.431Z
-- @opIds: 2886, 2887, 2891, 2892, 2893, 2894, 2895, 2896, 2897

-- --- BEGIN op 2886 ( update regular_expression "The Office (US) Extended" )
update "regular_expressions" set "name" = 'The Office (US) Extended' where "name" = 'The Office (US) Superfan Episodes';
-- --- END op 2886

-- --- BEGIN op 2887 ( update custom_format "TVE" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) Extended' where "custom_format_name" = 'TVE' and "condition_name" = 'The Office (US) Superfan Episodes' and "regular_expression_name" in ('The Office (US) Superfan Episodes', 'The Office (US) Extended');
-- --- END op 2887

-- --- BEGIN op 2891 ( create regular_expression "The Office (US) Season 9 Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Office (US) Season 9 Banned Groups', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office (US) Season 9 Banned Groups', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office (US) Season 9 Banned Groups', 'Custom');
-- --- END op 2891

-- --- BEGIN op 2892 ( update regular_expression "The Office (US) Season 9 Banned Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'The Office (US) Season 9 Banned Groups' and "description" = 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.';
-- --- END op 2892

-- --- BEGIN op 2893 ( update regular_expression "The Office (US) Season 9 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09*[ ._-]+Extended-(FLUX)\b' where "name" = 'The Office (US) Season 9 Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b';
-- --- END op 2893

-- --- BEGIN op 2894 ( update regular_expression "The Office (US) Season 9 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09*[ ._-]+Extended.*-(FLUX)\b' where "name" = 'The Office (US) Season 9 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09*[ ._-]+Extended-(FLUX)\b';
-- --- END op 2894

-- --- BEGIN op 2895 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'The Office (US) S9 Banned Groups', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'The Office (US) S9 Banned Groups', 'The Office (US) Season 9 Banned Groups');
-- --- END op 2895

-- --- BEGIN op 2896 ( update regular_expression "The Office (US) Season 9 Banned Groups" )
update "regular_expressions" set "description" = 'Matches releases from season 9 of the extended version of The Office (US).' where "name" = 'The Office (US) Season 9 Banned Groups' and "description" is null;
-- --- END op 2896

-- --- BEGIN op 2897 ( update regular_expression "The Office (US) Season 9 Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09.*Extended.*-(FLUX)\b' where "name" = 'The Office (US) Season 9 Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us[ ._-]+S09*[ ._-]+Extended.*-(FLUX)\b';
-- --- END op 2897
