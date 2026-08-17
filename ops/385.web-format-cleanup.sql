-- @operation: export
-- @entity: batch
-- @name: (WEB) Format Cleanup
-- @exportedAt: 2026-08-17T20:50:16.398Z
-- @opIds: 5551, 5552, 5553, 5554

-- --- BEGIN op 5551 ( delete custom_format "DTS-HD HRA (WEB)" )
delete from "custom_formats" where "name" = 'DTS-HD HRA (WEB)';
-- --- END op 5551

-- --- BEGIN op 5552 ( delete custom_format "DTS-HD MA (WEB)" )
delete from "custom_formats" where "name" = 'DTS-HD MA (WEB)';
-- --- END op 5552

-- --- BEGIN op 5553 ( delete custom_format "DTS-X (WEB)" )
delete from "custom_formats" where "name" = 'DTS-X (WEB)';
-- --- END op 5553

-- --- BEGIN op 5554 ( delete custom_format "TrueHD (WEB)" )
delete from "custom_formats" where "name" = 'TrueHD (WEB)';
-- --- END op 5554
