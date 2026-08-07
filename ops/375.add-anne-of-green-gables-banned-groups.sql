-- @operation: export
-- @entity: batch
-- @name: Add Anne of Green Gables Banned Groups
-- @exportedAt: 2026-08-07T14:45:10.492Z
-- @opIds: 5280, 5281, 5282, 5283, 5284, 5285

-- --- BEGIN op 5280 ( create regular_expression "Anne of Green Gables Banned Groups" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Anne of Green Gables Banned Groups', '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b', 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anne of Green Gables Banned Groups', 'Banned');

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anne of Green Gables Banned Groups', 'Custom');
-- --- END op 5280

-- --- BEGIN op 5281 ( update regular_expression "Anne of Green Gables Banned Groups" )
update "regular_expressions" set "description" = NULL where "name" = 'Anne of Green Gables Banned Groups' and "description" = 'Matches releases for season 8 of the show Adventure Time from groups that do not follow the TVDB ordering.';
-- --- END op 5281

-- --- BEGIN op 5282 ( update regular_expression "Anne of Green Gables Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^anne[ ._-]+of[ ._-]+green[ ._-]+gables.*-(EDEN)\b' where "name" = 'Anne of Green Gables Banned Groups' and "pattern" = '(?i)^adventure[ ._-]+time[ ._-]+S08.*-(CtrlHD|EPSiLON|H3B|mSD-jT9t|NTb|PRESENT|RTN|SRS|TvR|W4F)\b';
-- --- END op 5282

-- --- BEGIN op 5283 ( update custom_format "Bad Source" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Source', 'Anne of Green Gables', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Source', 'Anne of Green Gables', 'Anne of Green Gables Banned Groups');
-- --- END op 5283

-- --- BEGIN op 5284 ( update custom_format "Bad Source" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Bad Source'
  AND name = 'Anne of Green Gables'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 5284

-- --- BEGIN op 5285 ( update regular_expression "Anne of Green Gables Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^anne[ ._-]+of[ ._-]+green[ ._-]+gables.*-(EGEN)\b' where "name" = 'Anne of Green Gables Banned Groups' and "pattern" = '(?i)^anne[ ._-]+of[ ._-]+green[ ._-]+gables.*-(EDEN)\b';
-- --- END op 5285
