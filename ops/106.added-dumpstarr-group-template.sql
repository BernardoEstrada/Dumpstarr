-- @operation: export
-- @entity: batch
-- @name: Added Dumpstarr group template
-- @exportedAt: 2026-03-06T17:12:37.927Z
-- @opIds: 2545, 2547

-- --- BEGIN op 2545 ( create regular_expression "TEMPLATE - Release Group" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TEMPLATE - Release Group', '^(coffee)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TEMPLATE - Release Group', 'Release Group');
-- --- END op 2545

-- --- BEGIN op 2547 ( update regular_expression "TEMPLATE - Release Group" )
update "regular_expressions" set "pattern" = '^(GROUP)$' where "name" = 'TEMPLATE - Release Group' and "pattern" = '^(coffee)$';
-- --- END op 2547
