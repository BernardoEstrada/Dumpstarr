-- @operation: export
-- @entity: batch
-- @name: Cleaned up LQ format titles
-- @exportedAt: 2026-06-01T17:36:16.363Z
-- @opIds: 1560, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577

-- --- BEGIN op 1560 ( update custom_format "Dumpstarr LQ Title" )
update "custom_formats" set "name" = 'Dumpstarr LQ Title' where "name" = 'Dumpstarr LQ Release Title';
-- --- END op 1560

-- --- BEGIN op 1561 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1561

-- --- BEGIN op 1562 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1562

-- --- BEGIN op 1563 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1563

-- --- BEGIN op 1564 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1564

-- --- BEGIN op 1565 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1565

-- --- BEGIN op 1566 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1566

-- --- BEGIN op 1567 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1567

-- --- BEGIN op 1568 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Title' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ Release Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1568

-- --- BEGIN op 1569 ( update custom_format "Dumpstarr LQ Group" )
update "custom_formats" set "name" = 'Dumpstarr LQ Group' where "name" = 'Dumpstarr LQ';
-- --- END op 1569

-- --- BEGIN op 1570 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1570

-- --- BEGIN op 1571 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1571

-- --- BEGIN op 1572 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1572

-- --- BEGIN op 1573 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 1573

-- --- BEGIN op 1574 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1574

-- --- BEGIN op 1575 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1575

-- --- BEGIN op 1576 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'radarr' and "score" = -10000;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1576

-- --- BEGIN op 1577 ( update quality_profile "Anime 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'radarr' and "score" = -10000;

update "quality_profile_custom_formats" set "custom_format_name" = 'Dumpstarr LQ Group' where "quality_profile_name" = 'Anime 1080p' and "custom_format_name" = 'Dumpstarr LQ' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 1577
