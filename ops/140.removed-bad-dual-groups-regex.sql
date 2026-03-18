-- @operation: export
-- @entity: batch
-- @name: Removed Bad Dual Groups regex
-- @exportedAt: 2026-03-18T18:49:31.236Z
-- @opIds: 1157

-- --- BEGIN op 1157 ( delete regular_expression "Bad Dual Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Bad Dual Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Bad Dual Groups' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'Bad Dual Groups' and "pattern" = '\b(alfaHD.*|BAT|BiOMA|BlackBit|BNd|C\.A\.A|Cory|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|MGE\b.*|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TM\b|TURG|tokar86a|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)\b';
-- --- END op 1157
