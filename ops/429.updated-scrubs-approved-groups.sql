-- @operation: export
-- @entity: batch
-- @name: Updated Scrubs Approved Groups
-- @exportedAt: 2026-10-07T15:28:11.753Z
-- @opIds: 6734, 6735, 6736, 6737

-- --- BEGIN op 6734 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SAiNTS-3|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SiNNERS)(\b|$)).*';
-- --- END op 6734

-- --- BEGIN op 6735 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SAiNTS|SAiNTS-3|SiNNERS)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SAiNTS-3|SiNNERS)(\b|$)).*';
-- --- END op 6735

-- --- BEGIN op 6736 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SAiNTS|SAiNTS-3|SiNNERS|WAT)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SAiNTS|SAiNTS-3|SiNNERS)(\b|$)).*';
-- --- END op 6736

-- --- BEGIN op 6737 ( update regular_expression "Scrubs 2001 Approved Groups" )
update "regular_expressions" set "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|ORPHEUS|SAiNTS|SAiNTS-3|SiNNERS|WAT)(\b|$)).*' where "name" = 'Scrubs 2001 Approved Groups' and "pattern" = '(?i)\bScrubs\b(?![.\s(]*2026)(?!.*-(BoOk|BMF|DEFiANCE|FoV|NTROPiC-FTP|SAiNTS|SAiNTS-3|SiNNERS|WAT)(\b|$)).*';
-- --- END op 6737
