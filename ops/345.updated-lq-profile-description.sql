-- @operation: export
-- @entity: batch
-- @name: Updated LQ Profile Description
-- @exportedAt: 2026-07-15T16:29:30.884Z
-- @opIds: 3789

-- --- BEGIN op 3789 ( update quality_profile "LQ 1080p" )
update "quality_profiles" set "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed and scored for preference of x265. **NOTE! you may encounter transcoding if the client side does not support these codecs.**' where "name" = 'LQ 1080p' and "description" = '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show".
- You can expect to grab **MeGusta** releases 99% of the time.
- AV1 and x265 codecs are allowed and scored for preference of x265. **NOTE! you may encounter transcoding if the client side does not support these codecs.**';
-- --- END op 3789
