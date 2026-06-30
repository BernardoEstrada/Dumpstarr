-- @operation: export
-- @entity: batch
-- @name: Cleaned up Dumpstarr LQ regex and formats
-- @exportedAt: 2026-06-30T20:49:29.435Z
-- @opIds: 2335, 2336, 2337, 2338, 2339, 2340, 2341, 2342, 2343, 2344, 2345, 2346, 2347, 2348, 2349, 2350, 2351, 2352, 2353, 2354, 2355, 2356, 2357, 2358, 2359, 2360, 2361, 2362, 2363, 2364, 2365, 2366, 2367, 2368, 2369, 2370, 2371, 2372, 2373, 2374, 2375, 2376, 2377, 2378, 2379, 2380, 2381, 2382, 2383, 2384, 2385, 2386, 2387, 2388, 2389

-- --- BEGIN op 2335 ( create regular_expression "DEiMOS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DEiMOS', '^(ASTRiD)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DEiMOS', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DEiMOS', 'Release Group');
-- --- END op 2335

-- --- BEGIN op 2336 ( update regular_expression "DEiMOS" )
update "regular_expressions" set "pattern" = '^(DEiMOS)$' where "name" = 'DEiMOS' and "pattern" = '^(ASTRiD)$';
-- --- END op 2336

-- --- BEGIN op 2337 ( create regular_expression "MIRCrew" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MIRCrew', '^(CBFM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MIRCrew', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MIRCrew', 'Release Group');
-- --- END op 2337

-- --- BEGIN op 2338 ( update regular_expression "MIRCrew" )
update "regular_expressions" set "pattern" = '^(MIRCrew)$' where "name" = 'MIRCrew' and "pattern" = '^(CBFM)$';
-- --- END op 2338

-- --- BEGIN op 2339 ( create regular_expression "MuTT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MuTT', '^(CBFM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MuTT', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MuTT', 'Release Group');
-- --- END op 2339

-- --- BEGIN op 2340 ( update regular_expression "MuTT" )
update "regular_expressions" set "pattern" = '^(MuTT)$' where "name" = 'MuTT' and "pattern" = '^(CBFM)$';
-- --- END op 2340

-- --- BEGIN op 2341 ( create regular_expression "OldT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OldT', '^(DEiMOS)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OldT', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OldT', 'Release Group');
-- --- END op 2341

-- --- BEGIN op 2342 ( update regular_expression "OldT" )
update "regular_expressions" set "pattern" = '^(OldT)$' where "name" = 'OldT' and "pattern" = '^(DEiMOS)$';
-- --- END op 2342

-- --- BEGIN op 2343 ( update regular_expression "DEiMOS" )
update "regular_expressions" set "pattern" = '\b(DEiMOS)\b' where "name" = 'DEiMOS' and "pattern" = '^(DEiMOS)$';
-- --- END op 2343

-- --- BEGIN op 2344 ( update regular_expression "MIRCrew" )
update "regular_expressions" set "pattern" = '\b(MIRCrew)\b' where "name" = 'MIRCrew' and "pattern" = '^(MIRCrew)$';
-- --- END op 2344

-- --- BEGIN op 2345 ( update regular_expression "MuTT" )
update "regular_expressions" set "pattern" = '\b(MuTT)\b' where "name" = 'MuTT' and "pattern" = '^(MuTT)$';
-- --- END op 2345

-- --- BEGIN op 2346 ( update regular_expression "OldT" )
update "regular_expressions" set "pattern" = '\b(OldT)\b' where "name" = 'OldT' and "pattern" = '^(OldT)$';
-- --- END op 2346

-- --- BEGIN op 2347 ( create regular_expression "TiZU" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TiZU', '\b(MuTT)\b', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TiZU', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TiZU', 'Release Group');
-- --- END op 2347

-- --- BEGIN op 2348 ( update regular_expression "TiZU" )
update "regular_expressions" set "pattern" = '\b(TiZU)\b' where "name" = 'TiZU' and "pattern" = '\b(MuTT)\b';
-- --- END op 2348

-- --- BEGIN op 2349 ( create regular_expression "Tofu4U" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tofu4U', '\b(MIRCrew)\b', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tofu4U', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tofu4U', 'Release Group');
-- --- END op 2349

-- --- BEGIN op 2350 ( update regular_expression "Tofu4U" )
update "regular_expressions" set "pattern" = '\b(Tofu4U)\b' where "name" = 'Tofu4U' and "pattern" = '\b(MIRCrew)\b';
-- --- END op 2350

-- --- BEGIN op 2351 ( create regular_expression "TVS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVS', '\b(Tofu4U)\b', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TVS', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TVS', 'Release Group');
-- --- END op 2351

-- --- BEGIN op 2352 ( update regular_expression "TVS" )
update "regular_expressions" set "pattern" = '\b(TVS)\b' where "name" = 'TVS' and "pattern" = '\b(Tofu4U)\b';
-- --- END op 2352

-- --- BEGIN op 2353 ( create regular_expression "ViSiON" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ViSiON', '\b(TVS)\b', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ViSiON', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ViSiON', 'Release Group');
-- --- END op 2353

-- --- BEGIN op 2354 ( update regular_expression "ViSiON" )
update "regular_expressions" set "pattern" = '\b(ViSiON)\b' where "name" = 'ViSiON' and "pattern" = '\b(TVS)\b';
-- --- END op 2354

-- --- BEGIN op 2355 ( update custom_format "Dumpstarr LQ Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Title'
	  AND name = 'Dumpstarr LQ Groups Title'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2355

-- --- BEGIN op 2356 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'DEiMOS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'DEiMOS', 'DEiMOS');
-- --- END op 2356

-- --- BEGIN op 2357 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'MIRCrew', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'MIRCrew', 'MIRCrew');
-- --- END op 2357

-- --- BEGIN op 2358 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'MuTT', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'MuTT', 'MuTT');
-- --- END op 2358

-- --- BEGIN op 2359 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'OldT', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'OldT', 'OldT');
-- --- END op 2359

-- --- BEGIN op 2360 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'TiZU', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'TiZU', 'TiZU');
-- --- END op 2360

-- --- BEGIN op 2361 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Tofu4U', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Tofu4U', 'Tofu4U');
-- --- END op 2361

-- --- BEGIN op 2362 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'TVS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'TVS', 'TVS');
-- --- END op 2362

-- --- BEGIN op 2363 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'ViSiON', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'ViSiON', 'ViSiON');
-- --- END op 2363

-- --- BEGIN op 2364 ( delete regular_expression "SIDCA Tier 01 (Radarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 01 (Radarr)' AND tag_name = 'Dumpstarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 01 (Radarr)' AND tag_name = 'LQ';

delete from "regular_expressions" where "name" = 'SIDCA Tier 01 (Radarr)';
-- --- END op 2364

-- --- BEGIN op 2365 ( delete regular_expression "SIDCA Tier 01 (Sonarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 01 (Sonarr)' AND tag_name = 'Dumpstarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 01 (Sonarr)' AND tag_name = 'LQ';

delete from "regular_expressions" where "name" = 'SIDCA Tier 01 (Sonarr)';
-- --- END op 2365

-- --- BEGIN op 2366 ( delete regular_expression "SIDCA Tier 02 (Radarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 02 (Radarr)' AND tag_name = 'Dumpstarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 02 (Radarr)' AND tag_name = 'LQ';

delete from "regular_expressions" where "name" = 'SIDCA Tier 02 (Radarr)';
-- --- END op 2366

-- --- BEGIN op 2367 ( delete regular_expression "SIDCA Tier 02 (Sonarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 02 (Sonarr)' AND tag_name = 'Dumpstarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 02 (Sonarr)' AND tag_name = 'LQ';

delete from "regular_expressions" where "name" = 'SIDCA Tier 02 (Sonarr)';
-- --- END op 2367

-- --- BEGIN op 2368 ( delete regular_expression "SIDCA Tier 03 (Radarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 03 (Radarr)' AND tag_name = 'Dumpstarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 03 (Radarr)' AND tag_name = 'LQ';

delete from "regular_expressions" where "name" = 'SIDCA Tier 03 (Radarr)';
-- --- END op 2368

-- --- BEGIN op 2369 ( delete regular_expression "SIDCA Tier 03 (Sonarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 03 (Sonarr)' AND tag_name = 'Dumpstarr';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SIDCA Tier 03 (Sonarr)' AND tag_name = 'LQ';

delete from "regular_expressions" where "name" = 'SIDCA Tier 03 (Sonarr)';
-- --- END op 2369

-- --- BEGIN op 2370 ( delete custom_format "Banned Groups" )
delete from "custom_formats" where "name" = 'Banned Groups';
-- --- END op 2370

-- --- BEGIN op 2371 ( delete regular_expression "Dumpstarr LQ Groups Title" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr LQ Groups Title' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr LQ Groups Title' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dumpstarr LQ Groups Title';
-- --- END op 2371

-- --- BEGIN op 2372 ( create regular_expression "E" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('E', '^(AndreMor)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('E', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('E', 'Release Group');
-- --- END op 2372

-- --- BEGIN op 2373 ( update regular_expression "E" )
update "regular_expressions" set "pattern" = '^(E)$' where "name" = 'E' and "pattern" = '^(AndreMor)$';
-- --- END op 2373

-- --- BEGIN op 2374 ( create regular_expression "LUCY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LUCY', '^(CBFM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LUCY', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LUCY', 'Release Group');
-- --- END op 2374

-- --- BEGIN op 2375 ( update regular_expression "LUCY" )
update "regular_expressions" set "pattern" = '^(LUCY)$' where "name" = 'LUCY' and "pattern" = '^(CBFM)$';
-- --- END op 2375

-- --- BEGIN op 2376 ( update regular_expression "POWER" )
insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('POWER', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('POWER', 'Release Group');
-- --- END op 2376

-- --- BEGIN op 2377 ( create regular_expression "TARDiS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TARDiS', '^(AndreMor)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TARDiS', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TARDiS', 'Release Group');
-- --- END op 2377

-- --- BEGIN op 2378 ( update regular_expression "TARDiS" )
update "regular_expressions" set "pattern" = '^(TARDiS)$' where "name" = 'TARDiS' and "pattern" = '^(AndreMor)$';
-- --- END op 2378

-- --- BEGIN op 2379 ( update regular_expression "Tofu4U (Title)" )
update "regular_expressions" set "name" = 'Tofu4U (Title)' where "name" = 'Tofu4U';
-- --- END op 2379

-- --- BEGIN op 2380 ( update custom_format "Dumpstarr LQ Title" )
update "condition_patterns" set "regular_expression_name" = 'Tofu4U (Title)' where "custom_format_name" = 'Dumpstarr LQ Title' and "condition_name" = 'Tofu4U' and "regular_expression_name" in ('Tofu4U', 'Tofu4U (Title)');
-- --- END op 2380

-- --- BEGIN op 2381 ( create regular_expression "Tofu4U" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tofu4U', '\b(Tofu4U)\b', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tofu4U', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tofu4U', 'Release Group');
-- --- END op 2381

-- --- BEGIN op 2382 ( update regular_expression "Tofu4U" )
update "regular_expressions" set "pattern" = '^(Tofu4U)$' where "name" = 'Tofu4U' and "pattern" = '\b(Tofu4U)\b';
-- --- END op 2382

-- --- BEGIN op 2383 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'Dumpstarr LQ Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2383

-- --- BEGIN op 2384 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'E', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'E', 'E');
-- --- END op 2384

-- --- BEGIN op 2385 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'LUCY', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'LUCY', 'LUCY');
-- --- END op 2385

-- --- BEGIN op 2386 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'POWER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'POWER', 'POWER');
-- --- END op 2386

-- --- BEGIN op 2387 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'TARDiS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'TARDiS', 'TARDiS');
-- --- END op 2387

-- --- BEGIN op 2388 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'Tofu4U', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'Tofu4U', 'Tofu4U');
-- --- END op 2388

-- --- BEGIN op 2389 ( delete regular_expression "Dumpstarr LQ Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr LQ Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dumpstarr LQ Groups' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dumpstarr LQ Groups';
-- --- END op 2389
