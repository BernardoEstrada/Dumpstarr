-- @operation: export
-- @entity: batch
-- @name: Added a test
-- @exportedAt: 2026-03-04T14:24:06.442Z
-- @opIds: 2245, 2246

-- --- BEGIN op 2245 ( create test_entity "Ace Ventura: Pet Detective" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('movie', 3049, 'Ace Ventura: Pet Detective', 1994, '/pqiRuETmuSybfnVZ7qyeoXhQyN1.jpg');
-- --- END op 2245

-- --- BEGIN op 2246 ( create test_release "6 releases" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 3049, 'Ace Ventura Pet Detective (1994) (2160p UHD BluRay x265 DV HDR DDP 5.1 English - DiscoD HONE)', 18759654779, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 3049, 'Ace.Ventura.Pet.Detective.1994.PROPER.UHD.BluRay.2160p.DD.5.1.DV.HDR.x265-BHDStudio', 12159507207, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 3049, 'Ace Ventura Pet Detective 1994 UHD BluRay 2160p DD 2 0 DV HDR x265-BHDStudio', 11478971999, '["English"]', '["NinjaCentral"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 3049, 'Ace Ventura Pet Detective-1994-2160p UHD BluRay x265 DV HDR DDP 5.1 English-DiscoD HONE-', 20147453233, '["English"]', '["NinjaCentral"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 3049, 'Ace.Ventura.Pet.Detective.1994.1080p.AMZN.WEB-DL.DDP5.1.H.264-Kitsune', 7564373595, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');

insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 3049, 'Ace.Ventura.Pet.Detective.1994.1080p.AMZN.WEB-DL.DDP5.1.H.264-Kitsune', 7047187724, '["English"]', '["NinjaCentral","NZBgeek"]', '[]');
-- --- END op 2246
