-- @operation: export
-- @entity: batch
-- @name: Removed stale Dolby Vision regex
-- @exportedAt: 2026-03-02T23:29:42.577Z
-- @opIds: 1192, 1193, 1194, 1195

-- --- BEGIN op 1192 ( update regular_expression "Dolby Vision (w/o HDR fallback)" )
update "regular_expressions" set "name" = 'Dolby Vision (w/o HDR fallback)' where "name" = 'Dolby Vision (Without Fallback)';
-- --- END op 1192

-- --- BEGIN op 1193 ( delete regular_expression "Dolby Vision (w/o HDR fallback)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision (w/o HDR fallback)' AND tag_name = 'Colour Grade';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision (w/o HDR fallback)' AND tag_name = 'Enhancement';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision (w/o HDR fallback)' AND tag_name = 'HDR';

delete from "regular_expressions" where "name" = 'Dolby Vision (w/o HDR fallback)' and "pattern" = '(?<=^(?!.*(HDR|HULU|REMUX|BLURAY)).*?)\b(DV|Dovi|Dolby[- .]?V(ision)?)\b';
-- --- END op 1193

-- --- BEGIN op 1194 ( delete regular_expression "Dolby Vision HLG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision HLG' AND tag_name = 'Dolby Vision';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision HLG' AND tag_name = 'HDR';

delete from "regular_expressions" where "name" = 'Dolby Vision HLG' and "pattern" = '\b(DV[ .]HLG)\b';
-- --- END op 1194

-- --- BEGIN op 1195 ( delete regular_expression "Dolby Vision SDR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision SDR' AND tag_name = 'Dolby Vision';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dolby Vision SDR' AND tag_name = 'SDR';

delete from "regular_expressions" where "name" = 'Dolby Vision SDR' and "pattern" = '\b(DV[ .]SDR)\b';
-- --- END op 1195
