-- @operation: export
-- @entity: batch
-- @name: WEB/HD/UHD Tier Updates/Cleanup
-- @exportedAt: 2026-06-15T22:27:06.090Z
-- @opIds: 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804

-- --- BEGIN op 1749 ( create regular_expression "TRaSH WEB Tier 01 - Sonarr" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH WEB Tier 01 - Sonarr', '^(ABBIE|AJP69|APEX|BLUTONiUM|BYNDR|CMRG|CRFW|CRUD|FLUX|GNOME|HONE|KiNGS|Kitsune|MADSKY|NOSiViD|NTb|NTG|RAWR|SiC|TEPES|TheFarm|ZoroSenpai)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 01 - Sonarr', 'Release Group Tier');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 01 - Sonarr', 'TRaSH');
-- --- END op 1749

-- --- BEGIN op 1750 ( update regular_expression "TRaSH WEB Tier 01 - Sonarr" )
update "regular_expressions" set "pattern" = '^(ABBiE|AJP69|APEX|PAXA|PEXA|XEPA|CasStudio|CRFW|CtrlHD|FLUX|HONE|KiNGS|Kitsune|MADSKY|monkee|NOSiViD|NTb|NTG|QOQ|RAWR|RTN|SiC|T6D|TOMMY|ViSUM)$' where "name" = 'TRaSH WEB Tier 01 - Sonarr' and "pattern" = '^(ABBIE|AJP69|APEX|BLUTONiUM|BYNDR|CMRG|CRFW|CRUD|FLUX|GNOME|HONE|KiNGS|Kitsune|MADSKY|NOSiViD|NTb|NTG|RAWR|SiC|TEPES|TheFarm|ZoroSenpai)$';
-- --- END op 1750

-- --- BEGIN op 1751 ( update regular_expression "TRaSH WEB Tier 01 (Sonarr)" )
update "regular_expressions" set "name" = 'TRaSH WEB Tier 01 (Sonarr)' where "name" = 'TRaSH WEB Tier 01 - Sonarr';
-- --- END op 1751

-- --- BEGIN op 1752 ( update regular_expression "TRaSH WEB Tier 01" )
update "regular_expressions" set "pattern" = '^(ABBIE|AJP69|APEX|PAXA|PEXA|XEPA|BLUTONiUM|BYNDR|CMRG|CRFW|CRUD|FLUX|GNOME|HONE|KiNGS|Kitsune|MADSKY|NOSiViD|NTb|NTG|RAWR|SiC|TEPES|TheFarm|ZoroSenpai)$' where "name" = 'TRaSH WEB Tier 01' and "pattern" = '^(ABBIE|AJP69|APEX|BLUTONiUM|BYNDR|CMRG|CRFW|CRUD|FLUX|GNOME|HONE|KiNGS|Kitsune|MADSKY|NOSiViD|NTb|NTG|RAWR|SiC|TEPES|TheFarm|ZoroSenpai)$';
-- --- END op 1752

-- --- BEGIN op 1753 ( update regular_expression "TRaSH WEB Tier 01" )
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 01', 'Radarr');
-- --- END op 1753

-- --- BEGIN op 1754 ( update regular_expression "TRaSH WEB Tier 01 (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH WEB Tier 01 (Radarr)' where "name" = 'TRaSH WEB Tier 01';
-- --- END op 1754

-- --- BEGIN op 1755 ( update custom_format "WEB Tier 01" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH WEB Tier 01 (Radarr)' where "custom_format_name" = 'WEB Tier 01' and "condition_name" = 'TRaSH WEB Tier 01' and "regular_expression_name" in ('TRaSH WEB Tier 01', 'TRaSH WEB Tier 01 (Radarr)');
-- --- END op 1755

-- --- BEGIN op 1756 ( update regular_expression "TRaSH WEB Tier 02" )
update "regular_expressions" set "pattern" = '^(dB|Flights|MiU|monkee|MZABI|PHOENiX|playWEB|SbR|SMURF|TOMMY|XEBEC|4KBEC|CEBEX)$' where "name" = 'TRaSH WEB Tier 02' and "pattern" = '^(dB|Flights|MiU|monkee|MZABI|PHOENiX|playWEB|RDNYB|SbR|SMURF|TOMMY|XEBEC)$';
-- --- END op 1756

-- --- BEGIN op 1757 ( update regular_expression "TRaSH WEB Tier 02" )
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 02', 'Radarr');
-- --- END op 1757

-- --- BEGIN op 1758 ( create regular_expression "TRaSH WEB Tier 02 (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH WEB Tier 02 (Sonarr)', '^(dB|Flights|MiU|monkee|MZABI|PHOENiX|playWEB|SbR|SMURF|TOMMY|XEBEC|4KBEC|CEBEX)$', NULL, NULL);

insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 02 (Sonarr)', 'Radarr');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 02 (Sonarr)', 'Release Group Tier');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 02 (Sonarr)', 'TRaSH');
-- --- END op 1758

-- --- BEGIN op 1759 ( update regular_expression "TRaSH WEB Tier 02 (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH WEB Tier 02 (Radarr)' where "name" = 'TRaSH WEB Tier 02';
-- --- END op 1759

-- --- BEGIN op 1760 ( update custom_format "WEB Tier 02" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH WEB Tier 02 (Radarr)' where "custom_format_name" = 'WEB Tier 02' and "condition_name" = 'TRaSH WEB Tier 02' and "regular_expression_name" in ('TRaSH WEB Tier 02', 'TRaSH WEB Tier 02 (Radarr)');
-- --- END op 1760

-- --- BEGIN op 1761 ( update regular_expression "TRaSH WEB Tier 02 (Sonarr)" )
update "regular_expressions" set "pattern" = '^(3cTWeB|BLUTONiUM|BTW|BYNDR|Chotab|Cinefeel|CiT|CMRG|Coo7|dB|DEEP|END|ETHiCS|FC|Flights|GNOME|iJP|iKA|iT00NZ|JETIX|KHN|KiMCHI|LAZY|MiU|MZABI|NPMS|NYH|orbitron|PHOENiX|playWEB|PSiG|ROCCaT|RTFM|SA89|SbR|SDCC|SIGMA|SMURF|SPiRiT|TEPES|TVSmash|WELP|XEBEC|4KBEC|CEBEX)$' where "name" = 'TRaSH WEB Tier 02 (Sonarr)' and "pattern" = '^(dB|Flights|MiU|monkee|MZABI|PHOENiX|playWEB|SbR|SMURF|TOMMY|XEBEC|4KBEC|CEBEX)$';
-- --- END op 1761

-- --- BEGIN op 1762 ( update regular_expression "TRaSH WEB Tier 01 (Sonarr)" )
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 01 (Sonarr)', 'Sonarr');
-- --- END op 1762

-- --- BEGIN op 1763 ( update regular_expression "TRaSH WEB Tier 02 (Sonarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH WEB Tier 02 (Sonarr)' AND tag_name = 'Radarr';

insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 02 (Sonarr)', 'Sonarr');
-- --- END op 1763

-- --- BEGIN op 1764 ( update regular_expression "TRaSH WEB Tier 03" )
update "regular_expressions" set "pattern" = '^(BLOOM|Dooky|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$' where "name" = 'TRaSH WEB Tier 03' and "pattern" = '^(BLOOM|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|QOQ|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$';
-- --- END op 1764

-- --- BEGIN op 1765 ( update regular_expression "TRaSH WEB Tier 03" )
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 03', 'Radarr');
-- --- END op 1765

-- --- BEGIN op 1766 ( update regular_expression "TRaSH WEB Tier 03 (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH WEB Tier 03 (Radarr)' where "name" = 'TRaSH WEB Tier 03';
-- --- END op 1766

-- --- BEGIN op 1767 ( update custom_format "WEB Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH WEB Tier 03 (Radarr)' where "custom_format_name" = 'WEB Tier 03' and "condition_name" = 'TRaSH WEB Tier 03' and "regular_expression_name" in ('TRaSH WEB Tier 03', 'TRaSH WEB Tier 03 (Radarr)');
-- --- END op 1767

-- --- BEGIN op 1768 ( create regular_expression "TRaSH WEB Tier 03 (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH WEB Tier 03 (Sonarr)', '^(BLOOM|Dooky|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$', NULL, NULL);

insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 03 (Sonarr)', 'Radarr');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 03 (Sonarr)', 'Release Group Tier');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 03 (Sonarr)', 'TRaSH');
-- --- END op 1768

-- --- BEGIN op 1769 ( update regular_expression "TRaSH WEB Tier 03 (Sonarr)" )
update "regular_expressions" set "pattern" = '^(BLOOM|Dooky|DRACULA|HHWEB|NINJACENTRAL|SLiGNOME|SwAgLaNdEr|T4H|ViSiON)$' where "name" = 'TRaSH WEB Tier 03 (Sonarr)' and "pattern" = '^(BLOOM|Dooky|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$';
-- --- END op 1769

-- --- BEGIN op 1770 ( update regular_expression "TRaSH WEB Tier 03 (Sonarr)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH WEB Tier 03 (Sonarr)' AND tag_name = 'Radarr';

insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH WEB Tier 03 (Sonarr)', 'Sonarr');
-- --- END op 1770

-- --- BEGIN op 1771 ( update custom_format "WEB Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB Tier 01'
	  AND name = 'TRaSH WEB Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1771

-- --- BEGIN op 1772 ( update custom_format "WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 01', 'TRaSH WEB Tier 01 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 01', 'TRaSH WEB Tier 01 (Radarr)', 'TRaSH WEB Tier 01 (Radarr)');
-- --- END op 1772

-- --- BEGIN op 1773 ( update custom_format "WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 01', 'TRaSH WEB Tier 01 (Sonarr)', 'release_title', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 01', 'TRaSH WEB Tier 01 (Sonarr)', 'TRaSH WEB Tier 01 (Sonarr)');
-- --- END op 1773

-- --- BEGIN op 1774 ( update custom_format "WEB Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB Tier 02'
	  AND name = 'TRaSH WEB Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1774

-- --- BEGIN op 1775 ( update custom_format "WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 02', 'TRaSH WEB Tier 02 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 02', 'TRaSH WEB Tier 02 (Radarr)', 'TRaSH WEB Tier 02 (Radarr)');
-- --- END op 1775

-- --- BEGIN op 1776 ( update custom_format "WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 02', 'TRaSH WEB Tier 02 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 02', 'TRaSH WEB Tier 02 (Sonarr)', 'TRaSH WEB Tier 02 (Sonarr)');
-- --- END op 1776

-- --- BEGIN op 1777 ( update custom_format "WEB Tier 01" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'WEB Tier 01'
  AND name = 'TRaSH WEB Tier 01 (Sonarr)'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'WEB Tier 01' AND condition_name = 'TRaSH WEB Tier 01 (Sonarr)' AND regular_expression_name = 'TRaSH WEB Tier 01 (Sonarr)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 01', 'TRaSH WEB Tier 01 (Sonarr)', 'TRaSH WEB Tier 01 (Sonarr)');
-- --- END op 1777

-- --- BEGIN op 1778 ( update custom_format "WEB Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB Tier 03'
	  AND name = 'TRaSH WEB Tier 03'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1778

-- --- BEGIN op 1779 ( update custom_format "WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 03', 'TRaSH WEB Tier 03 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 03', 'TRaSH WEB Tier 03 (Radarr)', 'TRaSH WEB Tier 03 (Radarr)');
-- --- END op 1779

-- --- BEGIN op 1780 ( update custom_format "WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 03', 'TRaSH WEB Tier 03 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 03', 'TRaSH WEB Tier 03 (Sonarr)', 'TRaSH WEB Tier 03 (Sonarr)');
-- --- END op 1780

-- --- BEGIN op 1781 ( create regular_expression "TRaSH HD Bluray Tier 02 (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH HD Bluray Tier 02 (Sonarr)', '^(EA|HiDt|HiSD|iFT|NTb|QOQ|SA89|sbR)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 02 (Sonarr)', 'Release Group Tier');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 02 (Sonarr)', 'TRaSH');
-- --- END op 1781

-- --- BEGIN op 1782 ( update regular_expression "TRaSH HD Bluray Tier 02 (Sonarr)" )
update "regular_expressions" set "pattern" = '^(SA89|sbR)$' where "name" = 'TRaSH HD Bluray Tier 02 (Sonarr)' and "pattern" = '^(EA|HiDt|HiSD|iFT|NTb|QOQ|SA89|sbR)$';
-- --- END op 1782

-- --- BEGIN op 1783 ( update regular_expression "TRaSH HD Bluray Tier 02 (Sonarr)" )
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 02 (Sonarr)', 'Sonarr');
-- --- END op 1783

-- --- BEGIN op 1784 ( update regular_expression "TRaSH HD Bluray Tier 02" )
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 02', 'Radarr');
-- --- END op 1784

-- --- BEGIN op 1785 ( update regular_expression "TRaSH HD Bluray Tier 02 (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH HD Bluray Tier 02 (Radarr)' where "name" = 'TRaSH HD Bluray Tier 02';
-- --- END op 1785

-- --- BEGIN op 1786 ( update custom_format "HD Bluray Tier 02" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH HD Bluray Tier 02 (Radarr)' where "custom_format_name" = 'HD Bluray Tier 02' and "condition_name" = 'TRaSH 1080p Tier 02' and "regular_expression_name" in ('TRaSH HD Bluray Tier 02', 'TRaSH HD Bluray Tier 02 (Radarr)');
-- --- END op 1786

-- --- BEGIN op 1787 ( create regular_expression "TRaSH HD Bluray Tier 01 (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRaSH HD Bluray Tier 01 (Sonarr)', '^(BBQ|BMF|c0kE|Chotab|CRiSC|CtrlHD|D-Z0N3|Dariush|decibeL|DON|EbP|EDPH|Geek|LolHD|NCmt|PTer|TayTO|TDD|TnP|VietHD|ZQ|ZoroSenpai)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 01 (Sonarr)', 'Release Group Tier');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 01 (Sonarr)', 'TRaSH');
-- --- END op 1787

-- --- BEGIN op 1788 ( update regular_expression "TRaSH HD Bluray Tier 01" )
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 01', 'Radarr');
-- --- END op 1788

-- --- BEGIN op 1789 ( update regular_expression "TRaSH HD Bluray Tier 01 (Radarr)" )
update "regular_expressions" set "name" = 'TRaSH HD Bluray Tier 01 (Radarr)' where "name" = 'TRaSH HD Bluray Tier 01';
-- --- END op 1789

-- --- BEGIN op 1790 ( update custom_format "HD Bluray Tier 01" )
update "condition_patterns" set "regular_expression_name" = 'TRaSH HD Bluray Tier 01 (Radarr)' where "custom_format_name" = 'HD Bluray Tier 01' and "condition_name" = 'TRaSH 1080p Tier 01' and "regular_expression_name" in ('TRaSH HD Bluray Tier 01', 'TRaSH HD Bluray Tier 01 (Radarr)');
-- --- END op 1790

-- --- BEGIN op 1791 ( update regular_expression "TRaSH HD Bluray Tier 01 (Sonarr)" )
update "regular_expressions" set "pattern" = '^(Chotab|CtrlHD|DON|EbP|NTb|PTer)$' where "name" = 'TRaSH HD Bluray Tier 01 (Sonarr)' and "pattern" = '^(BBQ|BMF|c0kE|Chotab|CRiSC|CtrlHD|D-Z0N3|Dariush|decibeL|DON|EbP|EDPH|Geek|LolHD|NCmt|PTer|TayTO|TDD|TnP|VietHD|ZQ|ZoroSenpai)$';
-- --- END op 1791

-- --- BEGIN op 1792 ( update regular_expression "TRaSH HD Bluray Tier 01 (Sonarr)" )
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRaSH HD Bluray Tier 01 (Sonarr)', 'Sonarr');
-- --- END op 1792

-- --- BEGIN op 1793 ( update custom_format "HD Bluray Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HD Bluray Tier 01'
	  AND name = 'TRaSH 1080p Tier 01'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1793

-- --- BEGIN op 1794 ( update custom_format "HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'TRaSH HD Tier 01 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'TRaSH HD Tier 01 (Radarr)', 'TRaSH HD Bluray Tier 01 (Radarr)');
-- --- END op 1794

-- --- BEGIN op 1795 ( update custom_format "HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'TRaSH HD Tier 01 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'TRaSH HD Tier 01 (Sonarr)', 'TRaSH HD Bluray Tier 01 (Sonarr)');
-- --- END op 1795

-- --- BEGIN op 1796 ( update custom_format "HD Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HD Bluray Tier 02'
	  AND name = 'TRaSH 1080p Tier 02'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1796

-- --- BEGIN op 1797 ( update custom_format "HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'TRaSH HD Tier 02 (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'TRaSH HD Tier 02 (Radarr)', 'TRaSH HD Bluray Tier 02 (Radarr)');
-- --- END op 1797

-- --- BEGIN op 1798 ( update custom_format "HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'TRaSH HD Tier 02 (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'TRaSH HD Tier 02 (Sonarr)', 'TRaSH HD Bluray Tier 02 (Sonarr)');
-- --- END op 1798

-- --- BEGIN op 1799 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1800
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'HD Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1799

-- --- BEGIN op 1800 ( update quality_profile "TV 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1750
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'HD Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1450;
-- --- END op 1800

-- --- BEGIN op 1801 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'HD Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1801

-- --- BEGIN op 1802 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'UHD Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1802

-- --- BEGIN op 1803 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'UHD Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1450;
-- --- END op 1803

-- --- BEGIN op 1804 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'UHD Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1804
