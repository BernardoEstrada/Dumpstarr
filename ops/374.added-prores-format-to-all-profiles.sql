-- @operation: export
-- @entity: batch
-- @name: Added ProRes Format to All Profiles
-- @exportedAt: 2026-08-06T16:25:55.756Z
-- @opIds: 5211, 5212, 5213, 5214, 5215, 5216, 5217, 5218, 5219, 5220, 5221, 5222, 5223, 5224, 5225, 5226, 5227, 5228, 5229, 5230, 5231, 5232, 5233, 5234, 5235, 5236, 5237, 5238, 5239, 5240, 5241, 5242, 5243, 5244, 5245, 5246, 5247, 5248, 5249, 5250, 5251, 5252, 5253, 5254, 5255, 5256, 5257, 5258, 5259, 5260, 5261, 5262, 5263, 5264, 5265, 5266, 5267, 5268, 5269, 5270

-- --- BEGIN op 5211 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 5211

-- --- BEGIN op 5212 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 5212

-- --- BEGIN op 5213 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 5213

-- --- BEGIN op 5214 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 5214

-- --- BEGIN op 5215 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 5215

-- --- BEGIN op 5216 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 5216

-- --- BEGIN op 5217 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 5217

-- --- BEGIN op 5218 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 5218

-- --- BEGIN op 5219 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 5219

-- --- BEGIN op 5220 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 5220

-- --- BEGIN op 5221 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 5221

-- --- BEGIN op 5222 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 5222

-- --- BEGIN op 5223 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 5223

-- --- BEGIN op 5224 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 5224

-- --- BEGIN op 5225 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 5225

-- --- BEGIN op 5226 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 5226

-- --- BEGIN op 5227 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 5227

-- --- BEGIN op 5228 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 600;
-- --- END op 5228

-- --- BEGIN op 5229 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 5229

-- --- BEGIN op 5230 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 5230

-- --- BEGIN op 5231 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 5231

-- --- BEGIN op 5232 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 5232

-- --- BEGIN op 5233 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 5233

-- --- BEGIN op 5234 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 5234

-- --- BEGIN op 5235 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 200;
-- --- END op 5235

-- --- BEGIN op 5236 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 5236

-- --- BEGIN op 5237 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 5237

-- --- BEGIN op 5238 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 5238

-- --- BEGIN op 5239 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 5239

-- --- BEGIN op 5240 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 5240

-- --- BEGIN op 5241 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 5241

-- --- BEGIN op 5242 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 5242

-- --- BEGIN op 5243 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 5243

-- --- BEGIN op 5244 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 5244

-- --- BEGIN op 5245 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 5245

-- --- BEGIN op 5246 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'sonarr'
  AND score = 600;
-- --- END op 5246

-- --- BEGIN op 5247 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 5247

-- --- BEGIN op 5248 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 5248

-- --- BEGIN op 5249 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 5249

-- --- BEGIN op 5250 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 5250

-- --- BEGIN op 5251 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 5251

-- --- BEGIN op 5252 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 5252

-- --- BEGIN op 5253 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'radarr'
  AND score = 200;
-- --- END op 5253

-- --- BEGIN op 5254 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 5254

-- --- BEGIN op 5255 ( create regular_expression "ProRes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ProRes', '\b(ProRes)\b', 'ProRes is a high-quality, lossy intra-frame video codec family developed by Apple. It compresses every video frame individually rather than across frames, making it an industry standard for professional video editing, color grading, and broadcasting due to its minimal quality loss during multi-generation editing.', NULL);

insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ProRes', 'Codec');
-- --- END op 5255

-- --- BEGIN op 5256 ( create custom_format "ProRes" )
insert into "custom_formats" ("name", "description") values ('ProRes', '');
-- --- END op 5256

-- --- BEGIN op 5257 ( update custom_format "ProRes" )
update "custom_formats" set "description" = 'Apple ProRes is a high-quality, lossy intra-frame video codec family developed by Apple. It compresses every video frame individually rather than across frames, making it an industry standard for professional video editing, color grading, and broadcasting due to its minimal quality loss during multi-generation editing.' where "name" = 'ProRes' and "description" = '';
-- --- END op 5257

-- --- BEGIN op 5258 ( update custom_format "ProRes" )
insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ProRes', 'Codec');
-- --- END op 5258

-- --- BEGIN op 5259 ( update custom_format "ProRes" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ProRes', 'ProRes', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ProRes', 'ProRes', 'ProRes');
-- --- END op 5259

-- --- BEGIN op 5260 ( update regular_expression "ProRes" )
update "regular_expressions" set "description" = NULL where "name" = 'ProRes' and "description" = 'ProRes is a high-quality, lossy intra-frame video codec family developed by Apple. It compresses every video frame individually rather than across frames, making it an industry standard for professional video editing, color grading, and broadcasting due to its minimal quality loss during multi-generation editing.';
-- --- END op 5260

-- --- BEGIN op 5261 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 5261

-- --- BEGIN op 5262 ( update quality_profile "Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 1080p', 'ProRes', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'sonarr'
);
-- --- END op 5262

-- --- BEGIN op 5263 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 5263

-- --- BEGIN op 5264 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ProRes', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'sonarr'
);
-- --- END op 5264

-- --- BEGIN op 5265 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 5265

-- --- BEGIN op 5266 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 5266

-- --- BEGIN op 5267 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 5267

-- --- BEGIN op 5268 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 5268

-- --- BEGIN op 5269 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'ProRes', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'sonarr'
);
-- --- END op 5269

-- --- BEGIN op 5270 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'ProRes', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'sonarr'
);
-- --- END op 5270
