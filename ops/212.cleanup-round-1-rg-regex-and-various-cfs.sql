-- @operation: export
-- @entity: batch
-- @name: Cleanup Round 1 (RG regex and various CFs)
-- @exportedAt: 2026-04-29T16:01:15.099Z
-- @opIds: 3618, 3619, 3620, 3621, 3622, 3623, 3624, 3625, 3626, 3627, 3628, 3629, 3630, 3631, 3632, 3633, 3634, 3636, 3637, 3638, 3639, 3640, 3641, 3642, 3643, 3644, 3645, 3646, 3647, 3648, 3649, 3650, 3651, 3652, 3653, 3654, 3655, 3656, 3657, 3658, 3659, 3660, 3661, 3662, 3663, 3664, 3665, 3666, 3667, 3668, 3669, 3670, 3671, 3672, 3673, 3674, 3675, 3676, 3677, 3678, 3679, 3680, 3681, 3682, 3683, 3686, 3687, 3688, 3689, 3690, 3691, 3692, 3693, 3694, 3695, 3696, 3697, 3698, 3699, 3700, 3701, 3702, 3703, 3704, 3705, 3706, 3707, 3708, 3709, 3710, 3711, 3712, 3713, 3714, 3715, 3716, 3717, 3718, 3719, 3720, 3721, 3722, 3723, 3724, 3725, 3726, 3727, 3728, 3729, 3730, 3731, 3732, 3733, 3734, 3735, 3736, 3737, 3738, 3739, 3740, 3741, 3742, 3743, 3744, 3745, 3746, 3747, 3748, 3749, 3750, 3751, 3752, 3753, 3754, 3755, 3756, 3757, 3758, 3759, 3760, 3761, 3762, 3763, 3764, 3765, 3766, 3767, 3768, 3769, 3770, 3771, 3772, 3773, 3774, 3775, 3776, 3777, 3778, 3779, 3780, 3781, 3782, 3783, 3784, 3785, 3786, 3787, 3788, 3789, 3790, 3791, 3792, 3793, 3794, 3795, 3796, 3797, 3798, 3799, 3800, 3801, 3802, 3803, 3804, 3805, 3806, 3807, 3808, 3809, 3810, 3811, 3812, 3813

-- --- BEGIN op 3618 ( delete custom_format "Dictionarry WEB Tier 05" )
delete from "custom_formats" where "name" = 'Dictionarry WEB Tier 05';
-- --- END op 3618

-- --- BEGIN op 3619 ( delete custom_format "Dictionarry WEB Tier 04" )
delete from "custom_formats" where "name" = 'Dictionarry WEB Tier 04';
-- --- END op 3619

-- --- BEGIN op 3620 ( delete custom_format "Dictionarry WEB Tier 03" )
delete from "custom_formats" where "name" = 'Dictionarry WEB Tier 03';
-- --- END op 3620

-- --- BEGIN op 3621 ( delete custom_format "Dictionarry WEB Tier 02" )
delete from "custom_formats" where "name" = 'Dictionarry WEB Tier 02';
-- --- END op 3621

-- --- BEGIN op 3622 ( delete custom_format "Dictionarry WEB Tier 01" )
delete from "custom_formats" where "name" = 'Dictionarry WEB Tier 01';
-- --- END op 3622

-- --- BEGIN op 3623 ( delete custom_format "Dictionarry UHD Tier 06" )
delete from "custom_formats" where "name" = 'Dictionarry UHD Tier 06';
-- --- END op 3623

-- --- BEGIN op 3624 ( delete custom_format "Dictionarry UHD Tier 05" )
delete from "custom_formats" where "name" = 'Dictionarry UHD Tier 05';
-- --- END op 3624

-- --- BEGIN op 3625 ( delete custom_format "Dictionarry UHD Tier 04" )
delete from "custom_formats" where "name" = 'Dictionarry UHD Tier 04';
-- --- END op 3625

-- --- BEGIN op 3626 ( delete custom_format "Dictionarry UHD Tier 03" )
delete from "custom_formats" where "name" = 'Dictionarry UHD Tier 03';
-- --- END op 3626

-- --- BEGIN op 3627 ( delete custom_format "Dictionarry UHD Tier 02" )
delete from "custom_formats" where "name" = 'Dictionarry UHD Tier 02';
-- --- END op 3627

-- --- BEGIN op 3628 ( delete custom_format "Dictionarry UHD Tier 01" )
delete from "custom_formats" where "name" = 'Dictionarry UHD Tier 01';
-- --- END op 3628

-- --- BEGIN op 3629 ( delete custom_format "Dictionarry HD Tier 05" )
delete from "custom_formats" where "name" = 'Dictionarry HD Tier 05';
-- --- END op 3629

-- --- BEGIN op 3630 ( delete custom_format "Dictionarry HD Tier 06" )
delete from "custom_formats" where "name" = 'Dictionarry HD Tier 06';
-- --- END op 3630

-- --- BEGIN op 3631 ( delete custom_format "Dictionarry HD Tier 04" )
delete from "custom_formats" where "name" = 'Dictionarry HD Tier 04';
-- --- END op 3631

-- --- BEGIN op 3632 ( delete custom_format "Dictionarry HD Tier 03" )
delete from "custom_formats" where "name" = 'Dictionarry HD Tier 03';
-- --- END op 3632

-- --- BEGIN op 3633 ( delete custom_format "Dictionarry HD Tier 02" )
delete from "custom_formats" where "name" = 'Dictionarry HD Tier 02';
-- --- END op 3633

-- --- BEGIN op 3634 ( delete custom_format "Dictionarry HD Tier 01" )
delete from "custom_formats" where "name" = 'Dictionarry HD Tier 01';
-- --- END op 3634

-- --- BEGIN op 3636 ( delete regular_expression "ABBIE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ABBIE' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ABBIE' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'ABBIE' and "pattern" = '(?<=^|[\s.-])ABBIE\b';
-- --- END op 3636

-- --- BEGIN op 3637 ( delete regular_expression "24xHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '24xHD' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = '24xHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = '24xHD' and "pattern" = '(?<=^|[\s.-])24xHD\b';
-- --- END op 3637

-- --- BEGIN op 3638 ( delete regular_expression "3L" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '3L' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = '3L' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = '3L' and "pattern" = '(?<=^|[\s.-])3L\b';
-- --- END op 3638

-- --- BEGIN op 3639 ( delete regular_expression "41RGB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '41RGB' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = '41RGB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = '41RGB' and "pattern" = '(?<=^|[\s.-])41RGB\b';
-- --- END op 3639

-- --- BEGIN op 3640 ( delete regular_expression "4K4U" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '4K4U' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = '4K4U' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = '4K4U' and "pattern" = '(?<=^|[\s.-])4K4U\b';
-- --- END op 3640

-- --- BEGIN op 3641 ( delete regular_expression "AAAUHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AAAUHD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AAAUHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'AAAUHD' and "pattern" = '(?<=^|[\s.-])AAAUHD\b';
-- --- END op 3641

-- --- BEGIN op 3642 ( delete regular_expression "Absinth" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Absinth' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Absinth' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Absinth' and "pattern" = '(?<=^|[\s.-])Absinth\b';
-- --- END op 3642

-- --- BEGIN op 3643 ( delete regular_expression "AjA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AjA' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AjA' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'AjA' and "pattern" = '(?<=^|[\s.-])AjA\b';
-- --- END op 3643

-- --- BEGIN op 3644 ( delete regular_expression "Ao" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Ao' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Ao' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Ao' and "pattern" = '(?<=^|[\s.-])(Ao|RakuvArrow)\b';
-- --- END op 3644

-- --- BEGIN op 3645 ( delete regular_expression "AOC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AOC' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AOC' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'AOC' and "pattern" = '(?<=^|[\s.-])AOC\b';
-- --- END op 3645

-- --- BEGIN op 3646 ( delete regular_expression "APEX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'APEX' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'APEX' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'APEX' and "pattern" = '(?<=^|[\s.-])(APEX|PAXA|PEXA|XEPA)\b';
-- --- END op 3646

-- --- BEGIN op 3647 ( delete regular_expression "ARCADE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ARCADE' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ARCADE' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'ARCADE' and "pattern" = '(?<=^|[\s.-])ARCADE\b';
-- --- END op 3647

-- --- BEGIN op 3648 ( delete regular_expression "AROMA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AROMA' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'AROMA' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'AROMA' and "pattern" = '(?<=^|[\s.-])AROMA\b';
-- --- END op 3648

-- --- BEGIN op 3649 ( delete regular_expression "BeyondHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BeyondHD' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BeyondHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BeyondHD' and "pattern" = '(?<=^|[\s.-])BeyondHD\b';
-- --- END op 3649

-- --- BEGIN op 3650 ( delete regular_expression "BiZKiT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BiZKiT' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BiZKiT' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'BiZKiT' and "pattern" = '(?<=^|[\s.-])BiZKiT\b';
-- --- END op 3650

-- --- BEGIN op 3651 ( delete regular_expression "BLUEBIRD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLUEBIRD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLUEBIRD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BLUEBIRD' and "pattern" = '(?<=^|[\s.-])BLUEBIRD\b';
-- --- END op 3651

-- --- BEGIN op 3652 ( delete regular_expression "bluespots" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'bluespots' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'bluespots' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'bluespots' and "pattern" = '(?<=^|[\s.-])bluespots\b';
-- --- END op 3652

-- --- BEGIN op 3653 ( delete regular_expression "BLURANiUM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLURANiUM' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLURANiUM' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'BLURANiUM' and "pattern" = '(?<=^|[\s.-])BLURANiUM\b';
-- --- END op 3653

-- --- BEGIN op 3654 ( delete regular_expression "BLUTONiUM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLUTONiUM' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BLUTONiUM' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'BLUTONiUM' and "pattern" = '(?<=^|[\s.-])BLUTONiUM\b';
-- --- END op 3654

-- --- BEGIN op 3655 ( delete regular_expression "BOLS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BOLS' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BOLS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BOLS' and "pattern" = '(?<=^|[\s.-])BOLS\b';
-- --- END op 3655

-- --- BEGIN op 3656 ( delete regular_expression "BOREDOR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BOREDOR' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BOREDOR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'BOREDOR' and "pattern" = '(?<=^|[\s.-])BOREDOR\b';
-- --- END op 3656

-- --- BEGIN op 3657 ( delete regular_expression "BTM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BTM' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BTM' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'BTM' and "pattern" = '(?<=^|[\s.-])BTM\b';
-- --- END op 3657

-- --- BEGIN op 3658 ( delete regular_expression "BTN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BTN' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BTN' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'BTN' and "pattern" = '(?<=^|[\s.-])BTN\b';
-- --- END op 3658

-- --- BEGIN op 3659 ( delete regular_expression "BTW" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BTW' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BTW' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'BTW' and "pattern" = '(?<=^|[\s.-])BTW\b';
-- --- END op 3659

-- --- BEGIN op 3660 ( delete regular_expression "BYNDR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BYNDR' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'BYNDR' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'BYNDR' and "pattern" = '(?<=^|[\s.-])(BYNDR|RDNYB)\b';
-- --- END op 3660

-- --- BEGIN op 3661 ( delete regular_expression "CasStudio" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CasStudio' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CasStudio' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'CasStudio' and "pattern" = '(?<=^|[\s.-])CasStudio\b';
-- --- END op 3661

-- --- BEGIN op 3662 ( delete regular_expression "CHAOS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CHAOS' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CHAOS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CHAOS' and "pattern" = '(?<=^|[\s.-])CHAOS\b';
-- --- END op 3662

-- --- BEGIN op 3663 ( delete regular_expression "Chivaman" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Chivaman' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Chivaman' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Chivaman' and "pattern" = '(?<=^|[\s.-])Chivaman\b';
-- --- END op 3663

-- --- BEGIN op 3664 ( delete regular_expression "Cinefeel" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Cinefeel' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Cinefeel' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Cinefeel' and "pattern" = '(?<=^|[\s.-])Cinefeel\b';
-- --- END op 3664

-- --- BEGIN op 3665 ( delete regular_expression "CiNEPHiLES" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CiNEPHiLES' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CiNEPHiLES' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'CiNEPHiLES' and "pattern" = '(?<=^|[\s.-])CiNEPHiLES\b';
-- --- END op 3665

-- --- BEGIN op 3666 ( delete regular_expression "CLASSiCALHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CLASSiCALHD' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CLASSiCALHD' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'CLASSiCALHD' and "pattern" = '(?<=^|[\s.-])CLASSiCALHD\b';
-- --- END op 3666

-- --- BEGIN op 3667 ( delete regular_expression "CMRG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CMRG' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CMRG' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'CMRG' and "pattern" = '(?<=^|[\s.-])CM(a)?R(io)?G\b';
-- --- END op 3667

-- --- BEGIN op 3668 ( delete regular_expression "CoalGirls" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CoalGirls' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CoalGirls' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CoalGirls' and "pattern" = '(?<=^|[\s.-])CoalGirls\b';
-- --- END op 3668

-- --- BEGIN op 3669 ( delete regular_expression "CREATiVE24" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CREATiVE24' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CREATiVE24' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'CREATiVE24' and "pattern" = '(?<=^|[\s.-])CREATiVE24\b';
-- --- END op 3669

-- --- BEGIN op 3670 ( delete regular_expression "CRFW" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CRFW' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CRFW' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'CRFW' and "pattern" = '(?<=^|[\s.-])CRFW\b';
-- --- END op 3670

-- --- BEGIN op 3671 ( delete regular_expression "CRUD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CRUD' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'CRUD' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'CRUD' and "pattern" = '(?<=^|[\s.-])CRUD\b';
-- --- END op 3671

-- --- BEGIN op 3672 ( delete regular_expression "cXcY" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'cXcY' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'cXcY' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'cXcY' and "pattern" = '(?<=^|[\s.-])cXcY\b';
-- --- END op 3672

-- --- BEGIN op 3673 ( delete regular_expression "d3g" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'd3g' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'd3g' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'd3g' and "pattern" = '(?<=^|[\s.-])d3g\b';
-- --- END op 3673

-- --- BEGIN op 3674 ( delete regular_expression "DarQ" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DarQ' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'DarQ' and "pattern" = '(?<=^|[\s.-])DarQ\b$';
-- --- END op 3674

-- --- BEGIN op 3675 ( delete regular_expression "dB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'dB' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'dB' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'dB' and "pattern" = '(?<=^|[\s.-])dB\b';
-- --- END op 3675

-- --- BEGIN op 3676 ( delete regular_expression "DiscoD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DiscoD' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DiscoD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'DiscoD' and "pattern" = '(?<=^|[\s.-])DiscoD\b$';
-- --- END op 3676

-- --- BEGIN op 3677 ( delete regular_expression "dkore" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'dkore' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'dkore' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'dkore' and "pattern" = '(?<=^|[\s.-])dkore\b';
-- --- END op 3677

-- --- BEGIN op 3678 ( delete regular_expression "DTS-HD MA Missing Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'DTS-HD MA Missing Groups' AND tag_name = 'Audio';

delete from "regular_expressions" where "name" = 'DTS-HD MA Missing Groups' and "pattern" = '(?<=^|[\s.-])IAMABLE\b';
-- --- END op 3678

-- --- BEGIN op 3679 ( delete regular_expression "EA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EA' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EA' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'EA' and "pattern" = '(?<=^|[\s.-])EA\b';
-- --- END op 3679

-- --- BEGIN op 3680 ( delete regular_expression "edge2020" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'edge2020' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'edge2020' and "pattern" = '(?<=^|[\s.-])edge2020\b';
-- --- END op 3680

-- --- BEGIN op 3681 ( delete regular_expression "EPSiLON" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EPSiLON' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'EPSiLON' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'EPSiLON' and "pattern" = '(?<=^|[\s.-])EPSiLON\b';
-- --- END op 3681

-- --- BEGIN op 3682 ( delete regular_expression "FGT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FGT' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FGT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FGT' and "pattern" = '(?<=^|[\s.-])FGT\b';
-- --- END op 3682

-- --- BEGIN op 3683 ( delete regular_expression "FilmHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FilmHD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FilmHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FilmHD' and "pattern" = '(?<=^|[\s.-])FilmHD\b';
-- --- END op 3683

-- --- BEGIN op 3686 ( delete regular_expression "FRDS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FRDS' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FRDS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FRDS' and "pattern" = '(?<=^|[\s.-])FRDS\b';
-- --- END op 3686

-- --- BEGIN op 3687 ( delete regular_expression "FTW-HD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FTW-HD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FTW-HD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'FTW-HD' and "pattern" = '(?<=^|[\s.-])FTW-HD\b';
-- --- END op 3687

-- --- BEGIN op 3688 ( delete regular_expression "GNOME" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GNOME' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GNOME' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'GNOME' and "pattern" = '(?<=^|[\s.-])GNOME\b';
-- --- END op 3688

-- --- BEGIN op 3689 ( delete regular_expression "GNOMiSSiON" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GNOMiSSiON' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GNOMiSSiON' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'GNOMiSSiON' and "pattern" = '(?<=^|[\s.-])GNOMiSSiON\b';
-- --- END op 3689

-- --- BEGIN op 3690 ( delete regular_expression "GRiMM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GRiMM' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'GRiMM' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'GRiMM' and "pattern" = '(?<=^|[\s.-])GRiMM\b';
-- --- END op 3690

-- --- BEGIN op 3691 ( delete regular_expression "Hares" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Hares' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Hares' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Hares' and "pattern" = '(?<=^|[\s.-])Hares\b';
-- --- END op 3691

-- --- BEGIN op 3692 ( delete regular_expression "HD77" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HD77' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HD77' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HD77' and "pattern" = '(?<=^|[\s.-])HD77\b';
-- --- END op 3692

-- --- BEGIN op 3693 ( delete regular_expression "HDS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDS' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HDS' and "pattern" = '(?<=^|[\s.-])HDS\b';
-- --- END op 3693

-- --- BEGIN op 3694 ( delete regular_expression "HDW" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDW' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HDW' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HDW' and "pattern" = '(?<=^|[\s.-])HDW\b';
-- --- END op 3694

-- --- BEGIN op 3695 ( delete regular_expression "HHWEB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HHWEB' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HHWEB' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'HHWEB' and "pattern" = '(?<=^|[\s.-])HHWEB\b';
-- --- END op 3695

-- --- BEGIN op 3696 ( delete regular_expression "Honeyvera" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Honeyvera' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Honeyvera' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Honeyvera' and "pattern" = '(?<=^|[\s.-])Honeyvera\b';
-- --- END op 3696

-- --- BEGIN op 3697 ( delete regular_expression "HUNTJR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HUNTJR' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HUNTJR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'HUNTJR' and "pattern" = '(?<=^|[\s.-])HUNTJR\b';
-- --- END op 3697

-- --- BEGIN op 3698 ( delete regular_expression "iCandy" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iCandy' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iCandy' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iCandy' and "pattern" = '(?<=^|[\s.-])iCandy\b';
-- --- END op 3698

-- --- BEGIN op 3699 ( delete regular_expression "iNVANDRAREN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iNVANDRAREN' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iNVANDRAREN' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iNVANDRAREN' and "pattern" = '(?<=^|[\s.-])iNVANDRAREN\b';
-- --- END op 3699

-- --- BEGIN op 3700 ( update custom_format "iT (Missing)" )
delete from "custom_format_conditions" where "custom_format_name" = 'iT (Missing)' and "name" = 'iPT Internals' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 3700

-- --- BEGIN op 3701 ( delete regular_expression "iPT Internals" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iPT Internals' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iPT Internals' and "pattern" = '(?<=^|[\s.-])CM(a)?R(io)?G|EVO\b';
-- --- END op 3701

-- --- BEGIN op 3702 ( delete regular_expression "iVy" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iVy' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iVy' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'iVy' and "pattern" = '(?<=^|[\s.-])iVy\b';
-- --- END op 3702

-- --- BEGIN op 3703 ( delete regular_expression "k00kie" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'k00kie' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'k00kie' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'k00kie' and "pattern" = '(?<=^|[\s.-])k00kie\b';
-- --- END op 3703

-- --- BEGIN op 3704 ( delete regular_expression "KC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KC' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KC' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'KC' and "pattern" = '(?<=^|[\s.-])KC\b';
-- --- END op 3704

-- --- BEGIN op 3705 ( delete regular_expression "KHN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KHN' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KHN' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'KHN' and "pattern" = '(?<=^|[\s.-])KHN\b';
-- --- END op 3705

-- --- BEGIN op 3706 ( delete regular_expression "KiNGS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KiNGS' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KiNGS' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'KiNGS' and "pattern" = '(?<=^|[\s.-])KiNGS\b';
-- --- END op 3706

-- --- BEGIN op 3707 ( delete regular_expression "kmplx" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'kmplx' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'kmplx' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'kmplx' and "pattern" = '(?<=^|[\s.-])kmplx\b';
-- --- END op 3707

-- --- BEGIN op 3708 ( delete regular_expression "KNiVES" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KNiVES' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KNiVES' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'KNiVES' and "pattern" = '(?<=^|[\s.-])KNiVES\b';
-- --- END op 3708

-- --- BEGIN op 3709 ( delete regular_expression "KONTRAST" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KONTRAST' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KONTRAST' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'KONTRAST' and "pattern" = '(?<=^|[\s.-])KONTRAST\b';
-- --- END op 3709

-- --- BEGIN op 3710 ( update regular_expression "FLUX" )
update "regular_expressions" set "pattern" = '^(FLUX)$' where "name" = 'FLUX' and "pattern" = '(?<=^|[\s.-])FLUX\b';
-- --- END op 3710

-- --- BEGIN op 3711 ( update regular_expression "FLUX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FLUX' AND tag_name = 'WEB-DL';
-- --- END op 3711

-- --- BEGIN op 3712 ( delete custom_format "iT (Missing)" )
delete from "custom_formats" where "name" = 'iT (Missing)';
-- --- END op 3712

-- --- BEGIN op 3713 ( delete regular_expression "KRaLiMaRKo" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KRaLiMaRKo' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'KRaLiMaRKo' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'KRaLiMaRKo' and "pattern" = '(?<=^|[\s.-])KRaLiMaRKo\b';
-- --- END op 3713

-- --- BEGIN op 3714 ( delete regular_expression "LAMA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LAMA' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LAMA' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LAMA' and "pattern" = '(?<=^|[\s.-])LAMA\b';
-- --- END op 3714

-- --- BEGIN op 3715 ( delete regular_expression "LAZY" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LAZY' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LAZY' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'LAZY' and "pattern" = '(?<=^|[\s.-])LAZY\b';
-- --- END op 3715

-- --- BEGIN op 3716 ( delete regular_expression "LeagueWEB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LeagueWEB' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LeagueWEB' and "pattern" = '(?<=^|[\s.-])LeagueWEB\b';
-- --- END op 3716

-- --- BEGIN op 3717 ( delete regular_expression "LittleBakas" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LittleBakas' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LittleBakas' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LittleBakas' and "pattern" = '(?<=^|[\s.-])LittleBakas\b';
-- --- END op 3717

-- --- BEGIN op 3718 ( delete regular_expression "LM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LM' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LM' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'LM' and "pattern" = '(?<=^|[\s.-])LM\b';
-- --- END op 3718

-- --- BEGIN op 3719 ( delete regular_expression "LOST" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LOST' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LOST' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LOST' and "pattern" = '(?<=^|[\s.-])LOST\b';
-- --- END op 3719

-- --- BEGIN op 3720 ( delete regular_expression "LSt" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LSt' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'LSt' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'LSt' and "pattern" = '(?<=^|[\s.-])LSt\b';
-- --- END op 3720

-- --- BEGIN op 3721 ( delete regular_expression "Lucifer" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Lucifer' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Lucifer' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Lucifer' and "pattern" = '(?<=^|[\s.-])Lucifer\b';
-- --- END op 3721

-- --- BEGIN op 3722 ( delete regular_expression "MALUS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MALUS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MALUS' and "pattern" = '(?<=^|[\s.-])MALUS\b';
-- --- END op 3722

-- --- BEGIN op 3723 ( update custom_format "MeGusta" )
delete from "custom_format_conditions" where "custom_format_name" = 'MeGusta' and "name" = 'MeGusta' and "type" = 'release_group' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 3723

-- --- BEGIN op 3724 ( delete regular_expression "MeGusta" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MeGusta' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MeGusta' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'MeGusta' and "pattern" = '(?<=^|[\s.-])MeGusta\b';
-- --- END op 3724

-- --- BEGIN op 3725 ( delete regular_expression "MgB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MgB' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MgB' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'MgB' and "pattern" = '(?<=^|[\s.-])MgB\b';
-- --- END op 3725

-- --- BEGIN op 3726 ( delete regular_expression "micius" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'micius' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'micius' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'micius' and "pattern" = '(?<=^|[\s.-])micius\b';
-- --- END op 3726

-- --- BEGIN op 3727 ( delete regular_expression "MiU" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MiU' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MiU' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'MiU' and "pattern" = '(?<=^|[\s.-])MiU\b';
-- --- END op 3727

-- --- BEGIN op 3728 ( delete regular_expression "MNHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MNHD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MNHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MNHD' and "pattern" = '(?<=^|[\s.-])MNHD\b';
-- --- END op 3728

-- --- BEGIN op 3729 ( delete regular_expression "monkee" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'monkee' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'monkee' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'monkee' and "pattern" = '(?<=^|[\s.-])monkee\b';
-- --- END op 3729

-- --- BEGIN op 3730 ( delete regular_expression "MovieMan" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MovieMan' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'MovieMan' and "pattern" = '(?<=^|[\s.-])MovieMan\b';
-- --- END op 3730

-- --- BEGIN op 3731 ( delete regular_expression "MZABI" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MZABI' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'MZABI' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'MZABI' and "pattern" = '(?<=^|[\s.-])MZABI\b';
-- --- END op 3731

-- --- BEGIN op 3732 ( delete regular_expression "NAHOM" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NAHOM' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NAHOM' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NAHOM' and "pattern" = '(?<=^|[\s.-])NAHOM\b';
-- --- END op 3732

-- --- BEGIN op 3733 ( delete regular_expression "NhaNc3" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NhaNc3' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NhaNc3' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'NhaNc3' and "pattern" = '(?<=^|[\s.-])NhaNc3\b';
-- --- END op 3733

-- --- BEGIN op 3734 ( delete regular_expression "NINJACENTRAL" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NINJACENTRAL' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NINJACENTRAL' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'NINJACENTRAL' and "pattern" = '(?<=^|[\s.-])NINJACENTRAL\b';
-- --- END op 3734

-- --- BEGIN op 3735 ( delete regular_expression "NOSiViD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NOSiViD' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NOSiViD' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'NOSiViD' and "pattern" = '(?<=^|[\s.-])NOSiViD\b';
-- --- END op 3735

-- --- BEGIN op 3736 ( delete regular_expression "NPMS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NPMS' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NPMS' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'NPMS' and "pattern" = '(?<=^|[\s.-])NPMS\b';
-- --- END op 3736

-- --- BEGIN op 3737 ( delete regular_expression "NTG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NTG' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'NTG' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'NTG' and "pattern" = '(?<=^|[\s.-])NTG\b';
-- --- END op 3737

-- --- BEGIN op 3738 ( delete regular_expression "OEPlus" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'OEPlus' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'OEPlus' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'OEPlus' and "pattern" = '(?<=^|[\s.-])OEPlus\b';
-- --- END op 3738

-- --- BEGIN op 3739 ( delete regular_expression "OnlyWeb" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'OnlyWeb' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'OnlyWeb' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'OnlyWeb' and "pattern" = '(?<=^|[\s.-])OnlyWeb\b';
-- --- END op 3739

-- --- BEGIN op 3740 ( delete regular_expression "Opus Negation" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Opus Negation' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Opus Negation' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Opus Negation' and "pattern" = '(?<=^|[\s.-])OPUS\b';
-- --- END op 3740

-- --- BEGIN op 3741 ( delete regular_expression "PHOCiS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PHOCiS' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PHOCiS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PHOCiS' and "pattern" = '(?<=^|[\s.-])PHOCiS\b';
-- --- END op 3741

-- --- BEGIN op 3742 ( delete regular_expression "PHOENiX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PHOENiX' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PHOENiX' and "pattern" = '(?<=^|[\s.-])PHOENiX\b';
-- --- END op 3742

-- --- BEGIN op 3743 ( delete regular_expression "playBD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'playBD' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'playBD' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'playBD' and "pattern" = '(?<=^|[\s.-])playBD\b';
-- --- END op 3743

-- --- BEGIN op 3744 ( delete regular_expression "playWEB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'playWEB' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'playWEB' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'playWEB' and "pattern" = '(?<=^|[\s.-])playWEB\b';
-- --- END op 3744

-- --- BEGIN op 3745 ( delete regular_expression "PmP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PmP' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PmP' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'PmP' and "pattern" = '(?<=^|[\s.-])PmP\b';
-- --- END op 3745

-- --- BEGIN op 3746 ( delete regular_expression "PP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PP' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PP' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'PP' and "pattern" = '(?<=^|[\s.-])PP\b';
-- --- END op 3746

-- --- BEGIN op 3747 ( delete regular_expression "PSA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PSA' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PSA' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'PSA' and "pattern" = '(?<=^|[\s.-])PSA\b';
-- --- END op 3747

-- --- BEGIN op 3748 ( delete regular_expression "PTerWEB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PTerWEB' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PTerWEB' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'PTerWEB' and "pattern" = '(?<=^|[\s.-])PTerWEB\b';
-- --- END op 3748

-- --- BEGIN op 3749 ( delete regular_expression "PTH" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PTH' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'PTH' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'PTH' and "pattern" = '(?<=^|[\s.-])PTH\b';
-- --- END op 3749

-- --- BEGIN op 3750 ( delete regular_expression "R1GY3B" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'R1GY3B' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'R1GY3B' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'R1GY3B' and "pattern" = '(?<=^|[\s.-])R1GY3B\b';
-- --- END op 3750

-- --- BEGIN op 3751 ( delete regular_expression "Raizel" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Raizel' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Raizel' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Raizel' and "pattern" = '(?<=^|[\s.-])Raizel\b';
-- --- END op 3751

-- --- BEGIN op 3752 ( delete regular_expression "Ralphy" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Ralphy' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Ralphy' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Ralphy' and "pattern" = '(?<=^|[\s.-])Ralphy\b';
-- --- END op 3752

-- --- BEGIN op 3753 ( delete regular_expression "RARGB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RARGB' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RARGB' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RARGB' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'RARGB' and "pattern" = '(?<=^|[\s.-])RARGB\b';
-- --- END op 3753

-- --- BEGIN op 3754 ( delete regular_expression "RAWR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RAWR' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RAWR' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'RAWR' and "pattern" = '(?<=^|[\s.-])RAWR\b';
-- --- END op 3754

-- --- BEGIN op 3755 ( delete regular_expression "ROCCaT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ROCCaT' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ROCCaT' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'ROCCaT' and "pattern" = '(?<=^|[\s.-])ROCCaT\b';
-- --- END op 3755

-- --- BEGIN op 3756 ( delete regular_expression "RTN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RTN' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RTN' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'RTN' and "pattern" = '(?<=^|[\s.-])RTN\b';
-- --- END op 3756

-- --- BEGIN op 3757 ( delete regular_expression "RUMOUR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RUMOUR' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'RUMOUR' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'RUMOUR' and "pattern" = '(?<=^|[\s.-])RUMOUR\b';
-- --- END op 3757

-- --- BEGIN op 3758 ( delete regular_expression "Saizen" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Saizen' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Saizen' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Saizen' and "pattern" = '(?<=^|[\s.-])Saizen\b';
-- --- END op 3758

-- --- BEGIN op 3759 ( delete regular_expression "SallySubs" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SallySubs' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SallySubs' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SallySubs' and "pattern" = '(?<=^|[\s.-])SallySubs\b';
-- --- END op 3759

-- --- BEGIN op 3760 ( delete regular_expression "SARTRE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SARTRE' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SARTRE' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SARTRE' and "pattern" = '(?<=^|[\s.-])SARTRE\b';
-- --- END op 3760

-- --- BEGIN op 3761 ( delete regular_expression "SHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SHD' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SHD' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SHD' and "pattern" = '(?<=^|[\s.-])SHD\b';
-- --- END op 3761

-- --- BEGIN op 3762 ( delete regular_expression "ShieldBearer" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ShieldBearer' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ShieldBearer' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'ShieldBearer' and "pattern" = '(?<=^|[\s.-])ShieldBearer\b';
-- --- END op 3762

-- --- BEGIN op 3763 ( delete regular_expression "SiC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiC' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiC' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SiC' and "pattern" = '(?<=^|[\s.-])SiC\b';
-- --- END op 3763

-- --- BEGIN op 3764 ( delete regular_expression "SiCFoI" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiCFoI' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiCFoI' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'SiCFoI' and "pattern" = '(?<=^|[\s.-])SiCFoI\b';
-- --- END op 3764

-- --- BEGIN op 3765 ( delete regular_expression "SiGLA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiGLA' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiGLA' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SiGLA' and "pattern" = '(?<=^|[\s.-])SiGLA\b';
-- --- END op 3765

-- --- BEGIN op 3766 ( delete regular_expression "SiGMA" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiGMA' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SiGMA' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SiGMA' and "pattern" = '(?<=^|[\s.-])SiGMA\b';
-- --- END op 3766

-- --- BEGIN op 3767 ( delete regular_expression "SLiGNOME" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SLiGNOME' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SLiGNOME' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SLiGNOME' and "pattern" = '(?<=^|[\s.-])SLiGNOME\b';
-- --- END op 3767

-- --- BEGIN op 3768 ( delete regular_expression "SM737" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SM737' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SM737' and "pattern" = '(?<=^|[\s.-])SM737\b';
-- --- END op 3768

-- --- BEGIN op 3769 ( delete regular_expression "SMAHAWUG" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SMAHAWUG' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SMAHAWUG' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SMAHAWUG' and "pattern" = '(?<=^|[\s.-])SMAHAWUG\b';
-- --- END op 3769

-- --- BEGIN op 3770 ( delete regular_expression "SMURF" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SMURF' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SMURF' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SMURF' and "pattern" = '(?<=^|[\s.-])SMURF\b';
-- --- END op 3770

-- --- BEGIN op 3771 ( delete regular_expression "SPECTACLE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SPECTACLE' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SPECTACLE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SPECTACLE' and "pattern" = '(?<=^|[\s.-])SPECTACLE\b';
-- --- END op 3771

-- --- BEGIN op 3772 ( delete regular_expression "SPiRiT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SPiRiT' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SPiRiT' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SPiRiT' and "pattern" = '(?<=^|[\s.-])SPiRiT\b';
-- --- END op 3772

-- --- BEGIN op 3773 ( delete regular_expression "SQS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SQS' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SQS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SQS' and "pattern" = '(?<=^|[\s.-])SQS\b';
-- --- END op 3773

-- --- BEGIN op 3774 ( delete regular_expression "STUTTERSHIT" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'STUTTERSHIT' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'STUTTERSHIT' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'STUTTERSHIT' and "pattern" = '(?<=^|[\s.-])STUTTERSHIT\b';
-- --- END op 3774

-- --- BEGIN op 3775 ( delete regular_expression "SumVision" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SumVision' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SumVision' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'SumVision' and "pattern" = '(?<=^|[\s.-])SumVision\b';
-- --- END op 3775

-- --- BEGIN op 3776 ( delete regular_expression "SWAGGERUHD" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SWAGGERUHD' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SWAGGERUHD' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'SWAGGERUHD' and "pattern" = '(?<=^|[\s.-])SWAGGERUHD\b';
-- --- END op 3776

-- --- BEGIN op 3777 ( delete regular_expression "SwAgLaNdEr" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SwAgLaNdEr' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'SwAgLaNdEr' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'SwAgLaNdEr' and "pattern" = '(?<=^|[\s.-])SwAgLaNdEr\b';
-- --- END op 3777

-- --- BEGIN op 3778 ( delete regular_expression "Telly" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Telly' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Telly' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Telly' and "pattern" = '(?<=^|[\s.-])Telly\b';
-- --- END op 3778

-- --- BEGIN op 3779 ( delete regular_expression "TEPES" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TEPES' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TEPES' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'TEPES' and "pattern" = '(?<=^|[\s.-])TEPES\b';
-- --- END op 3779

-- --- BEGIN op 3780 ( delete regular_expression "TheFarm" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TheFarm' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TheFarm' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'TheFarm' and "pattern" = '(?<=^|[\s.-])TheFarm\b';
-- --- END op 3780

-- --- BEGIN op 3781 ( delete regular_expression "THREESOME" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'THREESOME' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'THREESOME' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'THREESOME' and "pattern" = '(?<=^|[\s.-])THREESOME\b';
-- --- END op 3781

-- --- BEGIN op 3782 ( delete regular_expression "TimeDistortion" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TimeDistortion' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TimeDistortion' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'TimeDistortion' and "pattern" = '(?<=^|[\s.-])TimeDistortion\b';
-- --- END op 3782

-- --- BEGIN op 3783 ( delete regular_expression "TOMBCRUISE" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TOMBCRUISE' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TOMBCRUISE' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TOMBCRUISE' and "pattern" = '(?<=^|[\s.-])TOMBCRUISE\b';
-- --- END op 3783

-- --- BEGIN op 3784 ( delete regular_expression "TOMMY" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TOMMY' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TOMMY' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'TOMMY' and "pattern" = '(?<=^|[\s.-])TOMMY\b';
-- --- END op 3784

-- --- BEGIN op 3785 ( delete regular_expression "ToNaTo" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ToNaTo' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'ToNaTo' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'ToNaTo' and "pattern" = '(?<=^|[\s.-])ToNaTo\b';
-- --- END op 3785

-- --- BEGIN op 3786 ( delete regular_expression "TRiToN" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRiToN' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TRiToN' AND tag_name = 'Remux';

delete from "regular_expressions" where "name" = 'TRiToN' and "pattern" = '(?<=^|[\s.-])TRiToN\b';
-- --- END op 3786

-- --- BEGIN op 3787 ( delete regular_expression "Tron" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Tron' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Tron' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Tron' and "pattern" = '(?<=^|[\s.-])Tron\b';
-- --- END op 3787

-- --- BEGIN op 3788 ( delete regular_expression "TvR" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TvR' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TvR' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'TvR' and "pattern" = '(?<=^|[\s.-])TvR\b';
-- --- END op 3788

-- --- BEGIN op 3789 ( delete regular_expression "TVSmash" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TVSmash' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TVSmash' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'TVSmash' and "pattern" = '(?<=^|[\s.-])TVSmash\b';
-- --- END op 3789

-- --- BEGIN op 3790 ( delete regular_expression "TWASERiES" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TWASERiES' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TWASERiES' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'TWASERiES' and "pattern" = '(?<=^|[\s.-])TWASERiES\b';
-- --- END op 3790

-- --- BEGIN op 3791 ( delete regular_expression "UHD Bluray Negation" )
delete from "regular_expressions" where "name" = 'UHD Bluray Negation' and "pattern" = '(?<=^|[\s.-])D0ct0rLew|MALUS|MovieMan|SM737|SQS|WOU\b';
-- --- END op 3791

-- --- BEGIN op 3792 ( delete regular_expression "UHD Bluray Missing Groups" )
delete from "regular_expressions" where "name" = 'UHD Bluray Missing Groups' and "pattern" = '(?<=^|[\s.-])LEGi0N\b';
-- --- END op 3792

-- --- BEGIN op 3793 ( delete regular_expression "UHDCLUBREMUX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'UHDCLUBREMUX' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'UHDCLUBREMUX' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'UHDCLUBREMUX' and "pattern" = '(?<=^|[\s.-])UHDCLUBREMUX\b';
-- --- END op 3793

-- --- BEGIN op 3794 ( delete regular_expression "VALiS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VALiS' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VALiS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'VALiS' and "pattern" = '(?<=^|[\s.-])VALiS\b';
-- --- END op 3794

-- --- BEGIN op 3795 ( delete regular_expression "Vialle" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Vialle' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Vialle' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Vialle' and "pattern" = '(?<=^|[\s.-])Vialle\b';
-- --- END op 3795

-- --- BEGIN op 3796 ( delete regular_expression "VoX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VoX' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VoX' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'VoX' and "pattern" = '(?<=^|[\s.-])VoX\b';
-- --- END op 3796

-- --- BEGIN op 3797 ( update custom_format "VVC" )
delete from "custom_format_conditions" where "custom_format_name" = 'VVC' and "name" = 'VVC' and "type" = 'release_title' and "arr_type" = 'all' and "negate" = 0 and "required" = 1;
-- --- END op 3797

-- --- BEGIN op 3798 ( delete regular_expression "VVC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'VVC' AND tag_name = 'Codec';

delete from "regular_expressions" where "name" = 'VVC' and "pattern" = '(?<=^|[\s.-])VVC\b';
-- --- END op 3798

-- --- BEGIN op 3799 ( delete regular_expression "Vyndros" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Vyndros' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Vyndros' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Vyndros' and "pattern" = '(?<=^|[\s.-])Vyndros\b';
-- --- END op 3799

-- --- BEGIN op 3800 ( delete regular_expression "WADU" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WADU' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WADU' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WADU' and "pattern" = '(?<=^|[\s.-])WADU\b';
-- --- END op 3800

-- --- BEGIN op 3801 ( delete regular_expression "Weasley" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Weasley' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Weasley' and "pattern" = '(?<=^|[\s.-])Weasley\b$';
-- --- END op 3801

-- --- BEGIN op 3802 ( delete regular_expression "WELP" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WELP' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WELP' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'WELP' and "pattern" = '(?<=^|[\s.-])WELP\b';
-- --- END op 3802

-- --- BEGIN op 3803 ( delete regular_expression "WOU" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WOU' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'WOU' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'WOU' and "pattern" = '(?<=^|[\s.-])WOU\b';
-- --- END op 3803

-- --- BEGIN op 3804 ( delete regular_expression "x0r" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x0r' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x0r' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'x0r' and "pattern" = '(?<=^|[\s.-])x0r\b';
-- --- END op 3804

-- --- BEGIN op 3805 ( delete regular_expression "XEBEC" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'XEBEC' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'XEBEC' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'XEBEC' and "pattern" = '(?<=^|[\s.-])XEBEC\b';
-- --- END op 3805

-- --- BEGIN op 3806 ( delete regular_expression "YAWNiX" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YAWNiX' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YAWNiX' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'YAWNiX' and "pattern" = '(?<=^|[\s.-])YAWNiX\b';
-- --- END op 3806

-- --- BEGIN op 3807 ( delete regular_expression "YELLO" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YELLO' AND tag_name = 'HEVC';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YELLO' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'YELLO' and "pattern" = '(?<=^|[\s.-])YELLO\b';
-- --- END op 3807

-- --- BEGIN op 3808 ( delete regular_expression "YIFY" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YIFY' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YIFY' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'YIFY' and "pattern" = '(?<=^|[\s.-])YIFY\b';
-- --- END op 3808

-- --- BEGIN op 3809 ( delete regular_expression "Yoyo" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Yoyo' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Yoyo' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Yoyo' and "pattern" = '(?<=^|[\s.-])Yoyo\b';
-- --- END op 3809

-- --- BEGIN op 3810 ( delete regular_expression "YTS" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YTS' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'YTS' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'YTS' and "pattern" = '(?<=^|[\s.-])YTS(.(MX|LT|AG))?\b';
-- --- END op 3810

-- --- BEGIN op 3811 ( delete regular_expression "Zurako" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Zurako' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Zurako' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Zurako' and "pattern" = '(?<=^|[\s.-])Zurako\b';
-- --- END op 3811

-- --- BEGIN op 3812 ( delete custom_format "VVC" )
delete from "custom_formats" where "name" = 'VVC';
-- --- END op 3812

-- --- BEGIN op 3813 ( delete custom_format "MeGusta" )
delete from "custom_formats" where "name" = 'MeGusta';
-- --- END op 3813
