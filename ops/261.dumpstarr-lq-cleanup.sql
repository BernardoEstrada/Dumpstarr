-- @operation: export
-- @entity: batch
-- @name: Dumpstarr LQ Cleanup
-- @exportedAt: 2026-06-04T23:28:11.908Z
-- @opIds: 1615, 1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630, 1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648

-- --- BEGIN op 1615 ( update regular_expression "Dumpstarr Banned Groups Title" )
update "regular_expressions" set "name" = 'Dumpstarr Banned Groups Title' where "name" = 'Dumpstarr Banned Groups';
-- --- END op 1615

-- --- BEGIN op 1616 ( update custom_format "Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr Banned Groups Title' where "custom_format_name" = 'Banned Groups' and "condition_name" = 'Dumpstarr Banned Groups' and "regular_expression_name" in ('Dumpstarr Banned Groups', 'Dumpstarr Banned Groups Title');
-- --- END op 1616

-- --- BEGIN op 1617 ( update custom_format "Dumpstarr LQ Group" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr Banned Groups Title' where "custom_format_name" = 'Dumpstarr LQ Group' and "condition_name" = 'Dumpstarr Banned Groups' and "regular_expression_name" in ('Dumpstarr Banned Groups', 'Dumpstarr Banned Groups Title');
-- --- END op 1617

-- --- BEGIN op 1618 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "name" = 'Dumpstarr Banned Groups' where "name" = 'Dumpstarr Banned Groups Release Title';
-- --- END op 1618

-- --- BEGIN op 1619 ( update custom_format "Dumpstarr LQ Title" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr Banned Groups' where "custom_format_name" = 'Dumpstarr LQ Title' and "condition_name" = 'Dumpstarr Banned Groups Release Title' and "regular_expression_name" in ('Dumpstarr Banned Groups Release Title', 'Dumpstarr Banned Groups');
-- --- END op 1619

-- --- BEGIN op 1620 ( update custom_format "Dumpstarr LQ Groups" )
update "custom_formats" set "name" = 'Dumpstarr LQ Groups' where "name" = 'Dumpstarr LQ Group';
-- --- END op 1620

-- --- BEGIN op 1621 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1621

-- --- BEGIN op 1622 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1622

-- --- BEGIN op 1623 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1623

-- --- BEGIN op 1624 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1624

-- --- BEGIN op 1625 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1625

-- --- BEGIN op 1626 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1626

-- --- BEGIN op 1627 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'radarr' and "score" = -10000;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1627

-- --- BEGIN op 1628 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'radarr' and "score" = -10000;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ Group' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1628

-- --- BEGIN op 1629 ( update custom_format "Dumpstarr LQ Groups (Automation)" )
update "custom_formats" set "name" = 'Dumpstarr LQ Groups (Automation)' where "name" = 'Dumpstarr LQ Group (Automation)';
-- --- END op 1629

-- --- BEGIN op 1630 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'sonarr' and "score" = -1000;
-- --- END op 1630

-- --- BEGIN op 1631 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'sonarr' and "score" = -1000;
-- --- END op 1631

-- --- BEGIN op 1632 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'radarr' and "score" = -500;
-- --- END op 1632

-- --- BEGIN op 1633 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'radarr' and "score" = -1000;
-- --- END op 1633

-- --- BEGIN op 1634 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'radarr' and "score" = -1000;
-- --- END op 1634

-- --- BEGIN op 1635 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'radarr' and "score" = -500;
-- --- END op 1635

-- --- BEGIN op 1636 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'radarr' and "score" = -10;
-- --- END op 1636

-- --- BEGIN op 1637 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'radarr' and "score" = -100;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Groups (Automation)' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ Group (Automation)' and "arr_type" = 'sonarr' and "score" = -100;
-- --- END op 1637

-- --- BEGIN op 1638 ( update regular_expression "Dumpstarr LQ Groups" )
update "regular_expressions" set "name" = 'Dumpstarr LQ Groups' where "name" = 'Dumpstarr Banned Groups';
-- --- END op 1638

-- --- BEGIN op 1639 ( update custom_format "Dumpstarr LQ Title" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr LQ Groups' where "custom_format_name" = 'Dumpstarr LQ Title' and "condition_name" = 'Dumpstarr Banned Groups Release Title' and "regular_expression_name" in ('Dumpstarr Banned Groups', 'Dumpstarr LQ Groups');
-- --- END op 1639

-- --- BEGIN op 1640 ( update regular_expression "Dumpstarr LQ Groups Title" )
update "regular_expressions" set "name" = 'Dumpstarr LQ Groups Title' where "name" = 'Dumpstarr Banned Groups Title';
-- --- END op 1640

-- --- BEGIN op 1641 ( update custom_format "Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr LQ Groups Title' where "custom_format_name" = 'Banned Groups' and "condition_name" = 'Dumpstarr Banned Groups' and "regular_expression_name" in ('Dumpstarr Banned Groups Title', 'Dumpstarr LQ Groups Title');
-- --- END op 1641

-- --- BEGIN op 1642 ( update custom_format "Dumpstarr LQ Groups" )
update "condition_patterns" set "regular_expression_name" = 'Dumpstarr LQ Groups Title' where "custom_format_name" = 'Dumpstarr LQ Groups' and "condition_name" = 'Dumpstarr Banned Groups' and "regular_expression_name" in ('Dumpstarr Banned Groups Title', 'Dumpstarr LQ Groups Title');
-- --- END op 1642

-- --- BEGIN op 1643 ( update custom_format "Dumpstarr LQ Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Title'
	  AND name = 'Dumpstarr Banned Groups Release Title'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1643

-- --- BEGIN op 1644 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Dumpstarr LQ Groups', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Dumpstarr LQ Groups', 'Dumpstarr LQ Groups');
-- --- END op 1644

-- --- BEGIN op 1645 ( update custom_format "Dumpstarr LQ Title" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Title'
	  AND name = 'Dumpstarr LQ Groups'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1645

-- --- BEGIN op 1646 ( update custom_format "Dumpstarr LQ Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Title', 'Dumpstarr LQ Groups Title', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Title', 'Dumpstarr LQ Groups Title', 'Dumpstarr LQ Groups Title');
-- --- END op 1646

-- --- BEGIN op 1647 ( update custom_format "Dumpstarr LQ Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dumpstarr LQ Groups'
	  AND name = 'Dumpstarr Banned Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1647

-- --- BEGIN op 1648 ( update custom_format "Dumpstarr LQ Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dumpstarr LQ Groups', 'Dumpstarr LQ Groups', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dumpstarr LQ Groups', 'Dumpstarr LQ Groups', 'Dumpstarr LQ Groups');
-- --- END op 1648
