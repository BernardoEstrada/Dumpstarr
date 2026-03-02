-- @operation: export
-- @entity: batch
-- @name: Buttload of group tier regex updates to standardize to Dumpstarr schema
-- @exportedAt: 2026-03-02T16:48:26.167Z
-- @opIds: 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010

-- --- BEGIN op 941 ( update regular_expression "Dumpstarr HD Tier 04" )
update "regular_expressions" set "pattern" = '\b(hallowed)\b' where "name" = 'Dumpstarr HD Tier 04' and "pattern" = '(?<=^|[\s.-])(hallowed)\b';
-- --- END op 941

-- --- BEGIN op 942 ( update regular_expression "Dumpstarr WEB Tier 02" )
update "regular_expressions" set "pattern" = '\b(DiscoD|Yogi)\b' where "name" = 'Dumpstarr WEB Tier 02' and "pattern" = '(?<=^|[\s.-])(DiscoD|Yogi)\b';
-- --- END op 942

-- --- BEGIN op 943 ( update regular_expression "Dumpstarr WEB Boost" )
update "regular_expressions" set "pattern" = '\b(Kitsune)\b' where "name" = 'Dumpstarr WEB Boost' and "pattern" = '(?<=^|[\s.-])(Kitsune)\b';
-- --- END op 943

-- --- BEGIN op 944 ( update regular_expression "Dumpstarr UHD Tier 05" )
update "regular_expressions" set "pattern" = '\b(BHDStudio)\b' where "name" = 'Dumpstarr UHD Tier 05' and "pattern" = '(?<=^|[\s.-])(BHDStudio)\b';
-- --- END op 944

-- --- BEGIN op 945 ( update regular_expression "Dumpstarr UHD Tier 04" )
update "regular_expressions" set "pattern" = '\b(hallowed)\b' where "name" = 'Dumpstarr UHD Tier 04' and "pattern" = '(?<=^|[\s.-])(hallowed)\b';
-- --- END op 945

-- --- BEGIN op 946 ( update regular_expression "Dumpstarr UHD Tier 03" )
update "regular_expressions" set "pattern" = '\b(DarQ|DiscoD|HONE|Yogi)\b' where "name" = 'Dumpstarr UHD Tier 03' and "pattern" = '(?<=^|[\s.-])(DarQ|DiscoD|HONE|Yogi)\b';
-- --- END op 946

-- --- BEGIN op 947 ( update regular_expression "Dumpstarr SIDCA Groups" )
update "regular_expressions" set "pattern" = '\b(ELiTE|MeGusta|PSA)\b' where "name" = 'Dumpstarr SIDCA Groups' and "pattern" = '(?<=^|[\s.-])(ELiTE|MeGusta|PSA)\b';
-- --- END op 947

-- --- BEGIN op 948 ( update regular_expression "Dumpstarr SIDCA Fallback Groups" )
update "regular_expressions" set "pattern" = '\b(ASTRiD|CBFM|CtrlHD|DARKFLiX|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|ViETNAM|YAWNiX|YIFY|YTS)\b' where "name" = 'Dumpstarr SIDCA Fallback Groups' and "pattern" = '(?<=^|[\s.-])(ASTRiD|CBFM|CtrlHD|DARKFLiX|DEFLATE|EDPH|HANDJOB|HODL|iVy|KONTRAST|MacP|PLUTONiUM|PHOCiS|RARBG|ViETNAM|YAWNiX|YIFY|YTS)\b';
-- --- END op 948

-- --- BEGIN op 949 ( update regular_expression "Dumpstarr HD Tier 05" )
update "regular_expressions" set "pattern" = '\b(BHDStudio)\b' where "name" = 'Dumpstarr HD Tier 05' and "pattern" = '(?<=^|[\s.-])(BHDStudio)\b';
-- --- END op 949

-- --- BEGIN op 950 ( update regular_expression "Dumpstarr HD Tier 03" )
update "regular_expressions" set "pattern" = '\b(DarQ|DiscoD|HONE|Yogi)\b' where "name" = 'Dumpstarr HD Tier 03' and "pattern" = '(?<=^|[\s.-])(DarQ|DiscoD|HONE|Yogi)\b';
-- --- END op 950

-- --- BEGIN op 951 ( update regular_expression "Dumpstarr Baseline Groups" )
update "regular_expressions" set "pattern" = '\b(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)\b' where "name" = 'Dumpstarr Baseline Groups' and "pattern" = '(?<=^|[\s.-])(alfaHD|afm72|Bandi|Bluespots|Celdra|DUSKLiGHT|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|PiRaTeS|QxR|r00t|RCVR|RZeroX|SAMPA|Silence|SuccessfulCrab|t3nzin|Tigole|Vyndros)\b';
-- --- END op 951

-- --- BEGIN op 952 ( update regular_expression "Dumpstarr Banned Groups (Title)" )
update "regular_expressions" set "pattern" = '\b(E|Tofu4U)\b' where "name" = 'Dumpstarr Banned Groups (Title)' and "pattern" = '(?<=^|[\s.-])(E|Tofu4U)\b';
-- --- END op 952

-- --- BEGIN op 953 ( update regular_expression "Dumpstarr Banned Groups" )
update "regular_expressions" set "pattern" = '\b(DEiMOS|MIRCrew|MuTT|TiZU|Tofu4U)\b' where "name" = 'Dumpstarr Banned Groups' and "pattern" = '(?<=^|[\s.-])(DEiMOS|MIRCrew|MuTT|TiZU|Tofu4U)\b';
-- --- END op 953

-- --- BEGIN op 954 ( update regular_expression "Dictionarry 480p Tier 01" )
update "regular_expressions" set "pattern" = '\b(SoLaR|ZoroSenpai)\b' where "name" = 'Dictionarry 480p Tier 01' and "pattern" = '(?<=^|[\s.-])(SoLaR|ZoroSenpai)\b';
-- --- END op 954

-- --- BEGIN op 955 ( update regular_expression "Dictionarry 480p Tier 02" )
update "regular_expressions" set "pattern" = '\b(c0kE|Dariush|HaB|TBB)\b' where "name" = 'Dictionarry 480p Tier 02' and "pattern" = '(?<=^|[\s.-])(c0kE|Dariush|HaB|TBB)\b';
-- --- END op 955

-- --- BEGIN op 956 ( update regular_expression "Dictionarry 480p Tier 03" )
update "regular_expressions" set "pattern" = '\b(EDPH|GS88|KnG|playSD|PTer|rttr)\b' where "name" = 'Dictionarry 480p Tier 03' and "pattern" = '(?<=^|[\s.-])(EDPH|GS88|KnG|playSD|PTer|rttr)\b';
-- --- END op 956

-- --- BEGIN op 957 ( update regular_expression "Dictionarry 480p Tier 04" )
update "regular_expressions" set "pattern" = '\b(HANDJOB|PTP)\b' where "name" = 'Dictionarry 480p Tier 04' and "pattern" = '(?<=^|[\s.-])(HANDJOB|PTP)\b';
-- --- END op 957

-- --- BEGIN op 958 ( update regular_expression "Dictionarry 576p Tier 01" )
update "regular_expressions" set "pattern" = '\b(SoLaR|ZoroSenpai)\b' where "name" = 'Dictionarry 576p Tier 01' and "pattern" = '(?<=^|[\s.-])(SoLaR|ZoroSenpai)\b';
-- --- END op 958

-- --- BEGIN op 959 ( update regular_expression "Dictionarry 576p Tier 02" )
update "regular_expressions" set "pattern" = '\b(BV|c0kE|Dariush|HaB|TBB|ZQ)\b' where "name" = 'Dictionarry 576p Tier 02' and "pattern" = '(?<=^|[\s.-])(BV|c0kE|Dariush|HaB|TBB|ZQ)\b';
-- --- END op 959

-- --- BEGIN op 960 ( update regular_expression "Dictionarry 576p Tier 03" )
update "regular_expressions" set "pattern" = '\b(EDPH|GS88|KnG|PTer|rttr|ZIMBO)\b' where "name" = 'Dictionarry 576p Tier 03' and "pattern" = '(?<=^|[\s.-])(EDPH|GS88|KnG|PTer|rttr|ZIMBO)\b';
-- --- END op 960

-- --- BEGIN op 961 ( update regular_expression "Dictionarry 576p Tier 04" )
update "regular_expressions" set "pattern" = '\b(HANDJOB|PTP)\b' where "name" = 'Dictionarry 576p Tier 04' and "pattern" = '(?<=^|[\s.-])(HANDJOB|PTP)\b';
-- --- END op 961

-- --- BEGIN op 962 ( update regular_expression "Dictionarry 720p Tier 01" )
update "regular_expressions" set "pattern" = '\b(DON|REBORN|SoLaR|TeamSyndicate|ZoroSenpai)\b' where "name" = 'Dictionarry 720p Tier 01' and "pattern" = '(?<=^|[\s.-])(DON|REBORN|SoLaR|TeamSyndicate|ZoroSenpai)\b';
-- --- END op 962

-- --- BEGIN op 963 ( update regular_expression "Dictionarry 720p Tier 02" )
update "regular_expressions" set "pattern" = '\b(c0kE|CRiSC|CtrlHD|EbP|HiDt|HiFi|IDE|SbR|TayTo|VietHD|ZQ)\b' where "name" = 'Dictionarry 720p Tier 02' and "pattern" = '(?<=^|[\s.-])(c0kE|CRiSC|CtrlHD|EbP|HiDt|HiFi|IDE|SbR|TayTo|VietHD|ZQ)\b';
-- --- END op 963

-- --- BEGIN op 964 ( update regular_expression "Dictionarry 720p Tier 03" )
update "regular_expressions" set "pattern" = '\b(BMF|Geek|LolHD|NCmt|Positive|rightSIZE|TBB)\b' where "name" = 'Dictionarry 720p Tier 03' and "pattern" = '(?<=^|[\s.-])(BMF|Geek|LolHD|NCmt|Positive|rightSIZE|TBB)\b';
-- --- END op 964

-- --- BEGIN op 965 ( update regular_expression "Dictionarry 720p Tier 04" )
update "regular_expressions" set "pattern" = '\b(D-Z0N3|Dariush|decibeL|EA|FoRM|NTb|PTer|Skazhutin|TDD|ThD)\b' where "name" = 'Dictionarry 720p Tier 04' and "pattern" = '(?<=^|[\s.-])(D-Z0N3|Dariush|decibeL|EA|FoRM|NTb|PTer|Skazhutin|TDD|ThD)\b';
-- --- END op 965

-- --- BEGIN op 966 ( update regular_expression "Dictionarry 720p Tier 05" )
update "regular_expressions" set "pattern" = '\b(ATELiER|BV|Chotab|de[42]|E.N.D|EA|EDPH|ESiR|FraMeSToR|GS88|HDMaNiAcS|HiP|iFT|KASHMiR|LiNG|LoRD|nmd|NyHD|ORiGEN|playHD|RiCO|RO|rttr|SaNcTi|SPHD|TnP|W4NK3R|WiLF|WMING|ZIMBO)\b' where "name" = 'Dictionarry 720p Tier 05' and "pattern" = '(?<=^|[\s.-])(ATELiER|BV|Chotab|de[42]|E.N.D|EA|EDPH|ESiR|FraMeSToR|GS88|HDMaNiAcS|HiP|iFT|KASHMiR|LiNG|LoRD|nmd|NyHD|ORiGEN|playHD|RiCO|RO|rttr|SaNcTi|SPHD|TnP|W4NK3R|WiLF|WMING|ZIMBO)\b';
-- --- END op 966

-- --- BEGIN op 967 ( update regular_expression "Dictionarry 720p Tier 06" )
update "regular_expressions" set "pattern" = '\b(EuReKA|HANDJOB|Ivandro|KnG|LEGi0N|Lulz|MaG|MTeam|NiP|PTP|PuTao|Slappy|WiKi)\b' where "name" = 'Dictionarry 720p Tier 06' and "pattern" = '(?<=^|[\s.-])(EuReKA|HANDJOB|Ivandro|KnG|LEGi0N|Lulz|MaG|MTeam|NiP|PTP|PuTao|Slappy|WiKi)\b';
-- --- END op 967

-- --- BEGIN op 968 ( update regular_expression "Dictionarry Banned Groups" )
update "regular_expressions" set "pattern" = '\b(4K4U|AOC|AROMA|BeyondHD|BiTOR|BLASPHEMY|BOLS|BTM|CLASSiCALHD|CREATiVE24|d3g|DepraveD|DeViSiVE|DRX|E|FGT|Flights|HDS|iVy|jennaortegaUHD|KC|LAMA|MeGusta|MgB|NAHOM|NhaNc3|NoGroup|OEPlus|PSA|RARGB|SasukeducK|SHD|ShieldBearer|SM737|STUTTERSHIT|tarunk9c|TEKNO3D|Telly|TvR|VD0N|VECTOR|VisionXpert|x0r|YIFY|YTS)\b' where "name" = 'Dictionarry Banned Groups' and "pattern" = '(?<=^|[\s.-])(4K4U|AOC|AROMA|BeyondHD|BiTOR|BLASPHEMY|BOLS|BTM|CLASSiCALHD|CREATiVE24|d3g|DepraveD|DeViSiVE|DRX|E|FGT|Flights|HDS|iVy|jennaortegaUHD|KC|LAMA|MeGusta|MgB|NAHOM|NhaNc3|NoGroup|OEPlus|PSA|RARGB|SasukeducK|SHD|ShieldBearer|SM737|STUTTERSHIT|tarunk9c|TEKNO3D|Telly|TvR|VD0N|VECTOR|VisionXpert|x0r|YIFY|YTS)\b';
-- --- END op 968

-- --- BEGIN op 969 ( update regular_expression "Dictionarry HD Tier 01" )
update "regular_expressions" set "pattern" = '\b(coffee|DON|REBORN|SA89|SoLaR|TeamSyndicate|ZoroSenpai)\b' where "name" = 'Dictionarry HD Tier 01' and "pattern" = '(?<=^|[\s.-])(coffee|DON|REBORN|SA89|SoLaR|TeamSyndicate|ZoroSenpai)\b';
-- --- END op 969

-- --- BEGIN op 970 ( update regular_expression "Dictionarry HD Tier 02" )
update "regular_expressions" set "pattern" = '\b(c0kE|CtrlHD|D-Z0N3|EbP|Geek|HiFi|LoRD|TayTo|VietHD|ZQ)\b' where "name" = 'Dictionarry HD Tier 02' and "pattern" = '(?<=^|[\s.-])(c0kE|CtrlHD|D-Z0N3|EbP|Geek|HiFi|LoRD|TayTo|VietHD|ZQ)\b';
-- --- END op 970

-- --- BEGIN op 971 ( update regular_expression "Dictionarry HD Tier 03" )
update "regular_expressions" set "pattern" = '\b(BV|CRiSC|decibeL|FoRM|HiDt|HiP|iFT|SbR|WMING)\b' where "name" = 'Dictionarry HD Tier 03' and "pattern" = '(?<=^|[\s.-])(BV|CRiSC|decibeL|FoRM|HiDt|HiP|iFT|SbR|WMING)\b';
-- --- END op 971

-- --- BEGIN op 972 ( update regular_expression "Dictionarry HD Tier 04" )
update "regular_expressions" set "pattern" = '\b(BMF|de[42]|HDMaNiAcS|IDE|LolHD|NCmt|NTb|Skazhutin)\b' where "name" = 'Dictionarry HD Tier 04' and "pattern" = '(?<=^|[\s.-])(BMF|de[42]|HDMaNiAcS|IDE|LolHD|NCmt|NTb|Skazhutin)\b';
-- --- END op 972

-- --- BEGIN op 973 ( update regular_expression "Dictionarry HD Tier 05" )
update "regular_expressions" set "pattern" = '\b(AJP69|ATELiER|BSTD|Chotab|CJ|CRX|Dariush|E.N.D|E1|EA|EDPH|ESiR|EXCiSION|FraMeSToR|GALAXY|GS88|hdalx|HQMUX|KASHMiR|Kitsune|LiNG|luvBB|NiBuRu|nmd|NyHD|ORiGEN|Penumbra|playHD|Positive|PTer|RiCO|rightSIZE|RO|rttr|SaNcTi|SiMPLE|SOP|SPHD|TBB|TDD|TnP|VLAD|W4NK3R|WiLF|xander|ZIMBO)\b' where "name" = 'Dictionarry HD Tier 05' and "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BSTD|Chotab|CJ|CRX|Dariush|E.N.D|E1|EA|EDPH|ESiR|EXCiSION|FraMeSToR|GALAXY|GS88|hdalx|HQMUX|KASHMiR|Kitsune|LiNG|luvBB|NiBuRu|nmd|NyHD|ORiGEN|Penumbra|playHD|Positive|PTer|RiCO|rightSIZE|RO|rttr|SaNcTi|SiMPLE|SOP|SPHD|TBB|TDD|TnP|VLAD|W4NK3R|WiLF|xander|ZIMBO)\b';
-- --- END op 973

-- --- BEGIN op 974 ( update regular_expression "Dictionarry HD Tier 06" )
update "regular_expressions" set "pattern" = '\b(ASD87|BRUTE|CHD|EuReKA|GALVANiZE|HaB|HANDJOB|HDC|iON|Ivandro|j3rico|KnG|LEGi0N|Lulz|MaG|MTeam|NiP|P0W4HD|PTP|PuTao|ROCiNANTE|Slappy|ThD|WiKi|WiLDCAT)\b' where "name" = 'Dictionarry HD Tier 06' and "pattern" = '(?<=^|[\s.-])(ASD87|BRUTE|CHD|EuReKA|GALVANiZE|HaB|HANDJOB|HDC|iON|Ivandro|j3rico|KnG|LEGi0N|Lulz|MaG|MTeam|NiP|P0W4HD|PTP|PuTao|ROCiNANTE|Slappy|ThD|WiKi|WiLDCAT)\b';
-- --- END op 974

-- --- BEGIN op 975 ( update regular_expression "Dictionarry Remux Tier 01" )
update "regular_expressions" set "pattern" = '\b(3L|BiZKiT|BLURANiUM|CiNEPHiLES|WiLDCAT)\b' where "name" = 'Dictionarry Remux Tier 01' and "pattern" = '(?<=^|[\s.-])(3L|BiZKiT|BLURANiUM|CiNEPHiLES|WiLDCAT)\b';
-- --- END op 975

-- --- BEGIN op 976 ( update regular_expression "Dictionarry Remux Tier 02" )
update "regular_expressions" set "pattern" = '\b(BMF|FraMeSToR|LM|PiRAMiDHEAD|PmP|PP|ZoroSenpai|ZQ)\b' where "name" = 'Dictionarry Remux Tier 02' and "pattern" = '(?<=^|[\s.-])(BMF|FraMeSToR|LM|PiRAMiDHEAD|PmP|PP|ZoroSenpai|ZQ)\b';
-- --- END op 976

-- --- BEGIN op 977 ( update regular_expression "Dictionarry Remux Tier 03" )
update "regular_expressions" set "pattern" = '\b(ATELiER|decibeL|EPSiLON|HiFi|NCmt|SiCFoI|TEPES)\b' where "name" = 'Dictionarry Remux Tier 03' and "pattern" = '(?<=^|[\s.-])(ATELiER|decibeL|EPSiLON|HiFi|NCmt|SiCFoI|TEPES)\b';
-- --- END op 977

-- --- BEGIN op 978 ( update regular_expression "Dictionarry Remux Tier 04" )
update "regular_expressions" set "pattern" = '\b(BTN|iFT|KRaLiMaRKo|playBD|PTP|TRiToN)\b' where "name" = 'Dictionarry Remux Tier 04' and "pattern" = '(?<=^|[\s.-])(BTN|iFT|KRaLiMaRKo|playBD|PTP|TRiToN)\b';
-- --- END op 978

-- --- BEGIN op 979 ( update regular_expression "Dictionarry UHD Tier 01" )
update "regular_expressions" set "pattern" = '\b(DON|REBORN|SA89|SoLaR)\b' where "name" = 'Dictionarry UHD Tier 01' and "pattern" = '(?<=^|[\s.-])(DON|REBORN|SA89|SoLaR)\b';
-- --- END op 979

-- --- BEGIN op 980 ( update regular_expression "Dictionarry UHD Tier 02" )
update "regular_expressions" set "pattern" = '\b(CtrlHD|MainFrame|W4NK3R)\b' where "name" = 'Dictionarry UHD Tier 02' and "pattern" = '(?<=^|[\s.-])(CtrlHD|MainFrame|W4NK3R)\b';
-- --- END op 980

-- --- BEGIN op 981 ( update regular_expression "Dictionarry UHD Tier 03" )
update "regular_expressions" set "pattern" = '\b(BV|c0kE|Chotab|D-Z0N3|HQMUX|PTer|TnP)\b' where "name" = 'Dictionarry UHD Tier 03' and "pattern" = '(?<=^|[\s.-])(BV|c0kE|Chotab|D-Z0N3|HQMUX|PTer|TnP)\b';
-- --- END op 981

-- --- BEGIN op 982 ( update regular_expression "Dictionarry UHD Tier 04" )
update "regular_expressions" set "pattern" = '\b(BlzT|BSTD|EDPH|ESiR|HiDt|iFT|Kitsune|NCmt|NTb|SPHD|TDD)\b' where "name" = 'Dictionarry UHD Tier 04' and "pattern" = '(?<=^|[\s.-])(BlzT|BSTD|EDPH|ESiR|HiDt|iFT|Kitsune|NCmt|NTb|SPHD|TDD)\b';
-- --- END op 982

-- --- BEGIN op 983 ( update regular_expression "Dictionarry UHD Tier 05" )
update "regular_expressions" set "pattern" = '\b(4KDVS|b0mbardiers|DEFLATE|DEPTH|j3rico|JustWatch|ORBiT|SURCODE|WATCHABLE|WiKi)\b' where "name" = 'Dictionarry UHD Tier 05' and "pattern" = '(?<=^|[\s.-])(4KDVS|b0mbardiers|DEFLATE|DEPTH|j3rico|JustWatch|ORBiT|SURCODE|WATCHABLE|WiKi)\b';
-- --- END op 983

-- --- BEGIN op 984 ( update regular_expression "Dictionarry UHD Tier 06" )
update "regular_expressions" set "pattern" = '\b(ADE|AViATOR|beAst|BeiTai|CHD|CMCT|EMERALD|FLAME|GUHZER|HDChina|HDmux|HypStu|IAMABLE|KAN3D2M|LAZARUS|MiMiC|PussyFoot|ReaLHD|ReQuEsT|STRiKES|SWTYBLZ|TERMiNAL|ULTRAHDCLUB|WhiteRhino)\b' where "name" = 'Dictionarry UHD Tier 06' and "pattern" = '(?<=^|[\s.-])(ADE|AViATOR|beAst|BeiTai|CHD|CMCT|EMERALD|FLAME|GUHZER|HDChina|HDmux|HypStu|IAMABLE|KAN3D2M|LAZARUS|MiMiC|PussyFoot|ReaLHD|ReQuEsT|STRiKES|SWTYBLZ|TERMiNAL|ULTRAHDCLUB|WhiteRhino)\b';
-- --- END op 984

-- --- BEGIN op 985 ( update regular_expression "Dictionarry WEB Tier 01" )
update "regular_expressions" set "pattern" = '\b(FLUX|NTb|TheFarm)\b' where "name" = 'Dictionarry WEB Tier 01' and "pattern" = '(?<=^|[\s.-])(FLUX|NTb|TheFarm)\b';
-- --- END op 985

-- --- BEGIN op 986 ( update regular_expression "Dictionarry WEB Tier 02" )
update "regular_expressions" set "pattern" = '\b(BYNDR|CMRG|HONE|Kitsune|playWEB|TEPES)\b' where "name" = 'Dictionarry WEB Tier 02' and "pattern" = '(?<=^|[\s.-])(BYNDR|CMRG|HONE|Kitsune|playWEB|TEPES)\b';
-- --- END op 986

-- --- BEGIN op 987 ( update regular_expression "Dictionarry WEB Tier 03" )
update "regular_expressions" set "pattern" = '\b(ABM|AJP69|BLUTONiUM|BTW|CasStudio|Cinefeel|CRFW|CtrlHD|HHWEB|KHN|KiNGS|LAZY|monkee|MZABI|NOSiViD|NPMS|NTG|QOQ|RAWR|SA89|SbR|SMURF|TeamSyndicate|TOMMY|TVSmash|WELP|XEBEC|ZoroSenpai)\b' where "name" = 'Dictionarry WEB Tier 03' and "pattern" = '(?<=^|[\s.-])(ABM|AJP69|BLUTONiUM|BTW|CasStudio|Cinefeel|CRFW|CtrlHD|HHWEB|KHN|KiNGS|LAZY|monkee|MZABI|NOSiViD|NPMS|NTG|QOQ|RAWR|SA89|SbR|SMURF|TeamSyndicate|TOMMY|TVSmash|WELP|XEBEC|ZoroSenpai)\b';
-- --- END op 987

-- --- BEGIN op 988 ( update regular_expression "Dictionarry WEB Tier 04" )
update "regular_expressions" set "pattern" = '\b(APEX|BLOOM|BTN|dB|PTP|RTN|SiC|SPiRiT|ViSUM)\b' where "name" = 'Dictionarry WEB Tier 04' and "pattern" = '(?<=^|[\s.-])(APEX|BLOOM|BTN|dB|PTP|RTN|SiC|SPiRiT|ViSUM)\b';
-- --- END op 988

-- --- BEGIN op 989 ( update regular_expression "Dictionarry WEB Tier 05" )
update "regular_expressions" set "pattern" = '\b(CRUD|GNOME|NINJACENTRAL|PHOENiX|ROCCaT|SiGMA|SwAgLaNdEr)\b' where "name" = 'Dictionarry WEB Tier 05' and "pattern" = '(?<=^|[\s.-])(CRUD|GNOME|NINJACENTRAL|PHOENiX|ROCCaT|SiGMA|SwAgLaNdEr)\b';
-- --- END op 989

-- --- BEGIN op 990 ( update regular_expression "QxR" )
update "regular_expressions" set "pattern" = '\b(QxR|afm72|Bandi|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b' where "name" = 'QxR' and "pattern" = '(?<=^|[\s.-])(QxR|afm72|Bandi|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b';
-- --- END op 990

-- --- BEGIN op 991 ( update regular_expression "Bad Dual Groups" )
update "regular_expressions" set "pattern" = '\b(alfaHD.*|BAT|BiOMA|BlackBit|BNd|Cory|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TURG|tokar86a|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)\b' where "name" = 'Bad Dual Groups' and "pattern" = '(?<=^|[\s.-])(alfaHD.*|BAT|BiOMA|BlackBit|BNd|Cory|EXTREME|FF|FOXX|G4RiS|GUEIRA|LCD|N3G4N|ONLYMOViE|PD|PTHome|RiPER|RK|SiGLA|Tars|TURG|tokar86a|TvR|vnlls|WTV|Yatogam1|YusukeFLA|ZigZag|ZNM)\b';
-- --- END op 991

-- --- BEGIN op 992 ( update regular_expression "HONE" )
update "regular_expressions" set "pattern" = '\b(DiscoD|HONE|Yogi)\b' where "name" = 'HONE' and "pattern" = '(?<=^|[\s.-])(DiscoD|HONE|Yogi)\b';
-- --- END op 992

-- --- BEGIN op 993 ( update regular_expression "Non Retail HDR Groups" )
update "regular_expressions" set "pattern" = '\b(VECTOR|BiTOR|DepraveD|SasukeducK|tarunk9c|jennaortegaUHD|VisionXpert|Flights)\b' where "name" = 'Non Retail HDR Groups' and "pattern" = '(?<=^|[\s.-])VECTOR|BiTOR|DepraveD|SasukeducK|tarunk9c|jennaortegaUHD|VisionXpert|Flights\b';
-- --- END op 993

-- --- BEGIN op 994 ( update regular_expression "Scrubs (2001) Approved Groups" )
update "regular_expressions" set "pattern" = '\b(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b' where "name" = 'Scrubs (2001) Approved Groups' and "pattern" = '(?<=^|[\s.-])(BoOk|BMF|DEFiANCE|FoV|GAMEOVER|NTROPiC-FTP|SiNNERS)\b';
-- --- END op 994

-- --- BEGIN op 995 ( update regular_expression "TAoE" )
update "regular_expressions" set "pattern" = '\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b' where "name" = 'TAoE' and "pattern" = '(?<=^|[\s.-])(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b';
-- --- END op 995

-- --- BEGIN op 996 ( update regular_expression "TRaSH HD Bluray Tier 01" )
update "regular_expressions" set "pattern" = '\b(BBQ|BMF|c0kE|Chotab|CRiSC|CtrlHD|D-Z0N3|Dariush|decibeL|DON|EbP|EDPH|Geek|LolHD|NCmt|PTer|TayTO|TDD|TnP|VietHD|ZQ|ZoroSenpai)\b' where "name" = 'TRaSH HD Bluray Tier 01' and "pattern" = '(?<=^|[\s.-])(BBQ|BMF|c0kE|Chotab|CRiSC|CtrlHD|D-Z0N3|Dariush|decibeL|DON|EbP|EDPH|Geek|LolHD|NCmt|PTer|TayTO|TDD|TnP|VietHD|ZQ|ZoroSenpai)\b';
-- --- END op 996

-- --- BEGIN op 997 ( update regular_expression "TRaSH HD Bluray Tier 02" )
update "regular_expressions" set "pattern" = '\b(EA|HiDt|HiSD|iFT|NTb|QOQ|SA89|sbR)\b' where "name" = 'TRaSH HD Bluray Tier 02' and "pattern" = '(?<=^|[\s.-])(EA|HiDt|HiSD|iFT|NTb|QOQ|SA89|sbR)\b';
-- --- END op 997

-- --- BEGIN op 998 ( update regular_expression "TRaSH HD Bluray Tier 03" )
update "regular_expressions" set "pattern" = '\b(ATELiER|BHDStudio|hallowed|HiFi|HONE|LoRD|playHD|SPHD|W4NK3R)\b' where "name" = 'TRaSH HD Bluray Tier 03' and "pattern" = '(?<=^|[\s.-])(ATELiER|BHDStudio|hallowed|HiFi|HONE|LoRD|playHD|SPHD|W4NK3R)\b';
-- --- END op 998

-- --- BEGIN op 999 ( update regular_expression "TRaSH Remux Tier 01 - Radarr" )
update "regular_expressions" set "pattern" = '\b(3L|BiZKiT|BLURANiUM|BMF|CiNEPHiLES|FraMeSToR|PiRAMiDHEAD|PmP|WiLDCAT|ZQ)\b' where "name" = 'TRaSH Remux Tier 01 - Radarr' and "pattern" = '(?<=^|[\s.-])(3L|BiZKiT|BLURANiUM|BMF|CiNEPHiLES|FraMeSToR|PiRAMiDHEAD|PmP|WiLDCAT|ZQ)\b';
-- --- END op 999

-- --- BEGIN op 1000 ( update regular_expression "TRaSH Remux Tier 01 - Sonarr" )
update "regular_expressions" set "pattern" = '\b(BLURANiUM|BMF|FraMeSToR|PmP)\b' where "name" = 'TRaSH Remux Tier 01 - Sonarr' and "pattern" = '(?<=^|[\s.-])(BLURANiUM|BMF|FraMeSToR|PmP)\b';
-- --- END op 1000

-- --- BEGIN op 1001 ( update regular_expression "TRaSH Remux Tier 02 - Radarr" )
update "regular_expressions" set "pattern" = '\b(NCmt|playBD|SiCFoI|SURFINBIRD|TEPES)\b' where "name" = 'TRaSH Remux Tier 02 - Radarr' and "pattern" = '(?<=^|[\s.-])(NCmt|playBD|SiCFoI|SURFINBIRD|TEPES)\b';
-- --- END op 1001

-- --- BEGIN op 1002 ( update regular_expression "TRaSH Remux Tier 02 - Sonarr" )
update "regular_expressions" set "pattern" = '\b(decibeL|EPSiLON|HiFi|KRaLiMaRKo|playBD|PTer|SiCFoI|TRiToN)\b' where "name" = 'TRaSH Remux Tier 02 - Sonarr' and "pattern" = '(?<=^|[\s.-])(decibeL|EPSiLON|HiFi|KRaLiMaRKo|playBD|PTer|SiCFoI|TRiToN)\b';
-- --- END op 1002

-- --- BEGIN op 1003 ( update regular_expression "TRaSH Remux Tier 03 - Radarr" )
update "regular_expressions" set "pattern" = '\b(ATELiER|decibeL|EPSiLON|HiFi|iFT|KRaLiMaRKo|NTb|PTP|SumVision|TOA|TRiToN)\b' where "name" = 'TRaSH Remux Tier 03 - Radarr' and "pattern" = '(?<=^|[\s.-])(ATELiER|decibeL|EPSiLON|HiFi|iFT|KRaLiMaRKo|NTb|PTP|SumVision|TOA|TRiToN)\b';
-- --- END op 1003

-- --- BEGIN op 1004 ( update regular_expression "TRaSH UHD Bluray Tier 01" )
update "regular_expressions" set "pattern" = '\b(CtrlHD|MainFrame|DON|W4NK3R)\b' where "name" = 'TRaSH UHD Bluray Tier 01' and "pattern" = '(?<=^|[\s.-])(CtrlHD|MainFrame|DON|W4NK3R)\b';
-- --- END op 1004

-- --- BEGIN op 1005 ( update regular_expression "TRaSH UHD Bluray Tier 02" )
update "regular_expressions" set "pattern" = '\bHQMUX\b' where "name" = 'TRaSH UHD Bluray Tier 02' and "pattern" = '(?<=^|[\s.-])(HQMUX)\b';
-- --- END op 1005

-- --- BEGIN op 1006 ( update regular_expression "TRaSH UHD Bluray Tier 02" )
update "regular_expressions" set "pattern" = '\b(HQMUX)\b' where "name" = 'TRaSH UHD Bluray Tier 02' and "pattern" = '\bHQMUX\b';
-- --- END op 1006

-- --- BEGIN op 1007 ( update regular_expression "TRaSH UHD Bluray Tier 03" )
update "regular_expressions" set "pattern" = '\b(BHDStudio|hallowed|HONE|PTer|SPHD|WEBDV)\b' where "name" = 'TRaSH UHD Bluray Tier 03' and "pattern" = '(?<=^|[\s.-])(BHDStudio|hallowed|HONE|PTer|SPHD|WEBDV)\b';
-- --- END op 1007

-- --- BEGIN op 1008 ( update regular_expression "TRaSH WEB Tier 01" )
update "regular_expressions" set "pattern" = '\b(ABBIE|AJP69|APEX|BLUTONiUM|BYNDR|CMRG|CRFW|CRUD|FLUX|GNOME|HONE|KiNGS|Kitsune|NOSiViD|NTb|NTG|RAWR|SiC|TEPES|TheFarm|ZoroSenpai)\b' where "name" = 'TRaSH WEB Tier 01' and "pattern" = '(?<=^|[\s.-])(ABBIE|AJP69|APEX|BLUTONiUM|BYNDR|CMRG|CRFW|CRUD|FLUX|GNOME|HONE|KiNGS|Kitsune|NOSiViD|NTb|NTG|RAWR|SiC|TEPES|TheFarm|ZoroSenpai)\b';
-- --- END op 1008

-- --- BEGIN op 1009 ( update regular_expression "TRaSH WEB Tier 02" )
update "regular_expressions" set "pattern" = '\b(dB|Flights|MiU|monkee|MZABI|PHOENiX|playWEB|RDNYB|SbR|SMURF|TOMMY|XEBEC)\b' where "name" = 'TRaSH WEB Tier 02' and "pattern" = '(?<=^|[\s.-])(dB|Flights|MiU|monkee|MZABI|PHOENiX|playWEB|RDNYB|SbR|SMURF|TOMMY|XEBEC)\b';
-- --- END op 1009

-- --- BEGIN op 1010 ( update regular_expression "TRaSH WEB Tier 03" )
update "regular_expressions" set "pattern" = '\b(BLOOM|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|QOQ|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)\b' where "name" = 'TRaSH WEB Tier 03' and "pattern" = '(?<=^|[\s.-])(BLOOM|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|QOQ|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)\b';
-- --- END op 1010
