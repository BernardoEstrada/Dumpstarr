-- @operation: export
-- @entity: batch
-- @name: Added TRaSH Remux Tiers
-- @exportedAt: 2026-03-03T23:42:14.989Z
-- @opIds: 1861, 1862, 1863, 1864, 1865, 1866, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1909, 1910, 1911, 1912, 1913

-- --- BEGIN op 1861 ( create custom_format "TRaSH Remux Tier 01" )
insert into "custom_formats" ("name", "description") values ('TRaSH Remux Tier 01', '');
-- --- END op 1861

-- --- BEGIN op 1862 ( update custom_format "TRaSH Remux Tier 01" )
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Remux Tier 01', 'TRaSH');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Remux Tier 01', 'Remux');
-- --- END op 1862

-- --- BEGIN op 1863 ( update custom_format "TRaSH Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 01', 'TRaSH Remux Tier 01', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH Remux Tier 01', 'TRaSH Remux Tier 01', 'TRaSH Remux Tier 01 - Radarr');
-- --- END op 1863

-- --- BEGIN op 1864 ( create custom_format "TRaSH Remux Tier 02" )
insert into "custom_formats" ("name", "description") values ('TRaSH Remux Tier 02', '');
-- --- END op 1864

-- --- BEGIN op 1865 ( update custom_format "TRaSH Remux Tier 02" )
insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Remux Tier 02', 'Remux');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Remux Tier 02', 'TRaSH');
-- --- END op 1865

-- --- BEGIN op 1866 ( update custom_format "TRaSH Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 02', 'TRaSH Remux Tier 01', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH Remux Tier 02', 'TRaSH Remux Tier 01', 'TRaSH Remux Tier 01 - Radarr');
-- --- END op 1866

-- --- BEGIN op 1867 ( update custom_format "TRaSH Remux Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH Remux Tier 02'
	  AND name = 'TRaSH Remux Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1867

-- --- BEGIN op 1868 ( update custom_format "TRaSH Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 02', 'TRaSH Remux Tier 02', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH Remux Tier 02', 'TRaSH Remux Tier 02', 'TRaSH Remux Tier 02 - Radarr');
-- --- END op 1868

-- --- BEGIN op 1869 ( create custom_format "TRaSH Remux Tier 03" )
insert into "custom_formats" ("name", "description") values ('TRaSH Remux Tier 03', '');
-- --- END op 1869

-- --- BEGIN op 1870 ( update custom_format "TRaSH Remux Tier 03" )
insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Remux Tier 03', 'Remux');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('TRaSH Remux Tier 03', 'TRaSH');
-- --- END op 1870

-- --- BEGIN op 1871 ( update custom_format "TRaSH Remux Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 03', 'TRaSH Remux Tier 02', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH Remux Tier 03', 'TRaSH Remux Tier 02', 'TRaSH Remux Tier 02 - Radarr');
-- --- END op 1871

-- --- BEGIN op 1872 ( update custom_format "TRaSH Remux Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TRaSH Remux Tier 03'
	  AND name = 'TRaSH Remux Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1872

-- --- BEGIN op 1873 ( update custom_format "TRaSH Remux Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 03', 'TRaSH Remux Tier 03', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH Remux Tier 03', 'TRaSH Remux Tier 03', 'TRaSH Remux Tier 03 - Radarr');
-- --- END op 1873

-- --- BEGIN op 1909 ( update custom_format "TRaSH Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 01', 'Remux', 'quality_modifier', 'all', 0, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('TRaSH Remux Tier 01', 'Remux', 'remux');
-- --- END op 1909

-- --- BEGIN op 1910 ( update custom_format "TRaSH Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 02', 'Remux', 'quality_modifier', 'all', 0, 0);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('TRaSH Remux Tier 02', 'Remux', 'remux');
-- --- END op 1910

-- --- BEGIN op 1911 ( update custom_format "TRaSH Remux Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH Remux Tier 03', 'Remux', 'quality_modifier', 'all', 0, 0);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('TRaSH Remux Tier 03', 'Remux', 'remux');
-- --- END op 1911

-- --- BEGIN op 1912 ( update custom_format "TRaSH Remux Tier 02" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'TRaSH Remux Tier 02'
  AND name = 'Remux'
  AND type = 'quality_modifier'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1912

-- --- BEGIN op 1913 ( update custom_format "TRaSH Remux Tier 03" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'TRaSH Remux Tier 03'
  AND name = 'Remux'
  AND type = 'quality_modifier'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 1913
