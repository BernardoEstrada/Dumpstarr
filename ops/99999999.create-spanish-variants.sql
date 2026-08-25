-- ============================================================================
-- Personal customization: Maximum / Balanced / Optimized tiers x language
--
-- Builds 5 new "tier" profiles out of 5 existing upstream profiles, then
-- clones each tier 3 ways for language:
--
--   Tier            Sourced from
--   --------------  --------------------
--   Movies Maximum  Movies 2160p HQ
--   Movies Balanced Movies 1080p
--   Optimized       LQ 1080p            (shared between movies and TV)
--   TV Maximum      TV 2160p
--   TV Balanced     TV 1080p
--
--   Language variant        Behavior
--   -----------------------  ------------------------------------------------
--   <Tier>                   Untouched clone of the source profile.
--   <Tier> 🇲🇽                Spanish audio is REQUIRED. "must" language +
--                            a "Not Spanish" custom format at -999999 rejects
--                            any release without a Spanish audio track.
--                            Other languages present alongside Spanish are
--                            not scored either way.
--   <Tier> 🇲🇽+Default        Neither language is required. Releases with
--                            BOTH Spanish and original-language audio are
--                            rewarded (+5000); releases with only one of the
--                            two are allowed but heavily discouraged
--                            (-2500); releases with neither are rejected
--                            (-999999).
--
-- All variants also neutralise "Not Original Language" (upstream's -10000
-- Sonarr-only original-language gate, see ops/358) to 0, since it would
-- otherwise hard-reject Spanish dubs of non-Spanish-original shows and fight
-- with the scoring above. The plain "<Tier>" (Default) clones do NOT
-- neutralise it -- they behave exactly like the source profile.
--
-- Upstream's own profiles (Movies 2160p HQ, Movies 1080p, LQ 1080p, TV 2160p,
-- TV 1080p, and everything else) are left completely untouched; this file
-- only ever adds new profiles. Anime is intentionally out of scope.
--
-- The migration is fully idempotent (WHERE NOT EXISTS guards + retrofit
-- UPDATEs), so it is safe to replay against a database that already has some
-- or all of these profiles.
-- ============================================================================

-- ============================================================================
-- PART 1: Create the 5 tier "Default" base profiles
-- ============================================================================

-- 1a) Clone the quality_profiles row itself
INSERT INTO quality_profiles (
  name, description, upgrades_allowed, minimum_custom_format_score,
  upgrade_until_score, upgrade_score_increment
)
SELECT
  tm.tier_name, src.description, src.upgrades_allowed,
  src.minimum_custom_format_score, src.upgrade_until_score, src.upgrade_score_increment
FROM quality_profiles src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.name
WHERE NOT EXISTS (SELECT 1 FROM quality_profiles WHERE name = tm.tier_name);

-- 1b) Copy tags
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT tm.tier_name, src.tag_name
FROM quality_profile_tags src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.quality_profile_name
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_tags
  WHERE quality_profile_name = tm.tier_name AND tag_name = src.tag_name
);

-- 1c) Copy quality groups
INSERT INTO quality_groups (quality_profile_name, name)
SELECT tm.tier_name, src.name
FROM quality_groups src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.quality_profile_name
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = tm.tier_name AND name = src.name
);

-- 1d) Copy quality group memberships
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT tm.tier_name, src.quality_group_name, src.quality_name, src.position
FROM quality_group_members src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.quality_profile_name
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = tm.tier_name
    AND quality_group_name = src.quality_group_name
    AND quality_name = src.quality_name
);

-- 1e) Copy the full quality ladder
INSERT INTO quality_profile_qualities (
  quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until
)
SELECT tm.tier_name, src.quality_name, src.quality_group_name, src.position, src.enabled, src.upgrade_until
FROM quality_profile_qualities src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.quality_profile_name
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = tm.tier_name AND position = src.position
);

-- 1f) Copy required languages verbatim (Default behaves exactly like source)
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT tm.tier_name, src.language_name, src.type
FROM quality_profile_languages src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.quality_profile_name
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = tm.tier_name AND language_name = src.language_name
);

-- 1g) Copy custom-format scores verbatim
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT tm.tier_name, src.custom_format_name, src.arr_type, src.score
FROM quality_profile_custom_formats src
JOIN (
  SELECT 'Movies 2160p HQ' AS source_name, 'Movies Maximum' AS tier_name
  UNION ALL SELECT 'Movies 1080p', 'Movies Balanced'
  UNION ALL SELECT 'LQ 1080p', 'Optimized'
  UNION ALL SELECT 'TV 2160p', 'TV Maximum'
  UNION ALL SELECT 'TV 1080p', 'TV Balanced'
) AS tm ON tm.source_name = src.quality_profile_name
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = tm.tier_name
    AND custom_format_name = src.custom_format_name
    AND arr_type = src.arr_type
);

-- ============================================================================
-- PART 2: Custom formats used by the language variants (global, idempotent)
-- ============================================================================

INSERT INTO tags (name) SELECT 'Language' WHERE NOT EXISTS (SELECT 1 FROM tags WHERE name = 'Language');
INSERT INTO tags (name) SELECT 'spanish' WHERE NOT EXISTS (SELECT 1 FROM tags WHERE name = 'spanish');

-- 2a) "Not Spanish": matches releases with no Spanish audio track at all.
--     Used by the *_🇲🇽 (hard-required) variants.
INSERT INTO custom_formats (name, description)
SELECT 'Not Spanish', 'Matches releases that do not include a Spanish audio track. Other languages are allowed.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Not Spanish');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Not Spanish', 'Spanish (Latino)', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Not Spanish' AND name = 'Spanish (Latino)');

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Not Spanish', 'Spanish (Latino)', 'Spanish (Latino)', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Not Spanish' AND condition_name = 'Spanish (Latino)');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Not Spanish', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Not Spanish' AND tag_name = 'Language');

-- 2b) "Spanish + Original Audio": both a Spanish track AND an original-
--     language track are present (dual audio, or the original language IS
--     Spanish). Used by the *_🇲🇽+Default (soft-preference) variants.
INSERT INTO custom_formats (name, description)
SELECT 'Spanish + Original Audio', 'Matches releases that include both a Spanish audio track and the original-language audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Spanish + Original Audio');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Spanish + Original Audio', 'Has Spanish', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Spanish + Original Audio' AND name = 'Has Spanish');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Spanish + Original Audio', 'Has Original', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Spanish + Original Audio' AND name = 'Has Original');

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Spanish + Original Audio', 'Has Spanish', 'Spanish (Latino)', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Spanish + Original Audio' AND condition_name = 'Has Spanish');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Spanish + Original Audio', 'Has Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Spanish + Original Audio' AND condition_name = 'Has Original');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Spanish + Original Audio', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Spanish + Original Audio' AND tag_name = 'Language');

-- 2c) "Spanish Only Audio": has Spanish, missing the original-language track.
INSERT INTO custom_formats (name, description)
SELECT 'Spanish Only Audio', 'Matches releases that include a Spanish audio track but are missing the original-language audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Spanish Only Audio');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Spanish Only Audio', 'Has Spanish', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Spanish Only Audio' AND name = 'Has Spanish');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Spanish Only Audio', 'Missing Original', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Spanish Only Audio' AND name = 'Missing Original');

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Spanish Only Audio', 'Has Spanish', 'Spanish (Latino)', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Spanish Only Audio' AND condition_name = 'Has Spanish');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Spanish Only Audio', 'Missing Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Spanish Only Audio' AND condition_name = 'Missing Original');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Spanish Only Audio', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Spanish Only Audio' AND tag_name = 'Language');

-- 2d) "Original Only Audio": has the original-language track, missing Spanish.
INSERT INTO custom_formats (name, description)
SELECT 'Original Only Audio', 'Matches releases that include the original-language audio track but are missing a Spanish audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Original Only Audio');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Original Only Audio', 'Missing Spanish', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Original Only Audio' AND name = 'Missing Spanish');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Original Only Audio', 'Has Original', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Original Only Audio' AND name = 'Has Original');

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Original Only Audio', 'Missing Spanish', 'Spanish (Latino)', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Original Only Audio' AND condition_name = 'Missing Spanish');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Original Only Audio', 'Has Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Original Only Audio' AND condition_name = 'Has Original');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Original Only Audio', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Original Only Audio' AND tag_name = 'Language');

-- 2e) "Missing Spanish and Original": neither track is present -- reject.
INSERT INTO custom_formats (name, description)
SELECT 'Missing Spanish and Original', 'Matches releases that include neither a Spanish audio track nor the original-language audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Missing Spanish and Original');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Missing Spanish and Original', 'Missing Spanish', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Missing Spanish and Original' AND name = 'Missing Spanish');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Missing Spanish and Original', 'Missing Original', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Missing Spanish and Original' AND name = 'Missing Original');

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Missing Spanish and Original', 'Missing Spanish', 'Spanish (Latino)', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Missing Spanish and Original' AND condition_name = 'Missing Spanish');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Missing Spanish and Original', 'Missing Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Missing Spanish and Original' AND condition_name = 'Missing Original');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Missing Spanish and Original', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Missing Spanish and Original' AND tag_name = 'Language');

-- ============================================================================
-- PART 3: Clone scaffold shared by both language variants (🇲🇽 and 🇲🇽+Default)
-- ============================================================================

-- 3a) Clone the quality_profiles row for both suffixes
INSERT INTO quality_profiles (
  name, description, upgrades_allowed, minimum_custom_format_score,
  upgrade_until_score, upgrade_score_increment
)
SELECT
  src.name || sfx.suffix, src.description, src.upgrades_allowed,
  src.minimum_custom_format_score, src.upgrade_until_score, src.upgrade_score_increment
FROM quality_profiles src
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON tiers.name = src.name
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE NOT EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.name || sfx.suffix);

-- 3b) Copy tags, plus the 'spanish' marker tag on every variant
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT src.quality_profile_name || sfx.suffix, src.tag_name
FROM quality_profile_tags src
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON tiers.name = src.quality_profile_name
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_tags
  WHERE quality_profile_name = src.quality_profile_name || sfx.suffix AND tag_name = src.tag_name
);

INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, 'spanish'
FROM quality_profiles qp
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers ON 1 = 1
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE qp.name = tiers.name || sfx.suffix
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_tags WHERE quality_profile_name = qp.name AND tag_name = 'spanish'
  );

-- 3c) Copy quality groups
INSERT INTO quality_groups (quality_profile_name, name)
SELECT src.quality_profile_name || sfx.suffix, src.name
FROM quality_groups src
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON tiers.name = src.quality_profile_name
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = src.quality_profile_name || sfx.suffix AND name = src.name
);

-- 3d) Copy quality group memberships
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT src.quality_profile_name || sfx.suffix, src.quality_group_name, src.quality_name, src.position
FROM quality_group_members src
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON tiers.name = src.quality_profile_name
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = src.quality_profile_name || sfx.suffix
    AND quality_group_name = src.quality_group_name
    AND quality_name = src.quality_name
);

-- 3e) Copy the full quality ladder
INSERT INTO quality_profile_qualities (
  quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until
)
SELECT src.quality_profile_name || sfx.suffix, src.quality_name, src.quality_group_name, src.position, src.enabled, src.upgrade_until
FROM quality_profile_qualities src
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON tiers.name = src.quality_profile_name
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = src.quality_profile_name || sfx.suffix AND position = src.position
);

-- 3f) Copy custom-format scores, neutralising "Not Original Language" (0) --
--     see the header for why: it would otherwise reject Spanish dubs of
--     non-Spanish-original shows via Sonarr's -10000 score.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT
  src.quality_profile_name || sfx.suffix, src.custom_format_name, src.arr_type,
  CASE WHEN src.custom_format_name = 'Not Original Language' THEN 0 ELSE src.score END
FROM quality_profile_custom_formats src
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON tiers.name = src.quality_profile_name
CROSS JOIN (SELECT ' 🇲🇽' AS suffix UNION ALL SELECT ' 🇲🇽+Default') AS sfx
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = src.quality_profile_name || sfx.suffix
    AND custom_format_name = src.custom_format_name
    AND arr_type = src.arr_type
);

-- 3g) Retrofit existing variants: 3f's INSERT is a no-op once the row already
--     exists, so un-ban "Not Original Language" here too (-10000 -> 0).
--     Idempotent: once a row is 0 it no longer matches score = -10000.
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name IN (
  'Movies Maximum 🇲🇽', 'Movies Maximum 🇲🇽+Default',
  'Movies Balanced 🇲🇽', 'Movies Balanced 🇲🇽+Default',
  'Optimized 🇲🇽', 'Optimized 🇲🇽+Default',
  'TV Maximum 🇲🇽', 'TV Maximum 🇲🇽+Default',
  'TV Balanced 🇲🇽', 'TV Balanced 🇲🇽+Default'
)
AND custom_format_name = 'Not Original Language'
AND score = -10000;

-- ============================================================================
-- PART 4: "<Tier> 🇲🇽" -- Spanish audio required
-- ============================================================================

-- 4a) Require Spanish, replacing whatever language requirement the tier had
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, 'Spanish (Latino)', 'must'
FROM quality_profiles qp
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON qp.name = tiers.name || ' 🇲🇽'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = qp.name AND language_name = 'Spanish (Latino)'
);

-- 4b) Reject releases with no Spanish audio track, for both arrs
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, 'Not Spanish', a.arr_type, -999999
FROM quality_profiles qp
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON qp.name = tiers.name || ' 🇲🇽'
CROSS JOIN (SELECT 'radarr' AS arr_type UNION ALL SELECT 'sonarr') a
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = qp.name AND custom_format_name = 'Not Spanish' AND arr_type = a.arr_type
);

-- ============================================================================
-- PART 5: "<Tier> 🇲🇽+Default" -- Spanish and original both preferred, neither
-- required. No "must" language row is added for this variant.
-- ============================================================================

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.custom_format_name, a.arr_type, cf.score
FROM quality_profiles qp
JOIN (
  SELECT 'Movies Maximum' AS name
  UNION ALL SELECT 'Movies Balanced'
  UNION ALL SELECT 'Optimized'
  UNION ALL SELECT 'TV Maximum'
  UNION ALL SELECT 'TV Balanced'
) AS tiers
  ON qp.name = tiers.name || ' 🇲🇽+Default'
CROSS JOIN (SELECT 'radarr' AS arr_type UNION ALL SELECT 'sonarr') a
CROSS JOIN (
  SELECT 'Spanish + Original Audio' AS custom_format_name, 5000 AS score
  UNION ALL SELECT 'Spanish Only Audio', -2500
  UNION ALL SELECT 'Original Only Audio', -2500
  UNION ALL SELECT 'Missing Spanish and Original', -999999
) AS cf
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = qp.name AND custom_format_name = cf.custom_format_name AND arr_type = a.arr_type
);
