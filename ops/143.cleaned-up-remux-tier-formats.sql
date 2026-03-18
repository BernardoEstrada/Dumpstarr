-- @operation: export
-- @entity: batch
-- @name: Cleaned up Remux Tier formats
-- @exportedAt: 2026-03-18T22:00:55.976Z
-- @opIds: 1165, 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181

-- --- BEGIN op 1165 ( delete custom_format "Remux Tier 01 - Sonarr" )
delete from "custom_formats" where "name" = 'Remux Tier 01 - Sonarr';
-- --- END op 1165

-- --- BEGIN op 1166 ( delete custom_format "Remux Tier 02 - Sonarr" )
delete from "custom_formats" where "name" = 'Remux Tier 02 - Sonarr';
-- --- END op 1166

-- --- BEGIN op 1167 ( delete custom_format "Remux Tier 04 - Sonarr" )
delete from "custom_formats" where "name" = 'Remux Tier 04 - Sonarr';
-- --- END op 1167

-- --- BEGIN op 1168 ( delete custom_format "Remux Tier 03 - Sonarr" )
delete from "custom_formats" where "name" = 'Remux Tier 03 - Sonarr';
-- --- END op 1168

-- --- BEGIN op 1169 ( update custom_format "TRaSH Remux Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH Remux Tier 01'
	  AND name = 'Remux'
	  AND type = 'quality_modifier'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1169

-- --- BEGIN op 1170 ( update custom_format "TRaSH Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 01', 'Remux - Radarr', 'quality_modifier', 'radarr', 0, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('TRaSH Remux Tier 01', 'Remux - Radarr', 'remux');
-- --- END op 1170

-- --- BEGIN op 1171 ( update custom_format "TRaSH Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 01', 'Remux - Sonarr', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH Remux Tier 01', 'Remux - Sonarr', 'bluray_raw');
-- --- END op 1171

-- --- BEGIN op 1172 ( update custom_format "TRaSH Remux Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH Remux Tier 02'
	  AND name = 'Remux'
	  AND type = 'quality_modifier'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1172

-- --- BEGIN op 1173 ( update custom_format "TRaSH Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 02', 'Remux - Radarr', 'quality_modifier', 'radarr', 0, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('TRaSH Remux Tier 02', 'Remux - Radarr', 'remux');
-- --- END op 1173

-- --- BEGIN op 1174 ( update custom_format "TRaSH Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 02', 'Remux - Sonarr', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH Remux Tier 02', 'Remux - Sonarr', 'bluray_raw');
-- --- END op 1174

-- --- BEGIN op 1175 ( update custom_format "TRaSH Remux Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH Remux Tier 03'
	  AND name = 'Remux'
	  AND type = 'quality_modifier'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1175

-- --- BEGIN op 1176 ( update custom_format "TRaSH Remux Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 03', 'Remux - Radarr', 'quality_modifier', 'radarr', 0, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('TRaSH Remux Tier 03', 'Remux - Radarr', 'remux');
-- --- END op 1176

-- --- BEGIN op 1177 ( update custom_format "TRaSH Remux Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 03', 'Remux - Sonarr', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TRaSH Remux Tier 03', 'Remux - Sonarr', 'bluray_raw');
-- --- END op 1177

-- --- BEGIN op 1178 ( update custom_format "Remux Tier 02" )
update "custom_formats" set "name" = 'Remux Tier 02' where "name" = 'Remux Tier 02 - Radarr';
-- --- END op 1178

-- --- BEGIN op 1179 ( update custom_format "Remux Tier 03" )
update "custom_formats" set "name" = 'Remux Tier 03' where "name" = 'Remux Tier 03 - Radarr';
-- --- END op 1179

-- --- BEGIN op 1180 ( update custom_format "Remux Tier 04" )
update "custom_formats" set "name" = 'Remux Tier 04' where "name" = 'Remux Tier 04 - Radarr';
-- --- END op 1180

-- --- BEGIN op 1181 ( update custom_format "Remux Tier 01" )
update "custom_formats" set "name" = 'Remux Tier 01' where "name" = 'Remux Tier 01 - Radarr';
-- --- END op 1181
