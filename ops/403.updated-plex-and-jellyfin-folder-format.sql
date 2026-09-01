-- @operation: export
-- @entity: batch
-- @name: Updated Plex and Jellyfin Folder Format
-- @exportedAt: 2026-09-01T16:51:21.256Z
-- @opIds: 5768, 5769

-- --- BEGIN op 5768 ( update radarr_naming "Radarr - Plex" )
update "radarr_naming" set "movie_folder_format" = '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}' where "name" = 'Radarr - Plex' and "movie_folder_format" = '{Movie CleanTitle} ({Release Year})';
-- --- END op 5768

-- --- BEGIN op 5769 ( update radarr_naming "Radarr - Jellyfin" )
update "radarr_naming" set "movie_folder_format" = '{Movie CleanTitle} ({Release Year}) [tmdbid-{TmdbId}]' where "name" = 'Radarr - Jellyfin' and "movie_folder_format" = '{Movie CleanTitle} ({Release Year})';
-- --- END op 5769
