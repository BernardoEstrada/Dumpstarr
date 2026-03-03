-- @operation: export
-- @entity: batch
-- @name: Updated Bad Naming Scheme format descriptions and tests
-- @exportedAt: 2026-03-03T23:43:18.700Z
-- @opIds: 1735, 1736, 1737, 1924, 1925

-- --- BEGIN op 1735 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-HONE-REPACK-', 'movie', 1, NULL);
-- --- END op 1735

-- --- BEGIN op 1736 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English HONE-REPACK', 'movie', 1, NULL);
-- --- END op 1736

-- --- BEGIN op 1737 ( update custom_format "Bad Naming Scheme" )
update "custom_formats" set "description" = 'Matches releases from HONE that are **not** explicitly from the HONE group.' where "name" = 'Bad Naming Scheme' and "description" = '';
-- --- END op 1737

-- --- BEGIN op 1924 ( delete custom_format "Bad Naming Scheme" )
DELETE FROM custom_format_tests
WHERE custom_format_name = 'Bad Naming Scheme'
  AND title = 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English HONE-REPACK'
  AND type = 'movie'
  AND should_match = 1
  AND description IS NULL;
-- --- END op 1924

-- --- BEGIN op 1925 ( create custom_format "Bad Naming Scheme" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Bad Naming Scheme', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-DarQ HONE', 'movie', 1, NULL);
-- --- END op 1925
