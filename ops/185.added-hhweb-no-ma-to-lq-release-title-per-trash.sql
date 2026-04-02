-- @operation: export
-- @entity: batch
-- @name: Added HHWEB (No MA) to LQ Release Title per TRaSH
-- @exportedAt: 2026-04-02T13:45:53.374Z
-- @opIds: 2179, 2180

-- --- BEGIN op 2179 ( create regular_expression "HHWEB (No MA)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HHWEB (No MA)', '^(?!.*\bMA\b.*\bWEB-?DL\b).*\b(HHWEB)\b', NULL, NULL);
-- --- END op 2179

-- --- BEGIN op 2180 ( update custom_format "TRaSH LQ Release Title" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TRaSH LQ Release Title', 'HHWEB (No MA)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TRaSH LQ Release Title', 'HHWEB (No MA)', 'HHWEB (No MA)');
-- --- END op 2180
