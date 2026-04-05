-- @operation: export
-- @entity: batch
-- @name: Updated MA format to include in file name
-- @exportedAt: 2026-04-05T14:30:44.327Z
-- @opIds: 2617

-- --- BEGIN op 2617 ( update custom_format "MA" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'MA' and "include_in_rename" = 0;
-- --- END op 2617
