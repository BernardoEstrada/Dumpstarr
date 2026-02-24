-- @operation: export
-- @entity: batch
-- @name: Updated iTunes Rename regex per TRaSH
-- @exportedAt: 2026-02-24T19:20:35.704Z
-- @opIds: 225

-- --- BEGIN op 225 ( update regular_expression "iTunes Rename" )
update "regular_expressions" set "pattern" = '\[(iT)(?![+])\b|\b(?<![+])(iT)\]' where "name" = 'iTunes Rename' and "pattern" = '\[(iT)\b|\b(iT)\]';
-- --- END op 225
