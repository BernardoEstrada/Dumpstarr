-- @operation: export
-- @entity: batch
-- @name: Converted SIDCA Tiers to Individual Regex
-- @exportedAt: 2026-06-30T16:23:53.343Z
-- @opIds: 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2224, 2225, 2226, 2227, 2228, 2229, 2230, 2231, 2232, 2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271

-- --- BEGIN op 2199 ( create regular_expression "MeGusta" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MeGusta', '^(MeGusta)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MeGusta', 'Release Group');
-- --- END op 2199

-- --- BEGIN op 2200 ( update regular_expression "MeGusta" )
insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MeGusta', 'LQ');
-- --- END op 2200

-- --- BEGIN op 2201 ( create regular_expression "ELiTE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ELiTE', '^(MeGusta)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ELiTE', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ELiTE', 'Release Group');
-- --- END op 2201

-- --- BEGIN op 2202 ( update regular_expression "ELiTE" )
update "regular_expressions" set "pattern" = '^(ELiTE)$' where "name" = 'ELiTE' and "pattern" = '^(MeGusta)$';
-- --- END op 2202

-- --- BEGIN op 2203 ( create regular_expression "iVy" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iVy', '^(ELiTE)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iVy', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iVy', 'Release Group');
-- --- END op 2203

-- --- BEGIN op 2204 ( update regular_expression "iVy" )
update "regular_expressions" set "pattern" = '^(iVy)$' where "name" = 'iVy' and "pattern" = '^(ELiTE)$';
-- --- END op 2204

-- --- BEGIN op 2205 ( create regular_expression "Pahe" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pahe', '^(iVy)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pahe', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pahe', 'Release Group');
-- --- END op 2205

-- --- BEGIN op 2206 ( update regular_expression "Pahe" )
update "regular_expressions" set "pattern" = '^(Pahe)$' where "name" = 'Pahe' and "pattern" = '^(iVy)$';
-- --- END op 2206

-- --- BEGIN op 2207 ( create regular_expression "AndreMor" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AndreMor', '^(ELiTE)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AndreMor', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AndreMor', 'Release Group');
-- --- END op 2207

-- --- BEGIN op 2208 ( update regular_expression "AndreMor" )
update "regular_expressions" set "pattern" = '^(AndreMor)$' where "name" = 'AndreMor' and "pattern" = '^(ELiTE)$';
-- --- END op 2208

-- --- BEGIN op 2209 ( create regular_expression "ASTRiD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ASTRiD', '^(AndreMor)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASTRiD', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ASTRiD', 'Release Group');
-- --- END op 2209

-- --- BEGIN op 2210 ( update regular_expression "ASTRiD" )
update "regular_expressions" set "pattern" = '^(ASTRiD)$' where "name" = 'ASTRiD' and "pattern" = '^(AndreMor)$';
-- --- END op 2210

-- --- BEGIN op 2211 ( create regular_expression "CBFM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CBFM', '^(ASTRiD)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CBFM', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CBFM', 'Release Group');
-- --- END op 2211

-- --- BEGIN op 2212 ( update regular_expression "CBFM" )
update "regular_expressions" set "pattern" = '^(CBFM)$' where "name" = 'CBFM' and "pattern" = '^(ASTRiD)$';
-- --- END op 2212

-- --- BEGIN op 2213 ( create regular_expression "CHiLL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CHiLL', '^(CBFM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CHiLL', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CHiLL', 'Release Group');
-- --- END op 2213

-- --- BEGIN op 2214 ( update regular_expression "CHiLL" )
update "regular_expressions" set "pattern" = '^(CHiLL)$' where "name" = 'CHiLL' and "pattern" = '^(CBFM)$';
-- --- END op 2214

-- --- BEGIN op 2215 ( create regular_expression "CtrlHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CtrlHD', '^(CHiLL)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CtrlHD', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CtrlHD', 'Release Group');
-- --- END op 2215

-- --- BEGIN op 2216 ( update regular_expression "CtrlHD" )
update "regular_expressions" set "pattern" = '^(CtrlHD)$' where "name" = 'CtrlHD' and "pattern" = '^(CHiLL)$';
-- --- END op 2216

-- --- BEGIN op 2217 ( create regular_expression "EDPH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EDPH', '^(CtrlHD)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EDPH', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EDPH', 'Release Group');
-- --- END op 2217

-- --- BEGIN op 2218 ( update regular_expression "EDPH" )
update "regular_expressions" set "pattern" = '^(EDPH)$' where "name" = 'EDPH' and "pattern" = '^(CtrlHD)$';
-- --- END op 2218

-- --- BEGIN op 2219 ( create regular_expression "HANDJOB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HANDJOB', '^(EDPH)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HANDJOB', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HANDJOB', 'Release Group');
-- --- END op 2219

-- --- BEGIN op 2220 ( update regular_expression "HANDJOB" )
update "regular_expressions" set "pattern" = '^(HANDJOB)$' where "name" = 'HANDJOB' and "pattern" = '^(EDPH)$';
-- --- END op 2220

-- --- BEGIN op 2221 ( create regular_expression "HODL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HODL', '^(HANDJOB)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HODL', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HODL', 'Release Group');
-- --- END op 2221

-- --- BEGIN op 2222 ( update regular_expression "HODL" )
update "regular_expressions" set "pattern" = '^(HODL)$' where "name" = 'HODL' and "pattern" = '^(HANDJOB)$';
-- --- END op 2222

-- --- BEGIN op 2223 ( create regular_expression "KONTRAST" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KONTRAST', '^(HODL)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KONTRAST', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KONTRAST', 'Release Group');
-- --- END op 2223

-- --- BEGIN op 2224 ( update regular_expression "KONTRAST" )
update "regular_expressions" set "pattern" = '^(KONTRAST)$' where "name" = 'KONTRAST' and "pattern" = '^(HODL)$';
-- --- END op 2224

-- --- BEGIN op 2225 ( create regular_expression "MacP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MacP', '^(KONTRAST)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MacP', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MacP', 'Release Group');
-- --- END op 2225

-- --- BEGIN op 2226 ( update regular_expression "MacP" )
update "regular_expressions" set "pattern" = '^(MacP)$' where "name" = 'MacP' and "pattern" = '^(KONTRAST)$';
-- --- END op 2226

-- --- BEGIN op 2227 ( create regular_expression "PLUTONiUM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PLUTONiUM', '^(MacP)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PLUTONiUM', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PLUTONiUM', 'Release Group');
-- --- END op 2227

-- --- BEGIN op 2228 ( update regular_expression "PLUTONiUM" )
update "regular_expressions" set "pattern" = '^(PLUTONiUM)$' where "name" = 'PLUTONiUM' and "pattern" = '^(MacP)$';
-- --- END op 2228

-- --- BEGIN op 2229 ( create regular_expression "PHOCiS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PHOCiS', '^(PLUTONiUM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PHOCiS', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PHOCiS', 'Release Group');
-- --- END op 2229

-- --- BEGIN op 2230 ( update regular_expression "PHOCiS" )
update "regular_expressions" set "pattern" = '^(PHOCiS)$' where "name" = 'PHOCiS' and "pattern" = '^(PLUTONiUM)$';
-- --- END op 2230

-- --- BEGIN op 2231 ( create regular_expression "YAWNiX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YAWNiX', '^(PLUTONiUM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YAWNiX', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YAWNiX', 'Release Group');
-- --- END op 2231

-- --- BEGIN op 2232 ( update regular_expression "YAWNiX" )
update "regular_expressions" set "pattern" = '^(YAWNiX)$' where "name" = 'YAWNiX' and "pattern" = '^(PLUTONiUM)$';
-- --- END op 2232

-- --- BEGIN op 2233 ( create regular_expression "ViETNAM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ViETNAM', '^(YAWNiX)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ViETNAM', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ViETNAM', 'Release Group');
-- --- END op 2233

-- --- BEGIN op 2234 ( update regular_expression "YAWNiX" )
update "regular_expressions" set "pattern" = '^(ViETNAM)$' where "name" = 'YAWNiX' and "pattern" = '^(YAWNiX)$';
-- --- END op 2234

-- --- BEGIN op 2235 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'SIDCA Tier 01 (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2235

-- --- BEGIN op 2236 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'MeGusta', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'MeGusta', 'MeGusta');
-- --- END op 2236

-- --- BEGIN op 2237 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'SIDCA Tier 02 (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2237

-- --- BEGIN op 2238 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'ELiTE', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'ELiTE', 'ELiTE');
-- --- END op 2238

-- --- BEGIN op 2239 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'iVy', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'iVy', 'iVy');
-- --- END op 2239

-- --- BEGIN op 2240 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'Pahe', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'Pahe', 'Pahe');
-- --- END op 2240

-- --- BEGIN op 2241 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'SIDCA Tier 03 (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2241

-- --- BEGIN op 2242 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'AndreMor', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'AndreMor', 'AndreMor');
-- --- END op 2242

-- --- BEGIN op 2243 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'ASTRiD', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'ASTRiD', 'ASTRiD');
-- --- END op 2243

-- --- BEGIN op 2244 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'CBFM', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'CBFM', 'CBFM');
-- --- END op 2244

-- --- BEGIN op 2245 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'CHiLL', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'CHiLL', 'CHiLL');
-- --- END op 2245

-- --- BEGIN op 2246 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'CtrlHD', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'CtrlHD', 'CtrlHD');
-- --- END op 2246

-- --- BEGIN op 2247 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'EDPH', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'EDPH', 'EDPH');
-- --- END op 2247

-- --- BEGIN op 2248 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'HANDJOB', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'HANDJOB', 'HANDJOB');
-- --- END op 2248

-- --- BEGIN op 2249 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'HODL', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'HODL', 'HODL');
-- --- END op 2249

-- --- BEGIN op 2250 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'KONTRAST', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'KONTRAST', 'KONTRAST');
-- --- END op 2250

-- --- BEGIN op 2251 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'MacP', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'MacP', 'MacP');
-- --- END op 2251

-- --- BEGIN op 2252 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'PLUTONiUM', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'PLUTONiUM', 'PLUTONiUM');
-- --- END op 2252

-- --- BEGIN op 2253 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'PHOCiS', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'PHOCiS', 'PHOCiS');
-- --- END op 2253

-- --- BEGIN op 2254 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'YAWNiX', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'YAWNiX', 'YAWNiX');
-- --- END op 2254

-- --- BEGIN op 2255 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'ViETNAM', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'ViETNAM', 'ViETNAM');
-- --- END op 2255

-- --- BEGIN op 2256 ( create regular_expression "PSA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PSA', '^(Pahe)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PSA', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PSA', 'Release Group');
-- --- END op 2256

-- --- BEGIN op 2257 ( update regular_expression "PSA" )
update "regular_expressions" set "pattern" = '^(PSA)$' where "name" = 'PSA' and "pattern" = '^(Pahe)$';
-- --- END op 2257

-- --- BEGIN op 2258 ( create regular_expression "LAMA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LAMA', '^(YAWNiX)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LAMA', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LAMA', 'Release Group');
-- --- END op 2258

-- --- BEGIN op 2259 ( update regular_expression "LAMA" )
update "regular_expressions" set "pattern" = '^(LAMA)$' where "name" = 'LAMA' and "pattern" = '^(YAWNiX)$';
-- --- END op 2259

-- --- BEGIN op 2260 ( create regular_expression "YIFY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YIFY', '^(ViETNAM)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YIFY', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YIFY', 'Release Group');
-- --- END op 2260

-- --- BEGIN op 2261 ( update regular_expression "YIFY" )
update "regular_expressions" set "pattern" = '^(YIFY|YTS)$' where "name" = 'YIFY' and "pattern" = '^(ViETNAM)$';
-- --- END op 2261

-- --- BEGIN op 2262 ( create regular_expression "PiRaTeS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PiRaTeS', '^(PSA)$', NULL, NULL);

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiRaTeS', 'LQ');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiRaTeS', 'Release Group');
-- --- END op 2262

-- --- BEGIN op 2263 ( update regular_expression "PiRaTeS" )
update "regular_expressions" set "pattern" = '^(PiRaTeS)$' where "name" = 'PiRaTeS' and "pattern" = '^(PSA)$';
-- --- END op 2263

-- --- BEGIN op 2264 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'SIDCA Tier 01 (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2264

-- --- BEGIN op 2265 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'PSA', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'PSA', 'PSA');
-- --- END op 2265

-- --- BEGIN op 2266 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'iVy', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'iVy', 'iVy');
-- --- END op 2266

-- --- BEGIN op 2267 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'SIDCA Tier 02 (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2267

-- --- BEGIN op 2268 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'YIFY', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'YIFY', 'YIFY');
-- --- END op 2268

-- --- BEGIN op 2269 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'LAMA', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'LAMA', 'LAMA');
-- --- END op 2269

-- --- BEGIN op 2270 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'SIDCA Tier 03 (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2270

-- --- BEGIN op 2271 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'PiRaTeS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'PiRaTeS', 'PiRaTeS');
-- --- END op 2271
