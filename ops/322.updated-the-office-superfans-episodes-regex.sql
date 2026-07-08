-- @operation: export
-- @entity: batch
-- @name: Updated The Office Superfans Episodes regex
-- @exportedAt: 2026-07-08T02:02:59.485Z
-- @opIds: 2758, 2759, 2760, 2761, 2762, 2763, 2764, 2765

-- --- BEGIN op 2758 ( create regular_expression "The Office Superfan Episodes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('The Office Superfan Episodes', '(?i)The\W+Office\W+Superfan\W+Episodes', NULL, NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('The Office Superfan Episodes', 'Banned');
-- --- END op 2758

-- --- BEGIN op 2759 ( update regular_expression "The Office Superfan Episodes" )
update "regular_expressions" set "pattern" = '(?i)The\W+Office\W+Superfan\W+Episodes.*-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office Superfan Episodes' and "pattern" = '(?i)The\W+Office\W+Superfan\W+Episodes';
-- --- END op 2759

-- --- BEGIN op 2760 ( delete regular_expression "The Office Superfan Episodes" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'The Office Superfan Episodes' AND tag_name = 'Banned';

delete from "regular_expressions" where "name" = 'The Office Superfan Episodes';
-- --- END op 2760

-- --- BEGIN op 2761 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)The\W+Office\W+Superfan\W+Episodes.*-(CRFW|FLUX|playWEB)\b' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '(?i)^the[ ._-]+office[ ._-]+us.*(extended\.cut|superfans).*-(CRFW|FLUX|playWEB)\b';
-- --- END op 2761

-- --- BEGIN op 2762 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)The\W+Office\W+Superfan\W+Episodes' where "name" = 'The Office (US) Superfans Banned Groups' and "pattern" = '(?i)The\W+Office\W+Superfan\W+Episodes.*-(CRFW|FLUX|playWEB)\b';
-- --- END op 2762

-- --- BEGIN op 2763 ( update regular_expression "The Office (US) Superfans Banned Groups" )
update "regular_expressions" set "description" = 'Negates releases of the extended version of The Office where the release title is incorrect, causing import/automation issues.' where "name" = 'The Office (US) Superfans Banned Groups' and "description" = 'Negates certain groups that cause import/automation issues with The Office (US).';
-- --- END op 2763

-- --- BEGIN op 2764 ( update regular_expression "The Office (US) Superfans Episodes" )
update "regular_expressions" set "name" = 'The Office (US) Superfans Episodes' where "name" = 'The Office (US) Superfans Banned Groups';
-- --- END op 2764

-- --- BEGIN op 2765 ( update custom_format "Bad Source" )
update "condition_patterns" set "regular_expression_name" = 'The Office (US) Superfans Episodes' where "custom_format_name" = 'Bad Source' and "condition_name" = 'The Office Superfans' and "regular_expression_name" in ('The Office (US) Superfans Banned Groups', 'The Office (US) Superfans Episodes');
-- --- END op 2765
