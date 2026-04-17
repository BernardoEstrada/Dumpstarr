-- @operation: export
-- @entity: batch
-- @name: Added Prestige to HD Tier 05 per Dictionarry
-- @exportedAt: 2026-04-17T05:39:49.258Z
-- @opIds: 2705, 2706

-- --- BEGIN op 2705 ( create regular_expression "Prestige" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Prestige', '^(Prestige)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Prestige', 'Release Group');
-- --- END op 2705

-- --- BEGIN op 2706 ( update custom_format "Dictionarry HD Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 05', 'Prestige', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dictionarry HD Tier 05', 'Prestige', 'Prestige');
-- --- END op 2706
