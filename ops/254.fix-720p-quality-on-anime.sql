-- @operation: export
-- @entity: batch
-- @name: Fix 720p Quality on Anime
-- @exportedAt: 2026-05-29T18:34:23.008Z
-- @opIds: 1492

-- --- BEGIN op 1492 ( update quality_profile "Anime 1080p" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'Anime 1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1492
