-- @operation: export
-- @entity: batch
-- @name: Added EniaHD to Bad Dual Groups per TRaSH
-- @exportedAt: 2026-05-10T21:31:51.562Z
-- @opIds: 562, 563

-- --- BEGIN op 562 ( create regular_expression "EniaHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EniaHD', '^(EniaHD)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EniaHD', 'Release Group');
-- --- END op 562

-- --- BEGIN op 563 ( update regular_expression "TRaSH Bad Dual Groups" )
update "regular_expressions" set "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EniaHD|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|NAHOM|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$' where "name" = 'TRaSH Bad Dual Groups' and "pattern" = '^(alfaHD.*|BAT|BlackBit|BNd|C\.A\.A|Cory|CYPHER|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|MLH|N3G4N|NAHOM|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|tokar86a|TURG|TvR|vnlls|WTV|XiQUEXiQUE|Yatogam1|YusukeFLA|ZigZag|ZNM)$';
-- --- END op 563
