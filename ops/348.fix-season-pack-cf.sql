-- @operation: export
-- @entity: batch
-- @name: Fix Season Pack CF
-- @exportedAt: 2026-07-15T19:01:53.862Z
-- @opIds: 3827

-- --- BEGIN op 3827 ( update custom_format "Season Pack" )
DELETE FROM condition_release_types WHERE custom_format_name = 'Season Pack' AND condition_name = 'Season Pack' AND release_type = 'single_episode';

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Season Pack', 'Season Pack', 'season_pack');
-- --- END op 3827
