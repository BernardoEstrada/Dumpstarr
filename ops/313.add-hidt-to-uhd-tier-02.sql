-- @operation: export
-- @entity: batch
-- @name: Add HiDt to UHD Tier 02
-- @exportedAt: 2026-07-04T05:06:03.996Z
-- @opIds: 2656

-- --- BEGIN op 2656 ( update regular_expression "TRaSH UHD Bluray Tier 02" )
update "regular_expressions" set "pattern" = '^(HiDt|HQMUX)$' where "name" = 'TRaSH UHD Bluray Tier 02' and "pattern" = '^(HQMUX)$';
-- --- END op 2656
