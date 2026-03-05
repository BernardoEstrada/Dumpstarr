-- @operation: export
-- @entity: batch
-- @name: Added more tests for HONE fix
-- @exportedAt: 2026-03-05T15:23:10.446Z
-- @opIds: 2360, 2361, 2362, 2363, 2364, 2365, 2371, 2372, 2374

-- --- BEGIN op 2360 ( create test_entity "How to Train Your Dragon" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('movie', 10191, 'How to Train Your Dragon', 2010, '/ygGmAO60t8GyqUo9xYeYxSZAR3b.jpg');
-- --- END op 2360

-- --- BEGIN op 2361 ( create test_release "3 releases" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 10191, 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English.DarQ.HONE', 15782520953, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 10191, 'How to Train Your Dragon (2010) (2160p UHD BluRay x265 DV HDR10+ DDP 7.1 English - DarQ HONE)', 14633504632, '["English"]', '["NinjaCentral"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 10191, 'How.to.Train.Your.Dragon-2010-2160p.UHD.BluRay.x265.DV.HDR10.DDP.7.1.English-DarQ.HONE', 14628809000, '["English"]', '["NZBgeek"]', '[]');
-- --- END op 2361

-- --- BEGIN op 2362 ( create test_release "How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x26" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 10191, 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English.DarQ.HONE-REPACK', NULL, '[]', '[]', '[]');
-- --- END op 2362

-- --- BEGIN op 2363 ( update test_release "How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x26" )
update "test_releases" set "title" = 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English.DarQ-HONE-REPACK' where "entity_type" = 'movie' and "entity_tmdb_id" = 10191 and "title" = 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English.DarQ.HONE-REPACK';
-- --- END op 2363

-- --- BEGIN op 2364 ( update test_release "Ace Ventura Pet Detective (1994) (2160p UHD BluRay" )
update "test_releases" set "title" = 'Ace Ventura Pet Detective (1994) (2160p UHD BluRay x265 DV HDR DDP 5.1 English - DiscoD HONE', "size_bytes" = 18758269665 where "entity_type" = 'movie' and "entity_tmdb_id" = 3049 and "title" = 'Ace Ventura Pet Detective (1994) (2160p UHD BluRay x265 DV HDR DDP 5.1 English - DiscoD HONE)' and "size_bytes" = 18759654779;
-- --- END op 2364

-- --- BEGIN op 2365 ( update test_release "Ace Ventura Pet Detective (1994) (2160p UHD BluRay" )
update "test_releases" set "title" = 'Ace Ventura Pet Detective (1994) (2160p UHD BluRay x265 DV HDR DDP 5.1 English - DiscoD HONE)' where "entity_type" = 'movie' and "entity_tmdb_id" = 3049 and "title" = 'Ace Ventura Pet Detective (1994) (2160p UHD BluRay x265 DV HDR DDP 5.1 English - DiscoD HONE';
-- --- END op 2365

-- --- BEGIN op 2371 ( create test_entity "Black Widow" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('movie', 497698, 'Black Widow', 2021, '/7JPpIjhD2V0sKyFvhB9khUMa30d.jpg');
-- --- END op 2371

-- --- BEGIN op 2372 ( create test_release "Black Widow-2021-IMAX-2160p DSNP WEB-DL Hybrid H26" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 497698, 'Black Widow-2021-IMAX-2160p DSNP WEB-DL Hybrid H265 DV HDR DDP Atmos 5.1 English-HONE-REPACK-', 19649475379, '["English"]', '["NinjaCentral"]', '[]');
-- --- END op 2372

-- --- BEGIN op 2374 ( update test_release "How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x26" )
update "test_releases" set "title" = 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English-HONE-REPACK' where "entity_type" = 'movie' and "entity_tmdb_id" = 10191 and "title" = 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English.DarQ-HONE-REPACK';
-- --- END op 2374
