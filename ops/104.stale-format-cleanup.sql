-- @operation: export
-- @entity: batch
-- @name: Stale format cleanup
-- @exportedAt: 2026-03-06T17:03:43.066Z
-- @opIds: 2537, 2538, 2539, 2540, 2541, 2542

-- --- BEGIN op 2537 ( delete custom_format "WEB-DL" )
delete from "custom_formats" where "name" = 'WEB-DL';
-- --- END op 2537

-- --- BEGIN op 2538 ( delete custom_format "WEBRip" )
delete from "custom_formats" where "name" = 'WEBRip';
-- --- END op 2538

-- --- BEGIN op 2539 ( delete custom_format "x264 (2160p)" )
delete from "custom_formats" where "name" = 'x264 (2160p)';
-- --- END op 2539

-- --- BEGIN op 2540 ( delete custom_format "x266" )
delete from "custom_formats" where "name" = 'x266';
-- --- END op 2540

-- --- BEGIN op 2541 ( delete custom_format "Xvid" )
delete from "custom_formats" where "name" = 'Xvid';
-- --- END op 2541

-- --- BEGIN op 2542 ( delete custom_format "x264" )
delete from "custom_formats" where "name" = 'x264';
-- --- END op 2542
