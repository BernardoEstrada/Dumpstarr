-- @operation: export
-- @entity: batch
-- @name: Added The Big Bang Theory Banned Groups
-- @exportedAt: 2026-03-11T23:07:52.372Z
-- @opIds: 3619, 3620, 3621, 3622, 3623, 3624, 3625, 3626, 3627, 3628, 3629, 3630, 3633, 3634, 3637, 3638, 3639, 3640

-- --- BEGIN op 3619 ( create regular_expression "The Big Bang Theory" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Big Bang Theory', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN).*', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Big Bang Theory', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Big Bang Theory', 'Custom');
-- --- END op 3619

-- --- BEGIN op 3620 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "pattern" = '\bthe[ ._-]+big[ ._-]+bang[ ._-]+theory\b' where "name" = 'The Big Bang Theory' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|NTb|RTN).*';
-- --- END op 3620

-- --- BEGIN op 3621 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "pattern" = '\b(the[ ._-]+)?big[ ._-]+bang[ ._-]+theory\b' where "name" = 'The Big Bang Theory' and "pattern" = '\bthe[ ._-]+big[ ._-]+bang[ ._-]+theory\b';
-- --- END op 3621

-- --- BEGIN op 3622 ( create regular_expression "The Big Bang Theory Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Big Bang Theory Banned Groups', '^(playWEB)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Big Bang Theory Banned Groups', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Big Bang Theory Banned Groups', 'Banned');
-- --- END op 3622

-- --- BEGIN op 3623 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "description" = NULL where "name" = 'The Big Bang Theory' and "description" = 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.';
-- --- END op 3623

-- --- BEGIN op 3624 ( create custom_format "The Big Bang Theory Banned Groups" )
insert into "custom_formats" ("name", "description") values ('The Big Bang Theory Banned Groups', '');
-- --- END op 3624

-- --- BEGIN op 3625 ( update custom_format "The Big Bang Theory Banned Groups" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('The Big Bang Theory Banned Groups', 'Banned');
-- --- END op 3625

-- --- BEGIN op 3626 ( update custom_format "The Big Bang Theory Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('The Big Bang Theory Banned Groups', 'The Big Bang Theory', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('The Big Bang Theory Banned Groups', 'The Big Bang Theory', 'The Big Bang Theory');
-- --- END op 3626

-- --- BEGIN op 3627 ( update custom_format "The Big Bang Theory Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('The Big Bang Theory Banned Groups', 'The Big Bang Theory Banned Groups', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('The Big Bang Theory Banned Groups', 'The Big Bang Theory Banned Groups', 'The Big Bang Theory');
-- --- END op 3627

-- --- BEGIN op 3628 ( create custom_format "The Big Bang Theory Banned Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('The Big Bang Theory Banned Groups', 'The.Big.Bang.Theory.S01E02.The.Big.Bran.Hypothesis.1080p.MAX.WEB-DL.DD+5.1.H.264-playWEB', 'series', 1, NULL);
-- --- END op 3628

-- --- BEGIN op 3629 ( update custom_format "The Big Bang Theory Banned Groups" )
DELETE FROM condition_patterns WHERE custom_format_name = 'The Big Bang Theory Banned Groups' AND condition_name = 'The Big Bang Theory Banned Groups' AND regular_expression_name = 'The Big Bang Theory';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('The Big Bang Theory Banned Groups', 'The Big Bang Theory Banned Groups', 'The Big Bang Theory Banned Groups');
-- --- END op 3629

-- --- BEGIN op 3630 ( delete custom_format "The Big Bang Theory Banned Groups" )
DELETE FROM custom_format_tests
WHERE custom_format_name = 'The Big Bang Theory Banned Groups'
  AND title = 'The.Big.Bang.Theory.S01E02.The.Big.Bran.Hypothesis.1080p.MAX.WEB-DL.DD+5.1.H.264-playWEB'
  AND type = 'series'
  AND should_match = 1
  AND description IS NULL;
-- --- END op 3630

-- --- BEGIN op 3633 ( update regular_expression "The Big Bang Theory Banned Groups" )
update "regular_expressions" set "pattern" = '^(CiELOS|playWEB)$' where "name" = 'The Big Bang Theory Banned Groups' and "pattern" = '^(playWEB)$';
-- --- END op 3633

-- --- BEGIN op 3634 ( update custom_format "TBBT Banned Groups" )
update "custom_formats" set "name" = 'TBBT Banned Groups' where "name" = 'The Big Bang Theory Banned Groups';
-- --- END op 3634

-- --- BEGIN op 3637 ( update regular_expression "The Big Bang Theory" )
update "regular_expressions" set "description" = 'Matches the show "The Big Bang Theory"' where "name" = 'The Big Bang Theory' and "description" is null;
-- --- END op 3637

-- --- BEGIN op 3638 ( update regular_expression "The Big Bang Theory Banned Groups" )
update "regular_expressions" set "description" = 'Matches groups that are in 25fps for "The Big Bang Theory"' where "name" = 'The Big Bang Theory Banned Groups' and "description" is null;
-- --- END op 3638

-- --- BEGIN op 3639 ( update regular_expression "The Big Bang Theory Banned Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'The Big Bang Theory Banned Groups' and "description" = 'Matches groups that are in 25fps for "The Big Bang Theory"';
-- --- END op 3639

-- --- BEGIN op 3640 ( update custom_format "TBBT Banned Groups" )
update "custom_formats" set "description" = 'Matches groups that are in 25fps for the show "The Big Bang Theory".' where "name" = 'TBBT Banned Groups' and "description" = '';
-- --- END op 3640
