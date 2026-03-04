-- @operation: export
-- @entity: batch
-- @name: Updated TRaSH LQ formats names
-- @exportedAt: 2026-03-04T02:42:45.088Z
-- @opIds: 1933, 1934, 1939, 1940, 1949, 1950

-- --- BEGIN op 1933 ( update regular_expression "TRaSH LQ" )
update "regular_expressions" set "name" = 'TRaSH LQ' where "name" = 'TRaSH Banned Groups';
-- --- END op 1933

-- --- BEGIN op 1934 ( update custom_format "TRaSH Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH LQ' where "custom_format_name" = 'TRaSH Banned Groups' and "condition_name" = 'TRaSH Banned Groups' and "regular_expression_name" = 'TRaSH Banned Groups';
-- --- END op 1934

-- --- BEGIN op 1939 ( update custom_format "Banned Groups (Title)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups (Title)'
	  AND name = 'No Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 1939

-- --- BEGIN op 1940 ( update custom_format "Banned Groups Release Title" )
update "custom_formats" set "name" = 'Banned Groups Release Title' where "name" = 'Banned Groups (Title)';
-- --- END op 1940

-- --- BEGIN op 1949 ( update custom_format "TRaSH LQ Release Title" )
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Banned Groups Release Title', 'TRaSH');
-- --- END op 1949

-- --- BEGIN op 1950 ( update custom_format "TRaSH LQ Release Title" )
update "custom_formats" set "name" = 'TRaSH LQ Release Title' where "name" = 'Banned Groups Release Title';
-- --- END op 1950
