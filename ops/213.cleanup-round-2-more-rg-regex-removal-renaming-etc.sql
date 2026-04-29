-- @operation: export
-- @entity: batch
-- @name: Cleanup Round 2 (More RG regex removal, renaming, etc)
-- @exportedAt: 2026-04-29T17:59:22.105Z
-- @opIds: 3815, 3816, 3817, 3818, 3819, 3820, 3821, 3822, 3823, 3824, 3825, 3826, 3827, 3828, 3829, 3830, 3831, 3832, 3833, 3834, 3835, 3836, 3837, 3838, 3839, 3840, 3841, 3842, 3843, 3844, 3845, 3846, 3847, 3848, 3849, 3850, 3851, 3852, 3853, 3854, 3855, 3856, 3857, 3858, 3859, 3860, 3861, 3862, 3863, 3864, 3865, 3866, 3867, 3868, 3869, 3870, 3871, 3872, 3873, 3874, 3875, 3876, 3877, 3878, 3879, 3880, 3881, 3882, 3883, 3884, 3885, 3886, 3887, 3888, 3889, 3890, 3891, 3892, 3893, 3894, 3895, 3896, 3897, 3898, 3899, 3900, 3901, 3902, 3903, 3904, 3905, 3906, 3907, 3908, 3909, 3910, 3911, 3912, 3913, 3914, 3915, 3916, 3917, 3918, 3919, 3920, 3921, 3922, 3923, 3924, 3925, 3926, 3927, 3928, 3929, 3930, 3931, 3932, 3933, 3934, 3935, 3936, 3937, 3938, 3939, 3940, 3941, 3942, 3943, 3944, 3945, 3946, 3947, 3948, 3949, 3950, 3951, 3952, 3953, 3954

-- --- BEGIN op 3815 ( delete custom_format "Remux Tier 01" )
delete from "custom_formats" where "name" = 'Remux Tier 01';
-- --- END op 3815

-- --- BEGIN op 3816 ( delete custom_format "Remux Tier 02" )
delete from "custom_formats" where "name" = 'Remux Tier 02';
-- --- END op 3816

-- --- BEGIN op 3817 ( delete custom_format "Remux Tier 03" )
delete from "custom_formats" where "name" = 'Remux Tier 03';
-- --- END op 3817

-- --- BEGIN op 3818 ( delete custom_format "Remux Tier 04" )
delete from "custom_formats" where "name" = 'Remux Tier 04';
-- --- END op 3818

-- --- BEGIN op 3819 ( delete custom_format "Remux" )
delete from "custom_formats" where "name" = 'Remux';
-- --- END op 3819

-- --- BEGIN op 3820 ( delete custom_format "DVD Remux" )
delete from "custom_formats" where "name" = 'DVD Remux';
-- --- END op 3820

-- --- BEGIN op 3821 ( delete regular_expression "Dictionarry 2160p Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 2160p Tier 01' and "pattern" = '^(DON|REBORN|SA89|SoLaR)$';
-- --- END op 3821

-- --- BEGIN op 3822 ( delete regular_expression "Dictionarry 2160p Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 2160p Tier 02' and "pattern" = '^(CtrlHD|MainFrame|W4NK3R)$';
-- --- END op 3822

-- --- BEGIN op 3823 ( delete regular_expression "Dictionarry 2160p Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 2160p Tier 03' and "pattern" = '^(BV|c0kE|Chotab|D-Z0N3|HQMUX|PTer|TnP)$';
-- --- END op 3823

-- --- BEGIN op 3824 ( delete regular_expression "Dictionarry 2160p Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 2160p Tier 04' and "pattern" = '^(BlzT|BSTD|EDPH|ESiR|HiDt|iFT|Kitsune|NCmt|NTb|SPHD|TDD)$';
-- --- END op 3824

-- --- BEGIN op 3825 ( delete regular_expression "Dictionarry 2160p Tier 05" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 05' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 05' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 2160p Tier 05' and "pattern" = '^(4KDVS|BakedFEL|b0mbardiers|DEFLATE|DEPTH|j3rico|JustWatch|ORBiT|RandomBytes|SURCODE|WATCHABLE|WiKi)$';
-- --- END op 3825

-- --- BEGIN op 3826 ( delete regular_expression "Dictionarry 2160p Tier 06" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 06' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 2160p Tier 06' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 2160p Tier 06' and "pattern" = '^(ADE|AViATOR|beAst|BeiTai|CHD|CMCT|EMERALD|FLAME|GUHZER|HDChina|HDmux|HypStu|IAMABLE|KAN3D2M|LAZARUS|MiMiC|PussyFoot|ReaLHD|ReQuEsT|STRiKES|SWTYBLZ|TERMiNAL|ULTRAHDCLUB|WhiteRhino)$';
-- --- END op 3826

-- --- BEGIN op 3827 ( delete regular_expression "Dictionarry 480p Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 480p Tier 01' and "pattern" = '^(SoLaR|ZoroSenpai)$';
-- --- END op 3827

-- --- BEGIN op 3828 ( delete regular_expression "Dictionarry 480p Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 480p Tier 02' and "pattern" = '^(c0kE|Dariush|HaB|TBB)$';
-- --- END op 3828

-- --- BEGIN op 3829 ( delete regular_expression "Dictionarry 480p Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 480p Tier 03' and "pattern" = '^(EDPH|GS88|KnG|playSD|PTer|rttr)$';
-- --- END op 3829

-- --- BEGIN op 3830 ( delete regular_expression "Dictionarry 480p Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 480p Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 480p Tier 04' and "pattern" = '^(HANDJOB|PTP)$';
-- --- END op 3830

-- --- BEGIN op 3831 ( update custom_format "576p Bluray Tier 01" )
delete from "custom_format_conditions" where "custom_format_name" = '576p Bluray Tier 01' and "name" = 'Dictionarry 576p Tier 01' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 3831

-- --- BEGIN op 3832 ( delete regular_expression "Dictionarry 576p Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 576p Tier 01' and "pattern" = '^(SoLaR|ZoroSenpai)$';
-- --- END op 3832

-- --- BEGIN op 3833 ( update custom_format "576p Bluray Tier 02" )
delete from "custom_format_conditions" where "custom_format_name" = '576p Bluray Tier 02' and "name" = 'Dictionarry 576p Tier 02' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 3833

-- --- BEGIN op 3834 ( delete regular_expression "Dictionarry 576p Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 576p Tier 02' and "pattern" = '^(BV|c0kE|Dariush|HaB|TBB|ZQ)$';
-- --- END op 3834

-- --- BEGIN op 3835 ( update custom_format "576p Bluray Tier 03" )
delete from "custom_format_conditions" where "custom_format_name" = '576p Bluray Tier 03' and "name" = 'Dictionarry 576p Tier 03' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 3835

-- --- BEGIN op 3836 ( delete regular_expression "Dictionarry 576p Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 576p Tier 03' and "pattern" = '^(EDPH|GS88|KnG|PTer|rttr|ZIMBO)$';
-- --- END op 3836

-- --- BEGIN op 3837 ( update custom_format "576p Bluray Tier 04" )
delete from "custom_format_conditions" where "custom_format_name" = '576p Bluray Tier 04' and "name" = 'Dictionarry 576p Tier 04' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 3837

-- --- BEGIN op 3838 ( delete regular_expression "Dictionarry 576p Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 576p Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 576p Tier 04' and "pattern" = '^(HANDJOB|PTP)$';
-- --- END op 3838

-- --- BEGIN op 3839 ( delete regular_expression "Dictionarry 720p Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 720p Tier 01' and "pattern" = '^(DON|REBORN|SoLaR|TeamSyndicate|ZoroSenpai)$';
-- --- END op 3839

-- --- BEGIN op 3840 ( delete regular_expression "Dictionarry 720p Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 720p Tier 02' and "pattern" = '^(c0kE|CRiSC|CtrlHD|EbP|HiDt|HiFi|IDE|SbR|TayTo|VietHD|ZQ)$';
-- --- END op 3840

-- --- BEGIN op 3841 ( delete regular_expression "Dictionarry 720p Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 720p Tier 03' and "pattern" = '^(BMF|Geek|LolHD|NCmt|Positive|rightSIZE|TBB)$';
-- --- END op 3841

-- --- BEGIN op 3842 ( delete regular_expression "Dictionarry 720p Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 720p Tier 04' and "pattern" = '^(D-Z0N3|Dariush|decibeL|EA|FoRM|NTb|PTer|Skazhutin|TDD|ThD)$';
-- --- END op 3842

-- --- BEGIN op 3843 ( delete regular_expression "Dictionarry 720p Tier 05" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 05' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 05' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 720p Tier 05' and "pattern" = '^(ATELiER|BV|Chotab|de[42]|E.N.D|EA|EDPH|ESiR|FraMeSToR|GS88|HDMaNiAcS|HiP|iFT|KASHMiR|LiNG|LoRD|nmd|NyHD|ORiGEN|playHD|RiCO|RO|rttr|SaNcTi|SPHD|TnP|W4NK3R|WiLF|WMING|ZIMBO)$';
-- --- END op 3843

-- --- BEGIN op 3844 ( delete regular_expression "Dictionarry 720p Tier 06" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 06' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry 720p Tier 06' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry 720p Tier 06' and "pattern" = '^(EuReKA|HANDJOB|Ivandro|KnG|LEGi0N|Lulz|MaG|MTeam|NiP|PTP|PuTao|Slappy|WiKi)$';
-- --- END op 3844

-- --- BEGIN op 3845 ( update custom_format "Banned Groups" )
delete from "custom_format_conditions" where "custom_format_name" = 'Banned Groups' and "name" = 'Dictionarry Banned Groups' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 0;
-- --- END op 3845

-- --- BEGIN op 3846 ( delete regular_expression "Dictionarry Banned Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Banned Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Banned Groups' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Banned Groups' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Dictionarry Banned Groups' and "pattern" = '\b(4K4U|AOC|AROMA|BeyondHD|BiTOR|BLASPHEMY|BOLS|BTM|CLASSiCALHD|CREATiVE24|d3g|DepraveD|DeViSiVE|DRX|E|FGT|Flights|HDS|iVy|jennaortegaUHD|KC|LAMA|MeGusta|MgB|NAHOM|NhaNc3|nikt0|NoGroup|OEPlus|OFT|PSA|RARGB|SasukeducK|SHD|ShieldBearer|SM737|STUTTERSHIT|tarunk9c|TEKNO3D|Telly|TvR|VD0N|VECTOR|VisionXpert|x0r|YIFY|YTS)\b';
-- --- END op 3846

-- --- BEGIN op 3847 ( delete regular_expression "Dictionarry Remux Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry Remux Tier 01' and "pattern" = '^(3L|BiZKiT|BLURANiUM|CiNEPHiLES|WiLDCAT)$';
-- --- END op 3847

-- --- BEGIN op 3848 ( delete regular_expression "Dictionarry Remux Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry Remux Tier 02' and "pattern" = '^(BMF|FraMeSToR|LM|PiRAMiDHEAD|PmP|PP|ZoroSenpai|ZQ)$';
-- --- END op 3848

-- --- BEGIN op 3849 ( delete regular_expression "Dictionarry Remux Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry Remux Tier 03' and "pattern" = '^(ATELiER|decibeL|EPSiLON|HiFi|NCmt|SiCFoI|TEPES)$';
-- --- END op 3849

-- --- BEGIN op 3850 ( delete regular_expression "Dictionarry Remux Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry Remux Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry Remux Tier 04' and "pattern" = '^(BTN|iFT|KRaLiMaRKo|playBD|PTP|TRiToN)$';
-- --- END op 3850

-- --- BEGIN op 3851 ( delete regular_expression "Dictionarry WEB Tier 01" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 01' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 01' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry WEB Tier 01' and "pattern" = '^(FLUX|NTb|TheFarm)$';
-- --- END op 3851

-- --- BEGIN op 3852 ( delete regular_expression "Dictionarry WEB Tier 02" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 02' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 02' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry WEB Tier 02' and "pattern" = '^(BYNDR|CMRG|HONE|Kitsune|playWEB|TEPES)$';
-- --- END op 3852

-- --- BEGIN op 3853 ( delete regular_expression "Dictionarry WEB Tier 03" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 03' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 03' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry WEB Tier 03' and "pattern" = '^(ABM|AJP69|BLUTONiUM|BTW|CasStudio|Cinefeel|CRFW|CtrlHD|HHWEB|KHN|KiNGS|LAZY|monkee|MZABI|NOSiViD|NPMS|NTG|QOQ|RAWR|SA89|SbR|SMURF|TeamSyndicate|TOMMY|TVSmash|WELP|XEBEC|ZoroSenpai)$';
-- --- END op 3853

-- --- BEGIN op 3854 ( delete regular_expression "Dictionarry WEB Tier 04" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 04' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 04' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry WEB Tier 04' and "pattern" = '^(APEX|BLOOM|BTN|dB|PTP|RTN|SiC|SPiRiT|ViSUM)$';
-- --- END op 3854

-- --- BEGIN op 3855 ( delete regular_expression "Dictionarry WEB Tier 05" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 05' AND tag_name = 'Dictionarry';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Dictionarry WEB Tier 05' AND tag_name = 'Release Group Tier';

delete from "regular_expressions" where "name" = 'Dictionarry WEB Tier 05' and "pattern" = '^(CRUD|GNOME|NINJACENTRAL|PHOENiX|ROCCaT|SiGMA|SwAgLaNdEr)$';
-- --- END op 3855

-- --- BEGIN op 3856 ( delete custom_format "FLAC" )
delete from "custom_formats" where "name" = 'FLAC';
-- --- END op 3856

-- --- BEGIN op 3857 ( delete custom_format "480p WEBRip" )
delete from "custom_formats" where "name" = '480p WEBRip';
-- --- END op 3857

-- --- BEGIN op 3858 ( delete custom_format "576p Bluray Tier 01" )
delete from "custom_formats" where "name" = '576p Bluray Tier 01';
-- --- END op 3858

-- --- BEGIN op 3859 ( delete custom_format "576p Bluray Tier 02" )
delete from "custom_formats" where "name" = '576p Bluray Tier 02';
-- --- END op 3859

-- --- BEGIN op 3860 ( delete custom_format "576p Bluray Tier 03" )
delete from "custom_formats" where "name" = '576p Bluray Tier 03';
-- --- END op 3860

-- --- BEGIN op 3861 ( delete custom_format "576p Bluray Tier 04" )
delete from "custom_formats" where "name" = '576p Bluray Tier 04';
-- --- END op 3861

-- --- BEGIN op 3862 ( delete custom_format "AI - Radarr" )
delete from "custom_formats" where "name" = 'AI - Radarr';
-- --- END op 3862

-- --- BEGIN op 3863 ( delete custom_format "AI - Sonarr" )
delete from "custom_formats" where "name" = 'AI - Sonarr';
-- --- END op 3863

-- --- BEGIN op 3864 ( delete custom_format "B-Global" )
delete from "custom_formats" where "name" = 'B-Global';
-- --- END op 3864

-- --- BEGIN op 3865 ( delete regular_expression "B-Global" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'B-Global' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'B-Global' AND tag_name = 'Streaming Service';

delete from "regular_expressions" where "name" = 'B-Global' and "pattern" = '\b(B[ .-]?Global)\b';
-- --- END op 3865

-- --- BEGIN op 3866 ( delete custom_format "Bilibili" )
delete from "custom_formats" where "name" = 'Bilibili';
-- --- END op 3866

-- --- BEGIN op 3867 ( delete regular_expression "Bilibili" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Bilibili' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Bilibili' AND tag_name = 'Streaming Service';

delete from "regular_expressions" where "name" = 'Bilibili' and "pattern" = '\b(Bili(bili)?)\b';
-- --- END op 3867

-- --- BEGIN op 3868 ( delete custom_format "DVD" )
delete from "custom_formats" where "name" = 'DVD';
-- --- END op 3868

-- --- BEGIN op 3869 ( delete custom_format "Full Disc (Quality Match)" )
delete from "custom_formats" where "name" = 'Full Disc (Quality Match)';
-- --- END op 3869

-- --- BEGIN op 3870 ( delete custom_format "Full Disc" )
delete from "custom_formats" where "name" = 'Full Disc';
-- --- END op 3870

-- --- BEGIN op 3871 ( delete custom_format "Free25" )
delete from "custom_formats" where "name" = 'Free25';
-- --- END op 3871

-- --- BEGIN op 3872 ( delete custom_format "Free100" )
delete from "custom_formats" where "name" = 'Free100';
-- --- END op 3872

-- --- BEGIN op 3873 ( delete custom_format "Free50" )
delete from "custom_formats" where "name" = 'Free50';
-- --- END op 3873

-- --- BEGIN op 3874 ( delete custom_format "Free75" )
delete from "custom_formats" where "name" = 'Free75';
-- --- END op 3874

-- --- BEGIN op 3875 ( update custom_format "HD Bluray Tier 01" )
update "custom_formats" set "name" = 'HD Bluray Tier 01' where "name" = 'TRaSH HD Bluray Tier 01';
-- --- END op 3875

-- --- BEGIN op 3876 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH HD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 3876

-- --- BEGIN op 3877 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 01' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH HD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 3877

-- --- BEGIN op 3878 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH HD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1700;
-- --- END op 3878

-- --- BEGIN op 3879 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 01' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH HD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1700;
-- --- END op 3879

-- --- BEGIN op 3880 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 01' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH HD Bluray Tier 01' and "arr_type" = 'sonarr' and "score" = 1500;
-- --- END op 3880

-- --- BEGIN op 3881 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 01' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH HD Bluray Tier 01' and "arr_type" = 'sonarr' and "score" = 1300;
-- --- END op 3881

-- --- BEGIN op 3882 ( update custom_format "HD Bluray Tier 02" )
update "custom_formats" set "name" = 'HD Bluray Tier 02' where "name" = 'TRaSH HD Bluray Tier 02';
-- --- END op 3882

-- --- BEGIN op 3883 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH HD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 3883

-- --- BEGIN op 3884 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 02' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH HD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 3884

-- --- BEGIN op 3885 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH HD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1650;
-- --- END op 3885

-- --- BEGIN op 3886 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 02' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH HD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1650;
-- --- END op 3886

-- --- BEGIN op 3887 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 02' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH HD Bluray Tier 02' and "arr_type" = 'sonarr' and "score" = 1450;
-- --- END op 3887

-- --- BEGIN op 3888 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 02' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH HD Bluray Tier 02' and "arr_type" = 'sonarr' and "score" = 1250;
-- --- END op 3888

-- --- BEGIN op 3889 ( update custom_format "HD Bluray Tier 03" )
update "custom_formats" set "name" = 'HD Bluray Tier 03' where "name" = 'TRaSH HD Bluray Tier 03';
-- --- END op 3889

-- --- BEGIN op 3890 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH HD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 3890

-- --- BEGIN op 3891 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 03' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH HD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 3891

-- --- BEGIN op 3892 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH HD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1600;
-- --- END op 3892

-- --- BEGIN op 3893 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 03' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH HD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1600;
-- --- END op 3893

-- --- BEGIN op 3894 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 03' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH HD Bluray Tier 03' and "arr_type" = 'sonarr' and "score" = 1400;
-- --- END op 3894

-- --- BEGIN op 3895 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'HD Bluray Tier 03' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH HD Bluray Tier 03' and "arr_type" = 'sonarr' and "score" = 1200;
-- --- END op 3895

-- --- BEGIN op 3896 ( update custom_format "LQ" )
update "custom_formats" set "name" = 'LQ' where "name" = 'TRaSH LQ';
-- --- END op 3896

-- --- BEGIN op 3897 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3897

-- --- BEGIN op 3898 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3898

-- --- BEGIN op 3899 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3899

-- --- BEGIN op 3900 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH LQ' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3900

-- --- BEGIN op 3901 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH LQ' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 3901

-- --- BEGIN op 3902 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH LQ' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 3902

-- --- BEGIN op 3903 ( update custom_format "LQ Release Title" )
update "custom_formats" set "name" = 'LQ Release Title' where "name" = 'TRaSH LQ Release Title';
-- --- END op 3903

-- --- BEGIN op 3904 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ Release Title' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3904

-- --- BEGIN op 3905 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ Release Title' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3905

-- --- BEGIN op 3906 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ Release Title' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3906

-- --- BEGIN op 3907 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ Release Title' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH LQ Release Title' and "arr_type" = 'radarr' and "score" = -10000;
-- --- END op 3907

-- --- BEGIN op 3908 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ Release Title' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH LQ Release Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 3908

-- --- BEGIN op 3909 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'LQ Release Title' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH LQ Release Title' and "arr_type" = 'sonarr' and "score" = -10000;
-- --- END op 3909

-- --- BEGIN op 3910 ( delete custom_format "TRaSH Remux Tier 01" )
delete from "custom_formats" where "name" = 'TRaSH Remux Tier 01';
-- --- END op 3910

-- --- BEGIN op 3911 ( delete custom_format "TRaSH Remux Tier 02" )
delete from "custom_formats" where "name" = 'TRaSH Remux Tier 02';
-- --- END op 3911

-- --- BEGIN op 3912 ( delete custom_format "TRaSH Remux Tier 03" )
delete from "custom_formats" where "name" = 'TRaSH Remux Tier 03';
-- --- END op 3912

-- --- BEGIN op 3913 ( update custom_format "UHD Bluray Tier 01" )
update "custom_formats" set "name" = 'UHD Bluray Tier 01' where "name" = 'TRaSH UHD Bluray Tier 01';
-- --- END op 3913

-- --- BEGIN op 3914 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH UHD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 3914

-- --- BEGIN op 3915 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 01' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1900;
-- --- END op 3915

-- --- BEGIN op 3916 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 01' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 01' and "arr_type" = 'radarr' and "score" = 1900;
-- --- END op 3916

-- --- BEGIN op 3917 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 01' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 01' and "arr_type" = 'sonarr' and "score" = 1500;
-- --- END op 3917

-- --- BEGIN op 3918 ( update custom_format "UHD Bluray Tier 02" )
update "custom_formats" set "name" = 'UHD Bluray Tier 02' where "name" = 'TRaSH UHD Bluray Tier 02';
-- --- END op 3918

-- --- BEGIN op 3919 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH UHD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 3919

-- --- BEGIN op 3920 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 02' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1850;
-- --- END op 3920

-- --- BEGIN op 3921 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 02' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 02' and "arr_type" = 'radarr' and "score" = 1850;
-- --- END op 3921

-- --- BEGIN op 3922 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 02' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 02' and "arr_type" = 'sonarr' and "score" = 1450;
-- --- END op 3922

-- --- BEGIN op 3923 ( update custom_format "UHD Bluray Tier 03" )
update "custom_formats" set "name" = 'UHD Bluray Tier 03' where "name" = 'TRaSH UHD Bluray Tier 03';
-- --- END op 3923

-- --- BEGIN op 3924 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH UHD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 3924

-- --- BEGIN op 3925 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 03' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1800;
-- --- END op 3925

-- --- BEGIN op 3926 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 03' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 03' and "arr_type" = 'radarr' and "score" = 1800;
-- --- END op 3926

-- --- BEGIN op 3927 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'UHD Bluray Tier 03' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH UHD Bluray Tier 03' and "arr_type" = 'sonarr' and "score" = 1400;
-- --- END op 3927

-- --- BEGIN op 3928 ( update custom_format "WEB Tier 01" )
update "custom_formats" set "name" = 'WEB Tier 01' where "name" = 'TRaSH WEB Tier 01';
-- --- END op 3928

-- --- BEGIN op 3929 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'radarr' and "score" = 1700;
-- --- END op 3929

-- --- BEGIN op 3930 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'radarr' and "score" = 1700;
-- --- END op 3930

-- --- BEGIN op 3931 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 3931

-- --- BEGIN op 3932 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'radarr' and "score" = 1500;
-- --- END op 3932

-- --- BEGIN op 3933 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'sonarr' and "score" = 1700;
-- --- END op 3933

-- --- BEGIN op 3934 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'sonarr' and "score" = 1700;
-- --- END op 3934

-- --- BEGIN op 3935 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'radarr' and "score" = 3;

update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 01' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'TRaSH WEB Tier 01' and "arr_type" = 'sonarr' and "score" = 3;
-- --- END op 3935

-- --- BEGIN op 3936 ( update custom_format "WEB Tier 02" )
update "custom_formats" set "name" = 'WEB Tier 02' where "name" = 'TRaSH WEB Tier 02';
-- --- END op 3936

-- --- BEGIN op 3937 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'radarr' and "score" = 1650;
-- --- END op 3937

-- --- BEGIN op 3938 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'radarr' and "score" = 1650;
-- --- END op 3938

-- --- BEGIN op 3939 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 3939

-- --- BEGIN op 3940 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'radarr' and "score" = 1450;
-- --- END op 3940

-- --- BEGIN op 3941 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'sonarr' and "score" = 1650;
-- --- END op 3941

-- --- BEGIN op 3942 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'sonarr' and "score" = 1650;
-- --- END op 3942

-- --- BEGIN op 3943 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'radarr' and "score" = 2;

update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 02' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'TRaSH WEB Tier 02' and "arr_type" = 'sonarr' and "score" = 2;
-- --- END op 3943

-- --- BEGIN op 3944 ( update custom_format "WEB Tier 03" )
update "custom_formats" set "name" = 'WEB Tier 03' where "name" = 'TRaSH WEB Tier 03';
-- --- END op 3944

-- --- BEGIN op 3945 ( update quality_profile "Movies 2160p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'Movies 2160p HQ' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'radarr' and "score" = 1600;
-- --- END op 3945

-- --- BEGIN op 3946 ( update quality_profile "Movies 1080p HQ" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'Movies 1080p HQ' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'radarr' and "score" = 1600;
-- --- END op 3946

-- --- BEGIN op 3947 ( update quality_profile "Movies 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'Movies 2160p' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 3947

-- --- BEGIN op 3948 ( update quality_profile "Movies 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'Movies 1080p' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'radarr' and "score" = 1400;
-- --- END op 3948

-- --- BEGIN op 3949 ( update quality_profile "TV 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'TV 1080p' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'sonarr' and "score" = 1600;
-- --- END op 3949

-- --- BEGIN op 3950 ( update quality_profile "TV 2160p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'TV 2160p' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'sonarr' and "score" = 1600;
-- --- END op 3950

-- --- BEGIN op 3951 ( update quality_profile "LQ 1080p" )
update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'radarr' and "score" = 1;

update "quality_profile_custom_formats" set "custom_format_name" = 'WEB Tier 03' where "quality_profile_name" = 'LQ 1080p' and "custom_format_name" = 'TRaSH WEB Tier 03' and "arr_type" = 'sonarr' and "score" = 1;
-- --- END op 3951

-- --- BEGIN op 3952 ( update custom_format "WEB Tier 01" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'WEB Tier 01' AND tag_name = 'WEB-DL';
-- --- END op 3952

-- --- BEGIN op 3953 ( update custom_format "WEB Tier 02" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'WEB Tier 02' AND tag_name = 'WEB-DL';
-- --- END op 3953

-- --- BEGIN op 3954 ( update custom_format "WEB Tier 03" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'WEB Tier 03' AND tag_name = 'WEB-DL';
-- --- END op 3954
