-- @operation: export
-- @entity: batch
-- @name: Standardize Anime to TRaSH
-- @exportedAt: 2026-03-13T16:50:31.414Z
-- @opIds: 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876

-- --- BEGIN op 720 ( update quality_profile "1080p Anime" )
update "quality_profiles" set "name" = '1080p Anime' where "name" = 'Anime 1080p';
-- --- END op 720

-- --- BEGIN op 721 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'Bluray-2160p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'Bluray-576p', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'BR-DISK', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'CAM', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'DVD-R', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'DVDSCR', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'HDTV-2160p', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'HDTV-480p', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'Raw-HD', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'REGIONAL', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'Remux-1080p', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'Remux-2160p', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'TELECINE', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'TELESYNC', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'Unknown', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'WEBDL-2160p', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'WEBRip-2160p', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'WORKPRINT', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 1, upgrade_until = 0
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'WEB 720p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'WEB 480p'
  AND quality_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 0, upgrade_until = 1
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 721

-- --- BEGIN op 722 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 01', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 722

-- --- BEGIN op 723 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 01', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 723

-- --- BEGIN op 724 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'all'
  AND score = 1500;
-- --- END op 724

-- --- BEGIN op 725 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 725

-- --- BEGIN op 726 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 726

-- --- BEGIN op 727 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 727

-- --- BEGIN op 728 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 728

-- --- BEGIN op 729 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 03', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 729

-- --- BEGIN op 730 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 03', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 730

-- --- BEGIN op 731 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'all'
  AND score = 1400;
-- --- END op 731

-- --- BEGIN op 732 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 04', 'radarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 732

-- --- BEGIN op 733 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 04', 'sonarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 733

-- --- BEGIN op 734 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'all'
  AND score = 1300;
-- --- END op 734

-- --- BEGIN op 735 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 05', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 735

-- --- BEGIN op 736 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 05', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 736

-- --- BEGIN op 737 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'all'
  AND score = 1200;
-- --- END op 737

-- --- BEGIN op 738 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 06', 'radarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'radarr'
);
-- --- END op 738

-- --- BEGIN op 739 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 06', 'sonarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'sonarr'
);
-- --- END op 739

-- --- BEGIN op 740 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'all'
  AND score = 1100;
-- --- END op 740

-- --- BEGIN op 741 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 07', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'radarr'
);
-- --- END op 741

-- --- BEGIN op 742 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 07', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'sonarr'
);
-- --- END op 742

-- --- BEGIN op 743 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'all'
  AND score = 1000;
-- --- END op 743

-- --- BEGIN op 744 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 08', 'radarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'radarr'
);
-- --- END op 744

-- --- BEGIN op 745 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime BD Tier 08', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'sonarr'
);
-- --- END op 745

-- --- BEGIN op 746 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'all'
  AND score = 900;
-- --- END op 746

-- --- BEGIN op 747 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 747

-- --- BEGIN op 748 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 748

-- --- BEGIN op 749 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 749

-- --- BEGIN op 750 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 750

-- --- BEGIN op 751 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 751

-- --- BEGIN op 752 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 752

-- --- BEGIN op 753 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 753

-- --- BEGIN op 754 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 754

-- --- BEGIN op 755 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 755

-- --- BEGIN op 756 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 756

-- --- BEGIN op 757 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 757

-- --- BEGIN op 758 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 758

-- --- BEGIN op 759 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 01', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 759

-- --- BEGIN op 760 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 01', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 760

-- --- BEGIN op 761 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 761

-- --- BEGIN op 762 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 02', 'radarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 762

-- --- BEGIN op 763 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 02', 'sonarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 763

-- --- BEGIN op 764 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'all'
  AND score = 1900;
-- --- END op 764

-- --- BEGIN op 765 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 03', 'radarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 765

-- --- BEGIN op 766 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 03', 'sonarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 766

-- --- BEGIN op 767 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'all'
  AND score = 1800;
-- --- END op 767

-- --- BEGIN op 768 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 04', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 768

-- --- BEGIN op 769 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 04', 'sonarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 769

-- --- BEGIN op 770 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'all'
  AND score = 1700;
-- --- END op 770

-- --- BEGIN op 771 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 05', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 771

-- --- BEGIN op 772 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 05', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 772

-- --- BEGIN op 773 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'all'
  AND score = 1600;
-- --- END op 773

-- --- BEGIN op 774 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 6', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 774

-- --- BEGIN op 775 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime WEB Tier 6', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 775

-- --- BEGIN op 776 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'all'
  AND score = 1500;
-- --- END op 776

-- --- BEGIN op 777 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 2000;
-- --- END op 777

-- --- BEGIN op 778 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 778

-- --- BEGIN op 779 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1900;
-- --- END op 779

-- --- BEGIN op 780 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1900;
-- --- END op 780

-- --- BEGIN op 781 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1800;
-- --- END op 781

-- --- BEGIN op 782 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1800;
-- --- END op 782

-- --- BEGIN op 783 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 783

-- --- BEGIN op 784 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1700;
-- --- END op 784

-- --- BEGIN op 785 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 785

-- --- BEGIN op 786 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 786

-- --- BEGIN op 787 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 787

-- --- BEGIN op 788 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 788

-- --- BEGIN op 789 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Remux Tier 01 - Sonarr'
  AND arr_type = 'sonarr'
  AND score = 1050;
-- --- END op 789

-- --- BEGIN op 790 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Remux Tier 02 - Sonarr'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 790

-- --- BEGIN op 791 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'TRaSH WEB Tier 01', 'radarr', 350
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 791

-- --- BEGIN op 792 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'TRaSH WEB Tier 01', 'sonarr', 350
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 792

-- --- BEGIN op 793 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'TRaSH WEB Tier 02', 'radarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 793

-- --- BEGIN op 794 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'TRaSH WEB Tier 02', 'sonarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 794

-- --- BEGIN op 795 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'TRaSH WEB Tier 03', 'radarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 795

-- --- BEGIN op 796 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'TRaSH WEB Tier 03', 'sonarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 796

-- --- BEGIN op 797 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AAC', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 797

-- --- BEGIN op 798 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AAC', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 798

-- --- BEGIN op 799 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'AAC'
  AND arr_type = 'all'
  AND score = 10;
-- --- END op 799

-- --- BEGIN op 800 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ABEMA', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'radarr'
);
-- --- END op 800

-- --- BEGIN op 801 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ABEMA', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'sonarr'
);
-- --- END op 801

-- --- BEGIN op 802 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'ABEMA'
  AND arr_type = 'all'
  AND score = 2;
-- --- END op 802

-- --- BEGIN op 803 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ADN', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ADN'
    AND arr_type = 'radarr'
);
-- --- END op 803

-- --- BEGIN op 804 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ADN', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ADN'
    AND arr_type = 'sonarr'
);
-- --- END op 804

-- --- BEGIN op 805 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'ADN'
  AND arr_type = 'all'
  AND score = 2;
-- --- END op 805

-- --- BEGIN op 806 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AMZN', 'radarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 806

-- --- BEGIN op 807 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AMZN', 'sonarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 807

-- --- BEGIN op 808 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'all'
  AND score = 4;
-- --- END op 808

-- --- BEGIN op 809 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'B-Global', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'B-Global'
    AND arr_type = 'radarr'
);
-- --- END op 809

-- --- BEGIN op 810 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'B-Global', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'B-Global'
    AND arr_type = 'sonarr'
);
-- --- END op 810

-- --- BEGIN op 811 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'B-Global'
  AND arr_type = 'all'
  AND score = 1;
-- --- END op 811

-- --- BEGIN op 812 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Bilibili', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Bilibili'
    AND arr_type = 'radarr'
);
-- --- END op 812

-- --- BEGIN op 813 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Bilibili', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Bilibili'
    AND arr_type = 'sonarr'
);
-- --- END op 813

-- --- BEGIN op 814 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Bilibili'
  AND arr_type = 'all'
  AND score = 1;
-- --- END op 814

-- --- BEGIN op 815 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'CR', 'radarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 815

-- --- BEGIN op 816 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'CR', 'sonarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 816

-- --- BEGIN op 817 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'CR'
  AND arr_type = 'all'
  AND score = 7;
-- --- END op 817

-- --- BEGIN op 818 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 818

-- --- BEGIN op 819 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 819

-- --- BEGIN op 820 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'all'
  AND score = 25;
-- --- END op 820

-- --- BEGIN op 821 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital +', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 821

-- --- BEGIN op 822 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital +', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 822

-- --- BEGIN op 823 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'all'
  AND score = 50;
-- --- END op 823

-- --- BEGIN op 824 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DSNP', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 824

-- --- BEGIN op 825 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DSNP', 'sonarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 825

-- --- BEGIN op 826 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'all'
  AND score = 6;
-- --- END op 826

-- --- BEGIN op 827 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 827

-- --- BEGIN op 828 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 828

-- --- BEGIN op 829 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DTS'
  AND arr_type = 'all'
  AND score = 25;
-- --- END op 829

-- --- BEGIN op 830 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'FUNI', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'radarr'
);
-- --- END op 830

-- --- BEGIN op 831 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'FUNI', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'sonarr'
);
-- --- END op 831

-- --- BEGIN op 832 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'FUNI'
  AND arr_type = 'all'
  AND score = 3;
-- --- END op 832

-- --- BEGIN op 833 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HIDIVE', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HIDIVE'
    AND arr_type = 'radarr'
);
-- --- END op 833

-- --- BEGIN op 834 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HIDIVE', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HIDIVE'
    AND arr_type = 'sonarr'
);
-- --- END op 834

-- --- BEGIN op 835 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'HIDIVE'
  AND arr_type = 'all'
  AND score = 1;
-- --- END op 835

-- --- BEGIN op 836 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'NF', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 836

-- --- BEGIN op 837 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'NF', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 837

-- --- BEGIN op 838 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'NF'
  AND arr_type = 'all'
  AND score = 5;
-- --- END op 838

-- --- BEGIN op 839 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'VRV', 'radarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'VRV'
    AND arr_type = 'radarr'
);
-- --- END op 839

-- --- BEGIN op 840 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'VRV', 'sonarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'VRV'
    AND arr_type = 'sonarr'
);
-- --- END op 840

-- --- BEGIN op 841 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'VRV'
  AND arr_type = 'all'
  AND score = 4;
-- --- END op 841

-- --- BEGIN op 842 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'YK', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'YK'
    AND arr_type = 'radarr'
);
-- --- END op 842

-- --- BEGIN op 843 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'YK', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'YK'
    AND arr_type = 'sonarr'
);
-- --- END op 843

-- --- BEGIN op 844 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'YK'
  AND arr_type = 'all'
  AND score = 1;
-- --- END op 844

-- --- BEGIN op 845 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'AAC'
  AND arr_type = 'radarr'
  AND score = 10;
-- --- END op 845

-- --- BEGIN op 846 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'AAC'
  AND arr_type = 'sonarr'
  AND score = 10;
-- --- END op 846

-- --- BEGIN op 847 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'ABEMA'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 847

-- --- BEGIN op 848 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'ABEMA'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 848

-- --- BEGIN op 849 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'ADN'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 849

-- --- BEGIN op 850 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'ADN'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 850

-- --- BEGIN op 851 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'radarr'
  AND score = 4;
-- --- END op 851

-- --- BEGIN op 852 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 4;
-- --- END op 852

-- --- BEGIN op 853 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'B-Global'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 853

-- --- BEGIN op 854 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'B-Global'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 854

-- --- BEGIN op 855 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Bilibili'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 855

-- --- BEGIN op 856 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Bilibili'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 856

-- --- BEGIN op 857 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 6
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'CR'
  AND arr_type = 'radarr'
  AND score = 7;
-- --- END op 857

-- --- BEGIN op 858 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 6
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'CR'
  AND arr_type = 'sonarr'
  AND score = 7;
-- --- END op 858

-- --- BEGIN op 859 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 859

-- --- BEGIN op 860 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Dolby Digital'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 860

-- --- BEGIN op 861 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 861

-- --- BEGIN op 862 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'Dolby Digital +'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 862

-- --- BEGIN op 863 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 5
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'radarr'
  AND score = 6;
-- --- END op 863

-- --- BEGIN op 864 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 5
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 6;
-- --- END op 864

-- --- BEGIN op 865 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DTS'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 865

-- --- BEGIN op 866 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DTS'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 866

-- --- BEGIN op 867 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 2
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'FUNI'
  AND arr_type = 'radarr'
  AND score = 3;
-- --- END op 867

-- --- BEGIN op 868 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 2
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'FUNI'
  AND arr_type = 'sonarr'
  AND score = 3;
-- --- END op 868

-- --- BEGIN op 869 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'HIDIVE'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 869

-- --- BEGIN op 870 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'HIDIVE'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 870

-- --- BEGIN op 871 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 4
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'NF'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 871

-- --- BEGIN op 872 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 4
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 872

-- --- BEGIN op 873 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'VRV'
  AND arr_type = 'radarr'
  AND score = 4;
-- --- END op 873

-- --- BEGIN op 874 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'VRV'
  AND arr_type = 'sonarr'
  AND score = 4;
-- --- END op 874

-- --- BEGIN op 875 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'YK'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 875

-- --- BEGIN op 876 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'YK'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 876
