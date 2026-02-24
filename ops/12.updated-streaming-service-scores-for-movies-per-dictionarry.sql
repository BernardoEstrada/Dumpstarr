-- @operation: export
-- @entity: batch
-- @name: Updated Streaming Service scores for Movies per Dictionarry
-- @exportedAt: 2026-02-24T19:33:48.681Z
-- @opIds: 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328

-- --- BEGIN op 290 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'AMZN', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 290

-- --- BEGIN op 291 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'ATVP', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 291

-- --- BEGIN op 292 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 292

-- --- BEGIN op 293 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'CRIT'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 293

-- --- BEGIN op 294 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'DSNP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 294

-- --- BEGIN op 295 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'HMAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 295

-- --- BEGIN op 296 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'iT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 296

-- --- BEGIN op 297 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 297

-- --- BEGIN op 298 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'NF', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 298

-- --- BEGIN op 299 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'BCORE', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 299

-- --- BEGIN op 300 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'CRIT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 300

-- --- BEGIN op 301 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'MA', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 301

-- --- BEGIN op 302 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'AMZN', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 302

-- --- BEGIN op 303 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'ATVP', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 303

-- --- BEGIN op 304 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 304

-- --- BEGIN op 305 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'CRIT'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 305

-- --- BEGIN op 306 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'DSNP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 306

-- --- BEGIN op 307 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'HMAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 307

-- --- BEGIN op 308 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'iT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 308

-- --- BEGIN op 309 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 309

-- --- BEGIN op 310 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'NF', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 310

-- --- BEGIN op 311 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'AMZN', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 311

-- --- BEGIN op 312 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'ATVP', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 312

-- --- BEGIN op 313 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 313

-- --- BEGIN op 314 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'CRIT'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 314

-- --- BEGIN op 315 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'DSNP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 315

-- --- BEGIN op 316 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'HMAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 316

-- --- BEGIN op 317 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'iT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 317

-- --- BEGIN op 318 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 318

-- --- BEGIN op 319 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'NF', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 319

-- --- BEGIN op 320 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'AMZN', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 320

-- --- BEGIN op 321 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'ATVP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 321

-- --- BEGIN op 322 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 25
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 322

-- --- BEGIN op 323 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'CRIT'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 323

-- --- BEGIN op 324 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'DSNP', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 324

-- --- BEGIN op 325 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'HMAX', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 325

-- --- BEGIN op 326 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'iT', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 326

-- --- BEGIN op 327 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 327

-- --- BEGIN op 328 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'NF', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 328
