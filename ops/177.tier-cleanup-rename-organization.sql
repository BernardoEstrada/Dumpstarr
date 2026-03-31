-- @operation: export
-- @entity: batch
-- @name: Tier Cleanup/Rename/Organization
-- @exportedAt: 2026-03-31T22:44:56.637Z
-- @opIds: 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070

-- --- BEGIN op 2007 ( update custom_format "Dictionarry WEB Tier 01" )
update "custom_formats" set "name" = 'Dictionarry WEB Tier 01' where "name" = 'WEB Tier 01';
-- --- END op 2007

-- --- BEGIN op 2008 ( update custom_format "Dictionarry WEB Tier 02" )
update "custom_formats" set "name" = 'Dictionarry WEB Tier 02' where "name" = 'WEB Tier 02';
-- --- END op 2008

-- --- BEGIN op 2009 ( update custom_format "Dictionarry WEB Tier 03" )
update "custom_formats" set "name" = 'Dictionarry WEB Tier 03' where "name" = 'WEB Tier 03';
-- --- END op 2009

-- --- BEGIN op 2010 ( update custom_format "Dictionarry WEB Tier 04" )
update "custom_formats" set "name" = 'Dictionarry WEB Tier 04' where "name" = 'WEB Tier 04';
-- --- END op 2010

-- --- BEGIN op 2011 ( update custom_format "Dictionarry WEB Tier 05" )
update "custom_formats" set "name" = 'Dictionarry WEB Tier 05' where "name" = 'WEB Tier 05';
-- --- END op 2011

-- --- BEGIN op 2012 ( delete custom_format "480p Bluray Tier 01" )
delete from "custom_formats" where "name" = '480p Bluray Tier 01';
-- --- END op 2012

-- --- BEGIN op 2013 ( delete custom_format "480p Bluray Tier 02" )
delete from "custom_formats" where "name" = '480p Bluray Tier 02';
-- --- END op 2013

-- --- BEGIN op 2014 ( delete custom_format "480p Bluray Tier 03" )
delete from "custom_formats" where "name" = '480p Bluray Tier 03';
-- --- END op 2014

-- --- BEGIN op 2015 ( delete custom_format "480p Bluray Tier 04" )
delete from "custom_formats" where "name" = '480p Bluray Tier 04';
-- --- END op 2015

-- --- BEGIN op 2016 ( update custom_format "Dictionarry 1080p Bluray Tier 01" )
update "custom_formats" set "name" = 'Dictionarry 1080p Bluray Tier 01' where "name" = '1080p Bluray Tier 01';
-- --- END op 2016

-- --- BEGIN op 2017 ( update custom_format "Dictionarry 1080p Bluray Tier 02" )
update "custom_formats" set "name" = 'Dictionarry 1080p Bluray Tier 02' where "name" = '1080p Bluray Tier 02';
-- --- END op 2017

-- --- BEGIN op 2018 ( update custom_format "Dictionarry 1080p Bluray Tier 03" )
update "custom_formats" set "name" = 'Dictionarry 1080p Bluray Tier 03' where "name" = '1080p Bluray Tier 03';
-- --- END op 2018

-- --- BEGIN op 2019 ( update custom_format "Dictionarry 1080p Bluray Tier 04" )
update "custom_formats" set "name" = 'Dictionarry 1080p Bluray Tier 04' where "name" = '1080p Bluray Tier 04';
-- --- END op 2019

-- --- BEGIN op 2020 ( update custom_format "Dictionarry 1080p Bluray Tier 05" )
update "custom_formats" set "name" = 'Dictionarry 1080p Bluray Tier 05' where "name" = '1080p Bluray Tier 05';
-- --- END op 2020

-- --- BEGIN op 2021 ( update custom_format "Dictionarry 1080p Bluray Tier 06" )
update "custom_formats" set "name" = 'Dictionarry 1080p Bluray Tier 06' where "name" = '1080p Bluray Tier 06';
-- --- END op 2021

-- --- BEGIN op 2022 ( update custom_format "Dictionarry HD Bluray Tier 01" )
update "custom_formats" set "name" = 'Dictionarry HD Bluray Tier 01' where "name" = 'Dictionarry 1080p Bluray Tier 01';
-- --- END op 2022

-- --- BEGIN op 2023 ( update custom_format "Dictionarry HD Bluray Tier 02" )
update "custom_formats" set "name" = 'Dictionarry HD Bluray Tier 02' where "name" = 'Dictionarry 1080p Bluray Tier 02';
-- --- END op 2023

-- --- BEGIN op 2024 ( update custom_format "Dictionarry HD Bluray Tier 03" )
update "custom_formats" set "name" = 'Dictionarry HD Bluray Tier 03' where "name" = 'Dictionarry 1080p Bluray Tier 03';
-- --- END op 2024

-- --- BEGIN op 2025 ( update custom_format "Dictionarry HD Bluray Tier 04" )
update "custom_formats" set "name" = 'Dictionarry HD Bluray Tier 04' where "name" = 'Dictionarry 1080p Bluray Tier 04';
-- --- END op 2025

-- --- BEGIN op 2026 ( update custom_format "Dictionarry HD Bluray Tier 05" )
update "custom_formats" set "name" = 'Dictionarry HD Bluray Tier 05' where "name" = 'Dictionarry 1080p Bluray Tier 05';
-- --- END op 2026

-- --- BEGIN op 2027 ( update custom_format "Dictionarry HD Bluray Tier 06" )
update "custom_formats" set "name" = 'Dictionarry HD Bluray Tier 06' where "name" = 'Dictionarry 1080p Bluray Tier 06';
-- --- END op 2027

-- --- BEGIN op 2028 ( update custom_format "Dictionarry UHD Tier 01" )
update "custom_formats" set "name" = 'Dictionarry UHD Tier 01' where "name" = '2160p Bluray Tier 01';
-- --- END op 2028

-- --- BEGIN op 2029 ( update custom_format "Dictionarry UHD Tier 02" )
update "custom_formats" set "name" = 'Dictionarry UHD Tier 02' where "name" = '2160p Bluray Tier 02';
-- --- END op 2029

-- --- BEGIN op 2030 ( update custom_format "Dictionarry UHD Tier 03" )
update "custom_formats" set "name" = 'Dictionarry UHD Tier 03' where "name" = '2160p Bluray Tier 03';
-- --- END op 2030

-- --- BEGIN op 2031 ( update custom_format "Dictionarry UHD Tier 04" )
update "custom_formats" set "name" = 'Dictionarry UHD Tier 04' where "name" = '2160p Bluray Tier 04';
-- --- END op 2031

-- --- BEGIN op 2032 ( update custom_format "Dictionarry UHD Tier 05" )
update "custom_formats" set "name" = 'Dictionarry UHD Tier 05' where "name" = '2160p Bluray Tier 05';
-- --- END op 2032

-- --- BEGIN op 2033 ( update custom_format "Dictionarry UHD Tier 06" )
update "custom_formats" set "name" = 'Dictionarry UHD Tier 06' where "name" = '2160p Bluray Tier 06';
-- --- END op 2033

-- --- BEGIN op 2034 ( update custom_format "Dictionarry HD Tier 01" )
update "custom_formats" set "name" = 'Dictionarry HD Tier 01' where "name" = 'Dictionarry HD Bluray Tier 01';
-- --- END op 2034

-- --- BEGIN op 2035 ( update custom_format "Dictionarry HD Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry HD Tier 01'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2035

-- --- BEGIN op 2036 ( update custom_format "Dictionarry HD Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 01', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Dictionarry HD Tier 01', 'Not 2160p', '2160p');
-- --- END op 2036

-- --- BEGIN op 2037 ( update custom_format "Dictionarry HD Tier 02" )
update "custom_formats" set "name" = 'Dictionarry HD Tier 02' where "name" = 'Dictionarry HD Bluray Tier 02';
-- --- END op 2037

-- --- BEGIN op 2038 ( update custom_format "Dictionarry HD Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry HD Tier 02'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2038

-- --- BEGIN op 2039 ( update custom_format "Dictionarry HD Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 02', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Dictionarry HD Tier 02', 'Not 2160p', '2160p');
-- --- END op 2039

-- --- BEGIN op 2040 ( update custom_format "Dictionarry HD Tier 03" )
update "custom_formats" set "name" = 'Dictionarry HD Tier 03' where "name" = 'Dictionarry HD Bluray Tier 03';
-- --- END op 2040

-- --- BEGIN op 2041 ( update custom_format "Dictionarry HD Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry HD Tier 03'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2041

-- --- BEGIN op 2042 ( update custom_format "Dictionarry HD Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 03', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Dictionarry HD Tier 03', 'Not 2160p', '2160p');
-- --- END op 2042

-- --- BEGIN op 2043 ( update custom_format "Dictionarry HD Tier 04" )
update "custom_formats" set "name" = 'Dictionarry HD Tier 04' where "name" = 'Dictionarry HD Bluray Tier 04';
-- --- END op 2043

-- --- BEGIN op 2044 ( update custom_format "Dictionarry HD Tier 04" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry HD Tier 04'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2044

-- --- BEGIN op 2045 ( update custom_format "Dictionarry HD Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 04', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Dictionarry HD Tier 04', 'Not 2160p', '2160p');
-- --- END op 2045

-- --- BEGIN op 2046 ( update custom_format "Dictionarry HD Tier 05" )
update "custom_formats" set "name" = 'Dictionarry HD Tier 05' where "name" = 'Dictionarry HD Bluray Tier 05';
-- --- END op 2046

-- --- BEGIN op 2047 ( update custom_format "Dictionarry HD Tier 05" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry HD Tier 05'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2047

-- --- BEGIN op 2048 ( update custom_format "Dictionarry HD Tier 05" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 05', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Dictionarry HD Tier 05', 'Not 2160p', '2160p');
-- --- END op 2048

-- --- BEGIN op 2049 ( update custom_format "Dictionarry HD Tier 06" )
update "custom_formats" set "name" = 'Dictionarry HD Tier 06' where "name" = 'Dictionarry HD Bluray Tier 06';
-- --- END op 2049

-- --- BEGIN op 2050 ( update custom_format "Dictionarry HD Tier 06" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dictionarry HD Tier 06'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2050

-- --- BEGIN op 2051 ( update custom_format "Dictionarry HD Tier 06" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dictionarry HD Tier 06', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Dictionarry HD Tier 06', 'Not 2160p', '2160p');
-- --- END op 2051

-- --- BEGIN op 2052 ( update custom_format "Dictionarry HD Tier 01" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry HD Tier 01' AND tag_name = '1080p';

insert into "tags" ("name") values ('HD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry HD Tier 01', 'HD');
-- --- END op 2052

-- --- BEGIN op 2053 ( update custom_format "Dictionarry HD Tier 02" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry HD Tier 02' AND tag_name = '1080p';

insert into "tags" ("name") values ('HD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry HD Tier 02', 'HD');
-- --- END op 2053

-- --- BEGIN op 2054 ( update custom_format "Dictionarry HD Tier 03" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry HD Tier 03' AND tag_name = '1080p';

insert into "tags" ("name") values ('HD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry HD Tier 03', 'HD');
-- --- END op 2054

-- --- BEGIN op 2055 ( update custom_format "Dictionarry HD Tier 04" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry HD Tier 04' AND tag_name = '1080p';

insert into "tags" ("name") values ('HD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry HD Tier 04', 'HD');
-- --- END op 2055

-- --- BEGIN op 2056 ( update custom_format "Dictionarry HD Tier 05" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry HD Tier 05' AND tag_name = '1080p';

insert into "tags" ("name") values ('HD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry HD Tier 05', 'HD');
-- --- END op 2056

-- --- BEGIN op 2057 ( update custom_format "Dictionarry HD Tier 06" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry HD Tier 06' AND tag_name = '1080p';

insert into "tags" ("name") values ('HD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry HD Tier 06', 'HD');
-- --- END op 2057

-- --- BEGIN op 2058 ( update custom_format "Dictionarry UHD Tier 01" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry UHD Tier 01' AND tag_name = '2160p';

insert into "tags" ("name") values ('UHD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry UHD Tier 01', 'UHD');
-- --- END op 2058

-- --- BEGIN op 2059 ( update custom_format "Dictionarry UHD Tier 02" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry UHD Tier 02' AND tag_name = '2160p';

insert into "tags" ("name") values ('UHD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry UHD Tier 02', 'UHD');
-- --- END op 2059

-- --- BEGIN op 2060 ( update custom_format "Dictionarry UHD Tier 03" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry UHD Tier 03' AND tag_name = '2160p';

insert into "tags" ("name") values ('UHD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry UHD Tier 03', 'UHD');
-- --- END op 2060

-- --- BEGIN op 2061 ( update custom_format "Dictionarry UHD Tier 04" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry UHD Tier 04' AND tag_name = '2160p';

insert into "tags" ("name") values ('UHD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry UHD Tier 04', 'UHD');
-- --- END op 2061

-- --- BEGIN op 2062 ( update custom_format "Dictionarry UHD Tier 05" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry UHD Tier 05' AND tag_name = '2160p';

insert into "tags" ("name") values ('UHD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry UHD Tier 05', 'UHD');
-- --- END op 2062

-- --- BEGIN op 2063 ( update custom_format "Dictionarry UHD Tier 06" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Dictionarry UHD Tier 06' AND tag_name = '2160p';

insert into "tags" ("name") values ('UHD') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dictionarry UHD Tier 06', 'UHD');
-- --- END op 2063

-- --- BEGIN op 2064 ( delete custom_format "720p Bluray Tier 01" )
delete from "custom_formats" where "name" = '720p Bluray Tier 01';
-- --- END op 2064

-- --- BEGIN op 2065 ( delete custom_format "720p Bluray Tier 02" )
delete from "custom_formats" where "name" = '720p Bluray Tier 02';
-- --- END op 2065

-- --- BEGIN op 2066 ( delete custom_format "720p Bluray Tier 03" )
delete from "custom_formats" where "name" = '720p Bluray Tier 03';
-- --- END op 2066

-- --- BEGIN op 2067 ( update quality_profile "TV 2160p" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = '720p Bluray Tier 04' and "arr_type" = 'sonarr' and "score" = 1150;
-- --- END op 2067

-- --- BEGIN op 2068 ( delete custom_format "720p Bluray Tier 04" )
delete from "custom_formats" where "name" = '720p Bluray Tier 04';
-- --- END op 2068

-- --- BEGIN op 2069 ( delete custom_format "720p Bluray Tier 05" )
delete from "custom_formats" where "name" = '720p Bluray Tier 05';
-- --- END op 2069

-- --- BEGIN op 2070 ( delete custom_format "720p Bluray Tier 06" )
delete from "custom_formats" where "name" = '720p Bluray Tier 06';
-- --- END op 2070
