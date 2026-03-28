-- @operation: export
-- @entity: batch
-- @name: Renamed TVED
-- @exportedAt: 2026-03-28T22:21:49.299Z
-- @opIds: 1482, 1483

-- --- BEGIN op 1482 ( update custom_format "TV Editions" )
update "custom_formats" set "include_in_rename" = 0 where "name" = 'TVED' and "include_in_rename" = 1;
-- --- END op 1482

-- --- BEGIN op 1483 ( update custom_format "TV Editions" )
update "custom_formats" set "name" = 'TV Editions' where "name" = 'TVED';
-- --- END op 1483
