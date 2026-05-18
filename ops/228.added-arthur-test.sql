-- @operation: export
-- @entity: batch
-- @name: Added Arthur test
-- @exportedAt: 2026-05-18T16:31:03.231Z
-- @opIds: 855, 856, 857

-- --- BEGIN op 855 ( create test_entity "Arthur" )
insert into "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") values ('series', 2153, 'Arthur', 1996, '/nYN8okmcsmhd4bGVcqifZ5OCumB.jpg');
-- --- END op 855

-- --- BEGIN op 856 ( create test_release "Arthur.S01E01.Arthurs.Eyes.and.Francines.Bad.Hair." )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 2153, 'Arthur.S01E01.Arthurs.Eyes.and.Francines.Bad.Hair.Day.480p.AMZN.WEBRip.DDP2.0.x264-DAWN-AsRequested', 214748365, '["English"]', '["NZBgeek"]', '[]');
-- --- END op 856

-- --- BEGIN op 857 ( create test_release "Arthur.S01E01-E02.Arthurs.Eyes..Francines.Bad.Hair" )
insert into "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") values ('series', 2153, 'Arthur.S01E01-E02.Arthurs.Eyes..Francines.Bad.Hair.Day.480p.AMZN.WEB-DL.DDP2.0.AVC-AndreMor', 214748365, '["English"]', '["DrunkenSlug"]', '[]');
-- --- END op 857
