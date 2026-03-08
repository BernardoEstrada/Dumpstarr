-- @operation: export
-- @entity: batch
-- @name: Added GZ and CART formats
-- @exportedAt: 2026-03-08T21:07:09.903Z
-- @opIds: 3071, 3072, 3073

-- --- BEGIN op 3071 ( create regular_expression "CART" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CART', '^(CART)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CART', 'Release Group');
-- --- END op 3071

-- --- BEGIN op 3072 ( create regular_expression "GZ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GZ', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GZ', 'Release Group');
-- --- END op 3072

-- --- BEGIN op 3073 ( update regular_expression "GZ" )
update "regular_expressions" set "pattern" = '^(GZ)$' where "name" = 'GZ' and "pattern" = '^(GROUP)$';
-- --- END op 3073
