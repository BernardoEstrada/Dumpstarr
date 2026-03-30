-- @operation: export
-- @entity: batch
-- @name: Renamed TRaSH Banned Groups to TRaSH LQ
-- @exportedAt: 2026-03-30T18:37:01.418Z
-- @opIds: 1747

-- --- BEGIN op 1747 ( update custom_format "TRaSH LQ" )
update "custom_formats" set "name" = 'TRaSH LQ' where "name" = 'TRaSH Banned Groups';
-- --- END op 1747
