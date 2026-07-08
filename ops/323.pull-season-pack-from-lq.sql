-- @operation: export
-- @entity: batch
-- @name: Pull Season Pack from LQ
-- @exportedAt: 2026-07-08T13:37:21.936Z
-- @opIds: 2767, 2768

-- --- BEGIN op 2767 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'Season Pack'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 2767

-- --- BEGIN op 2768 ( delete custom_format "Season Pack" )
delete from "custom_formats" where "name" = 'Season Pack';
-- --- END op 2768
