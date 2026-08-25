-- ============================================================================
-- Personal customization: language-aware scoring for every existing profile
--
-- For every existing upstream quality_profile, there end up being exactly two
-- profiles:
--
--   <Profile>       The existing profile itself, modified in place with a
--                    soft multi-language preference (see below). Name is
--                    unchanged, so this rides along with whatever upstream
--                    ships for it.
--   <Profile> 🇲🇽     A new clone with Spanish (Latino) required.
--
-- --- <Profile> (Default) ---------------------------------------------------
-- Soft preference only, no gates. Rewards stack, so multi-language releases
-- score highest:
--   * Has original-language audio  : +1000
--   * Has English audio            : +500
--   * Has Spanish (Latino) audio   : +500   (same weight as English)
--
-- --- <Profile> 🇲🇽 (Spanish) -------------------------------------------------
--   * Spanish (Latino) is REQUIRED: "must" language + a "Not Spanish" custom
--     format at -999999 rejects any release with no Spanish audio track.
--   * Missing original-language audio: -5000 (heavily discouraged, not an
--     outright reject -- a release can still be grabbed if nothing better
--     exists).
--   * Has English AND does not have original-language audio: +1000 (a
--     consolation bonus for an English dub when the original-language track
--     isn't available; doesn't fire when English already IS the original,
--     since then the "has original" condition is satisfied by that same
--     track).
--   None of the Default profile's generic language bonuses/gates ("Has
--   Original", "Has English", "Has Spanish (Latino)", and upstream's own
--   "Not Original Language") are copied onto the 🇲🇽 clone -- it uses its own
--   self-contained rule set above instead, to avoid double-scoring or
--   fighting with -10000/-999999 gates that don't apply to it.
--
-- Upstream's own profiles are otherwise left untouched (still receive
-- whatever upstream ships); this file only ever adds new custom-format score
-- rows and new "🇲🇽" clones. Nothing is renamed or removed.
--
-- The migration is fully idempotent (WHERE NOT EXISTS guards), so it is safe
-- to replay against a database that already has some or all of this applied.
-- ============================================================================

-- ============================================================================
-- PART 1: Custom formats used below (global, idempotent)
-- ============================================================================

INSERT INTO tags (name) SELECT 'Language' WHERE NOT EXISTS (SELECT 1 FROM tags WHERE name = 'Language');
INSERT INTO tags (name) SELECT 'spanish' WHERE NOT EXISTS (SELECT 1 FROM tags WHERE name = 'spanish');

-- 1a) "Not Spanish": matches releases with no Spanish audio track at all.
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

-- 1b) "Has Original": matches releases that include original-language audio.
INSERT INTO custom_formats (name, description)
SELECT 'Has Original', 'Matches releases that include the original-language audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Has Original');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Has Original', 'Original', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Has Original' AND name = 'Original');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Has Original', 'Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Has Original' AND condition_name = 'Original');
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Has Original', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Has Original' AND tag_name = 'Language');

-- 1c) "Has English": matches releases that include English audio.
INSERT INTO custom_formats (name, description)
SELECT 'Has English', 'Matches releases that include an English audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Has English');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Has English', 'English', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Has English' AND name = 'English');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Has English', 'English', 'English', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Has English' AND condition_name = 'English');
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Has English', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Has English' AND tag_name = 'Language');

-- 1d) "Has Spanish (Latino)": matches releases that include Spanish audio.
INSERT INTO custom_formats (name, description)
SELECT 'Has Spanish (Latino)', 'Matches releases that include a Spanish (Latino) audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Has Spanish (Latino)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Has Spanish (Latino)', 'Spanish (Latino)', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Has Spanish (Latino)' AND name = 'Spanish (Latino)');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Has Spanish (Latino)', 'Spanish (Latino)', 'Spanish (Latino)', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Has Spanish (Latino)' AND condition_name = 'Spanish (Latino)');
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Has Spanish (Latino)', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Has Spanish (Latino)' AND tag_name = 'Language');

-- 1e) "Missing Original": matches releases with no original-language audio.
INSERT INTO custom_formats (name, description)
SELECT 'Missing Original', 'Matches releases that do not include the original-language audio track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Missing Original');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Missing Original', 'Original', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Missing Original' AND name = 'Original');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'Missing Original', 'Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'Missing Original' AND condition_name = 'Original');
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Missing Original', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'Missing Original' AND tag_name = 'Language');

-- 1f) "English (Non-Original)": has English, but English isn't the
--     original-language track (i.e. original-language audio is absent).
INSERT INTO custom_formats (name, description)
SELECT 'English (Non-Original)', 'Matches releases that include English audio where English is not the original-language track.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'English (Non-Original)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'English (Non-Original)', 'Has English', 'language', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'English (Non-Original)' AND name = 'Has English');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'English (Non-Original)', 'Missing Original', 'language', 'all', 1, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'English (Non-Original)' AND name = 'Missing Original');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'English (Non-Original)', 'Has English', 'English', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'English (Non-Original)' AND condition_name = 'Has English');
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'English (Non-Original)', 'Missing Original', 'Original', 0
WHERE NOT EXISTS (SELECT 1 FROM condition_languages WHERE custom_format_name = 'English (Non-Original)' AND condition_name = 'Missing Original');
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'English (Non-Original)', 'Language'
WHERE NOT EXISTS (SELECT 1 FROM custom_format_tags WHERE custom_format_name = 'English (Non-Original)' AND tag_name = 'Language');

-- ============================================================================
-- PART 2: Default profiles -- soft multi-language preference, in place
-- ============================================================================

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.custom_format_name, a.arr_type, cf.score
FROM quality_profiles qp
CROSS JOIN (SELECT 'radarr' AS arr_type UNION ALL SELECT 'sonarr') a
CROSS JOIN (
  SELECT 'Has Original' AS custom_format_name, 1000 AS score
  UNION ALL SELECT 'Has English', 500
  UNION ALL SELECT 'Has Spanish (Latino)', 500
) cf
WHERE qp.name NOT LIKE '% 🇲🇽'
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_custom_formats
    WHERE quality_profile_name = qp.name AND custom_format_name = cf.custom_format_name AND arr_type = a.arr_type
  );

-- ============================================================================
-- PART 3: "<Profile> 🇲🇽" clone scaffold
-- ============================================================================

-- 3a) Clone the quality_profiles row
INSERT INTO quality_profiles (
  name, description, upgrades_allowed, minimum_custom_format_score,
  upgrade_until_score, upgrade_score_increment
)
SELECT src.name || ' 🇲🇽', src.description, src.upgrades_allowed, src.minimum_custom_format_score, src.upgrade_until_score, src.upgrade_score_increment
FROM quality_profiles src
WHERE src.name NOT LIKE '% 🇲🇽'
  AND NOT EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.name || ' 🇲🇽');

-- 3b) Copy tags, plus the 'spanish' marker tag
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT src.quality_profile_name || ' 🇲🇽', src.tag_name
FROM quality_profile_tags src
WHERE src.quality_profile_name NOT LIKE '% 🇲🇽'
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_tags
    WHERE quality_profile_name = src.quality_profile_name || ' 🇲🇽' AND tag_name = src.tag_name
  );

INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, 'spanish'
FROM quality_profiles qp
WHERE qp.name LIKE '% 🇲🇽'
  AND NOT EXISTS (SELECT 1 FROM quality_profile_tags WHERE quality_profile_name = qp.name AND tag_name = 'spanish');

-- 3c) Copy quality groups
INSERT INTO quality_groups (quality_profile_name, name)
SELECT src.quality_profile_name || ' 🇲🇽', src.name
FROM quality_groups src
WHERE src.quality_profile_name NOT LIKE '% 🇲🇽'
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_groups
    WHERE quality_profile_name = src.quality_profile_name || ' 🇲🇽' AND name = src.name
  );

-- 3d) Copy quality group memberships
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT src.quality_profile_name || ' 🇲🇽', src.quality_group_name, src.quality_name, src.position
FROM quality_group_members src
WHERE src.quality_profile_name NOT LIKE '% 🇲🇽'
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_group_members
    WHERE quality_profile_name = src.quality_profile_name || ' 🇲🇽'
      AND quality_group_name = src.quality_group_name
      AND quality_name = src.quality_name
  );

-- 3e) Copy the full quality ladder
INSERT INTO quality_profile_qualities (
  quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until
)
SELECT src.quality_profile_name || ' 🇲🇽', src.quality_name, src.quality_group_name, src.position, src.enabled, src.upgrade_until
FROM quality_profile_qualities src
WHERE src.quality_profile_name NOT LIKE '% 🇲🇽'
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_qualities
    WHERE quality_profile_name = src.quality_profile_name || ' 🇲🇽' AND position = src.position
  );

-- 3f) Copy custom-format scores, excluding the Default-only bonuses and
--     upstream's "Not Original Language" gate -- the 🇲🇽 profile uses its own
--     self-contained language rules instead (see Part 4).
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT src.quality_profile_name || ' 🇲🇽', src.custom_format_name, src.arr_type, src.score
FROM quality_profile_custom_formats src
WHERE src.quality_profile_name NOT LIKE '% 🇲🇽'
  AND src.custom_format_name NOT IN ('Not Original Language', 'Has Original', 'Has English', 'Has Spanish (Latino)')
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.quality_profile_name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_custom_formats
    WHERE quality_profile_name = src.quality_profile_name || ' 🇲🇽'
      AND custom_format_name = src.custom_format_name
      AND arr_type = src.arr_type
  );

-- ============================================================================
-- PART 4: "<Profile> 🇲🇽" language rules
-- ============================================================================

-- 4a) Require Spanish
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT src.name || ' 🇲🇽', 'Spanish (Latino)', 'must'
FROM quality_profiles src
WHERE src.name NOT LIKE '% 🇲🇽'
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_languages
    WHERE quality_profile_name = src.name || ' 🇲🇽' AND language_name = 'Spanish (Latino)'
  );

-- 4b) Reject missing Spanish (-999999), penalize missing original (-5000),
--     reward an English dub when original-language audio isn't available
--     (+1000). All three for both arrs.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT src.name || ' 🇲🇽', cf.custom_format_name, a.arr_type, cf.score
FROM quality_profiles src
CROSS JOIN (SELECT 'radarr' AS arr_type UNION ALL SELECT 'sonarr') a
CROSS JOIN (
  SELECT 'Not Spanish' AS custom_format_name, -999999 AS score
  UNION ALL SELECT 'Missing Original', -5000
  UNION ALL SELECT 'English (Non-Original)', 1000
) cf
WHERE src.name NOT LIKE '% 🇲🇽'
  AND EXISTS (SELECT 1 FROM quality_profiles WHERE name = src.name || ' 🇲🇽')
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_custom_formats
    WHERE quality_profile_name = src.name || ' 🇲🇽' AND custom_format_name = cf.custom_format_name AND arr_type = a.arr_type
  );
