-- @operation: export
-- @entity: batch
-- @name: Updated a HTTYD Release
-- @exportedAt: 2026-03-05T15:58:45.873Z
-- @opIds: 2472, 2473

-- --- BEGIN op 2472 ( update test_release "How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x26" )
update "test_releases" set "size_bytes" = 15784004813 where "entity_type" = 'movie' and "entity_tmdb_id" = 10191 and "title" = 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English-HONE-REPACK' and "size_bytes" is null;
-- --- END op 2472

-- --- BEGIN op 2473 ( update test_release "How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x26" )
update "test_releases" set "languages" = '["English"]', "indexers" = '["NinjaCentral","DrunkenSlug"]' where "entity_type" = 'movie' and "entity_tmdb_id" = 10191 and "title" = 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English-HONE-REPACK' and "languages" = '[]' and "indexers" = '[]';
-- --- END op 2473
