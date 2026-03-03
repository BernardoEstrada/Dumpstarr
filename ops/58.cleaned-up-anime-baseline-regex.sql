-- @operation: export
-- @entity: batch
-- @name: Cleaned up Anime Baseline regex
-- @exportedAt: 2026-03-03T16:33:17.891Z
-- @opIds: 1457

-- --- BEGIN op 1457 ( update regular_expression "Dumpstarr Anime Baseline Groups" )
update "regular_expressions" set "pattern" = '\b(philosophy-raws|NanoAlchemist|moscowgolem|kuchikirukia|Lowpower-Raws|SOFCJ-Raws|VCB-Studio|Yurasyk\/Chyrka|Koten_Gars|IrizaRaws|YURASUKA|sergey_krs|DmonHiro|Snow-Raws|ANK-Raws|Urotsuki|Seicher|Kagura|mottoj|UCCUSS|Zagzad|H-Enc|jsum|CBM|HQR|SCY|UQW|km)\b' where "name" = 'Dumpstarr Anime Baseline Groups' and "pattern" = '(?i)(?:^\[|(?<=-)|(?<=\[))(?:philosophy-raws|NanoAlchemist|moscowgolem|kuchikirukia|Lowpower-Raws|SOFCJ-Raws|VCB-Studio|Yurasyk\/Chyrka|Koten_Gars|IrizaRaws|YURASUKA|sergey_krs|DmonHiro|Snow-Raws|ANK-Raws|Urotsuki|Seicher|Kagura|mottoj|UCCUSS|Zagzad|H-Enc|jsum|CBM|HQR|SCY|UQW|km)(?:\]|\b|$)';
-- --- END op 1457
