-- @operation: export
-- @entity: batch
-- @name: Updated Anime Naming Scheme
-- @exportedAt: 2026-05-21T18:48:21.224Z
-- @opIds: 939

-- --- BEGIN op 939 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "anime_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}' where "name" = 'Sonarr' and "anime_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}[{MediaInfo VideoBitDepth}bit]{[MediaInfo VideoCodec]}[{Mediainfo AudioCodec} { Mediainfo AudioChannels}]{MediaInfo AudioLanguages}{-Release Group}';
-- --- END op 939
