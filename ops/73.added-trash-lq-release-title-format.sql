-- @operation: export
-- @entity: batch
-- @name: Added TRaSH LQ Release Title format
-- @exportedAt: 2026-03-04T02:40:25.567Z
-- @opIds: 1935, 1938, 1948

-- --- BEGIN op 1935 ( create regular_expression "TRaSH LQ Release Title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH LQ Release Title', '\b(1XBET|BEN[ ._-]THE[ ._-]MEN|-D3US|D3US-|Feranki1980|GalaxyRG||READ(\s|\.)+NOTE|SWTYBLZ|TeeWee|TEKNO3D|Will1869)\b', NULL, NULL);

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH LQ Release Title', 'TRaSH');
-- --- END op 1935

-- --- BEGIN op 1938 ( update regular_expression "TRaSH LQ Release Title" )
update "regular_expressions" set "pattern" = '\b(1XBET|BEN[ ._-]THE[ ._-]MEN|-D3US|D3US-|Feranki1980|GalaxyRG|READ(\s|\.)+NOTE|SWTYBLZ|TeeWee|TEKNO3D|Will1869)\b' where "name" = 'TRaSH LQ Release Title' and "pattern" = '\b(1XBET|BEN[ ._-]THE[ ._-]MEN|-D3US|D3US-|Feranki1980|GalaxyRG||READ(\s|\.)+NOTE|SWTYBLZ|TeeWee|TEKNO3D|Will1869)\b';
-- --- END op 1938

-- --- BEGIN op 1948 ( delete regular_expression "TRaSH LQ Release Title" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH LQ Release Title' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'TRaSH LQ Release Title' and "pattern" = '\b(1XBET|BEN[ ._-]THE[ ._-]MEN|-D3US|D3US-|Feranki1980|GalaxyRG|READ(\s|\.)+NOTE|SWTYBLZ|TeeWee|TEKNO3D|Will1869)\b';
-- --- END op 1948
