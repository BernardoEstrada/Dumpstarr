-- @operation: export
-- @entity: batch
-- @name: Add Fandango to TV
-- @exportedAt: 2026-08-23T18:00:46.962Z
-- @opIds: 5674, 5675, 5676, 5677, 5678, 5679, 5680, 5681, 5682, 5683

-- --- BEGIN op 5674 ( create regular_expression "Fandango" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Fandango', '\b(FAND)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)', 'Fandango is an American video-on-demand streaming service, originally founded as Vudu in 2004. It was acquired by Walmart in 2010, then sold to Fandango Media in 2020, and has since been rebranded from Vudu to Fandango at Home, and finally to simply Fandango in 2026. It offers over 150,000 movies and TV shows available to rent or buy, including new releases in up to 4K UHD with Dolby Vision HDR, as well as a selection of free ad-supported titles with no subscription required.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fandango', 'Streaming Service');
-- --- END op 5674

-- --- BEGIN op 5675 ( create custom_format "FAND" )
insert into "custom_formats" ("name", "description") values ('FAND', '');
-- --- END op 5675

-- --- BEGIN op 5676 ( update custom_format "FAND" )
update "custom_formats" set "description" = 'Fandango is an American video-on-demand streaming service, originally founded as Vudu in 2004. It was acquired by Walmart in 2010, then sold to Fandango Media in 2020, and has since been rebranded from Vudu to Fandango at Home, and finally to simply Fandango in 2026. It offers over 150,000 movies and TV shows available to rent or buy, including new releases in up to 4K UHD with Dolby Vision HDR, as well as a selection of free ad-supported titles with no subscription required.' where "name" = 'FAND' and "description" = '';
-- --- END op 5676

-- --- BEGIN op 5677 ( update custom_format "FAND" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('FAND', 'Streaming Service');
-- --- END op 5677

-- --- BEGIN op 5678 ( update custom_format "FAND" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FAND', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FAND', 'WEBRip', 'webrip');
-- --- END op 5678

-- --- BEGIN op 5679 ( update custom_format "FAND" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FAND', 'Fandango', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FAND', 'Fandango', 'Fandango');
-- --- END op 5679

-- --- BEGIN op 5680 ( update custom_format "FAND" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FAND', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FAND', 'WEB-DL', 'web_dl');
-- --- END op 5680

-- --- BEGIN op 5681 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'FAND', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'FAND'
    AND arr_type = 'sonarr'
);
-- --- END op 5681

-- --- BEGIN op 5682 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'FAND', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'FAND'
    AND arr_type = 'sonarr'
);
-- --- END op 5682

-- --- BEGIN op 5683 ( update custom_format "FAND" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'FAND' and "include_in_rename" = 0;
-- --- END op 5683
