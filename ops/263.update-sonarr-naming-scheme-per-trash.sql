-- @operation: export
-- @entity: batch
-- @name: Update Sonarr naming scheme per TRaSH
-- @exportedAt: 2026-06-07T06:09:52.931Z
-- @opIds: 1655, 1656, 1657, 1658

-- --- BEGIN op 1655 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "standard_episode_format" = '{Series CleanTitleWithoutYear} ({Series Year}) - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}' where "name" = 'Sonarr' and "standard_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 1655

-- --- BEGIN op 1656 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "daily_episode_format" = '{Series CleanTitleWithoutYear} ({Series Year}) - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}' where "name" = 'Sonarr' and "daily_episode_format" = '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 1656

-- --- BEGIN op 1657 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "anime_episode_format" = '{Series CleanTitleWithoutYear} ({Series Year}) - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}' where "name" = 'Sonarr' and "anime_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}';
-- --- END op 1657

-- --- BEGIN op 1658 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "series_folder_format" = '{Series CleanTitleWithoutYear} ({Series Year}) {tvdb-{TvdbId}}' where "name" = 'Sonarr' and "series_folder_format" = '{Series TitleYear} {tvdb-{TvdbId}}';
-- --- END op 1658
