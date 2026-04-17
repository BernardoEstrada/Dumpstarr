-- @operation: export
-- @entity: batch
-- @name: Updated Scrubs regex to fix badly named releases
-- @exportedAt: 2026-04-17T05:39:31.141Z
-- @opIds: 2699, 2700, 2701, 2702, 2703, 2704

-- --- BEGIN op 2699 ( create regular_expression "Scrubs (2001)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scrubs (2001)', '\bScrubs\b(?!.*2026)', 'Targets the 2001 version of Scrubs', NULL);

insert into "tags" ("name") values ('Scrubs') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Scrubs (2001)', 'Scrubs');
-- --- END op 2699

-- --- BEGIN op 2700 ( create custom_format "Dumpstarr LQ Release Title" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Dumpstarr LQ Release Title', 'Scrubs.S01E09.2026.1080p.DSNP.WEB-DL.DDP5.1.H.264-HDSWEB', 'series', 1, NULL);
-- --- END op 2700

-- --- BEGIN op 2701 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?!\s*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?!.*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*';
-- --- END op 2701

-- --- BEGIN op 2702 ( create custom_format "Dumpstarr LQ Release Title" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('Dumpstarr LQ Release Title', 'Scrubs.2026.S01E01.My.Return.1080p.DSNP.WEB-DL.DDP5.1.H.264-FLUX', 'series', 0, NULL);
-- --- END op 2702

-- --- BEGIN op 2703 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s]2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?!\s*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*';
-- --- END op 2703

-- --- BEGIN op 2704 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s]2026)(?!.*-(BoOk|BMF|DBTV|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS|WELP)(\b|$)).*';
-- --- END op 2704
