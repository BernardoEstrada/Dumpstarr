-- @operation: export
-- @entity: batch
-- @name: Added War Machine test
-- @exportedAt: 2026-03-21T00:16:00.148Z
-- @opIds: 1248, 1249

-- --- BEGIN op 1248 ( create test_entity "War Machine" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('movie', 1265609, 'War Machine', 2026, '/tlPgDzwIE7VYYIIAGCTUOnN4wI1.jpg');
-- --- END op 1248

-- --- BEGIN op 1249 ( create test_release "War Machine-2026-2160p NF WEB-DL Hybrid H265 DV HD" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('movie', 1265609, 'War Machine-2026-2160p NF WEB-DL Hybrid H265 DV HDR DDP Atmos 5 1 English-HONE-', NULL, '["English"]', '["NinjaCentral"]', '[]');
-- --- END op 1249
