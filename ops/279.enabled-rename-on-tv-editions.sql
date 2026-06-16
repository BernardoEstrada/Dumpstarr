-- @operation: export
-- @entity: batch
-- @name: Enabled Rename on TV Editions
-- @exportedAt: 2026-06-16T03:36:02.129Z
-- @opIds: 1810

-- --- BEGIN op 1810 ( update custom_format "TV Editions" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'TV Editions' and "include_in_rename" = 0;
-- --- END op 1810
