-- @operation: export
-- @entity: batch
-- @name: Fixed Upscaled regex per TRaSH
-- @exportedAt: 2026-02-24T00:53:44.710Z
-- @opIds: 223

-- --- BEGIN op 223 ( update regular_expression "Upscaled" )
update "regular_expressions" set "pattern" = '(?<=\b\d{3,4}p\b).*\b(AI[ ._-]?Enhanced?|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b' where "name" = 'Upscaled' and "pattern" = '(?<=\b\d{3,4}p\b).*\b(AI[ ._-]?Enhanced|UPS(UHD)?|Upscaled?([ ._-]?UHD)?|UpRez)\b';
-- --- END op 223
