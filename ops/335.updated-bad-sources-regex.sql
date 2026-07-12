-- @operation: export
-- @entity: batch
-- @name: Updated Bad Sources regex
-- @exportedAt: 2026-07-12T20:20:03.771Z
-- @opIds: 2929

-- --- BEGIN op 2929 ( update regular_expression "LQ Sources" )
update "regular_expressions" set "pattern" = '\b(CAM|CAMRip|DVDSCR|HDCAM|HDSCR|HDTC|HDTS|PDVD|PreDVDRip|SCREENER|TELECINE|TELESYNC|TSRip|WORKPRINT)\b' where "name" = 'LQ Sources' and "pattern" = '\b(CAM|HDTS|HDSCR|SCREENER|TELESYNC)\b';
-- --- END op 2929
