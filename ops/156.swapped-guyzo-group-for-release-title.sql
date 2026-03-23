-- @operation: export
-- @entity: batch
-- @name: Swapped GuyZo Group for Release Title
-- @exportedAt: 2026-03-23T21:34:17.635Z
-- @opIds: 1322, 1323, 1324, 1325, 1326, 1327

-- --- BEGIN op 1322 ( update regular_expression "GuyZo - Release Group" )
update "regular_expressions" set "name" = 'GuyZo - Release Group' where "name" = 'GuyZo';
-- --- END op 1322

-- --- BEGIN op 1323 ( update custom_format "Generated Dynamic HDR" )
update "condition_patterns" set "regular_expression_name" = 'GuyZo - Release Group' where "custom_format_name" = 'Generated Dynamic HDR' and "condition_name" = 'GuyZo' and "regular_expression_name" = 'GuyZo';
-- --- END op 1323

-- --- BEGIN op 1324 ( update custom_format "Upscaled" )
update "condition_patterns" set "regular_expression_name" = 'GuyZo - Release Group' where "custom_format_name" = 'Upscaled' and "condition_name" = 'GuyZo' and "regular_expression_name" = 'GuyZo';
-- --- END op 1324

-- --- BEGIN op 1325 ( create regular_expression "GuyZo - Release Title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GuyZo - Release Title', '^(GuyZo|BR-GuyZo)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GuyZo - Release Title', 'Release Group');
-- --- END op 1325

-- --- BEGIN op 1326 ( update regular_expression "GuyZo - Release Title" )
update "regular_expressions" set "pattern" = '\b(GuyZo|BR-GuyZo)\b' where "name" = 'GuyZo - Release Title' and "pattern" = '^(GuyZo|BR-GuyZo)$';
-- --- END op 1326

-- --- BEGIN op 1327 ( update custom_format "Upscaled" )
UPDATE custom_format_conditions
SET type = 'release_title'
WHERE custom_format_name = 'Upscaled'
  AND name = 'GuyZo'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Upscaled' AND condition_name = 'GuyZo' AND regular_expression_name = 'GuyZo - Release Group';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscaled', 'GuyZo', 'GuyZo - Release Title');
-- --- END op 1327
