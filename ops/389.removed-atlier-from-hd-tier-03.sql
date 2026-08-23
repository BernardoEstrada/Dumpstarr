-- @operation: export
-- @entity: batch
-- @name: Removed ATLiER from HD Tier 03
-- @exportedAt: 2026-08-23T18:52:37.014Z
-- @opIds: 5689

-- --- BEGIN op 5689 ( update regular_expression "TRaSH HD Bluray Tier 03" )
update "regular_expressions" set "pattern" = '^(BHDStudio|hallowed|HiFi|HONE|LoRD|playHD|SPHD|W4NK3R)$' where "name" = 'TRaSH HD Bluray Tier 03' and "pattern" = '^(ATELiER|BHDStudio|hallowed|HiFi|HONE|LoRD|playHD|SPHD|W4NK3R)$';
-- --- END op 5689
