-- @operation: export
-- @entity: batch
-- @name: Added No Audio Format to All Profiles
-- @exportedAt: 2026-08-12T14:50:52.551Z
-- @opIds: 5499, 5500, 5501, 5502, 5503, 5504, 5505, 5506, 5507, 5508, 5509, 5510, 5511, 5512, 5514, 5515, 5516, 5517, 5518, 5519, 5520, 5521, 5522, 5523, 5524, 5533, 5534, 5535, 5536, 5537, 5538

-- --- BEGIN op 5499 ( create custom_format "No Audio" )
insert into "custom_formats" ("name", "description") values ('No Audio', '');
-- --- END op 5499

-- --- BEGIN op 5500 ( update custom_format "No Audio" )
update "custom_formats" set "description" = 'Negatively scores releases that do not include audio codecs in the release name.' where "name" = 'No Audio' and "description" = '';
-- --- END op 5500

-- --- BEGIN op 5501 ( update custom_format "No Audio" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('No Audio', 'Banned');
-- --- END op 5501

-- --- BEGIN op 5502 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'Dolby Digital +', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'Dolby Digital +', 'Dolby Digital +');
-- --- END op 5502

-- --- BEGIN op 5503 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'Dolby Digital', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'Dolby Digital', 'Dolby Digital');
-- --- END op 5503

-- --- BEGIN op 5504 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'TrueHD', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'TrueHD', 'TrueHD');
-- --- END op 5504

-- --- BEGIN op 5505 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS', 'DTS');
-- --- END op 5505

-- --- BEGIN op 5506 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS-ES', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS-ES', 'DTS-ES');
-- --- END op 5506

-- --- BEGIN op 5507 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS-X', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS-X', 'DTS-X');
-- --- END op 5507

-- --- BEGIN op 5508 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'Basic DTS', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'Basic DTS', 'Basic DTS');
-- --- END op 5508

-- --- BEGIN op 5509 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS-HD', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS-HD', 'DTS-HD');
-- --- END op 5509

-- --- BEGIN op 5510 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS-HD HRA', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS-HD HRA', 'DTS-HD HRA');
-- --- END op 5510

-- --- BEGIN op 5511 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS-HD HRA-ES', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS-HD HRA-ES', 'DTS-HD HRA-ES');
-- --- END op 5511

-- --- BEGIN op 5512 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'DTS-HD MA', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'DTS-HD MA', 'DTS-HD MA');
-- --- END op 5512

-- --- BEGIN op 5514 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'Basic DTS'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5514

-- --- BEGIN op 5515 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5515

-- --- BEGIN op 5516 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS-ES'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5516

-- --- BEGIN op 5517 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS-HD'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5517

-- --- BEGIN op 5518 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS-HD HRA'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5518

-- --- BEGIN op 5519 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS-HD HRA-ES'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5519

-- --- BEGIN op 5520 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS-HD MA'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5520

-- --- BEGIN op 5521 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'DTS-X'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5521

-- --- BEGIN op 5522 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'Dolby Digital'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5522

-- --- BEGIN op 5523 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'Dolby Digital +'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5523

-- --- BEGIN op 5524 ( update custom_format "No Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'No Audio'
  AND name = 'TrueHD'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 5524

-- --- BEGIN op 5533 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'No Audio', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'radarr'
);
-- --- END op 5533

-- --- BEGIN op 5534 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'No Audio', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'radarr'
);
-- --- END op 5534

-- --- BEGIN op 5535 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'No Audio', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'radarr'
);
-- --- END op 5535

-- --- BEGIN op 5536 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'No Audio', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 5536

-- --- BEGIN op 5537 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'No Audio', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 5537

-- --- BEGIN op 5538 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'No Audio', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'No Audio'
    AND arr_type = 'radarr'
);
-- --- END op 5538
