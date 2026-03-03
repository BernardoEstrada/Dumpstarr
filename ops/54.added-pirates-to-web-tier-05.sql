-- @operation: export
-- @entity: batch
-- @name: Added PiRaTeS to WEB Tier 05
-- @exportedAt: 2026-03-03T14:58:55.348Z
-- @opIds: 1362, 1363, 1364

-- --- BEGIN op 1362 ( update regular_expression "Dumpstarr WEB Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name IN ('Dumpstarr WEB Tier 02') AND tag_name = 'Dictionarry';
-- --- END op 1362

-- --- BEGIN op 1363 ( create regular_expression "Dumpstarr WEB Tier 05" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dumpstarr WEB Tier 05', '^(PiRaTeS)$', NULL, NULL);
-- --- END op 1363

-- --- BEGIN op 1364 ( update custom_format "WEB Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 05', 'Dumpstarr WEB Tier 05', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 05', 'Dumpstarr WEB Tier 05', 'Dumpstarr WEB Tier 05');
-- --- END op 1364
