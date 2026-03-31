-- @operation: export
-- @entity: batch
-- @name: Pulled Special Edition from TV/Migrated to TRaSH Tiers for TV and Movies
-- @exportedAt: 2026-03-31T22:27:29.076Z
-- @opIds: 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823, 1824, 1825, 1826, 1827, 1828, 1829, 1830, 1831, 1832, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1866, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1906, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1915, 1916, 1917, 1918, 1919, 1920, 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1935, 1936, 1937, 1938, 1939, 1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1996, 1997, 1998, 1999, 2001, 2002, 2003, 2004, 2005

-- --- BEGIN op 1754 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '1080p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1754

-- --- BEGIN op 1755 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '1080p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1755

-- --- BEGIN op 1756 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '1080p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1756

-- --- BEGIN op 1757 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '1080p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1757

-- --- BEGIN op 1758 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '1080p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1758

-- --- BEGIN op 1759 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '1080p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1759

-- --- BEGIN op 1760 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '2160p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1760

-- --- BEGIN op 1761 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '2160p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1761

-- --- BEGIN op 1762 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '2160p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1762

-- --- BEGIN op 1763 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '2160p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1763

-- --- BEGIN op 1764 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '2160p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1764

-- --- BEGIN op 1765 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = '2160p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1765

-- --- BEGIN op 1766 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH 1080p Bluray Tier 01', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1766

-- --- BEGIN op 1767 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH 1080p Bluray Tier 02', 'radarr', 1450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1767

-- --- BEGIN op 1768 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH 1080p Bluray Tier 03', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1768

-- --- BEGIN op 1769 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH 2160p Bluray Tier 01', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1769

-- --- BEGIN op 1770 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH 2160p Bluray Tier 02', 'radarr', 1450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1770

-- --- BEGIN op 1771 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH 2160p Bluray Tier 03', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1771

-- --- BEGIN op 1772 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH WEB Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1772

-- --- BEGIN op 1773 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH WEB Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1773

-- --- BEGIN op 1774 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH WEB Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1774

-- --- BEGIN op 1775 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1775

-- --- BEGIN op 1776 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1776

-- --- BEGIN op 1777 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1777

-- --- BEGIN op 1778 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1550;
-- --- END op 1778

-- --- BEGIN op 1779 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1779

-- --- BEGIN op 1780 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1780

-- --- BEGIN op 1781 ( update quality_profile "Movies 2160p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p HQ', 'TRaSH LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p HQ'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1781

-- --- BEGIN op 1782 ( update quality_profile "Movies 2160p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p HQ'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1782

-- --- BEGIN op 1783 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '1080p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1783

-- --- BEGIN op 1784 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '1080p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1784

-- --- BEGIN op 1785 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '1080p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1785

-- --- BEGIN op 1786 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '1080p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1786

-- --- BEGIN op 1787 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '1080p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1787

-- --- BEGIN op 1788 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = '1080p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1788

-- --- BEGIN op 1789 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1789

-- --- BEGIN op 1790 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH 1080p Bluray Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1790

-- --- BEGIN op 1791 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH 1080p Bluray Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1791

-- --- BEGIN op 1792 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH 1080p Bluray Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1792

-- --- BEGIN op 1793 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1793

-- --- BEGIN op 1794 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1794

-- --- BEGIN op 1795 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH WEB Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1795

-- --- BEGIN op 1796 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH WEB Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1796

-- --- BEGIN op 1797 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'TRaSH WEB Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1797

-- --- BEGIN op 1798 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1798

-- --- BEGIN op 1799 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1799

-- --- BEGIN op 1800 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1800

-- --- BEGIN op 1801 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1550;
-- --- END op 1801

-- --- BEGIN op 1802 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1802

-- --- BEGIN op 1803 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1803

-- --- BEGIN op 1804 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1450
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1804

-- --- BEGIN op 1805 ( update quality_profile "Movies 1080p HQ" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1805

-- --- BEGIN op 1806 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '1080p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1806

-- --- BEGIN op 1807 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '1080p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1807

-- --- BEGIN op 1808 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '1080p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1808

-- --- BEGIN op 1809 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '1080p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1809

-- --- BEGIN op 1810 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '1080p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1810

-- --- BEGIN op 1811 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '1080p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1811

-- --- BEGIN op 1812 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '2160p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1812

-- --- BEGIN op 1813 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '2160p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1813

-- --- BEGIN op 1814 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '2160p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1814

-- --- BEGIN op 1815 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '2160p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1815

-- --- BEGIN op 1816 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '2160p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1816

-- --- BEGIN op 1817 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '2160p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1817

-- --- BEGIN op 1818 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '720p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1818

-- --- BEGIN op 1819 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '720p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1819

-- --- BEGIN op 1820 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '720p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1820

-- --- BEGIN op 1821 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '720p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1821

-- --- BEGIN op 1822 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '720p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1822

-- --- BEGIN op 1823 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = '720p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1823

-- --- BEGIN op 1824 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1824

-- --- BEGIN op 1825 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH 1080p Bluray Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1825

-- --- BEGIN op 1826 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH 1080p Bluray Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1826

-- --- BEGIN op 1827 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH 1080p Bluray Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1827

-- --- BEGIN op 1828 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH 2160p Bluray Tier 01', 'radarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1828

-- --- BEGIN op 1829 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH 2160p Bluray Tier 02', 'radarr', 1850
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1829

-- --- BEGIN op 1830 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH 2160p Bluray Tier 03', 'radarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1830

-- --- BEGIN op 1831 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1831

-- --- BEGIN op 1832 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1832

-- --- BEGIN op 1833 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH WEB Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1833

-- --- BEGIN op 1834 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH WEB Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1834

-- --- BEGIN op 1835 ( update quality_profile "Movies 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 2160p', 'TRaSH WEB Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 2160p'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1835

-- --- BEGIN op 1836 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1836

-- --- BEGIN op 1837 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1837

-- --- BEGIN op 1838 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1838

-- --- BEGIN op 1839 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1550;
-- --- END op 1839

-- --- BEGIN op 1840 ( update quality_profile "Movies 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1840

-- --- BEGIN op 1841 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '1080p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1841

-- --- BEGIN op 1842 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '1080p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1842

-- --- BEGIN op 1843 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '1080p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1843

-- --- BEGIN op 1844 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '1080p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1844

-- --- BEGIN op 1845 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '1080p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1845

-- --- BEGIN op 1846 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '1080p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1846

-- --- BEGIN op 1847 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '4K Remaster'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 1847

-- --- BEGIN op 1848 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '720p Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 1848

-- --- BEGIN op 1849 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '720p Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1050;
-- --- END op 1849

-- --- BEGIN op 1850 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '720p Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 1850

-- --- BEGIN op 1851 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '720p Bluray Tier 04'
  AND arr_type = 'radarr'
  AND score = 950;
-- --- END op 1851

-- --- BEGIN op 1852 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '720p Bluray Tier 05'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 1852

-- --- BEGIN op 1853 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = '720p Bluray Tier 06'
  AND arr_type = 'radarr'
  AND score = 850;
-- --- END op 1853

-- --- BEGIN op 1854 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1854

-- --- BEGIN op 1855 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH 1080p Bluray Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1855

-- --- BEGIN op 1856 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH 1080p Bluray Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1856

-- --- BEGIN op 1857 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH 1080p Bluray Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1857

-- --- BEGIN op 1858 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH 2160p Bluray Tier 01', 'radarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1858

-- --- BEGIN op 1859 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH 2160p Bluray Tier 02', 'radarr', 1850
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1859

-- --- BEGIN op 1860 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH 2160p Bluray Tier 03', 'radarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1860

-- --- BEGIN op 1861 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1861

-- --- BEGIN op 1862 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH LQ Release Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'radarr'
);
-- --- END op 1862

-- --- BEGIN op 1863 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH WEB Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1863

-- --- BEGIN op 1864 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH WEB Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1864

-- --- BEGIN op 1865 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'TRaSH WEB Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1865

-- --- BEGIN op 1866 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1866

-- --- BEGIN op 1867 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1867

-- --- BEGIN op 1868 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1868

-- --- BEGIN op 1869 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1550;
-- --- END op 1869

-- --- BEGIN op 1870 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 1870

-- --- BEGIN op 1871 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 1871

-- --- BEGIN op 1872 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 1450
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 1872

-- --- BEGIN op 1873 ( update quality_profile "Movies 2160p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Movies 2160p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 1873

-- --- BEGIN op 1874 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1874

-- --- BEGIN op 1875 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1450
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1875

-- --- BEGIN op 1876 ( update quality_profile "Movies 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1876

-- --- BEGIN op 1877 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '1080p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1877

-- --- BEGIN op 1878 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '1080p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1450;
-- --- END op 1878

-- --- BEGIN op 1879 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '1080p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1879

-- --- BEGIN op 1880 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '1080p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1350;
-- --- END op 1880

-- --- BEGIN op 1881 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '1080p Bluray Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1881

-- --- BEGIN op 1882 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '1080p Bluray Tier 06'
  AND arr_type = 'sonarr'
  AND score = 1250;
-- --- END op 1882

-- --- BEGIN op 1883 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '480p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 1883

-- --- BEGIN op 1884 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '480p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 750;
-- --- END op 1884

-- --- BEGIN op 1885 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '480p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 1885

-- --- BEGIN op 1886 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '480p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 650;
-- --- END op 1886

-- --- BEGIN op 1887 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '576p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1887

-- --- BEGIN op 1888 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '576p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 950;
-- --- END op 1888

-- --- BEGIN op 1889 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '576p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 1889

-- --- BEGIN op 1890 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '576p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 850;
-- --- END op 1890

-- --- BEGIN op 1891 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '720p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1891

-- --- BEGIN op 1892 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '720p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1250;
-- --- END op 1892

-- --- BEGIN op 1893 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '720p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 1893

-- --- BEGIN op 1894 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '720p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1150;
-- --- END op 1894

-- --- BEGIN op 1895 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '720p Bluray Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 1895

-- --- BEGIN op 1896 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = '720p Bluray Tier 06'
  AND arr_type = 'sonarr'
  AND score = 1050;
-- --- END op 1896

-- --- BEGIN op 1897 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1897

-- --- BEGIN op 1898 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH 1080p Bluray Tier 01', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1898

-- --- BEGIN op 1899 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH 1080p Bluray Tier 02', 'sonarr', 1450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1899

-- --- BEGIN op 1900 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH 1080p Bluray Tier 03', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1900

-- --- BEGIN op 1901 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1901

-- --- BEGIN op 1902 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 1902

-- --- BEGIN op 1903 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH WEB Tier 01', 'sonarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1903

-- --- BEGIN op 1904 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH WEB Tier 02', 'sonarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1904

-- --- BEGIN op 1905 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 1080p', 'TRaSH WEB Tier 03', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1905

-- --- BEGIN op 1906 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1700;
-- --- END op 1906

-- --- BEGIN op 1907 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1650;
-- --- END op 1907

-- --- BEGIN op 1908 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 1908

-- --- BEGIN op 1909 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1550;
-- --- END op 1909

-- --- BEGIN op 1910 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1910

-- --- BEGIN op 1911 ( update quality_profile "TV 1080p" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'Bluray-2160p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'BR-DISK', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'CAM', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'DVD-R', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'DVDSCR', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'HDTV-2160p', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'HDTV-480p', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'Raw-HD', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'REGIONAL', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'Remux-1080p', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'Remux-2160p', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'TELECINE', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'TELESYNC', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'Unknown', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'WEBDL-2160p', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'WEBRip-2160p', NULL, 26, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 1080p', 'WORKPRINT', NULL, 27, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 1080p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'TV 1080p'
  AND quality_group_name = 'WEB 720p'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'TV 1080p'
  AND quality_group_name = 'WEB 480p'
  AND quality_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6, enabled = 0
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7, enabled = 0
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9, enabled = 0
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10, enabled = 0
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11, enabled = 0
WHERE quality_profile_name = 'TV 1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1911

-- --- BEGIN op 1912 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'BR-DISK', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'CAM', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'DVD-R', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'DVDSCR', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'HDTV-480p', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'Raw-HD', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'REGIONAL', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'Remux-1080p', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'Remux-2160p', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'TELECINE', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'TELESYNC', NULL, 24, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'Unknown', NULL, 25, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV 2160p', 'WORKPRINT', NULL, 26, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV 2160p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'TV 2160p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV 2160p'
  AND quality_group_name = 'WEB 720p'
  AND quality_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'TV 2160p'
  AND quality_group_name = 'WEB 480p'
  AND quality_name IS NULL
  AND position = 10
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8, enabled = 0
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10, enabled = 0
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11, enabled = 0
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12, enabled = 0
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13, enabled = 0
WHERE quality_profile_name = 'TV 2160p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1912

-- --- BEGIN op 1913 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH 1080p Bluray Tier 01', 'sonarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1913

-- --- BEGIN op 1914 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH 1080p Bluray Tier 02', 'sonarr', 1250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1914

-- --- BEGIN op 1915 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH 1080p Bluray Tier 03', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH 1080p Bluray Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1915

-- --- BEGIN op 1916 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH 2160p Bluray Tier 01', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1916

-- --- BEGIN op 1917 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH 2160p Bluray Tier 02', 'sonarr', 1450
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1917

-- --- BEGIN op 1918 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH 2160p Bluray Tier 03', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH 2160p Bluray Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1918

-- --- BEGIN op 1919 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1919

-- --- BEGIN op 1920 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH LQ Release Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH LQ Release Title'
    AND arr_type = 'sonarr'
);
-- --- END op 1920

-- --- BEGIN op 1921 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH WEB Tier 01', 'sonarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1921

-- --- BEGIN op 1922 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH WEB Tier 02', 'sonarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1922

-- --- BEGIN op 1923 ( update quality_profile "TV 2160p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV 2160p', 'TRaSH WEB Tier 03', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV 2160p'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1923

-- --- BEGIN op 1924 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1700;
-- --- END op 1924

-- --- BEGIN op 1925 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1650;
-- --- END op 1925

-- --- BEGIN op 1926 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 1926

-- --- BEGIN op 1927 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1550;
-- --- END op 1927

-- --- BEGIN op 1928 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1928

-- --- BEGIN op 1929 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Banned Groups'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 1929

-- --- BEGIN op 1930 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '1080p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1930

-- --- BEGIN op 1931 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '1080p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1450;
-- --- END op 1931

-- --- BEGIN op 1932 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '1080p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1932

-- --- BEGIN op 1933 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '1080p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1350;
-- --- END op 1933

-- --- BEGIN op 1934 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '1080p Bluray Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1934

-- --- BEGIN op 1935 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '1080p Bluray Tier 06'
  AND arr_type = 'sonarr'
  AND score = 1250;
-- --- END op 1935

-- --- BEGIN op 1936 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '2160p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 1936

-- --- BEGIN op 1937 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '2160p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1450;
-- --- END op 1937

-- --- BEGIN op 1938 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '2160p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 1938

-- --- BEGIN op 1939 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '2160p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1350;
-- --- END op 1939

-- --- BEGIN op 1940 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '2160p Bluray Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1940

-- --- BEGIN op 1941 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '2160p Bluray Tier 06'
  AND arr_type = 'sonarr'
  AND score = 1250;
-- --- END op 1941

-- --- BEGIN op 1942 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '480p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 1942

-- --- BEGIN op 1943 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '480p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 750;
-- --- END op 1943

-- --- BEGIN op 1944 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '480p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 1944

-- --- BEGIN op 1945 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '480p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 650;
-- --- END op 1945

-- --- BEGIN op 1946 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '576p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 1946

-- --- BEGIN op 1947 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '576p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 950;
-- --- END op 1947

-- --- BEGIN op 1948 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '576p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 1948

-- --- BEGIN op 1949 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '576p Bluray Tier 04'
  AND arr_type = 'sonarr'
  AND score = 850;
-- --- END op 1949

-- --- BEGIN op 1950 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '720p Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 1950

-- --- BEGIN op 1951 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '720p Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1250;
-- --- END op 1951

-- --- BEGIN op 1952 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '720p Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 1952

-- --- BEGIN op 1953 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '720p Bluray Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 1953

-- --- BEGIN op 1954 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = '720p Bluray Tier 06'
  AND arr_type = 'sonarr'
  AND score = 1050;
-- --- END op 1954

-- --- BEGIN op 1957 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TRaSH WEB Tier 01', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1957

-- --- BEGIN op 1958 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TRaSH WEB Tier 01', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1958

-- --- BEGIN op 1959 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TRaSH WEB Tier 02', 'radarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1959

-- --- BEGIN op 1960 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TRaSH WEB Tier 02', 'sonarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1960

-- --- BEGIN op 1961 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TRaSH WEB Tier 03', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1961

-- --- BEGIN op 1962 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'TRaSH WEB Tier 03', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'TRaSH WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1962

-- --- BEGIN op 1963 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 1963

-- --- BEGIN op 1964 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 1964

-- --- BEGIN op 1965 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 4;
-- --- END op 1965

-- --- BEGIN op 1966 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 4;
-- --- END op 1966

-- --- BEGIN op 1967 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 3;
-- --- END op 1967

-- --- BEGIN op 1968 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 3;
-- --- END op 1968

-- --- BEGIN op 1969 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 1969

-- --- BEGIN op 1970 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 1970

-- --- BEGIN op 1971 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 1971

-- --- BEGIN op 1972 ( update quality_profile "LQ 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1;
-- --- END op 1972

-- --- BEGIN op 1973 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 1973

-- --- BEGIN op 1974 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 1974

-- --- BEGIN op 1975 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 2
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 4;
-- --- END op 1975

-- --- BEGIN op 1976 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 2
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 4;
-- --- END op 1976

-- --- BEGIN op 1977 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 3;
-- --- END op 1977

-- --- BEGIN op 1978 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = 'TRaSH WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 3;
-- --- END op 1978

-- --- BEGIN op 1996 ( update quality_profile "Movies 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 1996

-- --- BEGIN op 1997 ( update quality_profile "Movies 1080p HQ" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 1080p HQ', 'Group Missing', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 1080p HQ'
    AND custom_format_name = 'Group Missing'
    AND arr_type = 'radarr'
);
-- --- END op 1997

-- --- BEGIN op 1998 ( update quality_profile "Movies 1080p HQ" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p HQ'
  AND custom_format_name = 'Group Missing'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1998

-- --- BEGIN op 1999 ( update quality_profile "Movies 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 1080p'
  AND custom_format_name = 'Group Missing'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 1999

-- --- BEGIN op 2001 ( update regular_expression "Special Edition" )
update "regular_expressions" set "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|cut|version|(?<!{)edition|cut)(\b|\d)' where "name" = 'Special Edition' and "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|cut|version|(?<!{)edition)(\b|\d)';
-- --- END op 2001

-- --- BEGIN op 2002 ( update regular_expression "Special Edition" )
update "regular_expressions" set "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|cut|version|(?<!{)edition)(\b|\d)' where "name" = 'Special Edition' and "pattern" = '(?<!^)\b(extended|uncut|directors|special|unrated|cut|version|(?<!{)edition|cut)(\b|\d)';
-- --- END op 2002

-- --- BEGIN op 2003 ( update custom_format "Special Edition" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Special Edition'
  AND name = 'Special Edition'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2003

-- --- BEGIN op 2004 ( update quality_profile "TV 2160p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 2160p'
  AND custom_format_name = 'Special Edition'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 2004

-- --- BEGIN op 2005 ( update quality_profile "TV 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV 1080p'
  AND custom_format_name = 'Special Edition'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 2005
