-- @operation: export
-- @entity: batch
-- @name: Cleanup Round 4 (regex removal)
-- @exportedAt: 2026-04-30T16:15:24.518Z
-- @opIds: 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546

-- --- BEGIN op 443 ( delete custom_format "WEB Boost" )
delete from "custom_formats" where "name" = 'WEB Boost';
-- --- END op 443

-- --- BEGIN op 444 ( delete custom_format "Season Pack" )
delete from "custom_formats" where "name" = 'Season Pack';
-- --- END op 444

-- --- BEGIN op 445 ( delete custom_format "Not English" )
delete from "custom_formats" where "name" = 'Not English';
-- --- END op 445

-- --- BEGIN op 446 ( delete custom_format "Not Only English" )
delete from "custom_formats" where "name" = 'Not Only English';
-- --- END op 446

-- --- BEGIN op 447 ( delete custom_format "Not Only English (Missing)" )
delete from "custom_formats" where "name" = 'Not Only English (Missing)';
-- --- END op 447

-- --- BEGIN op 448 ( delete custom_format "HDTV" )
delete from "custom_formats" where "name" = 'HDTV';
-- --- END op 448

-- --- BEGIN op 449 ( delete regular_expression "HaB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HaB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HaB' and "pattern" = '^(HaB)$';
-- --- END op 449

-- --- BEGIN op 450 ( delete regular_expression "DON" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DON' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'DON' and "pattern" = '^(DON)$';
-- --- END op 450

-- --- BEGIN op 451 ( delete regular_expression "EbP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EbP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EbP' and "pattern" = '^(EbP)$';
-- --- END op 451

-- --- BEGIN op 452 ( delete regular_expression "decibeL" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'decibeL' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'decibeL' and "pattern" = '^(decibeL)$';
-- --- END op 452

-- --- BEGIN op 453 ( delete regular_expression "HiP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HiP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HiP' and "pattern" = '^(HiP)$';
-- --- END op 453

-- --- BEGIN op 454 ( delete regular_expression "HDChina" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDChina' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HDChina' and "pattern" = '^(HDChina)$';
-- --- END op 454

-- --- BEGIN op 455 ( delete regular_expression "IDE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'IDE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'IDE' and "pattern" = '^(IDE)$';
-- --- END op 455

-- --- BEGIN op 456 ( delete regular_expression "4KDVS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '4KDVS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = '4KDVS' and "pattern" = '^(4KDVS)$';
-- --- END op 456

-- --- BEGIN op 457 ( delete regular_expression "AViATOR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AViATOR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'AViATOR' and "pattern" = '^(AViATOR)$';
-- --- END op 457

-- --- BEGIN op 458 ( delete regular_expression "BMF" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BMF' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BMF' and "pattern" = '^(BMF)$';
-- --- END op 458

-- --- BEGIN op 459 ( delete regular_expression "BRUTE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BRUTE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BRUTE' and "pattern" = '^(BRUTE)$';
-- --- END op 459

-- --- BEGIN op 460 ( delete regular_expression "BSTD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BSTD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BSTD' and "pattern" = '^(BSTD)$';
-- --- END op 460

-- --- BEGIN op 461 ( delete regular_expression "BV" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BV' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BV' and "pattern" = '^(BV)$';
-- --- END op 461

-- --- BEGIN op 462 ( delete regular_expression "c0kE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'c0kE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'c0kE' and "pattern" = '^(c0kE)$';
-- --- END op 462

-- --- BEGIN op 463 ( delete regular_expression "CART" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CART' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CART' and "pattern" = '^(CART)$';
-- --- END op 463

-- --- BEGIN op 464 ( delete regular_expression "CHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CHD' and "pattern" = '^(CHD)$';
-- --- END op 464

-- --- BEGIN op 465 ( delete regular_expression "Chotab" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Chotab' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Chotab' and "pattern" = '^(Chotab)$';
-- --- END op 465

-- --- BEGIN op 466 ( delete regular_expression "CJ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CJ' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CJ' and "pattern" = '^(CJ)$';
-- --- END op 466

-- --- BEGIN op 467 ( delete regular_expression "CMCT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CMCT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CMCT' and "pattern" = '^(CMCT)$';
-- --- END op 467

-- --- BEGIN op 468 ( delete regular_expression "coffee" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'coffee' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'coffee' and "pattern" = '^(coffee)$';
-- --- END op 468

-- --- BEGIN op 469 ( delete regular_expression "CRiSC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CRiSC' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CRiSC' and "pattern" = '^(CRiSC)$';
-- --- END op 469

-- --- BEGIN op 470 ( delete regular_expression "CRX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CRX' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CRX' and "pattern" = '^(CRX)$';
-- --- END op 470

-- --- BEGIN op 471 ( delete regular_expression "CtrlHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CtrlHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CtrlHD' and "pattern" = '^(CtrlHD)$';
-- --- END op 471

-- --- BEGIN op 472 ( delete regular_expression "Dariush" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dariush' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dariush' and "pattern" = '^(Dariush)$';
-- --- END op 472

-- --- BEGIN op 473 ( delete regular_expression "DEPTH" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DEPTH' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'DEPTH' and "pattern" = '^(DEPTH)$';
-- --- END op 473

-- --- BEGIN op 474 ( delete regular_expression "Dumpstarr WEB Tier 05" )
delete from "regular_expressions" where "name" = 'Dumpstarr WEB Tier 05' and "pattern" = '^(PiRaTeS)$';
-- --- END op 474

-- --- BEGIN op 475 ( delete regular_expression "E.N.D" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'E.N.D' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'E.N.D' and "pattern" = '^(E.N.D)$';
-- --- END op 475

-- --- BEGIN op 476 ( delete regular_expression "EDPH" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EDPH' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EDPH' and "pattern" = '^(EDPH)$';
-- --- END op 476

-- --- BEGIN op 477 ( delete regular_expression "EMERALD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EMERALD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EMERALD' and "pattern" = '^(EMERALD)$';
-- --- END op 477

-- --- BEGIN op 478 ( delete regular_expression "ESiR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ESiR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ESiR' and "pattern" = '^(ESiR)$';
-- --- END op 478

-- --- BEGIN op 479 ( delete regular_expression "EuReKA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EuReKA' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EuReKA' and "pattern" = '^(EuReKA)$';
-- --- END op 479

-- --- BEGIN op 480 ( delete regular_expression "eXterminator" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'eXterminator' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'eXterminator' and "pattern" = '^(eXterminator)$';
-- --- END op 480

-- --- BEGIN op 481 ( delete regular_expression "FLAME" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FLAME' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FLAME' and "pattern" = '^(FLAME)$';
-- --- END op 481

-- --- BEGIN op 482 ( delete regular_expression "FoRM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FoRM' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FoRM' and "pattern" = '^(FoRM)$';
-- --- END op 482

-- --- BEGIN op 483 ( delete regular_expression "FoV" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FoV' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FoV' AND tag_name = 'Scrubs';

delete from "regular_expressions" where "name" = 'FoV' and "pattern" = '^(FoV)$';
-- --- END op 483

-- --- BEGIN op 484 ( delete regular_expression "FraMeSToR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FraMeSToR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FraMeSToR' and "pattern" = '^(FraMeSToR)$';
-- --- END op 484

-- --- BEGIN op 485 ( delete regular_expression "Full Disc" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Full Disc' AND tag_name = 'Storage';

delete from "regular_expressions" where "name" = 'Full Disc' and "pattern" = '^(?!.*\b((?<!HD[._ -]|HD)DVD|BDRip|MKV|XviD|WMV|d3g|BDREMUX|REMUX|^(?=.*1080p)(?=.*HEVC)|[xh][-_. ]?26[45]|German.*DL|((?<=\d{4}).*German.*(DL)?)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2)\b))\b)(((?=.*\b(Blu[-_. ]?ray|BD|HD[-_. ]?DVD)\b)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2|BDMV|ISO)\b))|^((?=.*\b(^((?=.*\b((.*_)?COMPLETE.*|Dis[ck])\b)(?=.*(Blu[-_. ]?ray|HD[-_. ]?DVD)))|3D[-_. ]?BD|BR[-_. ]?DISK|Full[-_. ]?Blu[-_. ]?ray|^((?=.*((BD|UHD)[-_. ]?(25|50|66|100|ISO)))))))).*|(?i)(DVD9|DVD5|NTSC|PAL|VOB IFO|VC-1|AVC|MPEG-2|\bCOMPLETE[-.\s]?(?:UHD[-.\s])?BLU[-.\s]?RAY\b|\bCOMPLETE BLURAY\b|\bBR-Disk\b)';
-- --- END op 485

-- --- BEGIN op 486 ( delete regular_expression "GAMEOVER" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GAMEOVER' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GAMEOVER' AND tag_name = 'Scrubs';

delete from "regular_expressions" where "name" = 'GAMEOVER' and "pattern" = '^(GAMEOVER)$';
-- --- END op 486

-- --- BEGIN op 487 ( delete regular_expression "Geek" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Geek' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Geek' and "pattern" = '^(Geek)$';
-- --- END op 487

-- --- BEGIN op 488 ( delete regular_expression "HANDJOB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HANDJOB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HANDJOB' and "pattern" = '^(HANDJOB)$';
-- --- END op 488

-- --- BEGIN op 489 ( delete regular_expression "hdalx" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'hdalx' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'hdalx' and "pattern" = '^(hdalx)$';
-- --- END op 489

-- --- BEGIN op 490 ( delete regular_expression "HDC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDC' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HDC' and "pattern" = '^(HDC)$';
-- --- END op 490

-- --- BEGIN op 491 ( delete regular_expression "HDMaNiAcS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDMaNiAcS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HDMaNiAcS' and "pattern" = '^(HDMaNiAcS)$';
-- --- END op 491

-- --- BEGIN op 492 ( delete regular_expression "HiDt" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HiDt' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HiDt' and "pattern" = '^(HiDt)$';
-- --- END op 492

-- --- BEGIN op 493 ( delete regular_expression "HiFi" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HiFi' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HiFi' and "pattern" = '^(HiFi)$';
-- --- END op 493

-- --- BEGIN op 494 ( delete regular_expression "HR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HR' and "pattern" = '^(HR)$';
-- --- END op 494

-- --- BEGIN op 495 ( delete regular_expression "IAMABLE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'IAMABLE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'IAMABLE' and "pattern" = '^(IAMABLE)$';
-- --- END op 495

-- --- BEGIN op 496 ( delete regular_expression "iFT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iFT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iFT' and "pattern" = '^(iFT)$';
-- --- END op 496

-- --- BEGIN op 497 ( delete regular_expression "iLoveHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iLoveHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iLoveHD' and "pattern" = '^(iLoveHD)$';
-- --- END op 497

-- --- BEGIN op 498 ( delete regular_expression "IMNEWHERE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'IMNEWHERE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'IMNEWHERE' and "pattern" = '^(IMNEWHERE)$';
-- --- END op 498

-- --- BEGIN op 499 ( delete regular_expression "iON" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iON' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iON' and "pattern" = '^(iON)$';
-- --- END op 499

-- --- BEGIN op 500 ( delete regular_expression "Ivandro" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Ivandro' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Ivandro' and "pattern" = '^(Ivandro)$';
-- --- END op 500

-- --- BEGIN op 501 ( delete regular_expression "JustWatch" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'JustWatch' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'JustWatch' and "pattern" = '^(JustWatch)$';
-- --- END op 501

-- --- BEGIN op 502 ( delete regular_expression "KASHMiR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KASHMiR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'KASHMiR' and "pattern" = '^(KASHMiR)$';
-- --- END op 502

-- --- BEGIN op 503 ( delete regular_expression "Kitsune" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Kitsune' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Kitsune' and "pattern" = '^(Kitsune)$';
-- --- END op 503

-- --- BEGIN op 504 ( delete regular_expression "KnG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KnG' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'KnG' and "pattern" = '^(KnG)$';
-- --- END op 504

-- --- BEGIN op 505 ( delete regular_expression "LEGi0N" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LEGi0N' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LEGi0N' and "pattern" = '^(LEGi0N)$';
-- --- END op 505

-- --- BEGIN op 506 ( delete regular_expression "LiNG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LiNG' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LiNG' and "pattern" = '^(LiNG)$';
-- --- END op 506

-- --- BEGIN op 507 ( delete regular_expression "LolHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LolHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LolHD' and "pattern" = '^(LolHD)$';
-- --- END op 507

-- --- BEGIN op 508 ( delete regular_expression "LoRD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LoRD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LoRD' and "pattern" = '^(LoRD)$';
-- --- END op 508

-- --- BEGIN op 509 ( delete regular_expression "luvBB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'luvBB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'luvBB' and "pattern" = '^(luvBB)$';
-- --- END op 509

-- --- BEGIN op 510 ( delete regular_expression "MaG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MaG' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MaG' and "pattern" = '^(MaG)$';
-- --- END op 510

-- --- BEGIN op 511 ( delete regular_expression "MainFrame" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MainFrame' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MainFrame' and "pattern" = '^(MainFrame)$';
-- --- END op 511

-- --- BEGIN op 512 ( delete regular_expression "MiMiC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MiMiC' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MiMiC' and "pattern" = '^(MiMiC)$';
-- --- END op 512

-- --- BEGIN op 513 ( delete regular_expression "MTeam" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MTeam' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MTeam' and "pattern" = '^(MTeam)$';
-- --- END op 513

-- --- BEGIN op 514 ( delete regular_expression "NCmt" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NCmt' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NCmt' and "pattern" = '^(NCmt)$';
-- --- END op 514

-- --- BEGIN op 515 ( delete regular_expression "NiBuRu" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NiBuRu' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NiBuRu' and "pattern" = '^(NiBuRu)$';
-- --- END op 515

-- --- BEGIN op 516 ( delete regular_expression "NiP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NiP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NiP' and "pattern" = '^(NiP)$';
-- --- END op 516

-- --- BEGIN op 517 ( delete regular_expression "nmd" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'nmd' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'nmd' and "pattern" = '^(nmd)$';
-- --- END op 517

-- --- BEGIN op 518 ( delete regular_expression "ORBiT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ORBiT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ORBiT' and "pattern" = '^(ORBiT)$';
-- --- END op 518

-- --- BEGIN op 519 ( delete regular_expression "ORiGEN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ORiGEN' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ORiGEN' and "pattern" = '^(ORiGEN)$';
-- --- END op 519

-- --- BEGIN op 520 ( delete regular_expression "pcroland" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'pcroland' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'pcroland' and "pattern" = '^(pcroland)$';
-- --- END op 520

-- --- BEGIN op 521 ( delete regular_expression "Penumbra" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Penumbra' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Penumbra' and "pattern" = '^(Penumbra)$';
-- --- END op 521

-- --- BEGIN op 522 ( delete regular_expression "Positive" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Positive' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Positive' and "pattern" = '^(Positive)$';
-- --- END op 522

-- --- BEGIN op 523 ( delete regular_expression "Prestige" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Prestige' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Prestige' and "pattern" = '^(Prestige)$';
-- --- END op 523

-- --- BEGIN op 524 ( delete regular_expression "PTer" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PTer' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PTer' and "pattern" = '^(PTer)$';
-- --- END op 524

-- --- BEGIN op 525 ( delete regular_expression "PTP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PTP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PTP' and "pattern" = '^(PTP)$';
-- --- END op 525

-- --- BEGIN op 526 ( delete regular_expression "PuTao" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PuTao' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PuTao' and "pattern" = '^(PuTao)$';
-- --- END op 526

-- --- BEGIN op 527 ( delete regular_expression "QOQ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'QOQ' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'QOQ' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'QOQ' and "pattern" = '^(QOQ)$';
-- --- END op 527

-- --- BEGIN op 528 ( delete regular_expression "ReaLHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ReaLHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ReaLHD' and "pattern" = '^(ReaLHD)$';
-- --- END op 528

-- --- BEGIN op 529 ( delete regular_expression "REBORN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'REBORN' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'REBORN' and "pattern" = '^(REBORN)$';
-- --- END op 529

-- --- BEGIN op 530 ( delete regular_expression "ReQuEsT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ReQuEsT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ReQuEsT' and "pattern" = '^(ReQuEsT)$';
-- --- END op 530

-- --- BEGIN op 531 ( delete regular_expression "RiCO" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RiCO' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'RiCO' and "pattern" = '^(RiCO)$';
-- --- END op 531

-- --- BEGIN op 532 ( delete regular_expression "SbR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SbR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SbR' and "pattern" = '^(SbR)$';
-- --- END op 532

-- --- BEGIN op 533 ( delete regular_expression "RO" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RO' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'RO' and "pattern" = '^(RO)$';
-- --- END op 533

-- --- BEGIN op 534 ( delete regular_expression "ROCiNANTE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ROCiNANTE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ROCiNANTE' and "pattern" = '^(ROCiNANTE)$';
-- --- END op 534

-- --- BEGIN op 535 ( delete regular_expression "rttr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'rttr' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'rttr' and "pattern" = '^(rttr)$';
-- --- END op 535

-- --- BEGIN op 536 ( delete regular_expression "SaNcTi" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SaNcTi' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SaNcTi' and "pattern" = '^(SaNcTi)$';
-- --- END op 536

-- --- BEGIN op 537 ( delete regular_expression "Scene Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scene Groups' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scene Groups' AND tag_name = 'Scene';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Scene Groups' AND tag_name = 'TRaSH';

delete from "regular_expressions" where "name" = 'Scene Groups' and "pattern" = '^(CAKES|GGEZ|GGWP|GLHF|GOSSIP|NAISU|KOGI|PECULATE|SLOT|EDITH|ETHEL|ELEANOR|B2B|SPAMnEGGS|FTP|DiRT|SYNCOPY|BAE|SuccessfulCrab|NHTFS|SURCODE|B0MBARDIERS|D3US|BROTHERHOOD|W4K|STRiKES)$';
-- --- END op 537

-- --- BEGIN op 538 ( delete regular_expression "SOP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SOP' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SOP' and "pattern" = '^(SOP)$';
-- --- END op 538

-- --- BEGIN op 539 ( delete regular_expression "SiMPLE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiMPLE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SiMPLE' and "pattern" = '^(SiMPLE)$';
-- --- END op 539

-- --- BEGIN op 540 ( delete regular_expression "Softboat" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Softboat' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Softboat' and "pattern" = '^(Softboat)$';
-- --- END op 540

-- --- BEGIN op 541 ( delete regular_expression "SURCODE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SURCODE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SURCODE' and "pattern" = '^(SURCODE)$';
-- --- END op 541

-- --- BEGIN op 542 ( delete regular_expression "SoLaR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SoLaR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SoLaR' and "pattern" = '^(SoLaR)$';
-- --- END op 542

-- --- BEGIN op 543 ( delete regular_expression "SPHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SPHD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SPHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SPHD' and "pattern" = '^(SPHD)$';
-- --- END op 543

-- --- BEGIN op 544 ( delete regular_expression "STRiKES" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'STRiKES' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'STRiKES' and "pattern" = '^(STRiKES)$';
-- --- END op 544

-- --- BEGIN op 545 ( delete regular_expression "TBB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TBB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TBB' and "pattern" = '^(TBB)$';
-- --- END op 545

-- --- BEGIN op 546 ( delete regular_expression "TERMiNAL" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TERMiNAL' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TERMiNAL' and "pattern" = '^(TERMiNAL)$';
-- --- END op 546
