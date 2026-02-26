-- @operation: export
-- @entity: batch
-- @name: Added BLOOM to WEB Tier 04 per Dictionarry
-- @exportedAt: 2026-02-26T22:15:48.902Z
-- @opIds: 400

-- --- BEGIN op 400 ( update regular_expression "Dictionarry WEB Tier 04" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(APEX|BLOOM|BTN|dB|PTP|RTN|SiC|SPiRiT|ViSUM)\b' where "name" = 'Dictionarry WEB Tier 04' and "pattern" = '(?<=^|[\s.-])(APEX|BTN|dB|PTP|RTN|SiC|SPiRiT|ViSUM)\b';
-- --- END op 400
