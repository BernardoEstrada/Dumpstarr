-- @operation: export
-- @entity: batch
-- @name: Built TRaSH Group Tier formats
-- @exportedAt: 2026-03-03T14:56:34.089Z
-- @opIds: 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438

-- --- BEGIN op 1365 ( create custom_format "TRaSH 1080p Bluray Tier 01" )
insert into "custom_formats" ("name", "description") values ('TRaSH 1080p Bluray Tier 01', '');
-- --- END op 1365

-- --- BEGIN op 1366 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 1080p Bluray Tier 01', '1080p');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 1080p Bluray Tier 01', 'Release Group Tier');
-- --- END op 1366

-- --- BEGIN op 1367 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 01', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH 1080p Bluray Tier 01', '1080p', '1080p');
-- --- END op 1367

-- --- BEGIN op 1368 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 01', 'Bluray', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH 1080p Bluray Tier 01', 'Bluray', 'bluray');
-- --- END op 1368

-- --- BEGIN op 1369 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 01', 'Dictionarry 1080p Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 01', 'Dictionarry 1080p Tier 01', 'Dictionarry 1080p Tier 01');
-- --- END op 1369

-- --- BEGIN op 1370 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 01', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 01', 'Not Remux', 'Remux');
-- --- END op 1370

-- --- BEGIN op 1371 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH 1080p Bluray Tier 01'
	  AND name = 'Dictionarry 1080p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1371

-- --- BEGIN op 1372 ( update custom_format "TRaSH 1080p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 01', 'TRaSH 1080p Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 01', 'TRaSH 1080p Tier 01', 'TRaSH HD Bluray Tier 01');
-- --- END op 1372

-- --- BEGIN op 1373 ( create custom_format "TRaSH 1080p Bluray Tier 02" )
insert into "custom_formats" ("name", "description") values ('TRaSH 1080p Bluray Tier 02', '');
-- --- END op 1373

-- --- BEGIN op 1374 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 1080p Bluray Tier 02', '1080p');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 1080p Bluray Tier 02', 'Release Group Tier');
-- --- END op 1374

-- --- BEGIN op 1375 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 02', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH 1080p Bluray Tier 02', '1080p', '1080p');
-- --- END op 1375

-- --- BEGIN op 1376 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 02', 'Bluray', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH 1080p Bluray Tier 02', 'Bluray', 'bluray');
-- --- END op 1376

-- --- BEGIN op 1377 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 02', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 02', 'Not Remux', 'Remux');
-- --- END op 1377

-- --- BEGIN op 1378 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 02', 'TRaSH 1080p Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 02', 'TRaSH 1080p Tier 01', 'TRaSH HD Bluray Tier 01');
-- --- END op 1378

-- --- BEGIN op 1379 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH 1080p Bluray Tier 02'
	  AND name = 'TRaSH 1080p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1379

-- --- BEGIN op 1380 ( update custom_format "TRaSH 1080p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 02', 'TRaSH 1080p Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 02', 'TRaSH 1080p Tier 02', 'TRaSH HD Bluray Tier 02');
-- --- END op 1380

-- --- BEGIN op 1381 ( create custom_format "TRaSH 1080p Bluray Tier 03" )
insert into "custom_formats" ("name", "description") values ('TRaSH 1080p Bluray Tier 03', '');
-- --- END op 1381

-- --- BEGIN op 1382 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 1080p Bluray Tier 03', '1080p');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 1080p Bluray Tier 03', 'Release Group Tier');
-- --- END op 1382

-- --- BEGIN op 1383 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 03', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH 1080p Bluray Tier 03', '1080p', '1080p');
-- --- END op 1383

-- --- BEGIN op 1384 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 03', 'Bluray', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH 1080p Bluray Tier 03', 'Bluray', 'bluray');
-- --- END op 1384

-- --- BEGIN op 1385 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 03', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 03', 'Not Remux', 'Remux');
-- --- END op 1385

-- --- BEGIN op 1386 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 03', 'TRaSH 1080p Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 03', 'TRaSH 1080p Tier 02', 'TRaSH HD Bluray Tier 02');
-- --- END op 1386

-- --- BEGIN op 1387 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH 1080p Bluray Tier 03'
	  AND name = 'TRaSH 1080p Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1387

-- --- BEGIN op 1388 ( update custom_format "TRaSH 1080p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 1080p Bluray Tier 03', 'TRaSH 1080p Tier 03', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 1080p Bluray Tier 03', 'TRaSH 1080p Tier 03', 'TRaSH HD Bluray Tier 02');
-- --- END op 1388

-- --- BEGIN op 1389 ( create custom_format "TRaSH 2160p Bluray Tier 01" )
insert into "custom_formats" ("name", "description") values ('TRaSH 2160p Bluray Tier 01', '');
-- --- END op 1389

-- --- BEGIN op 1390 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 2160p Bluray Tier 01', '2160p');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 2160p Bluray Tier 01', 'Release Group Tier');
-- --- END op 1390

-- --- BEGIN op 1391 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 01', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH 2160p Bluray Tier 01', '2160p', '2160p');
-- --- END op 1391

-- --- BEGIN op 1392 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 01', 'Bluray', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH 2160p Bluray Tier 01', 'Bluray', 'bluray');
-- --- END op 1392

-- --- BEGIN op 1393 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 01', 'Dictionarry 2160p Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 01', 'Dictionarry 2160p Tier 01', 'Dictionarry 2160p Tier 01');
-- --- END op 1393

-- --- BEGIN op 1394 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 01', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 01', 'Not Remux', 'Remux');
-- --- END op 1394

-- --- BEGIN op 1395 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH 2160p Bluray Tier 01'
	  AND name = 'Dictionarry 2160p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1395

-- --- BEGIN op 1396 ( update custom_format "TRaSH 2160p Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 01', 'TRaSH 2160p Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 01', 'TRaSH 2160p Tier 01', 'TRaSH UHD Bluray Tier 01');
-- --- END op 1396

-- --- BEGIN op 1397 ( create custom_format "TRaSH 2160p Bluray Tier 02" )
insert into "custom_formats" ("name", "description") values ('TRaSH 2160p Bluray Tier 02', '');
-- --- END op 1397

-- --- BEGIN op 1398 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 2160p Bluray Tier 02', '2160p');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 2160p Bluray Tier 02', 'Release Group Tier');
-- --- END op 1398

-- --- BEGIN op 1399 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 02', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH 2160p Bluray Tier 02', '2160p', '2160p');
-- --- END op 1399

-- --- BEGIN op 1400 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 02', 'Bluray', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH 2160p Bluray Tier 02', 'Bluray', 'bluray');
-- --- END op 1400

-- --- BEGIN op 1401 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 02', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 02', 'Not Remux', 'Remux');
-- --- END op 1401

-- --- BEGIN op 1402 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 02', 'TRaSH 2160p Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 02', 'TRaSH 2160p Tier 01', 'TRaSH UHD Bluray Tier 01');
-- --- END op 1402

-- --- BEGIN op 1403 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH 2160p Bluray Tier 02'
	  AND name = 'TRaSH 2160p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1403

-- --- BEGIN op 1404 ( update custom_format "TRaSH 2160p Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 02', 'TRaSH 2160p Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 02', 'TRaSH 2160p Tier 02', 'TRaSH UHD Bluray Tier 02');
-- --- END op 1404

-- --- BEGIN op 1405 ( create custom_format "TRaSH 2160p Bluray Tier 03" )
insert into "custom_formats" ("name", "description") values ('TRaSH 2160p Bluray Tier 03', '');
-- --- END op 1405

-- --- BEGIN op 1406 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 2160p Bluray Tier 03', '2160p');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH 2160p Bluray Tier 03', 'Release Group Tier');
-- --- END op 1406

-- --- BEGIN op 1407 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 03', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('TRaSH 2160p Bluray Tier 03', '2160p', '2160p');
-- --- END op 1407

-- --- BEGIN op 1408 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 03', 'Bluray', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH 2160p Bluray Tier 03', 'Bluray', 'bluray');
-- --- END op 1408

-- --- BEGIN op 1409 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 03', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 03', 'Not Remux', 'Remux');
-- --- END op 1409

-- --- BEGIN op 1410 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 03', 'TRaSH 2160p Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 03', 'TRaSH 2160p Tier 02', 'TRaSH UHD Bluray Tier 02');
-- --- END op 1410

-- --- BEGIN op 1411 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH 2160p Bluray Tier 03'
	  AND name = 'TRaSH 2160p Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1411

-- --- BEGIN op 1412 ( update custom_format "TRaSH 2160p Bluray Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH 2160p Bluray Tier 03', 'TRaSH 2160p Tier 03', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH 2160p Bluray Tier 03', 'TRaSH 2160p Tier 03', 'TRaSH UHD Bluray Tier 03');
-- --- END op 1412

-- --- BEGIN op 1413 ( create custom_format "TRaSH WEB Tier 01" )
insert into "custom_formats" ("name", "description") values ('TRaSH WEB Tier 01', '');
-- --- END op 1413

-- --- BEGIN op 1414 ( update custom_format "TRaSH WEB Tier 01" )
insert into "tags" ("name") values ('Release Groups') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH WEB Tier 01', 'Release Groups');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH WEB Tier 01', 'WEB-DL');
-- --- END op 1414

-- --- BEGIN op 1415 ( update custom_format "TRaSH WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 01', 'Dictionarry WEB Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 01', 'Dictionarry WEB Tier 01', 'Dictionarry WEB Tier 01');
-- --- END op 1415

-- --- BEGIN op 1416 ( update custom_format "TRaSH WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 01', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH WEB Tier 01', 'WEB-DL', 'web_dl');
-- --- END op 1416

-- --- BEGIN op 1417 ( update custom_format "TRaSH WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 01', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH WEB Tier 01', 'WEBRip', 'webrip');
-- --- END op 1417

-- --- BEGIN op 1418 ( update custom_format "TRaSH WEB Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH WEB Tier 01'
	  AND name = 'Dictionarry WEB Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1418

-- --- BEGIN op 1419 ( update custom_format "TRaSH WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 01', 'TRaSH WEB Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 01', 'TRaSH WEB Tier 01', 'Dictionarry WEB Tier 01');
-- --- END op 1419

-- --- BEGIN op 1420 ( create custom_format "TRaSH WEB Tier 02" )
insert into "custom_formats" ("name", "description") values ('TRaSH WEB Tier 02', '');
-- --- END op 1420

-- --- BEGIN op 1421 ( update custom_format "TRaSH WEB Tier 02" )
insert into "tags" ("name") values ('Release Groups') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH WEB Tier 02', 'Release Groups');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH WEB Tier 02', 'WEB-DL');
-- --- END op 1421

-- --- BEGIN op 1422 ( update custom_format "TRaSH WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 02', 'TRaSH WEB Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 02', 'TRaSH WEB Tier 01', 'Dictionarry WEB Tier 01');
-- --- END op 1422

-- --- BEGIN op 1423 ( update custom_format "TRaSH WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 02', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH WEB Tier 02', 'WEB-DL', 'web_dl');
-- --- END op 1423

-- --- BEGIN op 1424 ( update custom_format "TRaSH WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 02', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH WEB Tier 02', 'WEBRip', 'webrip');
-- --- END op 1424

-- --- BEGIN op 1425 ( update custom_format "TRaSH WEB Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH WEB Tier 02'
	  AND name = 'TRaSH WEB Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1425

-- --- BEGIN op 1426 ( update custom_format "TRaSH WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 02', 'TRaSH WEB Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 02', 'TRaSH WEB Tier 02', 'TRaSH WEB Tier 02');
-- --- END op 1426

-- --- BEGIN op 1427 ( update custom_format "TRaSH WEB Tier 01" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TRaSH WEB Tier 01' AND condition_name = 'TRaSH WEB Tier 01' AND regular_expression_name = 'Dictionarry WEB Tier 01';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 01', 'TRaSH WEB Tier 01', 'TRaSH WEB Tier 02');
-- --- END op 1427

-- --- BEGIN op 1428 ( update custom_format "TRaSH WEB Tier 01" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TRaSH WEB Tier 01' AND condition_name = 'TRaSH WEB Tier 01' AND regular_expression_name = 'TRaSH WEB Tier 02';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 01', 'TRaSH WEB Tier 01', 'TRaSH WEB Tier 01');
-- --- END op 1428

-- --- BEGIN op 1429 ( create custom_format "TRaSH WEB Tier 03" )
insert into "custom_formats" ("name", "description") values ('TRaSH WEB Tier 03', '');
-- --- END op 1429

-- --- BEGIN op 1430 ( update custom_format "TRaSH WEB Tier 03" )
insert into "tags" ("name") values ('Release Groups') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH WEB Tier 03', 'Release Groups');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH WEB Tier 03', 'WEB-DL');
-- --- END op 1430

-- --- BEGIN op 1431 ( update custom_format "TRaSH WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 03', 'TRaSH WEB Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 03', 'TRaSH WEB Tier 02', 'TRaSH WEB Tier 02');
-- --- END op 1431

-- --- BEGIN op 1432 ( update custom_format "TRaSH WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 03', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH WEB Tier 03', 'WEB-DL', 'web_dl');
-- --- END op 1432

-- --- BEGIN op 1433 ( update custom_format "TRaSH WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 03', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH WEB Tier 03', 'WEBRip', 'webrip');
-- --- END op 1433

-- --- BEGIN op 1434 ( update custom_format "TRaSH WEB Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH WEB Tier 03'
	  AND name = 'TRaSH WEB Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1434

-- --- BEGIN op 1435 ( update custom_format "TRaSH WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH WEB Tier 03', 'TRaSH WEB Tier 03', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH WEB Tier 03', 'TRaSH WEB Tier 03', 'TRaSH WEB Tier 02');
-- --- END op 1435

-- --- BEGIN op 1436 ( create custom_format "TRaSH Banned Groups" )
insert into "custom_formats" ("name", "description") values ('TRaSH Banned Groups', '');
-- --- END op 1436

-- --- BEGIN op 1437 ( update custom_format "TRaSH Banned Groups" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Banned Groups', 'Banned');
-- --- END op 1437

-- --- BEGIN op 1438 ( update custom_format "TRaSH Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Banned Groups', 'TRaSH Banned Groups', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH Banned Groups', 'TRaSH Banned Groups', 'TRaSH Banned Groups');
-- --- END op 1438
