-- @operation: export
-- @entity: batch
-- @name: Updated Scrubs 2001 formats to rpevent censored episodes
-- @exportedAt: 2026-10-07T04:19:16.049Z
-- @opIds: 6714, 6715, 6716, 6717, 6718, 6719, 6720, 6721, 6722, 6723, 6724, 6725, 6726

-- --- BEGIN op 6714 ( create regular_expression "Scrubs 2001" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scrubs 2001', '(?i)\bScrubs\b(?!.*2026)(?=.*(REMUX|INTERNAL))', NULL, NULL);

insert into "tags" ("name") values ('Custom') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Scrubs 2001', 'Custom');

insert into "tags" ("name") values ('Scrubs') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Scrubs 2001', 'Scrubs');
-- --- END op 6714

-- --- BEGIN op 6715 ( update regular_expression "Scrubs 2001" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!.*2026)' where "name" = 'Scrubs 2001' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?=.*(REMUX|INTERNAL))';
-- --- END op 6715

-- --- BEGIN op 6716 ( update custom_format "No Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No Audio', 'Scrubs 2001', 'release_title', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No Audio', 'Scrubs 2001', 'Scrubs 2001');
-- --- END op 6716

-- --- BEGIN op 6717 ( update regular_expression "Scrubs 2001 Boost" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!.*2026)(?=.*(REMUX|INTERNAL|DVDRip))' where "name" = 'Scrubs 2001 Boost' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?=.*(REMUX|INTERNAL))';
-- --- END op 6717

-- --- BEGIN op 6718 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|THESYNDiCATE|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|PlayWEB|SiNNERS|THESYNDiCATE|WELP)(\b|$)).*';
-- --- END op 6718

-- --- BEGIN op 6719 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|THESYNDiCATE)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|THESYNDiCATE|WELP)(\b|$)).*';
-- --- END op 6719

-- --- BEGIN op 6720 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|THESYNDiCATE)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|CMCTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|THESYNDiCATE)(\b|$)).*';
-- --- END op 6720

-- --- BEGIN op 6721 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(\b(WEB-DL|WEBRip))(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|THESYNDiCATE)(\b|$)).*';
-- --- END op 6721

-- --- BEGIN op 6722 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(\b(WEB-DL|WEBRip\b))(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(\b(WEB-DL|WEBRip))(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 6722

-- --- BEGIN op 6723 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(\b(WEB-DL|WEBRip\b))(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 6723

-- --- BEGIN op 6724 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 6724

-- --- BEGIN op 6725 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?=.*\bWEB[-. ]?(DL|Rip)\b)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 6725

-- --- BEGIN op 6726 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?=.*\bWEB[-. ]?(DL|Rip)\b)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 6726
