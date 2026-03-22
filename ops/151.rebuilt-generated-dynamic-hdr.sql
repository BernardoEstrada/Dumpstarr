-- @operation: export
-- @entity: batch
-- @name: Rebuilt Generated Dynamic HDR
-- @exportedAt: 2026-03-22T14:12:45.218Z
-- @opIds: 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289

-- --- BEGIN op 1256 ( update custom_format "Generated Dynamic HDR" )
update "custom_formats" set "description" = 'Matches groups who produce non-retail HDR10+ or Dolby Vision.' where "name" = 'Non Retail HDR' and "description" = 'Matches groups who produce non-retail HDR10+ or Dolby Vision. ';
-- --- END op 1256

-- --- BEGIN op 1257 ( update custom_format "Generated Dynamic HDR" )
update "custom_formats" set "name" = 'Generated Dynamic HDR' where "name" = 'Non Retail HDR';
-- --- END op 1257

-- --- BEGIN op 1258 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Generated Dynamic HDR' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Non Retail HDR' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1258

-- --- BEGIN op 1259 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Generated Dynamic HDR' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Non Retail HDR' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1259

-- --- BEGIN op 1260 ( update custom_format "Generated Dynamic HDR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Generated Dynamic HDR'
	  AND name = 'Groups'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1260

-- --- BEGIN op 1261 ( update custom_format "Generated Dynamic HDR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Generated Dynamic HDR'
	  AND name = 'HDR10+ or DoVi'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1261

-- --- BEGIN op 1262 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'Generated Dynamic HDR Groups', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'Generated Dynamic HDR Groups', 'Non Retail HDR Groups');
-- --- END op 1262

-- --- BEGIN op 1263 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'HDR10+', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'HDR10+', 'HDR10+');
-- --- END op 1263

-- --- BEGIN op 1264 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'Dolby Vision', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'Dolby Vision', 'Dolby Vision');
-- --- END op 1264

-- --- BEGIN op 1265 ( update custom_format "Generated Dynamic HDR" )
delete from "custom_format_conditions" where "custom_format_name" = 'Generated Dynamic HDR' and "name" = 'Generated Dynamic HDR Groups' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 1265

-- --- BEGIN op 1266 ( delete regular_expression "Non Retail HDR Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Groups' AND tag_name = 'HDR';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Groups' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Non Retail HDR Groups' and "pattern" = '\b(VECTOR|BiTOR|DepraveD|SasukeducK|tarunk9c|jennaortegaUHD|VisionXpert|Flights)\b';
-- --- END op 1266

-- --- BEGIN op 1267 ( delete regular_expression "Non Retail HDR Formats" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Formats' AND tag_name = 'Colour Grade';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Formats' AND tag_name = 'Enhancement';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Formats' AND tag_name = 'HDR';

delete from "regular_expressions" where "name" = 'Non Retail HDR Formats' and "pattern" = '(?:(?<=^(?!.*\b(HLG|PQ|SDR)(\b|\d)).*?)HDR10(\+|P(lus)?))|\b(dv(?![ .](HLG|SDR))|dovi|dolby[.]?vision)\b';
-- --- END op 1267

-- --- BEGIN op 1268 ( update regular_expression "BiTOR" )
update "regular_expressions" set "pattern" = '^(BiTOR)$' where "name" = 'BiTOR' and "pattern" = '(?<=^|[\s.-])BiTOR\b';
-- --- END op 1268

-- --- BEGIN op 1269 ( update regular_expression "DepraveD" )
update "regular_expressions" set "pattern" = '^(DepraveD)$' where "name" = 'DepraveD' and "pattern" = '(?<=^|[\s.-])DepraveD\b';
-- --- END op 1269

-- --- BEGIN op 1270 ( update regular_expression "Flights" )
update "regular_expressions" set "pattern" = '^(Flights)$' where "name" = 'Flights' and "pattern" = '\b(Flights)\b';
-- --- END op 1270

-- --- BEGIN op 1271 ( update regular_expression "Flights - Release Title" )
update "regular_expressions" set "name" = 'Flights - Release Title', "pattern" = '\b(Flights)\b' where "name" = 'Flights' and "pattern" = '^(Flights)$';
-- --- END op 1271

-- --- BEGIN op 1272 ( update custom_format "Dolby Vision (No HDR Fallback)" )
update "condition_patterns" set "regular_expression_name" = 'Flights - Release Title' where "custom_format_name" = 'Dolby Vision (No HDR Fallback)' and "condition_name" = 'Not Flights' and "regular_expression_name" = 'Flights';
-- --- END op 1272

-- --- BEGIN op 1273 ( create regular_expression "Flights - Release Group" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Flights - Release Group', '\b(Flights)\b', 'Banned for Fake DV/HDR Layer', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Flights - Release Group', 'Release Group');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Flights - Release Group', 'TRaSH');
-- --- END op 1273

-- --- BEGIN op 1274 ( update regular_expression "Flights - Release Group" )
update "regular_expressions" set "pattern" = '^(Flights)$' where "name" = 'Flights - Release Group' and "pattern" = '\b(Flights)\b';
-- --- END op 1274

-- --- BEGIN op 1275 ( create regular_expression "GuyZo" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GuyZo', '^(GROUP)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GuyZo', 'Release Group');
-- --- END op 1275

-- --- BEGIN op 1276 ( update regular_expression "GuyZo" )
update "regular_expressions" set "pattern" = '^(GuyZo|BR-GuyZo)$' where "name" = 'GuyZo' and "pattern" = '^(GROUP)$';
-- --- END op 1276

-- --- BEGIN op 1277 ( update regular_expression "SasukeducK" )
update "regular_expressions" set "pattern" = '^(SasukeducK)$' where "name" = 'SasukeducK' and "pattern" = '(?<=^|[\s.-])SasukeducK\b';
-- --- END op 1277

-- --- BEGIN op 1278 ( update regular_expression "tarunk9c" )
update "regular_expressions" set "pattern" = '^(tarunk9c)$' where "name" = 'tarunk9c' and "pattern" = '(?<=^|[\s.-])tarunk9c\b';
-- --- END op 1278

-- --- BEGIN op 1279 ( update regular_expression "VD0N" )
update "regular_expressions" set "pattern" = '^(VD0N)$' where "name" = 'VD0N' and "pattern" = '(?<=^|[\s.-])VD0N\b';
-- --- END op 1279

-- --- BEGIN op 1280 ( update regular_expression "VECTOR" )
update "regular_expressions" set "pattern" = '^(VECTOR)$' where "name" = 'VECTOR' and "pattern" = '(?<=^|[\s.-])VECTOR\b';
-- --- END op 1280

-- --- BEGIN op 1281 ( update regular_expression "VisionXpert" )
update "regular_expressions" set "pattern" = '^(VisionXpert)$' where "name" = 'VisionXpert' and "pattern" = '(?<=^|[\s.-])VisionXpert\b';
-- --- END op 1281

-- --- BEGIN op 1282 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'BiTOR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'BiTOR', 'BiTOR');
-- --- END op 1282

-- --- BEGIN op 1283 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'DepraveD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'DepraveD', 'DepraveD');
-- --- END op 1283

-- --- BEGIN op 1284 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'Flights', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'Flights', 'Flights - Release Group');
-- --- END op 1284

-- --- BEGIN op 1285 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'GuyZo', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'GuyZo', 'GuyZo');
-- --- END op 1285

-- --- BEGIN op 1286 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'tarunk9c', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'tarunk9c', 'tarunk9c');
-- --- END op 1286

-- --- BEGIN op 1287 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'VD0N', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'VD0N', 'VD0N');
-- --- END op 1287

-- --- BEGIN op 1288 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'VisonXpert', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'VisonXpert', 'VisionXpert');
-- --- END op 1288

-- --- BEGIN op 1289 ( update custom_format "Generated Dynamic HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'SasukeducK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'SasukeducK', 'SasukeducK');
-- --- END op 1289
