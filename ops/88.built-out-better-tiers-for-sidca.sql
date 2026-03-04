-- @operation: export
-- @entity: batch
-- @name: Built out better Tiers for SIDCA
-- @exportedAt: 2026-03-04T16:39:35.228Z
-- @opIds: 2252, 2254, 2255, 2256, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282

-- --- BEGIN op 2252 ( update regular_expression "Dumpstarr SIDCA Tier 01" )
update "regular_expressions" set "name" = 'Dumpstarr SIDCA Tier 01', "pattern" = '^(MeGusta)$' where "name" = 'Dumpstarr SIDCA Groups' and "pattern" = '^(ELiTE|MeGusta|PSA)$';
-- --- END op 2252

-- --- BEGIN op 2254 ( create regular_expression "Dumpstarr SIDCA Tier 02" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dumpstarr SIDCA Tier 02', '^(MeGusta)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dumpstarr SIDCA Tier 02', 'LQ');
-- --- END op 2254

-- --- BEGIN op 2255 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "name" = 'SIDCA Tier 02', "pattern" = '^(ELiTE|PSA)$' where "name" = 'Dumpstarr SIDCA Tier 02' and "pattern" = '^(MeGusta)$';
-- --- END op 2255

-- --- BEGIN op 2256 ( update regular_expression "SIDCA Tier 01" )
update "regular_expressions" set "name" = 'SIDCA Tier 01' where "name" = 'Dumpstarr SIDCA Tier 01';
-- --- END op 2256

-- --- BEGIN op 2258 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "name" = 'SIDCA Tier 03' where "name" = 'Dumpstarr SIDCA Fallback Groups';
-- --- END op 2258

-- --- BEGIN op 2259 ( update custom_format "SIDCA Fallback Groups" )
update "condition_patterns" set "regular_expression_name" = 'SIDCA Tier 03' where "custom_format_name" = 'SIDCA Fallback Groups' and "condition_name" = 'Dumpstarr SIDCA Fallback Groups' and "regular_expression_name" = 'Dumpstarr SIDCA Fallback Groups';
-- --- END op 2259

-- --- BEGIN op 2260 ( update regular_expression "SIDCA Tier 01" )
insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Dumpstarr' FROM regular_expressions WHERE name IN ('SIDCA Tier 01') LIMIT 1;
-- --- END op 2260

-- --- BEGIN op 2261 ( update regular_expression "SIDCA Tier 02" )
insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Dumpstarr' FROM regular_expressions WHERE name IN ('SIDCA Tier 02') LIMIT 1;
-- --- END op 2261

-- --- BEGIN op 2262 ( update regular_expression "SIDCA Tier 03" )
insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Dumpstarr' FROM regular_expressions WHERE name IN ('SIDCA Tier 03') LIMIT 1;
-- --- END op 2262

-- --- BEGIN op 2263 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(ASTRiD|CBFM|CtrlHD|DARKFLiX|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|ViETNAM|YAWNiX)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(ASTRiD|CBFM|CtrlHD|DARKFLiX|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|ViETNAM|YAWNiX|YIFY|YTS)$';
-- --- END op 2263

-- --- BEGIN op 2264 ( update regular_expression "SIDCA Tier 01" )
update "regular_expressions" set "pattern" = '^(MeGusta|YIFY|YTS)$' where "name" = 'SIDCA Tier 01' and "pattern" = '^(MeGusta)$';
-- --- END op 2264

-- --- BEGIN op 2265 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(ASTRiD|CBFM|CtrlHD|DARKFLiX|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|ViETNAM|YAWNiX)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(ASTRiD|CBFM|CtrlHD|DARKFLiX|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|ViETNAM|YAWNiX)$';
-- --- END op 2265

-- --- BEGIN op 2266 ( update regular_expression "SIDCA Tier 02" )
update "regular_expressions" set "pattern" = '^(ELiTE|PSA|RARBG)$' where "name" = 'SIDCA Tier 02' and "pattern" = '^(ELiTE|PSA)$';
-- --- END op 2266

-- --- BEGIN op 2267 ( update custom_format "SIDCA Tier 01" )
update "custom_formats" set "name" = 'SIDCA Tier 01' where "name" = 'SIDCA Groups';
-- --- END op 2267

-- --- BEGIN op 2269 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'Dumpstarr SIDCA Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2269

-- --- BEGIN op 2270 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'SIDCA Tier 01', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'SIDCA Tier 01', 'SIDCA Tier 01');
-- --- END op 2270

-- --- BEGIN op 2271 ( update custom_format "SIDCA Tier 02" )
update "custom_formats" set "name" = 'SIDCA Tier 02' where "name" = 'SIDCA Fallback Groups';
-- --- END op 2271

-- --- BEGIN op 2272 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'SIDCA Tier 02' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'SIDCA Fallback Groups' and "arr_type" = 'all' and "score" = 250;
-- --- END op 2272

-- --- BEGIN op 2273 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'Dumpstarr SIDCA Fallback Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2273

-- --- BEGIN op 2274 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'SIDCA Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'SIDCA Tier 02', 'SIDCA Tier 02');
-- --- END op 2274

-- --- BEGIN op 2275 ( create custom_format "SIDCA Tier 03" )
insert into "custom_formats" ("name", "description") values ('SIDCA Tier 03', '');
-- --- END op 2275

-- --- BEGIN op 2276 ( update custom_format "SIDCA Tier 03" )
update "custom_formats" set "description" = 'These are groups that are typically banned, but are allowed for the LQ profiles.' where "name" = 'SIDCA Tier 03' and "description" = '';
-- --- END op 2276

-- --- BEGIN op 2277 ( update custom_format "SIDCA Tier 03" )
insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('SIDCA Tier 03', 'Dumpstarr');

insert into "tags" ("name") values ('SIDCA') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('SIDCA Tier 03', 'SIDCA');
-- --- END op 2277

-- --- BEGIN op 2278 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'SIDCA Tier 02', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'SIDCA Tier 02', 'SIDCA Tier 02');
-- --- END op 2278

-- --- BEGIN op 2279 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'SIDCA Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2279

-- --- BEGIN op 2280 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'SIDCA Tier 03', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'SIDCA Tier 03', 'SIDCA Tier 03');
-- --- END op 2280

-- --- BEGIN op 2281 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 03', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2281

-- --- BEGIN op 2282 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SIDCA Tier 03', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SIDCA Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 2282
