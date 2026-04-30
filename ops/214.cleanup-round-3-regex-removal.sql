-- @operation: export
-- @entity: batch
-- @name: Cleanup Round 3 (regex removal)
-- @exportedAt: 2026-04-30T15:26:25.943Z
-- @opIds: 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441

-- --- BEGIN op 345 ( delete regular_expression "6.1 Surround" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '6.1 Surround' AND tag_name = 'Audio';

delete from "regular_expressions" where "name" = '6.1 Surround' and "pattern" = '[^0-9]6[ .][0-1]';
-- --- END op 345

-- --- BEGIN op 346 ( delete regular_expression "Dumpstarr 1080p Tier 03" )
delete from "regular_expressions" where "name" = 'Dumpstarr 1080p Tier 03' and "pattern" = '^(DarQ|DiscoD|HONE|Weasley)$';
-- --- END op 346

-- --- BEGIN op 347 ( delete regular_expression "Dumpstarr 1080p Tier 04" )
delete from "regular_expressions" where "name" = 'Dumpstarr 1080p Tier 04' and "pattern" = '^(hallowed)$';
-- --- END op 347

-- --- BEGIN op 348 ( delete regular_expression "Dumpstarr 1080p Tier 05" )
delete from "regular_expressions" where "name" = 'Dumpstarr 1080p Tier 05' and "pattern" = '^(BHDStudio)$';
-- --- END op 348

-- --- BEGIN op 349 ( delete regular_expression "Dumpstarr 2160p Tier 03" )
delete from "regular_expressions" where "name" = 'Dumpstarr 2160p Tier 03' and "pattern" = '^(DarQ|DiscoD|HONE|Weasley)$';
-- --- END op 349

-- --- BEGIN op 350 ( delete regular_expression "Dumpstarr 2160p Tier 04" )
delete from "regular_expressions" where "name" = 'Dumpstarr 2160p Tier 04' and "pattern" = '^(hallowed)$';
-- --- END op 350

-- --- BEGIN op 351 ( delete regular_expression "Dumpstarr 2160p Tier 05" )
delete from "regular_expressions" where "name" = 'Dumpstarr 2160p Tier 05' and "pattern" = '^(BHDStudio)$';
-- --- END op 351

-- --- BEGIN op 352 ( delete regular_expression "E1" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'E1' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'E1' and "pattern" = '^(E1)$';
-- --- END op 352

-- --- BEGIN op 353 ( delete regular_expression "hi10p" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'hi10p' AND tag_name = 'Bit Depth';

delete from "regular_expressions" where "name" = 'hi10p' and "pattern" = 'hi10p';
-- --- END op 353

-- --- BEGIN op 354 ( delete regular_expression "Scrubs (2001)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scrubs (2001)' AND tag_name = 'Scrubs';

delete from "regular_expressions" where "name" = 'Scrubs (2001)' and "pattern" = '\bScrubs\b(?!.*2026)';
-- --- END op 354

-- --- BEGIN op 355 ( delete regular_expression "de[42]" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'de[42]' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'de[42]' and "pattern" = '^(de[42])$';
-- --- END op 355

-- --- BEGIN op 356 ( delete regular_expression "h264" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'h264' AND tag_name = 'Codec';

delete from "regular_expressions" where "name" = 'h264' and "pattern" = '(?i)h\s*\.?\s*264';
-- --- END op 356

-- --- BEGIN op 357 ( delete regular_expression "KAN3D2M" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KAN3D2M' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'KAN3D2M' and "pattern" = '^(KAN3D2M)$';
-- --- END op 357

-- --- BEGIN op 358 ( delete regular_expression "TRaSH Remux Tier 02 - Radarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 02 - Radarr' AND tag_name = 'Release Group Tier';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 02 - Radarr' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'TRaSH Remux Tier 02 - Radarr' and "pattern" = '^(ATELiER|NCmt|playBD|SiCFoI|SURFINBIRD|TEPES)$';
-- --- END op 358

-- --- BEGIN op 359 ( delete regular_expression "TRaSH Remux Tier 02 - Sonarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 02 - Sonarr' AND tag_name = 'Release Group Tier';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 02 - Sonarr' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'TRaSH Remux Tier 02 - Sonarr' and "pattern" = '^(decibeL|EPSiLON|HiFi|KRaLiMaRKo|playBD|PTer|SiCFoI|TRiToN)$';
-- --- END op 359

-- --- BEGIN op 360 ( delete regular_expression "x264" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x264' AND tag_name = 'Codec';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x264' AND tag_name = 'Encoder';

delete from "regular_expressions" where "name" = 'x264' and "pattern" = '^(?!.*(?i:remux)).*([xh](\.?264)|DVDRip)';
-- --- END op 360

-- --- BEGIN op 361 ( delete regular_expression "x266" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x266' AND tag_name = 'Codec';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x266' AND tag_name = 'VVC';

delete from "regular_expressions" where "name" = 'x266' and "pattern" = '[xh][ ._-]?266|\bVVC(\b|\d)';
-- --- END op 361

-- --- BEGIN op 362 ( delete regular_expression "D-Z0N3" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'D-Z0N3' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'D-Z0N3' and "pattern" = '^(D-Z0N3)$';
-- --- END op 362

-- --- BEGIN op 363 ( delete regular_expression "j3rico" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'j3rico' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'j3rico' and "pattern" = '^(j3rico)$';
-- --- END op 363

-- --- BEGIN op 364 ( delete regular_expression "Rose3Thorn" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Rose3Thorn' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Rose3Thorn' and "pattern" = '^(Rose3Thorn)$';
-- --- END op 364

-- --- BEGIN op 365 ( delete regular_expression "W4NK3R" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'W4NK3R' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'W4NK3R' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'W4NK3R' and "pattern" = '^(W4NK3R)$';
-- --- END op 365

-- --- BEGIN op 366 ( delete regular_expression "DS4K" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DS4K' AND tag_name = 'Enhancements';

delete from "regular_expressions" where "name" = 'DS4K' and "pattern" = '\b(DS4K)\b';
-- --- END op 366

-- --- BEGIN op 367 ( delete regular_expression "P0W4HD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'P0W4HD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'P0W4HD' and "pattern" = '^(P0W4HD)$';
-- --- END op 367

-- --- BEGIN op 368 ( delete regular_expression "AJP69" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AJP69' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'AJP69' and "pattern" = '^(AJP69)$';
-- --- END op 368

-- --- BEGIN op 369 ( delete regular_expression "ASD87" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ASD87' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ASD87' and "pattern" = '^(ASD87)$';
-- --- END op 369

-- --- BEGIN op 370 ( delete regular_expression "GS88" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GS88' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'GS88' and "pattern" = '^(GS88)$';
-- --- END op 370

-- --- BEGIN op 371 ( delete regular_expression "SA89" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SA89' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SA89' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SA89' and "pattern" = '^(SA89)$';
-- --- END op 371

-- --- BEGIN op 372 ( delete regular_expression "10bit" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '10bit' AND tag_name = 'Bit Depth';

delete from "regular_expressions" where "name" = '10bit' and "pattern" = '10[.-]?bit';
-- --- END op 372

-- --- BEGIN op 373 ( delete regular_expression "ADE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ADE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ADE' and "pattern" = '^(ADE)$';
-- --- END op 373

-- --- BEGIN op 374 ( delete regular_expression "AI - Radarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AI - Radarr' AND tag_name = 'AI';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AI - Radarr' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AI - Radarr' AND tag_name = 'Radarr';

delete from "regular_expressions" where "name" = 'AI - Radarr' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(AI)\b)';
-- --- END op 374

-- --- BEGIN op 375 ( delete regular_expression "AI - Sonarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AI - Sonarr' AND tag_name = 'AI';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AI - Sonarr' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AI - Sonarr' AND tag_name = 'Sonarr';

delete from "regular_expressions" where "name" = 'AI - Sonarr' and "pattern" = '(?<=\bS\d+\b).*(\b(AI)\b)';
-- --- END op 375

-- --- BEGIN op 376 ( delete regular_expression "ATELiER" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ATELiER' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ATELiER' and "pattern" = '^(ATELiER)$';
-- --- END op 376

-- --- BEGIN op 377 ( delete regular_expression "AU" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AU' AND tag_name = 'Version';

delete from "regular_expressions" where "name" = 'AU' and "pattern" = '\bAU\b';
-- --- END op 377

-- --- BEGIN op 378 ( delete regular_expression "AVC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AVC' AND tag_name = 'Codec';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AVC' AND tag_name = 'Encoder';

delete from "regular_expressions" where "name" = 'AVC' and "pattern" = '[xh][ ._-]?264|\bAVC(\b|\d)';
-- --- END op 378

-- --- BEGIN op 379 ( delete regular_expression "b0mbardiers" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'b0mbardiers' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'b0mbardiers' and "pattern" = '^(b0mbardiers)$';
-- --- END op 379

-- --- BEGIN op 380 ( delete regular_expression "BakedFEL" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BakedFEL' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BakedFEL' and "pattern" = '^(BakedFEL)$';
-- --- END op 380

-- --- BEGIN op 381 ( delete regular_expression "beAst" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'beAst' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'beAst' and "pattern" = '^(beAst)$';
-- --- END op 381

-- --- BEGIN op 382 ( delete regular_expression "BeiTai" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BeiTai' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BeiTai' and "pattern" = '^(BeiTai)$';
-- --- END op 382

-- --- BEGIN op 383 ( delete regular_expression "Better Theatricals" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Better Theatricals' AND tag_name = 'Edition';

delete from "regular_expressions" where "name" = 'Better Theatricals' and "pattern" = '^\b(terminator.?2|alien[^s].*?1979|star.wars.*?(4k|19)(77)|.*?\bempire.strikes.back|.*?\breturn.of.the.jedi|apocalypse.now|the.exorcist.*?1973|donnie.darko|amadeus|payback.*?1999|payback.straight.up.*?2006|almost.famous)\b';
-- --- END op 383

-- --- BEGIN op 384 ( delete regular_expression "BiOMA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BiOMA' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BiOMA' AND tag_name = 'Banned';

delete from "regular_expressions" where "name" = 'BiOMA' and "pattern" = '^(Bioma)$';
-- --- END op 384

-- --- BEGIN op 385 ( delete regular_expression "BLASPHEMY" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLASPHEMY' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLASPHEMY' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BLASPHEMY' and "pattern" = '^(BLASPHEMY)$';
-- --- END op 385

-- --- BEGIN op 386 ( delete regular_expression "Bracketed Year" )
delete from "regular_expressions" where "name" = 'Bracketed Year' and "pattern" = '\[\d{4}\]';
-- --- END op 386

-- --- BEGIN op 387 ( delete regular_expression "CAA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CAA' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CAA' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CAA' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'CAA' and "pattern" = '^(C\\.A\\.A)$';
-- --- END op 387

-- --- BEGIN op 388 ( delete regular_expression "ZoroSenpai" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ZoroSenpai' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ZoroSenpai' and "pattern" = '^(ZoroSenpai)$';
-- --- END op 388

-- --- BEGIN op 389 ( delete regular_expression "ZQ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ZQ' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ZQ' and "pattern" = '^(ZQ)$';
-- --- END op 389

-- --- BEGIN op 390 ( delete regular_expression "ZIMBO" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ZIMBO' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ZIMBO' and "pattern" = '^(ZIMBO)$';
-- --- END op 390

-- --- BEGIN op 391 ( delete regular_expression "SWTYBLZ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SWTYBLZ' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SWTYBLZ' and "pattern" = '^(SWTYBLZ)$';
-- --- END op 391

-- --- BEGIN op 392 ( delete regular_expression "Skazhutin" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Skazhutin' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Skazhutin' and "pattern" = '^(Skazhutin)$';
-- --- END op 392

-- --- BEGIN op 393 ( delete regular_expression "rightSIZE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'rightSIZE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'rightSIZE' and "pattern" = '^(rightSIZE)$';
-- --- END op 393

-- --- BEGIN op 394 ( delete regular_expression "Lulz" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Lulz' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Lulz' and "pattern" = '^(Lulz)$';
-- --- END op 394

-- --- BEGIN op 395 ( delete regular_expression "LAZARUS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LAZARUS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LAZARUS' and "pattern" = '^(LAZARUS)$';
-- --- END op 395

-- --- BEGIN op 396 ( delete regular_expression "GZ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GZ' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'GZ' and "pattern" = '^(GZ)$';
-- --- END op 396

-- --- BEGIN op 397 ( delete regular_expression "GUHZER" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GUHZER' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'GUHZER' and "pattern" = '^(GUHZER)$';
-- --- END op 397

-- --- BEGIN op 398 ( delete regular_expression "GALVANiZE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GALVANiZE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'GALVANiZE' and "pattern" = '^(GALVANiZE)$';
-- --- END op 398

-- --- BEGIN op 399 ( delete regular_expression "BlzT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BlzT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BlzT' and "pattern" = '^(BlzT)$';
-- --- END op 399

-- --- BEGIN op 400 ( delete regular_expression "UHD Bluray" )
delete from "regular_expressions" where "name" = 'UHD Bluray' and "pattern" = '\bUHD[-_.\s]?Blu[-]?Ray\b';
-- --- END op 400

-- --- BEGIN op 401 ( delete regular_expression "UHD Blu-ray" )
delete from "regular_expressions" where "name" = 'UHD Blu-ray' and "pattern" = '\bUHD[-_.\s]?Blu[-]?Ray\b';
-- --- END op 401

-- --- BEGIN op 402 ( delete regular_expression "TeamSyndicate" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TeamSyndicate' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TeamSyndicate' and "pattern" = '^(TeamSyndicate)$';
-- --- END op 402

-- --- BEGIN op 403 ( delete regular_expression "TayTo" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TayTo' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TayTo' and "pattern" = '^(TayTo)$';
-- --- END op 403

-- --- BEGIN op 404 ( delete regular_expression "Slappy" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Slappy' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Slappy' and "pattern" = '^(Slappy)$';
-- --- END op 404

-- --- BEGIN op 405 ( delete regular_expression "RandomBytes" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RandomBytes' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'RandomBytes' and "pattern" = '^(RandomBytes)$';
-- --- END op 405

-- --- BEGIN op 406 ( delete regular_expression "PussyFoot" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PussyFoot' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PussyFoot' and "pattern" = '^(PussyFoot)$';
-- --- END op 406

-- --- BEGIN op 407 ( delete regular_expression "playHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'playHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'playHD' and "pattern" = '^(playHD)$';
-- --- END op 407

-- --- BEGIN op 408 ( delete regular_expression "NyHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NyHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NyHD' and "pattern" = '^(NyHD)$';
-- --- END op 408

-- --- BEGIN op 409 ( delete regular_expression "Natuyuki" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Natuyuki' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Natuyuki' and "pattern" = '^(Natuyuki)$';
-- --- END op 409

-- --- BEGIN op 410 ( delete regular_expression "HypStu" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HypStu' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HypStu' and "pattern" = '^(HypStu)$';
-- --- END op 410

-- --- BEGIN op 411 ( delete regular_expression "GALAXY" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GALAXY' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'GALAXY' and "pattern" = '^(GALAXY)$';
-- --- END op 411

-- --- BEGIN op 412 ( delete regular_expression "Xvid" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Xvid' AND tag_name = 'Codec';

delete from "regular_expressions" where "name" = 'Xvid' and "pattern" = '(?i)[-. ]Xvid';
-- --- END op 412

-- --- BEGIN op 413 ( delete regular_expression "xander" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'xander' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'xander' and "pattern" = '^(xander)$';
-- --- END op 413

-- --- BEGIN op 414 ( delete regular_expression "TRaSH Remux Tier 03 - Radarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 03 - Radarr' AND tag_name = 'Release Group Tier';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 03 - Radarr' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'TRaSH Remux Tier 03 - Radarr' and "pattern" = '^(12GaugeShotgun|decibeL|EPSiLON|HiFi|iFT|KRaLiMaRKo|NTb|PTP|SumVision|TOA|TRiToN)$';
-- --- END op 414

-- --- BEGIN op 415 ( delete regular_expression "TRaSH Remux Tier 01 - Sonarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 01 - Sonarr' AND tag_name = 'Release Group Tier';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 01 - Sonarr' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'TRaSH Remux Tier 01 - Sonarr' and "pattern" = '^(BLURANiUM|BMF|FraMeSToR|PmP)$';
-- --- END op 415

-- --- BEGIN op 416 ( delete regular_expression "TRaSH Remux Tier 01 - Radarr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 01 - Radarr' AND tag_name = 'Release Group Tier';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRaSH Remux Tier 01 - Radarr' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'TRaSH Remux Tier 01 - Radarr' and "pattern" = '^(3L|BiZKiT|BLURANiUM|BMF|CiNEPHiLES|FraMeSToR|PiRAMiDHEAD|PmP|WiLDCAT|ZQ)$';
-- --- END op 416

-- --- BEGIN op 417 ( delete regular_expression "HDmux" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDmux' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HDmux' and "pattern" = '^(HDmux)$';
-- --- END op 417

-- --- BEGIN op 418 ( delete regular_expression "EXCiSION" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EXCiSION' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EXCiSION' and "pattern" = '^(EXCiSION)$';
-- --- END op 418

-- --- BEGIN op 419 ( delete regular_expression "EXP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EXP' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EXP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EXP' and "pattern" = '\[EXP\]|-EXP\b';
-- --- END op 419

-- --- BEGIN op 420 ( delete regular_expression "DRX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DRX' AND tag_name = 'Banned';

delete from "regular_expressions" where "name" = 'DRX' and "pattern" = '^(DRX)$';
-- --- END op 420

-- --- BEGIN op 421 ( delete regular_expression "HQMUX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HQMUX' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HQMUX' and "pattern" = '^(HQMUX)$';
-- --- END op 421

-- --- BEGIN op 422 ( delete regular_expression "WMING" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WMING' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WMING' and "pattern" = '^(WMING)$';
-- --- END op 422

-- --- BEGIN op 423 ( delete regular_expression "WiLF" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WiLF' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WiLF' and "pattern" = '^(WiLF)$';
-- --- END op 423

-- --- BEGIN op 424 ( delete regular_expression "WiLDCAT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WiLDCAT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WiLDCAT' and "pattern" = '^(WiLDCAT)$';
-- --- END op 424

-- --- BEGIN op 425 ( delete regular_expression "WiKi" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WiKi' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WiKi' and "pattern" = '^(WiKi)$';
-- --- END op 425

-- --- BEGIN op 426 ( delete regular_expression "WhiteRhino" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WhiteRhino' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WhiteRhino' and "pattern" = '^(WhiteRhino)$';
-- --- END op 426

-- --- BEGIN op 427 ( delete regular_expression "WATCHABLE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WATCHABLE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WATCHABLE' and "pattern" = '^(WATCHABLE)$';
-- --- END op 427

-- --- BEGIN op 428 ( delete regular_expression "VLAD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VLAD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'VLAD' and "pattern" = '^(VLAD)$';
-- --- END op 428

-- --- BEGIN op 429 ( delete regular_expression "ViSUM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ViSUM' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ViSUM' and "pattern" = '^(ViSUM)$';
-- --- END op 429

-- --- BEGIN op 430 ( delete regular_expression "VietHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VietHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'VietHD' and "pattern" = '^(VietHD)$';
-- --- END op 430

-- --- BEGIN op 431 ( delete regular_expression "VECTOR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VECTOR' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VECTOR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'VECTOR' and "pattern" = '^(VECTOR)$';
-- --- END op 431

-- --- BEGIN op 432 ( delete regular_expression "US" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'US' AND tag_name = 'Version';

delete from "regular_expressions" where "name" = 'US' and "pattern" = '\bUS\b';
-- --- END op 432

-- --- BEGIN op 433 ( delete regular_expression "ULTRAHDCLUB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ULTRAHDCLUB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ULTRAHDCLUB' and "pattern" = '^(ULTRAHDCLUB)$';
-- --- END op 433

-- --- BEGIN op 434 ( delete regular_expression "UK" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'UK' AND tag_name = 'Version';

delete from "regular_expressions" where "name" = 'UK' and "pattern" = '\bUK\b';
-- --- END op 434

-- --- BEGIN op 435 ( delete regular_expression "TnP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TnP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TnP' and "pattern" = '^(TnP)$';
-- --- END op 435

-- --- BEGIN op 436 ( delete regular_expression "ThD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ThD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ThD' and "pattern" = '^(ThD)$';
-- --- END op 436

-- --- BEGIN op 437 ( delete regular_expression "TDD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TDD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TDD' and "pattern" = '^(TDD)$';
-- --- END op 437

-- --- BEGIN op 438 ( delete custom_format "SD Golden Popcorn" )
delete from "custom_formats" where "name" = 'SD Golden Popcorn';
-- --- END op 438

-- --- BEGIN op 439 ( delete custom_format "SD Quality Tier 1" )
delete from "custom_formats" where "name" = 'SD Quality Tier 1';
-- --- END op 439

-- --- BEGIN op 440 ( delete custom_format "SD Quality Tier 2" )
delete from "custom_formats" where "name" = 'SD Quality Tier 2';
-- --- END op 440

-- --- BEGIN op 441 ( delete custom_format "SDR (no WEBDL)" )
delete from "custom_formats" where "name" = 'SDR (no WEBDL)';
-- --- END op 441
