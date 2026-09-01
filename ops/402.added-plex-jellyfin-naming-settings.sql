-- @operation: export
-- @entity: batch
-- @name: Added Plex/Jellyfin Naming Settings
-- @exportedAt: 2026-09-01T15:55:38.286Z
-- @opIds: 5756, 5757, 5758, 5759, 5760, 5761, 5762, 5763, 5764, 5766

-- --- BEGIN op 5756 ( update radarr_naming "Radarr - Plex" )
update "radarr_naming" set "name" = 'Radarr - Plex' where "name" = 'Radarr';
-- --- END op 5756

-- --- BEGIN op 5757 ( update radarr_naming "Radarr - Plex" )
update "radarr_naming" set "movie_format" = '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} - {edition-{Edition Tags}} {[MediaInfo 3D]}{[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}' where "name" = 'Radarr - Plex' and "movie_format" = '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}';
-- --- END op 5757

-- --- BEGIN op 5758 ( update radarr_naming "Radarr - Plex" )
update "radarr_naming" set "movie_folder_format" = '{Movie CleanTitle} ({Release Year})' where "name" = 'Radarr - Plex' and "movie_folder_format" = '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}';
-- --- END op 5758

-- --- BEGIN op 5759 ( create radarr_naming "Radarr - Jellyfin" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('Radarr - Jellyfin', 1, '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] - {{Edition Tags}} {[MediaInfo 3D]}{[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Movie CleanTitle} ({Release Year})', 0, 'delete');
-- --- END op 5759

-- --- BEGIN op 5760 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "standard_episode_format" = '{Series CleanTitleWithoutYear} {(Series Year)} - S{season:00}E{episode:00} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}' where "name" = 'Sonarr' and "standard_episode_format" = '{Series CleanTitleWithoutYear} ({Series Year}) - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 5760

-- --- BEGIN op 5761 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "series_folder_format" = '{Series CleanTitleWithoutYear} {(Series Year)}' where "name" = 'Sonarr' and "series_folder_format" = '{Series CleanTitleWithoutYear} ({Series Year}) {tvdb-{TvdbId}}';
-- --- END op 5761

-- --- BEGIN op 5762 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "name" = 'Sonarr - Plex' where "name" = 'Sonarr';
-- --- END op 5762

-- --- BEGIN op 5763 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "daily_episode_format" = '{Series CleanTitleWithoutYear} {(Series Year)} - {Air-Date} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}' where "name" = 'Sonarr - Plex' and "daily_episode_format" = '{Series CleanTitleWithoutYear} ({Series Year}) - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 5763

-- --- BEGIN op 5764 ( update sonarr_naming "Sonarr - Plex" )
update "sonarr_naming" set "anime_episode_format" = '{Series CleanTitleWithoutYear} {(Series Year)} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}' where "name" = 'Sonarr - Plex' and "anime_episode_format" = '{Series CleanTitleWithoutYear} ({Series Year}) - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}';
-- --- END op 5764

-- --- BEGIN op 5766 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "name" = 'Sonarr' where "name" = 'Sonarr - Plex';
-- --- END op 5766
