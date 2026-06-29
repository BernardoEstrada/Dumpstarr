-- @operation: export
-- @entity: batch
-- @name: Even more SIDCA Tier updates for arr segregation
-- @exportedAt: 2026-06-29T19:38:04.407Z
-- @opIds: 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008

-- --- BEGIN op 1978 ( create regular_expression "SIDCA Tier 01 (Radarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SIDCA Tier 01 (Radarr)', '^(MeGusta|PSA)$', NULL, NULL);

insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SIDCA Tier 01 (Radarr)', 'Dumpstarr');

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SIDCA Tier 01 (Radarr)', 'LQ');
-- --- END op 1978

-- --- BEGIN op 1979 ( update regular_expression "SIDCA Tier 01 (Radarr)" )
update "regular_expressions" set "pattern" = '^(edge2020|LAMA|PSA)$' where "name" = 'SIDCA Tier 01 (Radarr)' and "pattern" = '^(MeGusta|PSA)$';
-- --- END op 1979

-- --- BEGIN op 1980 ( update regular_expression "SIDCA Tier 01" )
update "regular_expressions" set "pattern" = '^(MeGusta)$' where "name" = 'SIDCA Tier 01' and "pattern" = '^(MeGusta|PSA)$';
-- --- END op 1980

-- --- BEGIN op 1981 ( create regular_expression "SIDCA Tier 02 (Radarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SIDCA Tier 02 (Radarr)', '^(ELiTE|iVy|Pahe|YIFY|YTS)$', NULL, NULL);

insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SIDCA Tier 02 (Radarr)', 'Dumpstarr');

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SIDCA Tier 02 (Radarr)', 'LQ');
-- --- END op 1981

-- --- BEGIN op 1982 ( update regular_expression "SIDCA Tier 01 (Sonarr)" )
update "regular_expressions" set "name" = 'SIDCA Tier 01 (Sonarr)' where "name" = 'SIDCA Tier 01';
-- --- END op 1982

-- --- BEGIN op 1983 ( update custom_format "SIDCA Tier 01" )
update "condition_patterns" set "regular_expression_name" = 'SIDCA Tier 01 (Sonarr)' where "custom_format_name" = 'SIDCA Tier 01' and "condition_name" = 'SIDCA Tier 01' and "regular_expression_name" in ('SIDCA Tier 01', 'SIDCA Tier 01 (Sonarr)');
-- --- END op 1983

-- --- BEGIN op 1984 ( update regular_expression "SIDCA Tier 03" )
update "regular_expressions" set "pattern" = '^(AndreMor|ASTRiD|CBFM|CHiLL|CtrlHD|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|ViETNAM)$' where "name" = 'SIDCA Tier 03' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CHiLL|CtrlHD|DEFLATE|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|ViETNAM)$';
-- --- END op 1984

-- --- BEGIN op 1985 ( update regular_expression "SIDCA Tier 02 (Radarr)" )
update "regular_expressions" set "pattern" = '^(PSA|YIFY|YTS)$' where "name" = 'SIDCA Tier 02 (Radarr)' and "pattern" = '^(ELiTE|iVy|Pahe|YIFY|YTS)$';
-- --- END op 1985

-- --- BEGIN op 1986 ( update regular_expression "SIDCA Tier 01 (Radarr)" )
update "regular_expressions" set "pattern" = '^(edge2020|LAMA)$' where "name" = 'SIDCA Tier 01 (Radarr)' and "pattern" = '^(edge2020|LAMA|PSA)$';
-- --- END op 1986

-- --- BEGIN op 1987 ( update regular_expression "SIDCA Tier 03 (Sonarr)" )
update "regular_expressions" set "name" = 'SIDCA Tier 03 (Sonarr)' where "name" = 'SIDCA Tier 03';
-- --- END op 1987

-- --- BEGIN op 1988 ( update custom_format "SIDCA Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'SIDCA Tier 03 (Sonarr)' where "custom_format_name" = 'SIDCA Tier 03' and "condition_name" = 'SIDCA Tier 03' and "regular_expression_name" in ('SIDCA Tier 03', 'SIDCA Tier 03 (Sonarr)');
-- --- END op 1988

-- --- BEGIN op 1989 ( create regular_expression "SIDCA Tier 03 (Radarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SIDCA Tier 03 (Radarr)', '^(AndreMor|ASTRiD|CBFM|CHiLL|CtrlHD|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|ViETNAM)$', NULL, NULL);

insert into "tags" ("name") values ('Dumpstarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SIDCA Tier 03 (Radarr)', 'Dumpstarr');

insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SIDCA Tier 03 (Radarr)', 'LQ');
-- --- END op 1989

-- --- BEGIN op 1990 ( update regular_expression "SIDCA Tier 03 (Radarr)" )
update "regular_expressions" set "pattern" = '^(RARBG)$' where "name" = 'SIDCA Tier 03 (Radarr)' and "pattern" = '^(AndreMor|ASTRiD|CBFM|CHiLL|CtrlHD|EDPH|HANDJOB|HODL|KONTRAST|MacP|PLUTONiUM|PHOCiS|YAWNiX|ViETNAM)$';
-- --- END op 1990

-- --- BEGIN op 1991 ( update regular_expression "SIDCA Tier 01 (Radarr)" )
update "regular_expressions" set "pattern" = '^(edge2020|iVy)$' where "name" = 'SIDCA Tier 01 (Radarr)' and "pattern" = '^(edge2020|LAMA)$';
-- --- END op 1991

-- --- BEGIN op 1992 ( update regular_expression "SIDCA Tier 03 (Radarr)" )
update "regular_expressions" set "pattern" = '^(PiRaTeS)$' where "name" = 'SIDCA Tier 03 (Radarr)' and "pattern" = '^(RARBG)$';
-- --- END op 1992

-- --- BEGIN op 1993 ( update regular_expression "SIDCA Tier 01 (Radarr)" )
update "regular_expressions" set "pattern" = '^(PSA|iVy)$' where "name" = 'SIDCA Tier 01 (Radarr)' and "pattern" = '^(edge2020|iVy)$';
-- --- END op 1993

-- --- BEGIN op 1994 ( update regular_expression "SIDCA Tier 02 (Radarr)" )
update "regular_expressions" set "pattern" = '^(edge2020|YIFY|YTS)$' where "name" = 'SIDCA Tier 02 (Radarr)' and "pattern" = '^(PSA|YIFY|YTS)$';
-- --- END op 1994

-- --- BEGIN op 1995 ( update regular_expression "SIDCA Tier 02 (Sonarr)" )
update "regular_expressions" set "name" = 'SIDCA Tier 02 (Sonarr)' where "name" = 'SIDCA Tier 02';
-- --- END op 1995

-- --- BEGIN op 1996 ( update custom_format "SIDCA Tier 02" )
update "condition_patterns" set "regular_expression_name" = 'SIDCA Tier 02 (Sonarr)' where "custom_format_name" = 'SIDCA Tier 02' and "condition_name" = 'SIDCA Tier 02' and "regular_expression_name" in ('SIDCA Tier 02', 'SIDCA Tier 02 (Sonarr)');
-- --- END op 1996

-- --- BEGIN op 1997 ( update regular_expression "SIDCA Tier 02 (Sonarr)" )
update "regular_expressions" set "pattern" = '^(ELiTE|iVy|Pahe)$' where "name" = 'SIDCA Tier 02 (Sonarr)' and "pattern" = '^(ELiTE|iVy|Pahe|YIFY|YTS)$';
-- --- END op 1997

-- --- BEGIN op 1998 ( update regular_expression "SIDCA Tier 02 (Radarr)" )
update "regular_expressions" set "pattern" = '^(YIFY|YTS)$' where "name" = 'SIDCA Tier 02 (Radarr)' and "pattern" = '^(edge2020|YIFY|YTS)$';
-- --- END op 1998

-- --- BEGIN op 1999 ( update regular_expression "SIDCA Tier 02 (Radarr)" )
update "regular_expressions" set "pattern" = '^(LAMA|YIFY|YTS)$' where "name" = 'SIDCA Tier 02 (Radarr)' and "pattern" = '^(YIFY|YTS)$';
-- --- END op 1999

-- --- BEGIN op 2000 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'SIDCA Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2000

-- --- BEGIN op 2001 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'SIDCA Tier 01 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'SIDCA Tier 01 (Sonarr)', 'SIDCA Tier 01 (Sonarr)');
-- --- END op 2001

-- --- BEGIN op 2002 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'SIDCA Tier 01 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'SIDCA Tier 01 (Radarr)', 'SIDCA Tier 01 (Radarr)');
-- --- END op 2002

-- --- BEGIN op 2003 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'SIDCA Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2003

-- --- BEGIN op 2004 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'SIDCA Tier 02 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'SIDCA Tier 02 (Sonarr)', 'SIDCA Tier 02 (Sonarr)');
-- --- END op 2004

-- --- BEGIN op 2005 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'SIDCA Tier 02 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'SIDCA Tier 02 (Radarr)', 'SIDCA Tier 02 (Radarr)');
-- --- END op 2005

-- --- BEGIN op 2006 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'SIDCA Tier 03'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2006

-- --- BEGIN op 2007 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'SIDCA Tier 03 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'SIDCA Tier 03 (Sonarr)', 'SIDCA Tier 03 (Sonarr)');
-- --- END op 2007

-- --- BEGIN op 2008 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'SIDCA Tier 03 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'SIDCA Tier 03 (Radarr)', 'SIDCA Tier 03 (Radarr)');
-- --- END op 2008
