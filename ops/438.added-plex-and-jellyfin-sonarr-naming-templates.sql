-- @operation: export
-- @entity: batch
-- @name: Added Plex and Jellyfin Sonarr Naming Templates
-- @exportedAt: 2026-10-14T14:30:01.214Z
-- @opIds: 6792, 6793, 6794, 6795

-- --- BEGIN op 6792 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "name" = 'Sonarr - Plex' where "name" = 'Sonarr';
-- --- END op 6792

-- --- BEGIN op 6793 ( create sonarr_naming "Sonarr - Jellyfin" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr - Jellyfin', 1, '{Series CleanTitleWithoutYear} {(Series Year)} - S{season:00}E{episode:00} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Series CleanTitleWithoutYear} {(Series Year)} - {Air-Date} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Series CleanTitleWithoutYear} {(Series Year)} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}', '{Series CleanTitleWithoutYear} {(Series Year)}', 'Season {season:00}', 0, 4, NULL, 5);
-- --- END op 6793

-- --- BEGIN op 6794 ( update sonarr_naming "Sonarr - Jellyfin" )
update "sonarr_naming" set "series_folder_format" = '{Series CleanTitleWithoutYear} {(Series Year)} [tvdbid-{TvdbId}]' where "name" = 'Sonarr - Jellyfin' and "series_folder_format" = '{Series CleanTitleWithoutYear} {(Series Year)}';
-- --- END op 6794

-- --- BEGIN op 6795 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "series_folder_format" = '{Series CleanTitleWithoutYear} {(Series Year)} {tvdb-{TvdbId}}' where "name" = 'Sonarr - Plex' and "series_folder_format" = '{Series CleanTitleWithoutYear} {(Series Year)}';
-- --- END op 6795
