-- @operation: export
-- @entity: batch
-- @name: Standardized TRaSH Tier tags
-- @exportedAt: 2026-03-03T15:55:58.700Z
-- @opIds: 1444, 1445, 1446

-- --- BEGIN op 1444 ( update custom_format "TRaSH WEB Tier 01" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'TRaSH WEB Tier 01' AND tag_name = 'Release Groups';

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TRaSH WEB Tier 01', 'Release Group Tier');
-- --- END op 1444

-- --- BEGIN op 1445 ( update custom_format "TRaSH WEB Tier 02" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'TRaSH WEB Tier 02' AND tag_name = 'Release Groups';

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TRaSH WEB Tier 02', 'Release Group Tier');
-- --- END op 1445

-- --- BEGIN op 1446 ( update custom_format "TRaSH WEB Tier 03" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'TRaSH WEB Tier 03' AND tag_name = 'Release Groups';

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TRaSH WEB Tier 03', 'Release Group Tier');
-- --- END op 1446
