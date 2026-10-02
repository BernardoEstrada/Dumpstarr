---
title: Profile Update - Movies 2160p
severity: info
published_at: '2026-10-02T15:14:00.000Z'
expires_at: '2027-10-02T15:14:00.000Z'
---

The Movies 2160p profiles has been updated to support and prefer MA WEB-DLs from tiered groups. These changes were made as the MA WEB-DLs tend to be slightly larger in file size, but much higher bitrates. This is a worthy trade-off for better quality video.

If you'd like to revert these changes back to the original Movies 2160p configuration, here is how.

1. Duplicate the Movies 2160p profile and give it a name you prefer.
2. In the Scoring tab - Uncheck the yellow checkbox for the "MA Preferred" custom format.
3. In the Qualities tab - Delete the "2160p" quality group
4. In the Qualities tab - Create a new group called "2160p WEB" and add the "WEBDL-2160p" and "WEBRip-2160p".
5. In the Qualities tab - Make sure the Bluray-2160p quality is at the very top and the green arrow checkbox is selected.