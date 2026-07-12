-- @operation: export
-- @entity: batch
-- @name: Add Phineas and Ferb Banned Groups
-- @exportedAt: 2026-07-12T23:41:04.991Z
-- @opIds: 2907, 2908, 2909, 2910, 2911, 2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923, 2924, 2925, 2926, 2927, 2928

-- --- BEGIN op 2907 ( create regular_expression "Adventure Time Season 8 Banned Groups (Copy)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Adventure Time Season 8 Banned Groups (Copy)', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Adventure Time Season 8 Banned Groups (Copy)', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Adventure Time Season 8 Banned Groups (Copy)', 'Custom');
-- --- END op 2907

-- --- BEGIN op 2908 ( update regular_expression "Adventure Time Season 8 Banned Groups (Copy)" )
update "regular_expressions" set "pattern" = '(?i)^pinehas[ ._-]+and[ ._-]+.ferb*-(PHOENiX)\b' where "name" = 'Adventure Time Season 8 Banned Groups (Copy)' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b';
-- --- END op 2908

-- --- BEGIN op 2909 ( update regular_expression "Pineas and Ferb Banned Groups" )
update "regular_expressions" set "name" = 'Pineas and Ferb Banned Groups' where "name" = 'Adventure Time Season 8 Banned Groups (Copy)';
-- --- END op 2909

-- --- BEGIN op 2910 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Pineas and Ferb Banned Groups', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Pineas and Ferb Banned Groups', 'Pineas and Ferb Banned Groups');
-- --- END op 2910

-- --- BEGIN op 2911 ( update regular_expression "Pineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phinehas[ ._-]+and[ ._-]+.ferb*-(PHOENiX)\b' where "name" = 'Pineas and Ferb Banned Groups' and "pattern" = '(?i)^pinehas[ ._-]+and[ ._-]+.ferb*-(PHOENiX)\b';
-- --- END op 2911

-- --- BEGIN op 2912 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "name" = 'Phineas and Ferb Banned Groups' where "name" = 'Pineas and Ferb Banned Groups';
-- --- END op 2912

-- --- BEGIN op 2913 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'Phineas and Ferb Banned Groups' where "custom_format_name" = 'Bad Source' and "condition_name" = 'Pineas and Ferb Banned Groups' and "regular_expression_name" in ('Pineas and Ferb Banned Groups', 'Phineas and Ferb Banned Groups');
-- --- END op 2913

-- --- BEGIN op 2914 ( update custom_format "Bad Source" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Bad Source'
	  AND name = 'Pineas and Ferb Banned Groups'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2914

-- --- BEGIN op 2915 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Phineas and Ferb Banned Groups', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Phineas and Ferb Banned Groups', 'Phineas and Ferb Banned Groups');
-- --- END op 2915

-- --- BEGIN op 2916 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phinehas[ ._-]+and[ ._-]+.ferb.*-(PHOENiX)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phinehas[ ._-]+and[ ._-]+.ferb*-(PHOENiX)\b';
-- --- END op 2916

-- --- BEGIN op 2917 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phinehas[ ._-]+and[ ._-]+ferb.*-(PHOENiX)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phinehas[ ._-]+and[ ._-]+.ferb.*-(PHOENiX)\b';
-- --- END op 2917

-- --- BEGIN op 2918 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "description" = 'Matches releases for the show Phineas and Ferb from groups that do not follow the TVDB ordering.' where "name" = 'Phineas and Ferb Banned Groups' and "description" = 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.';
-- --- END op 2918

-- --- BEGIN op 2919 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(PHOENiX)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phinehas[ ._-]+and[ ._-]+ferb.*-(PHOENiX)\b';
-- --- END op 2919

-- --- BEGIN op 2920 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Bad Source'
  AND name = 'Phineas and Ferb Banned Groups'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Bad Source' AND condition_name = 'Phineas and Ferb Banned Groups' AND regular_expression_name = 'Phineas and Ferb Banned Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Phineas and Ferb Banned Groups', 'Phineas and Ferb Banned Groups');
-- --- END op 2920

-- --- BEGIN op 2921 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(CtrlHD|PHOENiX)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(PHOENiX)\b';
-- --- END op 2921

-- --- BEGIN op 2922 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(PHOENiX)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(CtrlHD|PHOENiX)\b';
-- --- END op 2922

-- --- BEGIN op 2923 ( create regular_expression "Pikanet128" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pikanet128', '^(Pikanet128)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pikanet128', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pikanet128', 'Banned');
-- --- END op 2923

-- --- BEGIN op 2924 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'Pikanet128', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'Pikanet128', 'Pikanet128');
-- --- END op 2924

-- --- BEGIN op 2925 ( update custom_format "Dumpstarr LQ Groups" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'Dumpstarr LQ Groups'
  AND name = 'Pikanet128'
  AND type = 'release_group'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 2925

-- --- BEGIN op 2926 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(KAiZEN|PHOENiX)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(PHOENiX)\b';
-- --- END op 2926

-- --- BEGIN op 2927 ( create regular_expression "NLKIDS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NLKIDS', '^(NLKIDS)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NLKIDS', 'Release Group');

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NLKIDS', 'Banned');
-- --- END op 2927

-- --- BEGIN op 2928 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'NLKIDS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'NLKIDS', 'NLKIDS');
-- --- END op 2928
