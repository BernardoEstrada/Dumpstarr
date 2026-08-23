-- @operation: export
-- @entity: batch
-- @name: Update EVO and PiRaTeS no WEB-DL per TRaSH
-- @exportedAt: 2026-08-23T18:07:54.499Z
-- @opIds: 5685, 5686

-- --- BEGIN op 5685 ( update regular_expression "EVO no WEB-DL" )
update "regular_expressions" set "pattern" = '(?<!\bweb[ ._-]?(dl|rip)?\b.*)-(EVO)\b' where "name" = 'EVO no WEB-DL' and "pattern" = '(?<=\b[12]\d{3}\b.*?)(?<!\b(web[ ._-]?(dl|rip)?).*?)\b(EVO)\b';
-- --- END op 5685

-- --- BEGIN op 5686 ( update regular_expression "PiRaTeS no WEB-DL" )
update "regular_expressions" set "pattern" = '(?<!\bweb[ ._-]?(dl|rip)?\b.*)-(PiRaTeS)\b' where "name" = 'PiRaTeS no WEB-DL' and "pattern" = '(?<=\b[12]\d{3}\b.*?)(?<!\b(web[ ._-]?(dl|rip)?).*?)\b(PiRaTeS)\b';
-- --- END op 5686
