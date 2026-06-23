-- @operation: export
-- @entity: batch
-- @name: Added Not German or English format
-- @exportedAt: 2026-06-23T11:48:58.194Z
-- @opIds: 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928

-- --- BEGIN op 1921 ( update regular_expression "German" )
update "regular_expressions" set "pattern" = '(?!)\bgerman\b' where "name" = 'German' and "pattern" = '\b(GERMAN)$';
-- --- END op 1921

-- --- BEGIN op 1922 ( update regular_expression "German" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'German' AND tag_name = 'German';
-- --- END op 1922

-- --- BEGIN op 1923 ( update regular_expression "German Title" )
update "regular_expressions" set "name" = 'German Title' where "name" = 'German';
-- --- END op 1923

-- --- BEGIN op 1924 ( create custom_format "Not German or English" )
insert into "custom_formats" ("name", "description") values ('Not German or English', '');
-- --- END op 1924

-- --- BEGIN op 1925 ( update custom_format "Not German or English" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Not German or English', 'Language');
-- --- END op 1925

-- --- BEGIN op 1926 ( update custom_format "Not German or English" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German or English', 'Not English', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German or English', 'Not English', 'English', 0);
-- --- END op 1926

-- --- BEGIN op 1927 ( update custom_format "Not German or English" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German or English', 'Not German', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German or English', 'Not German', 'German', 0);
-- --- END op 1927

-- --- BEGIN op 1928 ( update custom_format "Not German or English" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German or English', 'Not German in Title', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Not German or English', 'Not German in Title', 'German Title');
-- --- END op 1928
