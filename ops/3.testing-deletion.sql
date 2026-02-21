-- @operation: export
-- @entity: batch
-- @name: Testing deletion
-- @exportedAt: 2026-02-21T20:41:24.191Z
-- @opIds: 88, 89, 94, 95, 96

-- --- BEGIN op 88 ( delete custom_format "360p" )
delete from "custom_formats" where "name" = '360p';
-- --- END op 88

-- --- BEGIN op 89 ( delete custom_format "1080p" )
delete from "custom_formats" where "name" = '1080p';
-- --- END op 89

-- --- BEGIN op 94 ( delete custom_format "480p" )
delete from "custom_formats" where "name" = '480p';
-- --- END op 94

-- --- BEGIN op 95 ( delete custom_format "540p" )
delete from "custom_formats" where "name" = '540p';
-- --- END op 95

-- --- BEGIN op 96 ( delete custom_format "576p" )
delete from "custom_formats" where "name" = '576p';
-- --- END op 96
