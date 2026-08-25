-- ============================================================================
-- Personal customization: Spanish variants of all upstream quality profiles
--
-- For every upstream quality_profile this migration creates a sibling
-- profile whose name is the original name suffixed with " spanish", with:
--
--   * required release language set to Spanish (type 'must')
--   * "Spanish DL" custom format score reset from -999999 to 0
--   * a "spanish" tag for easy filtering in Profilarr/Sonarr/Radarr
--   * an additional 'spanish' tag for filtering
--   * everything else (qualities, tiers, scores, upgrade_until, ...) copied
--     unchanged from the source profile
--
-- The migration is fully idempotent (WHERE NOT EXISTS guards), so it is safe
-- to replay against a database that already has some or all variants.
-- ============================================================================

-- 1) Clone the quality_profiles row itself
INSERT INTO quality_profiles (
  name, description, upgrades_allowed, minimum_custom_format_score,
  upgrade_until_score, upgrade_score_increment
)
SELECT
  src.name || ' spanish',
  src.description,
  src.upgrades_allowed,
  src.minimum_custom_format_score,
  src.upgrade_until_score,
  src.upgrade_score_increment
FROM quality_profiles src
WHERE src.name NOT LIKE '% spanish'
  AND NOT EXISTS (
    SELECT 1 FROM quality_profiles
    WHERE name = src.name || ' spanish'
  );

-- 2) Make sure a "spanish" tag exists
INSERT INTO tags (name)
SELECT 'spanish'
WHERE NOT EXISTS (SELECT 1 FROM tags WHERE name = 'spanish');

-- 3) Copy existing tags onto the Spanish variant
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT
  src.quality_profile_name || ' spanish',
  src.tag_name
FROM quality_profile_tags src
WHERE src.quality_profile_name NOT LIKE '% spanish'
  AND EXISTS (
    SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' spanish'
  )
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_tags
    WHERE quality_profile_name = src.quality_profile_name || ' spanish'
      AND tag_name = src.tag_name
  );

-- 4) Add the 'spanish' marker tag to every variant
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, 'spanish'
FROM quality_profiles qp
WHERE qp.name LIKE '% spanish'
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_tags
    WHERE quality_profile_name = qp.name AND tag_name = 'spanish'
  );

-- 5) Copy quality groups (the named sub-groups within a profile)
INSERT INTO quality_groups (quality_profile_name, name)
SELECT
  src.quality_profile_name || ' spanish',
  src.name
FROM quality_groups src
WHERE src.quality_profile_name NOT LIKE '% spanish'
  AND EXISTS (
    SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' spanish'
  )
  AND NOT EXISTS (
    SELECT 1 FROM quality_groups
    WHERE quality_profile_name = src.quality_profile_name || ' spanish'
      AND name = src.name
  );

-- 6) Copy quality group memberships
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT
  src.quality_profile_name || ' spanish',
  src.quality_group_name,
  src.quality_name,
  src.position
FROM quality_group_members src
WHERE src.quality_profile_name NOT LIKE '% spanish'
  AND EXISTS (
    SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' spanish'
  )
  AND NOT EXISTS (
    SELECT 1 FROM quality_group_members
    WHERE quality_profile_name = src.quality_profile_name || ' spanish'
      AND quality_group_name = src.quality_group_name
      AND quality_name = src.quality_name
  );

-- 7) Copy the full quality ladder for the profile
INSERT INTO quality_profile_qualities (
  quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until
)
SELECT
  src.quality_profile_name || ' spanish',
  src.quality_name,
  src.quality_group_name,
  src.position,
  src.enabled,
  src.upgrade_until
FROM quality_profile_qualities src
WHERE src.quality_profile_name NOT LIKE '% spanish'
  AND EXISTS (
    SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' spanish'
  )
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_qualities
    WHERE quality_profile_name = src.quality_profile_name || ' spanish'
      AND position = src.position
  );

-- 8) Set required language to Spanish for every variant
--    (matches upstream's "type='must', language_name='Original'" pattern)
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, 'Spanish', 'must'
FROM quality_profiles qp
WHERE qp.name LIKE '% spanish'
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_languages
    WHERE quality_profile_name = qp.name
      AND language_name = 'Spanish'
  );

-- 9) Copy custom-format scores: reward "Spanish DL" (+5000), neutralise
--    "Not Original or English" and the dual-audio / foreign-language group
--    bans (0). Those upstream bans reject dual/foreign audio, which is
--    exactly what we WANT in a Spanish profile.
INSERT INTO quality_profile_custom_formats (
  quality_profile_name, custom_format_name, arr_type, score
)
SELECT
  src.quality_profile_name || ' spanish',
  src.custom_format_name,
  src.arr_type,
  CASE
    WHEN src.custom_format_name = 'Spanish DL' THEN 5000
    WHEN src.custom_format_name IN (
      'Not Original or English',
      'Banned Language Groups',
      'Banned Dual Audio Groups'
    ) THEN 0
    ELSE src.score
  END
FROM quality_profile_custom_formats src
WHERE src.quality_profile_name NOT LIKE '% spanish'
  AND EXISTS (
    SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' spanish'
  )
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_custom_formats
    WHERE quality_profile_name = src.quality_profile_name || ' spanish'
      AND custom_format_name = src.custom_format_name
      AND arr_type = src.arr_type
  );

-- 9a) Retrofit existing variants: step 9's INSERT is a no-op once the row
--     already exists, so bump "Spanish DL" from the old neutral 0 up to +5000
--     here. Idempotent: once a row is 5000 it no longer matches score = 0.
UPDATE quality_profile_custom_formats
SET score = 5000
WHERE quality_profile_name LIKE '% spanish'
  AND custom_format_name = 'Spanish DL'
  AND score = 0;

-- 9b) Retrofit existing variants: un-ban the dual-audio / foreign-language
--     release-group CFs on the Spanish side (-999999 -> 0). Covers both
--     radarr and sonarr rows. Idempotent: once 0 they no longer match
--     score = -999999. "Banned Groups (Release Title)" is deliberately left
--     enforcing -- it bans for quality/scene reasons, not foreign audio.
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name LIKE '% spanish'
  AND custom_format_name IN ('Banned Language Groups', 'Banned Dual Audio Groups')
  AND score = -999999;

-- ============================================================================
-- 10) Force Spanish for real.
--
-- The profile "must Spanish" language field is only enforced by Radarr, not
-- Sonarr, so on its own it lets non-Spanish releases through in Sonarr. Upstream
-- forces Original/English via the "Not Original or English" custom format at
-- -999999 (anything matching falls below minimum_custom_format_score and is
-- rejected in BOTH arrs) -- but our fork neutralises that CF to 0, leaving no
-- language gate at all.
--
-- So we create the mirror image, "Not Spanish": a single negated Spanish language
-- condition that matches any release WITHOUT a Spanish audio track, and score it
-- -999999 in every Spanish variant. Spanish and Spanish-DL releases contain Spanish
-- and are unaffected; non-Spanish releases are rejected in Radarr and Sonarr.
-- ============================================================================

-- 10a) Create the "Not Spanish" custom format (idempotent)
INSERT INTO custom_formats (name, description)
SELECT 'Not Spanish',
       'Matches releases that do not include a Spanish audio track. Other languages are allowed.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Not Spanish');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Not Spanish', 'Spanish', 'language', 'all', 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = 'Not Spanish' AND name = 'Spanish'
);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Not Spanish', 'Spanish', 'Spanish', 0
WHERE NOT EXISTS (
  SELECT 1 FROM condition_languages
  WHERE custom_format_name = 'Not Spanish' AND condition_name = 'Spanish'
);

INSERT INTO tags (name)
SELECT 'Language' WHERE NOT EXISTS (SELECT 1 FROM tags WHERE name = 'Language');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Not Spanish', 'Language'
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_tags
  WHERE custom_format_name = 'Not Spanish' AND tag_name = 'Language'
);

-- 10b) Reject non-Spanish releases in every Spanish variant, for both arrs
--      (-999999). Idempotent: the guard skips rows that already exist.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, 'Not Spanish', a.arr_type, -999999
FROM quality_profiles qp
CROSS JOIN (SELECT 'radarr' AS arr_type UNION ALL SELECT 'sonarr') a
WHERE qp.name LIKE '% spanish'
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_custom_formats
    WHERE quality_profile_name = qp.name
      AND custom_format_name = 'Not Spanish'
      AND arr_type = a.arr_type
  );
