-- @operation: export
-- @entity: batch
-- @name: Updated Stereo/7.1 formats for releases with "2.0" in the name
-- @exportedAt: 2026-06-26T17:50:39.470Z
-- @opIds: 1930, 1931, 1932, 1933

-- --- BEGIN op 1930 ( update regular_expression "Stereo" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b.*?)(?<!repac)[^0-9]2[ .]0\b|\bStereo\b' where "name" = 'Stereo' and "pattern" = '(?<!repac)[^0-9]2[ .]0\b|\bStereo\b';
-- --- END op 1930

-- --- BEGIN op 1931 ( create regular_expression "Low Channel Count" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Low Channel Count', '(?<=\b[12]\d{3}\b.*?)(?<!repac)[^0-9][1-4][ .][0-1]\b|\b(Stereo|Mono)\b', NULL, NULL);

insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Low Channel Count', 'Audio');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Low Channel Count', 'TRaSH');
-- --- END op 1931

-- --- BEGIN op 1932 ( update custom_format "7.1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('7.1', 'Not Low Channel Count', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('7.1', 'Not Low Channel Count', 'Low Channel Count');
-- --- END op 1932

-- --- BEGIN op 1933 ( update custom_format "7.1" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = '7.1'
  AND name = '7.1 Surround'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1933
