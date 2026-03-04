-- @operation: export
-- @entity: batch
-- @name: Added Dumpstarr Banned Groups format
-- @exportedAt: 2026-03-04T02:42:17.444Z
-- @opIds: 1967, 1968, 1969, 1970, 1971, 1972, 1973

-- --- BEGIN op 1967 ( create custom_format "Dumpstarr Banned Groups" )
insert into "custom_formats" ("name", "description") values ('Dumpstarr Banned Groups', '');
-- --- END op 1967

-- --- BEGIN op 1968 ( update custom_format "Dumpstarr Banned Groups" )
update "custom_formats" set "description" = 'Matches Release Groups that are Banned' where "name" = 'Dumpstarr Banned Groups' and "description" = '';
-- --- END op 1968

-- --- BEGIN op 1969 ( update custom_format "Dumpstarr Banned Groups" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dumpstarr Banned Groups', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dumpstarr Banned Groups', 'Release Group');
-- --- END op 1969

-- --- BEGIN op 1970 ( update custom_format "Dumpstarr Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr Banned Groups', 'Dictionarry Banned Groups', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr Banned Groups', 'Dictionarry Banned Groups', 'Dictionarry Banned Groups');
-- --- END op 1970

-- --- BEGIN op 1971 ( update custom_format "Dumpstarr Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr Banned Groups', 'Release Group Missing', 'release_group', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr Banned Groups', 'Release Group Missing', 'Release Group (Missing)');
-- --- END op 1971

-- --- BEGIN op 1972 ( update custom_format "Dumpstarr Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr Banned Groups'
	  AND name = 'Dictionarry Banned Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1972

-- --- BEGIN op 1973 ( update custom_format "Dumpstarr Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr Banned Groups', 'Dumpstarr Banned Groups', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr Banned Groups', 'Dumpstarr Banned Groups', 'Dumpstarr Banned Groups');
-- --- END op 1973
