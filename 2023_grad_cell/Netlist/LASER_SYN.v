/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Sat Apr  1 20:18:15 2023
/////////////////////////////////////////////////////////////


module LASER ( CLK, RST, X, Y, C1X, C1Y, C2X, C2Y, DONE );
  input [3:0] X;
  input [3:0] Y;
  output [3:0] C1X;
  output [3:0] C1Y;
  output [3:0] C2X;
  output [3:0] C2Y;
  input CLK, RST;
  output DONE;
  wire   curr_state_0_, opt_tmp_lr_max, row_ptr_2_, N14, N39, N40, N41, N42,
         N86, N87, N88, N89, N90, N91, N438, N439, N440, N441, N442, N443,
         N444, N445, tmp_dirty_39_, max_c2_dirty_39_, N1006, N1007, N1008,
         N1009, N1010, N1011, N1013, N1014, N1015, N1016, N1017, N1018, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n181,
         n186, n187, n189, n231, n233, n234, n235, n236, n237, n238, n239,
         n240, n242, n244, n571, n572, n573, n576, n601, n602, n603, n605,
         n606, n607, n611, n612, n613, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n889, n890,
         n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901,
         n902, n903, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161,
         n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171,
         n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181,
         n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191,
         n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201,
         n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211,
         n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221,
         n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231,
         n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241,
         n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251,
         n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261,
         n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271,
         n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281,
         n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291,
         n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301,
         n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311,
         n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321,
         n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331,
         n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341,
         n1342, n1343, n1344, N896, N895, N894, N890, N889, N888, N887, N886,
         N879, N878, N872, N871, N870, N865, N864, N863, N862, N858, N857,
         N856, N855, N854, N847, N846, N839, N838, N832, N831, N830, N824,
         N823, N822, N816, N815, N814, N808, N807, N806, N801, N800, N799,
         N798, N793, N792, N791, N790, N783, N782, N775, N774, N767, N766,
         N759, N758, N751, N750, N743, N742, N736, N735, N730, N729, N725,
         N724, N721, N720, add_0_root_add_13_root_add_299_I39_aco_carry_1_,
         add_0_root_add_13_root_add_299_I39_aco_carry_2_,
         add_0_root_add_13_root_add_299_I39_aco_carry_3_,
         add_0_root_add_13_root_add_299_I39_aco_carry_4_,
         add_1_root_add_13_root_add_299_I39_aco_carry_1_,
         add_1_root_add_13_root_add_299_I39_aco_carry_2_,
         add_1_root_add_13_root_add_299_I39_aco_carry_3_,
         add_2_root_add_13_root_add_299_I39_aco_carry_1_,
         add_2_root_add_13_root_add_299_I39_aco_carry_2_,
         add_2_root_add_13_root_add_299_I39_aco_carry_3_,
         add_5_root_add_13_root_add_299_I39_aco_carry_1_,
         add_5_root_add_13_root_add_299_I39_aco_carry_2_,
         add_8_root_add_13_root_add_299_I39_aco_carry_1_,
         add_10_root_add_13_root_add_299_I39_aco_carry_1_,
         add_4_root_add_13_root_add_299_I39_aco_carry_1_,
         add_4_root_add_13_root_add_299_I39_aco_carry_2_,
         add_11_root_add_13_root_add_299_I39_aco_carry_1_,
         add_9_root_add_13_root_add_299_I39_aco_carry_1_,
         add_3_root_add_13_root_add_299_I39_aco_carry_1_,
         add_3_root_add_13_root_add_299_I39_aco_carry_2_,
         add_6_root_add_13_root_add_299_I39_aco_carry_1_,
         add_7_root_add_13_root_add_299_I39_aco_carry_1_, n1345, n1346, n1347,
         n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357,
         n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367,
         n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377,
         n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387,
         n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397,
         n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407,
         n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417,
         n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427,
         n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437,
         n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447,
         n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457,
         n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467,
         n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477,
         n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487,
         n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497,
         n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507,
         n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517,
         n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527,
         n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537,
         n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547,
         n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557,
         n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567,
         n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577,
         n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587,
         n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597,
         n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607,
         n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617,
         n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627,
         n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637,
         n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647,
         n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657,
         n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667,
         n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677,
         n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687,
         n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697,
         n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707,
         n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717,
         n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727,
         n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737,
         n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747,
         n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757,
         n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767,
         n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776, n1777,
         n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786, n1787,
         n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796, n1797,
         n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807,
         n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816, n1817,
         n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826, n1827,
         n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836, n1837,
         n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847,
         n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856, n1857,
         n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866, n1867,
         n1868, n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876, n1877,
         n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887,
         n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897,
         n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906, n1907,
         n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917,
         n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927,
         n1928, n1929, n1930, n1931;
  wire   [5:0] global_cnt;
  wire   [5:0] opt_num_w;
  wire   [5:0] opt_num;
  wire   [3:1] col_ptr;
  wire   [2:0] iter_cnt;
  wire   [7:0] circal_loc_max;
  wire   [7:0] circal_loc_C1;
  wire   [2:1] next_state;
  wire   [19:0] is_inside;
  wire   [159:0] obj_mem;
  wire   [38:0] or_result;
  wire   [5:2] add_144_carry;
  wire   [5:2] add_299_I40_carry;

  Inside_19 genblk1_0__inst_Inside ( .in_x(obj_mem[155:152]), .in_y(
        obj_mem[159:156]), .circle_x({n1431, n1365, n1428, n1355}), .circle_y(
        {n1437, n1357, n1435, n1432}), .is_inside(is_inside[0]) );
  Inside_18 genblk1_1__inst_Inside ( .in_x(obj_mem[147:144]), .in_y(
        obj_mem[151:148]), .circle_x({n1430, n1364, n1429, n1345}), .circle_y(
        {n1438, n1358, n1435, n1433}), .is_inside(is_inside[1]) );
  Inside_17 genblk1_2__inst_Inside ( .in_x(obj_mem[139:136]), .in_y(
        obj_mem[143:140]), .circle_x({n1430, n1365, n1429, n1345}), .circle_y(
        {n1438, n1357, n1435, n1433}), .is_inside(is_inside[2]) );
  Inside_16 genblk1_3__inst_Inside ( .in_x(obj_mem[131:128]), .in_y(
        obj_mem[135:132]), .circle_x({n1430, n1366, n1429, n1355}), .circle_y(
        {n1438, n1358, n1435, n1433}), .is_inside(is_inside[3]) );
  Inside_15 genblk1_4__inst_Inside ( .in_x(obj_mem[123:120]), .in_y(
        obj_mem[127:124]), .circle_x({n1430, n1366, n1429, n1345}), .circle_y(
        {n1438, n1357, n1435, n1433}), .is_inside(is_inside[4]) );
  Inside_14 genblk1_5__inst_Inside ( .in_x(obj_mem[115:112]), .in_y(
        obj_mem[119:116]), .circle_x({n1430, n1367, n1429, n1345}), .circle_y(
        {n1438, n1358, n1435, n1433}), .is_inside(is_inside[5]) );
  Inside_13 genblk1_6__inst_Inside ( .in_x(obj_mem[107:104]), .in_y(
        obj_mem[111:108]), .circle_x({n1430, n1368, n1429, n1345}), .circle_y(
        {n1438, n1357, n1435, n1433}), .is_inside(is_inside[6]) );
  Inside_12 genblk1_7__inst_Inside ( .in_x(obj_mem[99:96]), .in_y(
        obj_mem[103:100]), .circle_x({n1430, n1368, n1429, n1355}), .circle_y(
        {n1438, n1358, n1435, n1433}), .is_inside(is_inside[7]) );
  Inside_11 genblk1_8__inst_Inside ( .in_x(obj_mem[91:88]), .in_y(
        obj_mem[95:92]), .circle_x({n1430, n1369, n1428, n1345}), .circle_y({
        n1438, n1357, n1435, n1432}), .is_inside(is_inside[8]) );
  Inside_10 genblk1_9__inst_Inside ( .in_x(obj_mem[83:80]), .in_y(
        obj_mem[87:84]), .circle_x({n1430, n1367, n1428, n1355}), .circle_y({
        n1437, n1358, n1435, n1432}), .is_inside(is_inside[9]) );
  Inside_9 genblk1_10__inst_Inside ( .in_x(obj_mem[75:72]), .in_y(
        obj_mem[79:76]), .circle_x({n1430, n1368, n1428, n1345}), .circle_y({
        n1437, n1357, n1435, n1432}), .is_inside(is_inside[10]) );
  Inside_8 genblk1_11__inst_Inside ( .in_x(obj_mem[67:64]), .in_y(
        obj_mem[71:68]), .circle_x({n1430, n1367, n1428, n1345}), .circle_y({
        n1437, n1358, n1435, n1432}), .is_inside(is_inside[11]) );
  Inside_7 genblk1_12__inst_Inside ( .in_x(obj_mem[59:56]), .in_y(
        obj_mem[63:60]), .circle_x({n1430, n1363, n1428, n1345}), .circle_y({
        n1437, n1357, n1435, n1432}), .is_inside(is_inside[12]) );
  Inside_6 genblk1_13__inst_Inside ( .in_x(obj_mem[51:48]), .in_y(
        obj_mem[55:52]), .circle_x({n1431, n1369, n1428, n1355}), .circle_y({
        n1437, n1358, n1435, n1432}), .is_inside(is_inside[13]) );
  Inside_5 genblk1_14__inst_Inside ( .in_x(obj_mem[43:40]), .in_y(
        obj_mem[47:44]), .circle_x({n1431, n1369, n1428, n1345}), .circle_y({
        n1437, n1357, n1435, n1432}), .is_inside(is_inside[14]) );
  Inside_4 genblk1_15__inst_Inside ( .in_x(obj_mem[35:32]), .in_y(
        obj_mem[39:36]), .circle_x({n1431, n1363, n1428, n1355}), .circle_y({
        n1437, n1358, n1435, n1432}), .is_inside(is_inside[15]) );
  Inside_3 genblk1_16__inst_Inside ( .in_x(obj_mem[27:24]), .in_y(
        obj_mem[31:28]), .circle_x({n1431, n1363, n1428, n1355}), .circle_y({
        n1437, n1357, n1435, n1432}), .is_inside(is_inside[16]) );
  Inside_2 genblk1_17__inst_Inside ( .in_x(obj_mem[19:16]), .in_y(
        obj_mem[23:20]), .circle_x({n1431, n1364, n1428, n1355}), .circle_y({
        n1437, n1358, n1435, n1432}), .is_inside(is_inside[17]) );
  Inside_1 genblk1_18__inst_Inside ( .in_x(obj_mem[11:8]), .in_y(
        obj_mem[15:12]), .circle_x({n1431, n1365, n1428, n1355}), .circle_y({
        n1437, n1357, n1435, n1432}), .is_inside(is_inside[18]) );
  Inside_0 genblk1_19__inst_Inside ( .in_x(obj_mem[3:0]), .in_y(obj_mem[7:4]), 
        .circle_x({n1431, n1366, n1428, n1355}), .circle_y({n1437, n1358, 
        n1435, n1432}), .is_inside(is_inside[19]) );
  LASER_DW01_inc_0 add_181 ( .A({n1438, n1357, n1435, n1433, n1430, n1364, 
        n1429, n1355}), .SUM({N445, N444, N443, N442, N441, N440, N439, N438})
         );
  TLATX1 next_state_reg_0_ ( .G(N39), .D(N40), .QN(n629) );
  DFFQX1 circal_loc_max_reg_7_ ( .D(n1315), .CK(CLK), .Q(circal_loc_max[7]) );
  DFFQX1 circal_loc_max_reg_1_ ( .D(n1321), .CK(CLK), .Q(circal_loc_max[1]) );
  DFFQX1 circal_loc_max_reg_2_ ( .D(n1320), .CK(CLK), .Q(circal_loc_max[2]) );
  DFFQX1 circal_loc_max_reg_3_ ( .D(n1319), .CK(CLK), .Q(circal_loc_max[3]) );
  DFFQX1 circal_loc_max_reg_4_ ( .D(n1318), .CK(CLK), .Q(circal_loc_max[4]) );
  DFFQX1 circal_loc_max_reg_5_ ( .D(n1317), .CK(CLK), .Q(circal_loc_max[5]) );
  DFFQX1 circal_loc_max_reg_6_ ( .D(n1316), .CK(CLK), .Q(circal_loc_max[6]) );
  DFFQX1 circal_loc_max_reg_0_ ( .D(n1322), .CK(CLK), .Q(circal_loc_max[0]) );
  DFFQX1 circal_loc_C1_reg_7_ ( .D(n1342), .CK(CLK), .Q(circal_loc_C1[7]) );
  DFFQX1 circal_loc_C1_reg_1_ ( .D(n1331), .CK(CLK), .Q(circal_loc_C1[1]) );
  DFFQX1 circal_loc_C1_reg_2_ ( .D(n1332), .CK(CLK), .Q(circal_loc_C1[2]) );
  DFFQX1 circal_loc_C1_reg_3_ ( .D(n1333), .CK(CLK), .Q(circal_loc_C1[3]) );
  DFFQX1 circal_loc_C1_reg_4_ ( .D(n1334), .CK(CLK), .Q(circal_loc_C1[4]) );
  DFFQX1 circal_loc_C1_reg_5_ ( .D(n1335), .CK(CLK), .Q(circal_loc_C1[5]) );
  DFFQX1 circal_loc_C1_reg_6_ ( .D(n1336), .CK(CLK), .Q(circal_loc_C1[6]) );
  DFFQX1 circal_loc_C1_reg_0_ ( .D(n1337), .CK(CLK), .Q(circal_loc_C1[0]) );
  DFFQX1 iter_cnt_reg_2_ ( .D(n1312), .CK(CLK), .Q(iter_cnt[2]) );
  DFFQX1 iter_cnt_reg_0_ ( .D(n1313), .CK(CLK), .Q(iter_cnt[0]) );
  DFFQX1 iter_cnt_reg_1_ ( .D(n1314), .CK(CLK), .Q(iter_cnt[1]) );
  DFFX1 obj_mem_reg_39__7_ ( .D(n1304), .CK(CLK), .QN(n1488) );
  DFFX1 obj_mem_reg_38__7_ ( .D(n1296), .CK(CLK), .QN(n1489) );
  DFFX1 obj_mem_reg_37__7_ ( .D(n1288), .CK(CLK), .QN(n1490) );
  DFFX1 obj_mem_reg_36__7_ ( .D(n1280), .CK(CLK), .QN(n1491) );
  DFFX1 obj_mem_reg_35__7_ ( .D(n1272), .CK(CLK), .QN(n1492) );
  DFFX1 obj_mem_reg_34__7_ ( .D(n1264), .CK(CLK), .QN(n1493) );
  DFFX1 obj_mem_reg_33__7_ ( .D(n1256), .CK(CLK), .QN(n1494) );
  DFFX1 obj_mem_reg_32__7_ ( .D(n1248), .CK(CLK), .QN(n1495) );
  DFFX1 obj_mem_reg_31__7_ ( .D(n1240), .CK(CLK), .QN(n1496) );
  DFFX1 obj_mem_reg_30__7_ ( .D(n1232), .CK(CLK), .QN(n1497) );
  DFFX1 obj_mem_reg_29__7_ ( .D(n1224), .CK(CLK), .QN(n1498) );
  DFFX1 obj_mem_reg_28__7_ ( .D(n1216), .CK(CLK), .QN(n1499) );
  DFFX1 obj_mem_reg_27__7_ ( .D(n1208), .CK(CLK), .QN(n1500) );
  DFFX1 obj_mem_reg_26__7_ ( .D(n1200), .CK(CLK), .QN(n1501) );
  DFFX1 obj_mem_reg_25__7_ ( .D(n1192), .CK(CLK), .QN(n1502) );
  DFFX1 obj_mem_reg_24__7_ ( .D(n1184), .CK(CLK), .QN(n1503) );
  DFFX1 obj_mem_reg_23__7_ ( .D(n1176), .CK(CLK), .QN(n1504) );
  DFFX1 obj_mem_reg_22__7_ ( .D(n1168), .CK(CLK), .QN(n1505) );
  DFFX1 obj_mem_reg_21__7_ ( .D(n1160), .CK(CLK), .QN(n1506) );
  DFFX1 obj_mem_reg_20__7_ ( .D(n1152), .CK(CLK), .QN(n1507) );
  DFFX1 obj_mem_reg_39__6_ ( .D(n1305), .CK(CLK), .QN(n1528) );
  DFFX1 obj_mem_reg_38__6_ ( .D(n1297), .CK(CLK), .QN(n1529) );
  DFFX1 obj_mem_reg_37__6_ ( .D(n1289), .CK(CLK), .QN(n1530) );
  DFFX1 obj_mem_reg_36__6_ ( .D(n1281), .CK(CLK), .QN(n1531) );
  DFFX1 obj_mem_reg_35__6_ ( .D(n1273), .CK(CLK), .QN(n1532) );
  DFFX1 obj_mem_reg_34__6_ ( .D(n1265), .CK(CLK), .QN(n1533) );
  DFFX1 obj_mem_reg_33__6_ ( .D(n1257), .CK(CLK), .QN(n1534) );
  DFFX1 obj_mem_reg_32__6_ ( .D(n1249), .CK(CLK), .QN(n1535) );
  DFFX1 obj_mem_reg_31__6_ ( .D(n1241), .CK(CLK), .QN(n1536) );
  DFFX1 obj_mem_reg_30__6_ ( .D(n1233), .CK(CLK), .QN(n1537) );
  DFFX1 obj_mem_reg_29__6_ ( .D(n1225), .CK(CLK), .QN(n1538) );
  DFFX1 obj_mem_reg_28__6_ ( .D(n1217), .CK(CLK), .QN(n1539) );
  DFFX1 obj_mem_reg_27__6_ ( .D(n1209), .CK(CLK), .QN(n1540) );
  DFFX1 obj_mem_reg_26__6_ ( .D(n1201), .CK(CLK), .QN(n1541) );
  DFFX1 obj_mem_reg_25__6_ ( .D(n1193), .CK(CLK), .QN(n1542) );
  DFFX1 obj_mem_reg_24__6_ ( .D(n1185), .CK(CLK), .QN(n1543) );
  DFFX1 obj_mem_reg_23__6_ ( .D(n1177), .CK(CLK), .QN(n1544) );
  DFFX1 obj_mem_reg_22__6_ ( .D(n1169), .CK(CLK), .QN(n1545) );
  DFFX1 obj_mem_reg_21__6_ ( .D(n1161), .CK(CLK), .QN(n1546) );
  DFFX1 obj_mem_reg_20__6_ ( .D(n1153), .CK(CLK), .QN(n1547) );
  DFFX1 obj_mem_reg_39__5_ ( .D(n1306), .CK(CLK), .QN(n1568) );
  DFFX1 obj_mem_reg_38__5_ ( .D(n1298), .CK(CLK), .QN(n1569) );
  DFFX1 obj_mem_reg_37__5_ ( .D(n1290), .CK(CLK), .QN(n1570) );
  DFFX1 obj_mem_reg_36__5_ ( .D(n1282), .CK(CLK), .QN(n1571) );
  DFFX1 obj_mem_reg_35__5_ ( .D(n1274), .CK(CLK), .QN(n1572) );
  DFFX1 obj_mem_reg_34__5_ ( .D(n1266), .CK(CLK), .QN(n1573) );
  DFFX1 obj_mem_reg_33__5_ ( .D(n1258), .CK(CLK), .QN(n1574) );
  DFFX1 obj_mem_reg_32__5_ ( .D(n1250), .CK(CLK), .QN(n1575) );
  DFFX1 obj_mem_reg_31__5_ ( .D(n1242), .CK(CLK), .QN(n1576) );
  DFFX1 obj_mem_reg_30__5_ ( .D(n1234), .CK(CLK), .QN(n1577) );
  DFFX1 obj_mem_reg_29__5_ ( .D(n1226), .CK(CLK), .QN(n1578) );
  DFFX1 obj_mem_reg_28__5_ ( .D(n1218), .CK(CLK), .QN(n1579) );
  DFFX1 obj_mem_reg_27__5_ ( .D(n1210), .CK(CLK), .QN(n1580) );
  DFFX1 obj_mem_reg_26__5_ ( .D(n1202), .CK(CLK), .QN(n1581) );
  DFFX1 obj_mem_reg_25__5_ ( .D(n1194), .CK(CLK), .QN(n1582) );
  DFFX1 obj_mem_reg_24__5_ ( .D(n1186), .CK(CLK), .QN(n1583) );
  DFFX1 obj_mem_reg_23__5_ ( .D(n1178), .CK(CLK), .QN(n1584) );
  DFFX1 obj_mem_reg_22__5_ ( .D(n1170), .CK(CLK), .QN(n1585) );
  DFFX1 obj_mem_reg_21__5_ ( .D(n1162), .CK(CLK), .QN(n1586) );
  DFFX1 obj_mem_reg_20__5_ ( .D(n1154), .CK(CLK), .QN(n1587) );
  DFFX1 obj_mem_reg_39__4_ ( .D(n1307), .CK(CLK), .QN(n1608) );
  DFFX1 obj_mem_reg_38__4_ ( .D(n1299), .CK(CLK), .QN(n1609) );
  DFFX1 obj_mem_reg_37__4_ ( .D(n1291), .CK(CLK), .QN(n1610) );
  DFFX1 obj_mem_reg_36__4_ ( .D(n1283), .CK(CLK), .QN(n1611) );
  DFFX1 obj_mem_reg_35__4_ ( .D(n1275), .CK(CLK), .QN(n1612) );
  DFFX1 obj_mem_reg_34__4_ ( .D(n1267), .CK(CLK), .QN(n1613) );
  DFFX1 obj_mem_reg_33__4_ ( .D(n1259), .CK(CLK), .QN(n1614) );
  DFFX1 obj_mem_reg_32__4_ ( .D(n1251), .CK(CLK), .QN(n1615) );
  DFFX1 obj_mem_reg_31__4_ ( .D(n1243), .CK(CLK), .QN(n1616) );
  DFFX1 obj_mem_reg_30__4_ ( .D(n1235), .CK(CLK), .QN(n1617) );
  DFFX1 obj_mem_reg_29__4_ ( .D(n1227), .CK(CLK), .QN(n1618) );
  DFFX1 obj_mem_reg_28__4_ ( .D(n1219), .CK(CLK), .QN(n1619) );
  DFFX1 obj_mem_reg_27__4_ ( .D(n1211), .CK(CLK), .QN(n1620) );
  DFFX1 obj_mem_reg_26__4_ ( .D(n1203), .CK(CLK), .QN(n1621) );
  DFFX1 obj_mem_reg_25__4_ ( .D(n1195), .CK(CLK), .QN(n1622) );
  DFFX1 obj_mem_reg_24__4_ ( .D(n1187), .CK(CLK), .QN(n1623) );
  DFFX1 obj_mem_reg_23__4_ ( .D(n1179), .CK(CLK), .QN(n1624) );
  DFFX1 obj_mem_reg_22__4_ ( .D(n1171), .CK(CLK), .QN(n1625) );
  DFFX1 obj_mem_reg_21__4_ ( .D(n1163), .CK(CLK), .QN(n1626) );
  DFFX1 obj_mem_reg_20__4_ ( .D(n1155), .CK(CLK), .QN(n1627) );
  DFFX1 obj_mem_reg_39__3_ ( .D(n1308), .CK(CLK), .QN(n1648) );
  DFFX1 obj_mem_reg_38__3_ ( .D(n1300), .CK(CLK), .QN(n1649) );
  DFFX1 obj_mem_reg_37__3_ ( .D(n1292), .CK(CLK), .QN(n1650) );
  DFFX1 obj_mem_reg_36__3_ ( .D(n1284), .CK(CLK), .QN(n1651) );
  DFFX1 obj_mem_reg_35__3_ ( .D(n1276), .CK(CLK), .QN(n1652) );
  DFFX1 obj_mem_reg_34__3_ ( .D(n1268), .CK(CLK), .QN(n1653) );
  DFFX1 obj_mem_reg_33__3_ ( .D(n1260), .CK(CLK), .QN(n1654) );
  DFFX1 obj_mem_reg_32__3_ ( .D(n1252), .CK(CLK), .QN(n1655) );
  DFFX1 obj_mem_reg_31__3_ ( .D(n1244), .CK(CLK), .QN(n1656) );
  DFFX1 obj_mem_reg_30__3_ ( .D(n1236), .CK(CLK), .QN(n1657) );
  DFFX1 obj_mem_reg_29__3_ ( .D(n1228), .CK(CLK), .QN(n1658) );
  DFFX1 obj_mem_reg_28__3_ ( .D(n1220), .CK(CLK), .QN(n1659) );
  DFFX1 obj_mem_reg_27__3_ ( .D(n1212), .CK(CLK), .QN(n1660) );
  DFFX1 obj_mem_reg_26__3_ ( .D(n1204), .CK(CLK), .QN(n1661) );
  DFFX1 obj_mem_reg_25__3_ ( .D(n1196), .CK(CLK), .QN(n1662) );
  DFFX1 obj_mem_reg_24__3_ ( .D(n1188), .CK(CLK), .QN(n1663) );
  DFFX1 obj_mem_reg_23__3_ ( .D(n1180), .CK(CLK), .QN(n1664) );
  DFFX1 obj_mem_reg_22__3_ ( .D(n1172), .CK(CLK), .QN(n1665) );
  DFFX1 obj_mem_reg_21__3_ ( .D(n1164), .CK(CLK), .QN(n1666) );
  DFFX1 obj_mem_reg_20__3_ ( .D(n1156), .CK(CLK), .QN(n1667) );
  DFFX1 obj_mem_reg_39__2_ ( .D(n1309), .CK(CLK), .QN(n1688) );
  DFFX1 obj_mem_reg_38__2_ ( .D(n1301), .CK(CLK), .QN(n1689) );
  DFFX1 obj_mem_reg_37__2_ ( .D(n1293), .CK(CLK), .QN(n1690) );
  DFFX1 obj_mem_reg_36__2_ ( .D(n1285), .CK(CLK), .QN(n1691) );
  DFFX1 obj_mem_reg_35__2_ ( .D(n1277), .CK(CLK), .QN(n1692) );
  DFFX1 obj_mem_reg_34__2_ ( .D(n1269), .CK(CLK), .QN(n1693) );
  DFFX1 obj_mem_reg_33__2_ ( .D(n1261), .CK(CLK), .QN(n1694) );
  DFFX1 obj_mem_reg_32__2_ ( .D(n1253), .CK(CLK), .QN(n1695) );
  DFFX1 obj_mem_reg_31__2_ ( .D(n1245), .CK(CLK), .QN(n1696) );
  DFFX1 obj_mem_reg_30__2_ ( .D(n1237), .CK(CLK), .QN(n1697) );
  DFFX1 obj_mem_reg_29__2_ ( .D(n1229), .CK(CLK), .QN(n1698) );
  DFFX1 obj_mem_reg_28__2_ ( .D(n1221), .CK(CLK), .QN(n1699) );
  DFFX1 obj_mem_reg_27__2_ ( .D(n1213), .CK(CLK), .QN(n1700) );
  DFFX1 obj_mem_reg_26__2_ ( .D(n1205), .CK(CLK), .QN(n1701) );
  DFFX1 obj_mem_reg_25__2_ ( .D(n1197), .CK(CLK), .QN(n1702) );
  DFFX1 obj_mem_reg_24__2_ ( .D(n1189), .CK(CLK), .QN(n1703) );
  DFFX1 obj_mem_reg_23__2_ ( .D(n1181), .CK(CLK), .QN(n1704) );
  DFFX1 obj_mem_reg_22__2_ ( .D(n1173), .CK(CLK), .QN(n1705) );
  DFFX1 obj_mem_reg_21__2_ ( .D(n1165), .CK(CLK), .QN(n1706) );
  DFFX1 obj_mem_reg_20__2_ ( .D(n1157), .CK(CLK), .QN(n1707) );
  DFFX1 obj_mem_reg_39__1_ ( .D(n1310), .CK(CLK), .QN(n1728) );
  DFFX1 obj_mem_reg_38__1_ ( .D(n1302), .CK(CLK), .QN(n1729) );
  DFFX1 obj_mem_reg_37__1_ ( .D(n1294), .CK(CLK), .QN(n1730) );
  DFFX1 obj_mem_reg_36__1_ ( .D(n1286), .CK(CLK), .QN(n1731) );
  DFFX1 obj_mem_reg_35__1_ ( .D(n1278), .CK(CLK), .QN(n1732) );
  DFFX1 obj_mem_reg_34__1_ ( .D(n1270), .CK(CLK), .QN(n1733) );
  DFFX1 obj_mem_reg_33__1_ ( .D(n1262), .CK(CLK), .QN(n1734) );
  DFFX1 obj_mem_reg_32__1_ ( .D(n1254), .CK(CLK), .QN(n1735) );
  DFFX1 obj_mem_reg_31__1_ ( .D(n1246), .CK(CLK), .QN(n1736) );
  DFFX1 obj_mem_reg_30__1_ ( .D(n1238), .CK(CLK), .QN(n1737) );
  DFFX1 obj_mem_reg_29__1_ ( .D(n1230), .CK(CLK), .QN(n1738) );
  DFFX1 obj_mem_reg_28__1_ ( .D(n1222), .CK(CLK), .QN(n1739) );
  DFFX1 obj_mem_reg_27__1_ ( .D(n1214), .CK(CLK), .QN(n1740) );
  DFFX1 obj_mem_reg_26__1_ ( .D(n1206), .CK(CLK), .QN(n1741) );
  DFFX1 obj_mem_reg_25__1_ ( .D(n1198), .CK(CLK), .QN(n1742) );
  DFFX1 obj_mem_reg_24__1_ ( .D(n1190), .CK(CLK), .QN(n1743) );
  DFFX1 obj_mem_reg_23__1_ ( .D(n1182), .CK(CLK), .QN(n1744) );
  DFFX1 obj_mem_reg_22__1_ ( .D(n1174), .CK(CLK), .QN(n1745) );
  DFFX1 obj_mem_reg_21__1_ ( .D(n1166), .CK(CLK), .QN(n1746) );
  DFFX1 obj_mem_reg_20__1_ ( .D(n1158), .CK(CLK), .QN(n1747) );
  DFFX1 obj_mem_reg_39__0_ ( .D(n1311), .CK(CLK), .QN(n1768) );
  DFFX1 obj_mem_reg_38__0_ ( .D(n1303), .CK(CLK), .QN(n1769) );
  DFFX1 obj_mem_reg_37__0_ ( .D(n1295), .CK(CLK), .QN(n1770) );
  DFFX1 obj_mem_reg_36__0_ ( .D(n1287), .CK(CLK), .QN(n1771) );
  DFFX1 obj_mem_reg_35__0_ ( .D(n1279), .CK(CLK), .QN(n1772) );
  DFFX1 obj_mem_reg_34__0_ ( .D(n1271), .CK(CLK), .QN(n1773) );
  DFFX1 obj_mem_reg_33__0_ ( .D(n1263), .CK(CLK), .QN(n1774) );
  DFFX1 obj_mem_reg_32__0_ ( .D(n1255), .CK(CLK), .QN(n1775) );
  DFFX1 obj_mem_reg_31__0_ ( .D(n1247), .CK(CLK), .QN(n1776) );
  DFFX1 obj_mem_reg_30__0_ ( .D(n1239), .CK(CLK), .QN(n1777) );
  DFFX1 obj_mem_reg_29__0_ ( .D(n1231), .CK(CLK), .QN(n1778) );
  DFFX1 obj_mem_reg_28__0_ ( .D(n1223), .CK(CLK), .QN(n1779) );
  DFFX1 obj_mem_reg_27__0_ ( .D(n1215), .CK(CLK), .QN(n1780) );
  DFFX1 obj_mem_reg_26__0_ ( .D(n1207), .CK(CLK), .QN(n1781) );
  DFFX1 obj_mem_reg_25__0_ ( .D(n1199), .CK(CLK), .QN(n1782) );
  DFFX1 obj_mem_reg_24__0_ ( .D(n1191), .CK(CLK), .QN(n1783) );
  DFFX1 obj_mem_reg_23__0_ ( .D(n1183), .CK(CLK), .QN(n1784) );
  DFFX1 obj_mem_reg_22__0_ ( .D(n1175), .CK(CLK), .QN(n1785) );
  DFFX1 obj_mem_reg_21__0_ ( .D(n1167), .CK(CLK), .QN(n1786) );
  DFFX1 obj_mem_reg_20__0_ ( .D(n1159), .CK(CLK), .QN(n1787) );
  DFFX1 max_c1_dirty_reg_39_ ( .D(n946), .CK(CLK), .QN(n1791) );
  DFFX1 max_c1_dirty_reg_19_ ( .D(n966), .CK(CLK), .QN(n1794) );
  DFFX1 max_c1_dirty_reg_38_ ( .D(n947), .CK(CLK), .QN(n1798) );
  DFFX1 max_c1_dirty_reg_18_ ( .D(n967), .CK(CLK), .QN(n1801) );
  DFFX1 max_c1_dirty_reg_37_ ( .D(n948), .CK(CLK), .QN(n1805) );
  DFFX1 max_c1_dirty_reg_17_ ( .D(n968), .CK(CLK), .QN(n1808) );
  DFFX1 max_c1_dirty_reg_36_ ( .D(n949), .CK(CLK), .QN(n1812) );
  DFFX1 max_c1_dirty_reg_16_ ( .D(n969), .CK(CLK), .QN(n1815) );
  DFFX1 max_c1_dirty_reg_35_ ( .D(n950), .CK(CLK), .QN(n1819) );
  DFFX1 max_c1_dirty_reg_15_ ( .D(n970), .CK(CLK), .QN(n1822) );
  DFFX1 max_c1_dirty_reg_34_ ( .D(n951), .CK(CLK), .QN(n1826) );
  DFFX1 max_c1_dirty_reg_14_ ( .D(n971), .CK(CLK), .QN(n1829) );
  DFFX1 max_c1_dirty_reg_33_ ( .D(n952), .CK(CLK), .QN(n1833) );
  DFFX1 max_c1_dirty_reg_13_ ( .D(n972), .CK(CLK), .QN(n1836) );
  DFFX1 max_c1_dirty_reg_32_ ( .D(n953), .CK(CLK), .QN(n1840) );
  DFFX1 max_c1_dirty_reg_12_ ( .D(n973), .CK(CLK), .QN(n1843) );
  DFFX1 max_c1_dirty_reg_31_ ( .D(n954), .CK(CLK), .QN(n1847) );
  DFFX1 max_c1_dirty_reg_11_ ( .D(n974), .CK(CLK), .QN(n1850) );
  DFFX1 max_c1_dirty_reg_30_ ( .D(n955), .CK(CLK), .QN(n1854) );
  DFFX1 max_c1_dirty_reg_10_ ( .D(n975), .CK(CLK), .QN(n1857) );
  DFFX1 max_c1_dirty_reg_29_ ( .D(n956), .CK(CLK), .QN(n1861) );
  DFFX1 max_c1_dirty_reg_9_ ( .D(n976), .CK(CLK), .QN(n1864) );
  DFFX1 max_c1_dirty_reg_28_ ( .D(n957), .CK(CLK), .QN(n1868) );
  DFFX1 max_c1_dirty_reg_8_ ( .D(n977), .CK(CLK), .QN(n1871) );
  DFFX1 max_c1_dirty_reg_27_ ( .D(n958), .CK(CLK), .QN(n1875) );
  DFFX1 max_c1_dirty_reg_7_ ( .D(n978), .CK(CLK), .QN(n1878) );
  DFFX1 max_c1_dirty_reg_26_ ( .D(n959), .CK(CLK), .QN(n1882) );
  DFFX1 max_c1_dirty_reg_6_ ( .D(n979), .CK(CLK), .QN(n1885) );
  DFFX1 max_c1_dirty_reg_25_ ( .D(n960), .CK(CLK), .QN(n1889) );
  DFFX1 max_c1_dirty_reg_5_ ( .D(n980), .CK(CLK), .QN(n1892) );
  DFFX1 max_c1_dirty_reg_24_ ( .D(n961), .CK(CLK), .QN(n1896) );
  DFFX1 max_c1_dirty_reg_4_ ( .D(n981), .CK(CLK), .QN(n1899) );
  DFFX1 max_c1_dirty_reg_23_ ( .D(n962), .CK(CLK), .QN(n1903) );
  DFFX1 max_c1_dirty_reg_3_ ( .D(n982), .CK(CLK), .QN(n1906) );
  DFFX1 max_c1_dirty_reg_22_ ( .D(n963), .CK(CLK), .QN(n1910) );
  DFFX1 max_c1_dirty_reg_2_ ( .D(n983), .CK(CLK), .QN(n1913) );
  DFFX1 max_c1_dirty_reg_21_ ( .D(n964), .CK(CLK), .QN(n1917) );
  DFFX1 max_c1_dirty_reg_1_ ( .D(n984), .CK(CLK), .QN(n1920) );
  DFFX1 max_c1_dirty_reg_20_ ( .D(n965), .CK(CLK), .QN(n1924) );
  DFFX1 max_c1_dirty_reg_0_ ( .D(n985), .CK(CLK), .QN(n1927) );
  DFFX1 circal_loc_C2_reg_7_ ( .D(n1323), .CK(CLK), .Q(n76), .QN(n1354) );
  DFFX1 circal_loc_C2_reg_1_ ( .D(n1329), .CK(CLK), .Q(n77), .QN(n1353) );
  DFFX1 circal_loc_C2_reg_2_ ( .D(n1328), .CK(CLK), .Q(n78), .QN(n1352) );
  DFFX1 circal_loc_C2_reg_3_ ( .D(n1327), .CK(CLK), .Q(n79), .QN(n1351) );
  DFFX1 circal_loc_C2_reg_4_ ( .D(n1326), .CK(CLK), .Q(n80), .QN(n1350) );
  DFFX1 circal_loc_C2_reg_5_ ( .D(n1325), .CK(CLK), .Q(n81), .QN(n1349) );
  DFFX1 circal_loc_C2_reg_6_ ( .D(n1324), .CK(CLK), .Q(n82), .QN(n1348) );
  DFFX1 circal_loc_C2_reg_0_ ( .D(n1330), .CK(CLK), .Q(n83), .QN(n1347) );
  DFFQX1 opt_num_reg_5_ ( .D(n1343), .CK(CLK), .Q(opt_num[5]) );
  DFFQX1 global_cnt_reg_0_ ( .D(n991), .CK(CLK), .Q(global_cnt[0]) );
  DFFQX1 global_cnt_reg_5_ ( .D(n986), .CK(CLK), .Q(global_cnt[5]) );
  DFFQX1 global_cnt_reg_4_ ( .D(n987), .CK(CLK), .Q(global_cnt[4]) );
  DFFQX1 global_cnt_reg_3_ ( .D(n988), .CK(CLK), .Q(global_cnt[3]) );
  DFFQX1 global_cnt_reg_2_ ( .D(n989), .CK(CLK), .Q(global_cnt[2]) );
  DFFQX1 global_cnt_reg_1_ ( .D(n990), .CK(CLK), .Q(global_cnt[1]) );
  DFFQX1 opt_num_reg_0_ ( .D(n1344), .CK(CLK), .Q(opt_num[0]) );
  DFFQX1 opt_num_reg_2_ ( .D(n1339), .CK(CLK), .Q(opt_num[2]) );
  DFFQX1 opt_num_reg_4_ ( .D(n1341), .CK(CLK), .Q(opt_num[4]) );
  DFFQX1 opt_num_reg_1_ ( .D(n1338), .CK(CLK), .Q(opt_num[1]) );
  DFFQX1 opt_num_reg_3_ ( .D(n1340), .CK(CLK), .Q(opt_num[3]) );
  DFFQX1 curr_state_reg_0_ ( .D(N14), .CK(CLK), .Q(curr_state_0_) );
  DFFQX1 max_c2_dirty_reg_39_ ( .D(n906), .CK(CLK), .Q(max_c2_dirty_39_) );
  DFFRX1 col_ptr_reg_2_ ( .D(n895), .CK(CLK), .RN(n1458), .Q(col_ptr[2]), .QN(
        n901) );
  DFFRX1 col_ptr_reg_3_ ( .D(n894), .CK(CLK), .RN(n1458), .Q(col_ptr[3]), .QN(
        n900) );
  DFFX1 obj_mem_reg_19__6_ ( .D(n1145), .CK(CLK), .Q(obj_mem[6]), .QN(n1548)
         );
  DFFX1 obj_mem_reg_18__6_ ( .D(n1137), .CK(CLK), .Q(obj_mem[14]), .QN(n1549)
         );
  DFFX1 obj_mem_reg_17__6_ ( .D(n1129), .CK(CLK), .Q(obj_mem[22]), .QN(n1550)
         );
  DFFX1 obj_mem_reg_16__6_ ( .D(n1121), .CK(CLK), .Q(obj_mem[30]), .QN(n1551)
         );
  DFFX1 obj_mem_reg_15__6_ ( .D(n1113), .CK(CLK), .Q(obj_mem[38]), .QN(n1552)
         );
  DFFX1 obj_mem_reg_14__6_ ( .D(n1105), .CK(CLK), .Q(obj_mem[46]), .QN(n1553)
         );
  DFFX1 obj_mem_reg_13__6_ ( .D(n1097), .CK(CLK), .Q(obj_mem[54]), .QN(n1554)
         );
  DFFX1 obj_mem_reg_12__6_ ( .D(n1089), .CK(CLK), .Q(obj_mem[62]), .QN(n1555)
         );
  DFFX1 obj_mem_reg_11__6_ ( .D(n1081), .CK(CLK), .Q(obj_mem[70]), .QN(n1556)
         );
  DFFX1 obj_mem_reg_10__6_ ( .D(n1073), .CK(CLK), .Q(obj_mem[78]), .QN(n1557)
         );
  DFFX1 obj_mem_reg_9__6_ ( .D(n1065), .CK(CLK), .Q(obj_mem[86]), .QN(n1558)
         );
  DFFX1 obj_mem_reg_8__6_ ( .D(n1057), .CK(CLK), .Q(obj_mem[94]), .QN(n1559)
         );
  DFFX1 obj_mem_reg_7__6_ ( .D(n1049), .CK(CLK), .Q(obj_mem[102]), .QN(n1560)
         );
  DFFX1 obj_mem_reg_6__6_ ( .D(n1041), .CK(CLK), .Q(obj_mem[110]), .QN(n1561)
         );
  DFFX1 obj_mem_reg_5__6_ ( .D(n1033), .CK(CLK), .Q(obj_mem[118]), .QN(n1562)
         );
  DFFX1 obj_mem_reg_4__6_ ( .D(n1025), .CK(CLK), .Q(obj_mem[126]), .QN(n1563)
         );
  DFFX1 obj_mem_reg_3__6_ ( .D(n1017), .CK(CLK), .Q(obj_mem[134]), .QN(n1564)
         );
  DFFX1 obj_mem_reg_2__6_ ( .D(n1009), .CK(CLK), .Q(obj_mem[142]), .QN(n1565)
         );
  DFFX1 obj_mem_reg_1__6_ ( .D(n1001), .CK(CLK), .Q(obj_mem[150]), .QN(n1566)
         );
  DFFX1 obj_mem_reg_0__6_ ( .D(n993), .CK(CLK), .Q(obj_mem[158]), .QN(n1567)
         );
  DFFX1 obj_mem_reg_19__2_ ( .D(n1149), .CK(CLK), .Q(obj_mem[2]), .QN(n1708)
         );
  DFFX1 obj_mem_reg_18__2_ ( .D(n1141), .CK(CLK), .Q(obj_mem[10]), .QN(n1709)
         );
  DFFX1 obj_mem_reg_17__2_ ( .D(n1133), .CK(CLK), .Q(obj_mem[18]), .QN(n1710)
         );
  DFFX1 obj_mem_reg_16__2_ ( .D(n1125), .CK(CLK), .Q(obj_mem[26]), .QN(n1711)
         );
  DFFX1 obj_mem_reg_15__2_ ( .D(n1117), .CK(CLK), .Q(obj_mem[34]), .QN(n1712)
         );
  DFFX1 obj_mem_reg_14__2_ ( .D(n1109), .CK(CLK), .Q(obj_mem[42]), .QN(n1713)
         );
  DFFX1 obj_mem_reg_13__2_ ( .D(n1101), .CK(CLK), .Q(obj_mem[50]), .QN(n1714)
         );
  DFFX1 obj_mem_reg_12__2_ ( .D(n1093), .CK(CLK), .Q(obj_mem[58]), .QN(n1715)
         );
  DFFX1 obj_mem_reg_11__2_ ( .D(n1085), .CK(CLK), .Q(obj_mem[66]), .QN(n1716)
         );
  DFFX1 obj_mem_reg_10__2_ ( .D(n1077), .CK(CLK), .Q(obj_mem[74]), .QN(n1717)
         );
  DFFX1 obj_mem_reg_9__2_ ( .D(n1069), .CK(CLK), .Q(obj_mem[82]), .QN(n1718)
         );
  DFFX1 obj_mem_reg_8__2_ ( .D(n1061), .CK(CLK), .Q(obj_mem[90]), .QN(n1719)
         );
  DFFX1 obj_mem_reg_7__2_ ( .D(n1053), .CK(CLK), .Q(obj_mem[98]), .QN(n1720)
         );
  DFFX1 obj_mem_reg_6__2_ ( .D(n1045), .CK(CLK), .Q(obj_mem[106]), .QN(n1721)
         );
  DFFX1 obj_mem_reg_5__2_ ( .D(n1037), .CK(CLK), .Q(obj_mem[114]), .QN(n1722)
         );
  DFFX1 obj_mem_reg_4__2_ ( .D(n1029), .CK(CLK), .Q(obj_mem[122]), .QN(n1723)
         );
  DFFX1 obj_mem_reg_3__2_ ( .D(n1021), .CK(CLK), .Q(obj_mem[130]), .QN(n1724)
         );
  DFFX1 obj_mem_reg_2__2_ ( .D(n1013), .CK(CLK), .Q(obj_mem[138]), .QN(n1725)
         );
  DFFX1 obj_mem_reg_1__2_ ( .D(n1005), .CK(CLK), .Q(obj_mem[146]), .QN(n1726)
         );
  DFFX1 obj_mem_reg_0__2_ ( .D(n997), .CK(CLK), .Q(obj_mem[154]), .QN(n1727)
         );
  EDFFTRX1 tmp_dirty_reg_39_ ( .RN(n1458), .D(is_inside[19]), .E(n1370), .CK(
        CLK), .Q(tmp_dirty_39_), .QN(n1789) );
  DFFX1 obj_mem_reg_19__4_ ( .D(n1147), .CK(CLK), .Q(obj_mem[4]), .QN(n1628)
         );
  DFFX1 obj_mem_reg_18__4_ ( .D(n1139), .CK(CLK), .Q(obj_mem[12]), .QN(n1629)
         );
  DFFX1 obj_mem_reg_17__4_ ( .D(n1131), .CK(CLK), .Q(obj_mem[20]), .QN(n1630)
         );
  DFFX1 obj_mem_reg_16__4_ ( .D(n1123), .CK(CLK), .Q(obj_mem[28]), .QN(n1631)
         );
  DFFX1 obj_mem_reg_15__4_ ( .D(n1115), .CK(CLK), .Q(obj_mem[36]), .QN(n1632)
         );
  DFFX1 obj_mem_reg_14__4_ ( .D(n1107), .CK(CLK), .Q(obj_mem[44]), .QN(n1633)
         );
  DFFX1 obj_mem_reg_13__4_ ( .D(n1099), .CK(CLK), .Q(obj_mem[52]), .QN(n1634)
         );
  DFFX1 obj_mem_reg_12__4_ ( .D(n1091), .CK(CLK), .Q(obj_mem[60]), .QN(n1635)
         );
  DFFX1 obj_mem_reg_11__4_ ( .D(n1083), .CK(CLK), .Q(obj_mem[68]), .QN(n1636)
         );
  DFFX1 obj_mem_reg_10__4_ ( .D(n1075), .CK(CLK), .Q(obj_mem[76]), .QN(n1637)
         );
  DFFX1 obj_mem_reg_9__4_ ( .D(n1067), .CK(CLK), .Q(obj_mem[84]), .QN(n1638)
         );
  DFFX1 obj_mem_reg_8__4_ ( .D(n1059), .CK(CLK), .Q(obj_mem[92]), .QN(n1639)
         );
  DFFX1 obj_mem_reg_7__4_ ( .D(n1051), .CK(CLK), .Q(obj_mem[100]), .QN(n1640)
         );
  DFFX1 obj_mem_reg_6__4_ ( .D(n1043), .CK(CLK), .Q(obj_mem[108]), .QN(n1641)
         );
  DFFX1 obj_mem_reg_5__4_ ( .D(n1035), .CK(CLK), .Q(obj_mem[116]), .QN(n1642)
         );
  DFFX1 obj_mem_reg_4__4_ ( .D(n1027), .CK(CLK), .Q(obj_mem[124]), .QN(n1643)
         );
  DFFX1 obj_mem_reg_3__4_ ( .D(n1019), .CK(CLK), .Q(obj_mem[132]), .QN(n1644)
         );
  DFFX1 obj_mem_reg_2__4_ ( .D(n1011), .CK(CLK), .Q(obj_mem[140]), .QN(n1645)
         );
  DFFX1 obj_mem_reg_1__4_ ( .D(n1003), .CK(CLK), .Q(obj_mem[148]), .QN(n1646)
         );
  DFFX1 obj_mem_reg_0__4_ ( .D(n995), .CK(CLK), .Q(obj_mem[156]), .QN(n1647)
         );
  DFFX1 obj_mem_reg_19__0_ ( .D(n1151), .CK(CLK), .Q(obj_mem[0]), .QN(n1788)
         );
  DFFX1 obj_mem_reg_18__0_ ( .D(n1143), .CK(CLK), .Q(obj_mem[8]), .QN(n1796)
         );
  DFFX1 obj_mem_reg_17__0_ ( .D(n1135), .CK(CLK), .Q(obj_mem[16]), .QN(n1803)
         );
  DFFX1 obj_mem_reg_16__0_ ( .D(n1127), .CK(CLK), .Q(obj_mem[24]), .QN(n1810)
         );
  DFFX1 obj_mem_reg_15__0_ ( .D(n1119), .CK(CLK), .Q(obj_mem[32]), .QN(n1817)
         );
  DFFX1 obj_mem_reg_14__0_ ( .D(n1111), .CK(CLK), .Q(obj_mem[40]), .QN(n1824)
         );
  DFFX1 obj_mem_reg_13__0_ ( .D(n1103), .CK(CLK), .Q(obj_mem[48]), .QN(n1831)
         );
  DFFX1 obj_mem_reg_12__0_ ( .D(n1095), .CK(CLK), .Q(obj_mem[56]), .QN(n1838)
         );
  DFFX1 obj_mem_reg_11__0_ ( .D(n1087), .CK(CLK), .Q(obj_mem[64]), .QN(n1845)
         );
  DFFX1 obj_mem_reg_10__0_ ( .D(n1079), .CK(CLK), .Q(obj_mem[72]), .QN(n1852)
         );
  DFFX1 obj_mem_reg_9__0_ ( .D(n1071), .CK(CLK), .Q(obj_mem[80]), .QN(n1859)
         );
  DFFX1 obj_mem_reg_8__0_ ( .D(n1063), .CK(CLK), .Q(obj_mem[88]), .QN(n1866)
         );
  DFFX1 obj_mem_reg_7__0_ ( .D(n1055), .CK(CLK), .Q(obj_mem[96]), .QN(n1873)
         );
  DFFX1 obj_mem_reg_6__0_ ( .D(n1047), .CK(CLK), .Q(obj_mem[104]), .QN(n1880)
         );
  DFFX1 obj_mem_reg_5__0_ ( .D(n1039), .CK(CLK), .Q(obj_mem[112]), .QN(n1887)
         );
  DFFX1 obj_mem_reg_4__0_ ( .D(n1031), .CK(CLK), .Q(obj_mem[120]), .QN(n1894)
         );
  DFFX1 obj_mem_reg_3__0_ ( .D(n1023), .CK(CLK), .Q(obj_mem[128]), .QN(n1901)
         );
  DFFX1 obj_mem_reg_2__0_ ( .D(n1015), .CK(CLK), .Q(obj_mem[136]), .QN(n1908)
         );
  DFFX1 obj_mem_reg_1__0_ ( .D(n1007), .CK(CLK), .Q(obj_mem[144]), .QN(n1915)
         );
  DFFX1 obj_mem_reg_0__0_ ( .D(n999), .CK(CLK), .Q(obj_mem[152]), .QN(n1922)
         );
  DFFX1 obj_mem_reg_19__5_ ( .D(n1146), .CK(CLK), .Q(obj_mem[5]), .QN(n1588)
         );
  DFFX1 obj_mem_reg_18__5_ ( .D(n1138), .CK(CLK), .Q(obj_mem[13]), .QN(n1589)
         );
  DFFX1 obj_mem_reg_17__5_ ( .D(n1130), .CK(CLK), .Q(obj_mem[21]), .QN(n1590)
         );
  DFFX1 obj_mem_reg_16__5_ ( .D(n1122), .CK(CLK), .Q(obj_mem[29]), .QN(n1591)
         );
  DFFX1 obj_mem_reg_15__5_ ( .D(n1114), .CK(CLK), .Q(obj_mem[37]), .QN(n1592)
         );
  DFFX1 obj_mem_reg_14__5_ ( .D(n1106), .CK(CLK), .Q(obj_mem[45]), .QN(n1593)
         );
  DFFX1 obj_mem_reg_13__5_ ( .D(n1098), .CK(CLK), .Q(obj_mem[53]), .QN(n1594)
         );
  DFFX1 obj_mem_reg_12__5_ ( .D(n1090), .CK(CLK), .Q(obj_mem[61]), .QN(n1595)
         );
  DFFX1 obj_mem_reg_11__5_ ( .D(n1082), .CK(CLK), .Q(obj_mem[69]), .QN(n1596)
         );
  DFFX1 obj_mem_reg_10__5_ ( .D(n1074), .CK(CLK), .Q(obj_mem[77]), .QN(n1597)
         );
  DFFX1 obj_mem_reg_9__5_ ( .D(n1066), .CK(CLK), .Q(obj_mem[85]), .QN(n1598)
         );
  DFFX1 obj_mem_reg_8__5_ ( .D(n1058), .CK(CLK), .Q(obj_mem[93]), .QN(n1599)
         );
  DFFX1 obj_mem_reg_7__5_ ( .D(n1050), .CK(CLK), .Q(obj_mem[101]), .QN(n1600)
         );
  DFFX1 obj_mem_reg_6__5_ ( .D(n1042), .CK(CLK), .Q(obj_mem[109]), .QN(n1601)
         );
  DFFX1 obj_mem_reg_5__5_ ( .D(n1034), .CK(CLK), .Q(obj_mem[117]), .QN(n1602)
         );
  DFFX1 obj_mem_reg_4__5_ ( .D(n1026), .CK(CLK), .Q(obj_mem[125]), .QN(n1603)
         );
  DFFX1 obj_mem_reg_3__5_ ( .D(n1018), .CK(CLK), .Q(obj_mem[133]), .QN(n1604)
         );
  DFFX1 obj_mem_reg_2__5_ ( .D(n1010), .CK(CLK), .Q(obj_mem[141]), .QN(n1605)
         );
  DFFX1 obj_mem_reg_1__5_ ( .D(n1002), .CK(CLK), .Q(obj_mem[149]), .QN(n1606)
         );
  DFFX1 obj_mem_reg_0__5_ ( .D(n994), .CK(CLK), .Q(obj_mem[157]), .QN(n1607)
         );
  DFFX1 obj_mem_reg_19__1_ ( .D(n1150), .CK(CLK), .Q(obj_mem[1]), .QN(n1748)
         );
  DFFX1 obj_mem_reg_18__1_ ( .D(n1142), .CK(CLK), .Q(obj_mem[9]), .QN(n1749)
         );
  DFFX1 obj_mem_reg_17__1_ ( .D(n1134), .CK(CLK), .Q(obj_mem[17]), .QN(n1750)
         );
  DFFX1 obj_mem_reg_16__1_ ( .D(n1126), .CK(CLK), .Q(obj_mem[25]), .QN(n1751)
         );
  DFFX1 obj_mem_reg_15__1_ ( .D(n1118), .CK(CLK), .Q(obj_mem[33]), .QN(n1752)
         );
  DFFX1 obj_mem_reg_14__1_ ( .D(n1110), .CK(CLK), .Q(obj_mem[41]), .QN(n1753)
         );
  DFFX1 obj_mem_reg_13__1_ ( .D(n1102), .CK(CLK), .Q(obj_mem[49]), .QN(n1754)
         );
  DFFX1 obj_mem_reg_12__1_ ( .D(n1094), .CK(CLK), .Q(obj_mem[57]), .QN(n1755)
         );
  DFFX1 obj_mem_reg_11__1_ ( .D(n1086), .CK(CLK), .Q(obj_mem[65]), .QN(n1756)
         );
  DFFX1 obj_mem_reg_10__1_ ( .D(n1078), .CK(CLK), .Q(obj_mem[73]), .QN(n1757)
         );
  DFFX1 obj_mem_reg_9__1_ ( .D(n1070), .CK(CLK), .Q(obj_mem[81]), .QN(n1758)
         );
  DFFX1 obj_mem_reg_8__1_ ( .D(n1062), .CK(CLK), .Q(obj_mem[89]), .QN(n1759)
         );
  DFFX1 obj_mem_reg_7__1_ ( .D(n1054), .CK(CLK), .Q(obj_mem[97]), .QN(n1760)
         );
  DFFX1 obj_mem_reg_6__1_ ( .D(n1046), .CK(CLK), .Q(obj_mem[105]), .QN(n1761)
         );
  DFFX1 obj_mem_reg_5__1_ ( .D(n1038), .CK(CLK), .Q(obj_mem[113]), .QN(n1762)
         );
  DFFX1 obj_mem_reg_4__1_ ( .D(n1030), .CK(CLK), .Q(obj_mem[121]), .QN(n1763)
         );
  DFFX1 obj_mem_reg_3__1_ ( .D(n1022), .CK(CLK), .Q(obj_mem[129]), .QN(n1764)
         );
  DFFX1 obj_mem_reg_2__1_ ( .D(n1014), .CK(CLK), .Q(obj_mem[137]), .QN(n1765)
         );
  DFFX1 obj_mem_reg_1__1_ ( .D(n1006), .CK(CLK), .Q(obj_mem[145]), .QN(n1766)
         );
  DFFX1 obj_mem_reg_0__1_ ( .D(n998), .CK(CLK), .Q(obj_mem[153]), .QN(n1767)
         );
  DFFX1 obj_mem_reg_19__7_ ( .D(n1144), .CK(CLK), .Q(obj_mem[7]), .QN(n1508)
         );
  DFFX1 obj_mem_reg_18__7_ ( .D(n1136), .CK(CLK), .Q(obj_mem[15]), .QN(n1509)
         );
  DFFX1 obj_mem_reg_17__7_ ( .D(n1128), .CK(CLK), .Q(obj_mem[23]), .QN(n1510)
         );
  DFFX1 obj_mem_reg_16__7_ ( .D(n1120), .CK(CLK), .Q(obj_mem[31]), .QN(n1511)
         );
  DFFX1 obj_mem_reg_15__7_ ( .D(n1112), .CK(CLK), .Q(obj_mem[39]), .QN(n1512)
         );
  DFFX1 obj_mem_reg_14__7_ ( .D(n1104), .CK(CLK), .Q(obj_mem[47]), .QN(n1513)
         );
  DFFX1 obj_mem_reg_13__7_ ( .D(n1096), .CK(CLK), .Q(obj_mem[55]), .QN(n1514)
         );
  DFFX1 obj_mem_reg_12__7_ ( .D(n1088), .CK(CLK), .Q(obj_mem[63]), .QN(n1515)
         );
  DFFX1 obj_mem_reg_11__7_ ( .D(n1080), .CK(CLK), .Q(obj_mem[71]), .QN(n1516)
         );
  DFFX1 obj_mem_reg_10__7_ ( .D(n1072), .CK(CLK), .Q(obj_mem[79]), .QN(n1517)
         );
  DFFX1 obj_mem_reg_9__7_ ( .D(n1064), .CK(CLK), .Q(obj_mem[87]), .QN(n1518)
         );
  DFFX1 obj_mem_reg_8__7_ ( .D(n1056), .CK(CLK), .Q(obj_mem[95]), .QN(n1519)
         );
  DFFX1 obj_mem_reg_7__7_ ( .D(n1048), .CK(CLK), .Q(obj_mem[103]), .QN(n1520)
         );
  DFFX1 obj_mem_reg_6__7_ ( .D(n1040), .CK(CLK), .Q(obj_mem[111]), .QN(n1521)
         );
  DFFX1 obj_mem_reg_5__7_ ( .D(n1032), .CK(CLK), .Q(obj_mem[119]), .QN(n1522)
         );
  DFFX1 obj_mem_reg_4__7_ ( .D(n1024), .CK(CLK), .Q(obj_mem[127]), .QN(n1523)
         );
  DFFX1 obj_mem_reg_3__7_ ( .D(n1016), .CK(CLK), .Q(obj_mem[135]), .QN(n1524)
         );
  DFFX1 obj_mem_reg_2__7_ ( .D(n1008), .CK(CLK), .Q(obj_mem[143]), .QN(n1525)
         );
  DFFX1 obj_mem_reg_1__7_ ( .D(n1000), .CK(CLK), .Q(obj_mem[151]), .QN(n1526)
         );
  DFFX1 obj_mem_reg_0__7_ ( .D(n992), .CK(CLK), .Q(obj_mem[159]), .QN(n1527)
         );
  DFFX1 obj_mem_reg_19__3_ ( .D(n1148), .CK(CLK), .Q(obj_mem[3]), .QN(n1668)
         );
  DFFX1 obj_mem_reg_18__3_ ( .D(n1140), .CK(CLK), .Q(obj_mem[11]), .QN(n1669)
         );
  DFFX1 obj_mem_reg_17__3_ ( .D(n1132), .CK(CLK), .Q(obj_mem[19]), .QN(n1670)
         );
  DFFX1 obj_mem_reg_16__3_ ( .D(n1124), .CK(CLK), .Q(obj_mem[27]), .QN(n1671)
         );
  DFFX1 obj_mem_reg_15__3_ ( .D(n1116), .CK(CLK), .Q(obj_mem[35]), .QN(n1672)
         );
  DFFX1 obj_mem_reg_14__3_ ( .D(n1108), .CK(CLK), .Q(obj_mem[43]), .QN(n1673)
         );
  DFFX1 obj_mem_reg_13__3_ ( .D(n1100), .CK(CLK), .Q(obj_mem[51]), .QN(n1674)
         );
  DFFX1 obj_mem_reg_12__3_ ( .D(n1092), .CK(CLK), .Q(obj_mem[59]), .QN(n1675)
         );
  DFFX1 obj_mem_reg_11__3_ ( .D(n1084), .CK(CLK), .Q(obj_mem[67]), .QN(n1676)
         );
  DFFX1 obj_mem_reg_10__3_ ( .D(n1076), .CK(CLK), .Q(obj_mem[75]), .QN(n1677)
         );
  DFFX1 obj_mem_reg_9__3_ ( .D(n1068), .CK(CLK), .Q(obj_mem[83]), .QN(n1678)
         );
  DFFX1 obj_mem_reg_8__3_ ( .D(n1060), .CK(CLK), .Q(obj_mem[91]), .QN(n1679)
         );
  DFFX1 obj_mem_reg_7__3_ ( .D(n1052), .CK(CLK), .Q(obj_mem[99]), .QN(n1680)
         );
  DFFX1 obj_mem_reg_6__3_ ( .D(n1044), .CK(CLK), .Q(obj_mem[107]), .QN(n1681)
         );
  DFFX1 obj_mem_reg_5__3_ ( .D(n1036), .CK(CLK), .Q(obj_mem[115]), .QN(n1682)
         );
  DFFX1 obj_mem_reg_4__3_ ( .D(n1028), .CK(CLK), .Q(obj_mem[123]), .QN(n1683)
         );
  DFFX1 obj_mem_reg_3__3_ ( .D(n1020), .CK(CLK), .Q(obj_mem[131]), .QN(n1684)
         );
  DFFX1 obj_mem_reg_2__3_ ( .D(n1012), .CK(CLK), .Q(obj_mem[139]), .QN(n1685)
         );
  DFFX1 obj_mem_reg_1__3_ ( .D(n1004), .CK(CLK), .Q(obj_mem[147]), .QN(n1686)
         );
  DFFX1 obj_mem_reg_0__3_ ( .D(n996), .CK(CLK), .Q(obj_mem[155]), .QN(n1687)
         );
  DFFRX1 col_ptr_reg_0_ ( .D(n897), .CK(CLK), .RN(n1458), .Q(n1345), .QN(n903)
         );
  DFFRX1 col_ptr_reg_1_ ( .D(n896), .CK(CLK), .RN(n1458), .Q(col_ptr[1]), .QN(
        n902) );
  DFFX1 max_c2_dirty_reg_19_ ( .D(n926), .CK(CLK), .QN(n1795) );
  DFFX1 max_c2_dirty_reg_38_ ( .D(n907), .CK(CLK), .QN(n1799) );
  DFFX1 max_c2_dirty_reg_37_ ( .D(n908), .CK(CLK), .QN(n1806) );
  DFFX1 max_c2_dirty_reg_17_ ( .D(n928), .CK(CLK), .QN(n1809) );
  DFFX1 max_c2_dirty_reg_36_ ( .D(n909), .CK(CLK), .QN(n1813) );
  DFFX1 max_c2_dirty_reg_16_ ( .D(n929), .CK(CLK), .QN(n1816) );
  DFFX1 max_c2_dirty_reg_35_ ( .D(n910), .CK(CLK), .QN(n1820) );
  DFFX1 max_c2_dirty_reg_34_ ( .D(n911), .CK(CLK), .QN(n1827) );
  DFFX1 max_c2_dirty_reg_14_ ( .D(n931), .CK(CLK), .QN(n1830) );
  DFFX1 max_c2_dirty_reg_33_ ( .D(n912), .CK(CLK), .QN(n1834) );
  DFFX1 max_c2_dirty_reg_13_ ( .D(n932), .CK(CLK), .QN(n1837) );
  DFFX1 max_c2_dirty_reg_32_ ( .D(n913), .CK(CLK), .QN(n1841) );
  DFFX1 max_c2_dirty_reg_12_ ( .D(n933), .CK(CLK), .QN(n1844) );
  DFFX1 max_c2_dirty_reg_31_ ( .D(n914), .CK(CLK), .QN(n1848) );
  DFFX1 max_c2_dirty_reg_11_ ( .D(n934), .CK(CLK), .QN(n1851) );
  DFFX1 max_c2_dirty_reg_30_ ( .D(n915), .CK(CLK), .QN(n1855) );
  DFFX1 max_c2_dirty_reg_10_ ( .D(n935), .CK(CLK), .QN(n1858) );
  DFFX1 max_c2_dirty_reg_29_ ( .D(n916), .CK(CLK), .QN(n1862) );
  DFFX1 max_c2_dirty_reg_9_ ( .D(n936), .CK(CLK), .QN(n1865) );
  DFFX1 max_c2_dirty_reg_28_ ( .D(n917), .CK(CLK), .QN(n1869) );
  DFFX1 max_c2_dirty_reg_27_ ( .D(n918), .CK(CLK), .QN(n1876) );
  DFFX1 max_c2_dirty_reg_26_ ( .D(n919), .CK(CLK), .QN(n1883) );
  DFFX1 max_c2_dirty_reg_6_ ( .D(n939), .CK(CLK), .QN(n1886) );
  DFFX1 max_c2_dirty_reg_25_ ( .D(n920), .CK(CLK), .QN(n1890) );
  DFFX1 max_c2_dirty_reg_24_ ( .D(n921), .CK(CLK), .QN(n1897) );
  DFFX1 max_c2_dirty_reg_23_ ( .D(n922), .CK(CLK), .QN(n1904) );
  DFFX1 max_c2_dirty_reg_3_ ( .D(n942), .CK(CLK), .QN(n1907) );
  DFFX1 max_c2_dirty_reg_22_ ( .D(n923), .CK(CLK), .QN(n1911) );
  DFFX1 max_c2_dirty_reg_21_ ( .D(n924), .CK(CLK), .QN(n1918) );
  DFFX1 max_c2_dirty_reg_1_ ( .D(n944), .CK(CLK), .QN(n1921) );
  DFFX1 max_c2_dirty_reg_20_ ( .D(n925), .CK(CLK), .QN(n1925) );
  DFFX1 max_c2_dirty_reg_0_ ( .D(n945), .CK(CLK), .QN(n1928) );
  EDFFTRX1 tmp_dirty_reg_19_ ( .RN(n1458), .D(tmp_dirty_39_), .E(n1370), .CK(
        CLK), .QN(n1793) );
  EDFFTRX1 tmp_dirty_reg_17_ ( .RN(n1458), .D(n85), .E(n1370), .CK(CLK), .QN(
        n1807) );
  EDFFTRX1 tmp_dirty_reg_16_ ( .RN(n1458), .D(n86), .E(n1370), .CK(CLK), .QN(
        n1814) );
  EDFFTRX1 tmp_dirty_reg_14_ ( .RN(n1458), .D(n88), .E(n1370), .CK(CLK), .QN(
        n1828) );
  EDFFTRX1 tmp_dirty_reg_13_ ( .RN(n1458), .D(n89), .E(n1370), .CK(CLK), .QN(
        n1835) );
  EDFFTRX1 tmp_dirty_reg_11_ ( .RN(n1458), .D(n91), .E(n1370), .CK(CLK), .QN(
        n1849) );
  EDFFTRX1 tmp_dirty_reg_10_ ( .RN(n1458), .D(n92), .E(n1370), .CK(CLK), .QN(
        n1856) );
  EDFFTRX1 tmp_dirty_reg_9_ ( .RN(n1458), .D(n93), .E(n1370), .CK(CLK), .QN(
        n1863) );
  EDFFTRX1 tmp_dirty_reg_6_ ( .RN(n1458), .D(n96), .E(n1370), .CK(CLK), .QN(
        n1884) );
  EDFFTRX1 tmp_dirty_reg_3_ ( .RN(n1458), .D(n99), .E(n1370), .CK(CLK), .QN(
        n1905) );
  EDFFTRX1 tmp_dirty_reg_1_ ( .RN(n1458), .D(n101), .E(n1370), .CK(CLK), .QN(
        n1919) );
  EDFFTRX1 tmp_dirty_reg_0_ ( .RN(n1458), .D(n102), .E(n1370), .CK(CLK), .QN(
        n1926) );
  EDFFTRX1 tmp_dirty_reg_38_ ( .RN(n1458), .D(is_inside[18]), .E(n1370), .CK(
        CLK), .Q(n84), .QN(n1797) );
  EDFFTRX1 tmp_dirty_reg_37_ ( .RN(n1458), .D(is_inside[17]), .E(n1370), .CK(
        CLK), .Q(n85), .QN(n1804) );
  EDFFTRX1 tmp_dirty_reg_36_ ( .RN(n1458), .D(is_inside[16]), .E(n1370), .CK(
        CLK), .Q(n86), .QN(n1811) );
  EDFFTRX1 tmp_dirty_reg_35_ ( .RN(n1458), .D(is_inside[15]), .E(n1370), .CK(
        CLK), .Q(n87), .QN(n1818) );
  EDFFTRX1 tmp_dirty_reg_34_ ( .RN(n1458), .D(is_inside[14]), .E(n1370), .CK(
        CLK), .Q(n88), .QN(n1825) );
  EDFFTRX1 tmp_dirty_reg_33_ ( .RN(n1458), .D(is_inside[13]), .E(n1370), .CK(
        CLK), .Q(n89), .QN(n1832) );
  EDFFTRX1 tmp_dirty_reg_32_ ( .RN(n1458), .D(is_inside[12]), .E(n1370), .CK(
        CLK), .Q(n90), .QN(n1839) );
  EDFFTRX1 tmp_dirty_reg_31_ ( .RN(n1458), .D(is_inside[11]), .E(n1370), .CK(
        CLK), .Q(n91), .QN(n1846) );
  EDFFTRX1 tmp_dirty_reg_30_ ( .RN(n1458), .D(is_inside[10]), .E(n1370), .CK(
        CLK), .Q(n92), .QN(n1853) );
  EDFFTRX1 tmp_dirty_reg_29_ ( .RN(n1458), .D(is_inside[9]), .E(n1370), .CK(
        CLK), .Q(n93), .QN(n1860) );
  EDFFTRX1 tmp_dirty_reg_28_ ( .RN(n1458), .D(is_inside[8]), .E(n1370), .CK(
        CLK), .Q(n94), .QN(n1867) );
  EDFFTRX1 tmp_dirty_reg_27_ ( .RN(n1458), .D(is_inside[7]), .E(n1370), .CK(
        CLK), .Q(n95), .QN(n1874) );
  EDFFTRX1 tmp_dirty_reg_26_ ( .RN(n1458), .D(is_inside[6]), .E(n1370), .CK(
        CLK), .Q(n96), .QN(n1881) );
  EDFFTRX1 tmp_dirty_reg_25_ ( .RN(n1458), .D(is_inside[5]), .E(n1370), .CK(
        CLK), .Q(n97), .QN(n1888) );
  EDFFTRX1 tmp_dirty_reg_24_ ( .RN(n1458), .D(is_inside[4]), .E(n1370), .CK(
        CLK), .Q(n98), .QN(n1895) );
  EDFFTRX1 tmp_dirty_reg_23_ ( .RN(n1458), .D(is_inside[3]), .E(n1370), .CK(
        CLK), .Q(n99), .QN(n1902) );
  EDFFTRX1 tmp_dirty_reg_22_ ( .RN(n1458), .D(is_inside[2]), .E(n1370), .CK(
        CLK), .Q(n100), .QN(n1909) );
  EDFFTRX1 tmp_dirty_reg_21_ ( .RN(n1458), .D(is_inside[1]), .E(n1370), .CK(
        CLK), .Q(n101), .QN(n1916) );
  EDFFTRX1 tmp_dirty_reg_20_ ( .RN(n1458), .D(is_inside[0]), .E(n1370), .CK(
        CLK), .Q(n102), .QN(n1923) );
  DFFX1 max_c2_dirty_reg_18_ ( .D(n927), .CK(CLK), .QN(n1802) );
  DFFX1 max_c2_dirty_reg_15_ ( .D(n930), .CK(CLK), .QN(n1823) );
  DFFX1 max_c2_dirty_reg_8_ ( .D(n937), .CK(CLK), .QN(n1872) );
  DFFX1 max_c2_dirty_reg_7_ ( .D(n938), .CK(CLK), .QN(n1879) );
  DFFX1 max_c2_dirty_reg_5_ ( .D(n940), .CK(CLK), .QN(n1893) );
  DFFX1 max_c2_dirty_reg_4_ ( .D(n941), .CK(CLK), .QN(n1900) );
  DFFX1 max_c2_dirty_reg_2_ ( .D(n943), .CK(CLK), .QN(n1914) );
  EDFFTRX1 tmp_dirty_reg_18_ ( .RN(n1458), .D(n84), .E(n1370), .CK(CLK), .QN(
        n1800) );
  EDFFTRX1 tmp_dirty_reg_15_ ( .RN(n1458), .D(n87), .E(n1370), .CK(CLK), .QN(
        n1821) );
  EDFFTRX1 tmp_dirty_reg_12_ ( .RN(n1458), .D(n90), .E(n1370), .CK(CLK), .QN(
        n1842) );
  EDFFTRX1 tmp_dirty_reg_8_ ( .RN(n1458), .D(n94), .E(n1370), .CK(CLK), .QN(
        n1870) );
  EDFFTRX1 tmp_dirty_reg_7_ ( .RN(n1458), .D(n95), .E(n1370), .CK(CLK), .QN(
        n1877) );
  EDFFTRX1 tmp_dirty_reg_5_ ( .RN(n1458), .D(n97), .E(n1370), .CK(CLK), .QN(
        n1891) );
  EDFFTRX1 tmp_dirty_reg_4_ ( .RN(n1458), .D(n98), .E(n1370), .CK(CLK), .QN(
        n1898) );
  EDFFTRX1 tmp_dirty_reg_2_ ( .RN(n1458), .D(n100), .E(n1370), .CK(CLK), .QN(
        n1912) );
  TLATX1 next_state_reg_1_ ( .G(N39), .D(N41), .Q(next_state[1]) );
  TLATX1 next_state_reg_2_ ( .G(N39), .D(N42), .Q(next_state[2]) );
  DFFTRX1 curr_state_reg_1_ ( .D(next_state[1]), .RN(n1458), .CK(CLK), .QN(
        n899) );
  DFFQX1 DONE_reg ( .D(n898), .CK(CLK), .Q(DONE) );
  DFFTRX1 C1Y_reg_3_ ( .D(circal_loc_C1[7]), .RN(n898), .CK(CLK), .Q(C1Y[3])
         );
  DFFTRX1 C2Y_reg_3_ ( .D(n76), .RN(n898), .CK(CLK), .Q(C2Y[3]) );
  DFFTRX1 C2X_reg_1_ ( .D(n77), .RN(n898), .CK(CLK), .Q(C2X[1]) );
  DFFTRX1 C1X_reg_1_ ( .D(circal_loc_C1[1]), .RN(n898), .CK(CLK), .Q(C1X[1])
         );
  DFFTRX1 C2X_reg_2_ ( .D(n78), .RN(n898), .CK(CLK), .Q(C2X[2]) );
  DFFTRX1 C1X_reg_2_ ( .D(circal_loc_C1[2]), .RN(n898), .CK(CLK), .Q(C1X[2])
         );
  DFFTRX1 C2X_reg_3_ ( .D(n79), .RN(n898), .CK(CLK), .Q(C2X[3]) );
  DFFTRX1 C1X_reg_3_ ( .D(circal_loc_C1[3]), .RN(n898), .CK(CLK), .Q(C1X[3])
         );
  DFFTRX1 C2Y_reg_0_ ( .D(n80), .RN(n898), .CK(CLK), .Q(C2Y[0]) );
  DFFTRX1 C1Y_reg_0_ ( .D(circal_loc_C1[4]), .RN(n898), .CK(CLK), .Q(C1Y[0])
         );
  DFFTRX1 C2Y_reg_1_ ( .D(n81), .RN(n898), .CK(CLK), .Q(C2Y[1]) );
  DFFTRX1 C1Y_reg_1_ ( .D(circal_loc_C1[5]), .RN(n898), .CK(CLK), .Q(C1Y[1])
         );
  DFFTRX1 C2Y_reg_2_ ( .D(n82), .RN(n898), .CK(CLK), .Q(C2Y[2]) );
  DFFTRX1 C1Y_reg_2_ ( .D(circal_loc_C1[6]), .RN(n898), .CK(CLK), .Q(C1Y[2])
         );
  DFFTRX1 C2X_reg_0_ ( .D(n83), .RN(n898), .CK(CLK), .Q(C2X[0]) );
  DFFTRX1 C1X_reg_0_ ( .D(circal_loc_C1[0]), .RN(n898), .CK(CLK), .Q(C1X[0])
         );
  DFFTRXL curr_state_reg_2_ ( .D(next_state[2]), .RN(n1458), .CK(CLK), .Q(
        n1469), .QN(n889) );
  DFFRX1 row_ptr_reg_0_ ( .D(n893), .CK(CLK), .RN(n1458), .Q(n1432), .QN(n1434) );
  DFFRX1 row_ptr_reg_1_ ( .D(n892), .CK(CLK), .RN(n1458), .Q(n1435), .QN(n1436) );
  DFFRX1 row_ptr_reg_2_ ( .D(n891), .CK(CLK), .RN(n1458), .Q(row_ptr_2_), .QN(
        n1346) );
  DFFRX1 row_ptr_reg_3_ ( .D(n890), .CK(CLK), .RN(n1458), .Q(n1437), .QN(n1439) );
  CLKINVX1 U1031 ( .A(n903), .Y(n1355) );
  NAND2X1 U1032 ( .A(n1468), .B(n1458), .Y(n187) );
  CLKBUFX3 U1033 ( .A(row_ptr_2_), .Y(n1358) );
  CLKBUFX3 U1034 ( .A(col_ptr[1]), .Y(n1428) );
  CLKBUFX3 U1035 ( .A(row_ptr_2_), .Y(n1357) );
  ADDHXL U1036 ( .A(N1009), .B(add_299_I40_carry[3]), .CO(add_299_I40_carry[4]), .S(N1016) );
  ADDHXL U1037 ( .A(N1008), .B(add_299_I40_carry[2]), .CO(add_299_I40_carry[3]), .S(N1015) );
  ADDHXL U1038 ( .A(N1010), .B(add_299_I40_carry[4]), .CO(add_299_I40_carry[5]), .S(N1017) );
  ADDHXL U1039 ( .A(N1007), .B(N1006), .CO(add_299_I40_carry[2]), .S(N1014) );
  ADDFXL U1040 ( .A(N858), .B(N890), .CI(
        add_0_root_add_13_root_add_299_I39_aco_carry_4_), .CO(N1011), .S(N1010) );
  ADDFXL U1041 ( .A(N801), .B(N793), .CI(
        add_1_root_add_13_root_add_299_I39_aco_carry_3_), .CO(N890), .S(N889)
         );
  ADDFXL U1042 ( .A(N799), .B(N791), .CI(
        add_1_root_add_13_root_add_299_I39_aco_carry_1_), .CO(
        add_1_root_add_13_root_add_299_I39_aco_carry_2_), .S(N887) );
  ADDFXL U1043 ( .A(N800), .B(N792), .CI(
        add_1_root_add_13_root_add_299_I39_aco_carry_2_), .CO(
        add_1_root_add_13_root_add_299_I39_aco_carry_3_), .S(N888) );
  ADDFXL U1044 ( .A(N856), .B(N888), .CI(
        add_0_root_add_13_root_add_299_I39_aco_carry_2_), .CO(
        add_0_root_add_13_root_add_299_I39_aco_carry_3_), .S(N1008) );
  ADDFXL U1045 ( .A(N857), .B(N889), .CI(
        add_0_root_add_13_root_add_299_I39_aco_carry_3_), .CO(
        add_0_root_add_13_root_add_299_I39_aco_carry_4_), .S(N1009) );
  ADDFXL U1046 ( .A(N855), .B(N887), .CI(
        add_0_root_add_13_root_add_299_I39_aco_carry_1_), .CO(
        add_0_root_add_13_root_add_299_I39_aco_carry_2_), .S(N1007) );
  CLKBUFX3 U1047 ( .A(n1403), .Y(n1401) );
  CLKBUFX3 U1048 ( .A(n1403), .Y(n1400) );
  CLKBUFX3 U1049 ( .A(n1404), .Y(n1399) );
  CLKBUFX3 U1050 ( .A(n1404), .Y(n1398) );
  CLKBUFX3 U1051 ( .A(n1404), .Y(n1397) );
  CLKBUFX3 U1052 ( .A(n1405), .Y(n1396) );
  CLKBUFX3 U1053 ( .A(n1405), .Y(n1395) );
  CLKBUFX3 U1054 ( .A(n1405), .Y(n1394) );
  CLKBUFX3 U1055 ( .A(n1406), .Y(n1393) );
  CLKBUFX3 U1056 ( .A(n1406), .Y(n1392) );
  CLKBUFX3 U1057 ( .A(n1406), .Y(n1391) );
  CLKBUFX3 U1058 ( .A(n1407), .Y(n1390) );
  CLKBUFX3 U1059 ( .A(n1407), .Y(n1389) );
  CLKBUFX3 U1060 ( .A(n1407), .Y(n1388) );
  CLKBUFX3 U1061 ( .A(n1408), .Y(n1387) );
  CLKBUFX3 U1062 ( .A(n1408), .Y(n1386) );
  CLKBUFX3 U1063 ( .A(n1408), .Y(n1385) );
  CLKBUFX3 U1064 ( .A(n1409), .Y(n1384) );
  CLKBUFX3 U1065 ( .A(n1409), .Y(n1383) );
  CLKBUFX3 U1066 ( .A(n1409), .Y(n1382) );
  CLKBUFX3 U1067 ( .A(n1410), .Y(n1381) );
  CLKBUFX3 U1068 ( .A(n1410), .Y(n1380) );
  CLKBUFX3 U1069 ( .A(n1410), .Y(n1379) );
  CLKBUFX3 U1070 ( .A(n1403), .Y(n1402) );
  ADDFXL U1071 ( .A(N872), .B(N832), .CI(
        add_4_root_add_13_root_add_299_I39_aco_carry_2_), .CO(N801), .S(N800)
         );
  ADDFXL U1072 ( .A(N896), .B(N864), .CI(
        add_2_root_add_13_root_add_299_I39_aco_carry_2_), .CO(
        add_2_root_add_13_root_add_299_I39_aco_carry_3_), .S(N856) );
  ADDFXL U1073 ( .A(N871), .B(N831), .CI(
        add_4_root_add_13_root_add_299_I39_aco_carry_1_), .CO(
        add_4_root_add_13_root_add_299_I39_aco_carry_2_), .S(N799) );
  ADDFXL U1074 ( .A(N895), .B(N863), .CI(
        add_2_root_add_13_root_add_299_I39_aco_carry_1_), .CO(
        add_2_root_add_13_root_add_299_I39_aco_carry_2_), .S(N855) );
  ADDFXL U1075 ( .A(N816), .B(N808), .CI(
        add_3_root_add_13_root_add_299_I39_aco_carry_2_), .CO(N793), .S(N792)
         );
  ADDFXL U1076 ( .A(N815), .B(N807), .CI(
        add_3_root_add_13_root_add_299_I39_aco_carry_1_), .CO(
        add_3_root_add_13_root_add_299_I39_aco_carry_2_), .S(N791) );
  CLKBUFX3 U1077 ( .A(n1415), .Y(n1418) );
  CLKBUFX3 U1078 ( .A(n1415), .Y(n1419) );
  CLKBUFX3 U1079 ( .A(n1415), .Y(n1417) );
  CLKBUFX3 U1080 ( .A(n1416), .Y(n1420) );
  CLKBUFX3 U1081 ( .A(n1416), .Y(n1421) );
  CLKBUFX3 U1082 ( .A(n1375), .Y(n1403) );
  CLKBUFX3 U1083 ( .A(n1375), .Y(n1404) );
  CLKBUFX3 U1084 ( .A(n1375), .Y(n1405) );
  CLKBUFX3 U1085 ( .A(n1376), .Y(n1406) );
  CLKBUFX3 U1086 ( .A(n1376), .Y(n1407) );
  CLKBUFX3 U1087 ( .A(n1376), .Y(n1408) );
  CLKBUFX3 U1088 ( .A(n1377), .Y(n1409) );
  CLKBUFX3 U1089 ( .A(n1377), .Y(n1410) );
  CLKBUFX3 U1090 ( .A(n1411), .Y(n1378) );
  CLKBUFX3 U1091 ( .A(n1377), .Y(n1411) );
  ADDFXL U1092 ( .A(N730), .B(N783), .CI(
        add_10_root_add_13_root_add_299_I39_aco_carry_1_), .CO(N824), .S(N823)
         );
  AO22X1 U1093 ( .A0(or_result[8]), .A1(or_result[7]), .B0(n1929), .B1(
        or_result[6]), .Y(N730) );
  ADDFXL U1094 ( .A(N721), .B(N725), .CI(
        add_11_root_add_13_root_add_299_I39_aco_carry_1_), .CO(N832), .S(N831)
         );
  AO22X1 U1095 ( .A0(or_result[5]), .A1(or_result[4]), .B0(n1930), .B1(
        or_result[3]), .Y(N725) );
  AO22X1 U1096 ( .A0(or_result[2]), .A1(or_result[1]), .B0(n1931), .B1(
        or_result[0]), .Y(N721) );
  XOR2X1 U1097 ( .A(or_result[7]), .B(or_result[8]), .Y(n1929) );
  XOR2X1 U1098 ( .A(or_result[1]), .B(or_result[2]), .Y(n1931) );
  XOR2X1 U1099 ( .A(or_result[4]), .B(or_result[5]), .Y(n1930) );
  ADDFXL U1100 ( .A(N736), .B(N823), .CI(
        add_5_root_add_13_root_add_299_I39_aco_carry_1_), .CO(
        add_5_root_add_13_root_add_299_I39_aco_carry_2_), .S(N863) );
  XOR2X1 U1101 ( .A(or_result[3]), .B(n1930), .Y(N724) );
  XOR2X1 U1102 ( .A(or_result[0]), .B(n1931), .Y(N720) );
  XOR2X1 U1103 ( .A(or_result[6]), .B(n1929), .Y(N729) );
  CLKINVX1 U1104 ( .A(opt_num_w[5]), .Y(n1455) );
  CLKINVX1 U1105 ( .A(opt_num_w[3]), .Y(n1454) );
  ADDFXL U1106 ( .A(N751), .B(N759), .CI(
        add_6_root_add_13_root_add_299_I39_aco_carry_1_), .CO(N808), .S(N807)
         );
  ADDFXL U1107 ( .A(N839), .B(N743), .CI(
        add_8_root_add_13_root_add_299_I39_aco_carry_1_), .CO(N896), .S(N895)
         );
  ADDFXL U1108 ( .A(N767), .B(N847), .CI(
        add_9_root_add_13_root_add_299_I39_aco_carry_1_), .CO(N872), .S(N871)
         );
  ADDFXL U1109 ( .A(N775), .B(N879), .CI(
        add_7_root_add_13_root_add_299_I39_aco_carry_1_), .CO(N816), .S(N815)
         );
  CLKBUFX3 U1110 ( .A(n240), .Y(n1412) );
  CLKBUFX3 U1111 ( .A(n187), .Y(n1426) );
  CLKBUFX3 U1112 ( .A(n187), .Y(n1427) );
  NAND2X1 U1113 ( .A(n1371), .B(n1412), .Y(n239) );
  CLKBUFX3 U1114 ( .A(n242), .Y(n1375) );
  CLKBUFX3 U1115 ( .A(n242), .Y(n1376) );
  CLKBUFX3 U1116 ( .A(n242), .Y(n1377) );
  CLKBUFX3 U1117 ( .A(n189), .Y(n1415) );
  CLKBUFX3 U1118 ( .A(n189), .Y(n1416) );
  CLKBUFX3 U1119 ( .A(n240), .Y(n1413) );
  CLKBUFX3 U1120 ( .A(n240), .Y(n1414) );
  CLKBUFX3 U1121 ( .A(n187), .Y(n1424) );
  CLKBUFX3 U1122 ( .A(n187), .Y(n1422) );
  CLKBUFX3 U1123 ( .A(n187), .Y(n1423) );
  CLKBUFX3 U1124 ( .A(n187), .Y(n1425) );
  CLKINVX1 U1125 ( .A(n607), .Y(n1457) );
  NOR2BX1 U1126 ( .AN(opt_tmp_lr_max), .B(n607), .Y(n601) );
  NAND2X2 U1127 ( .A(n601), .B(n605), .Y(n231) );
  AO22X1 U1128 ( .A0(N1009), .A1(n603), .B0(N1016), .B1(n1790), .Y(
        opt_num_w[3]) );
  AO22X1 U1129 ( .A0(N1011), .A1(n603), .B0(N1018), .B1(n1790), .Y(
        opt_num_w[5]) );
  INVX3 U1130 ( .A(n606), .Y(n1456) );
  OAI32X1 U1131 ( .A0(n607), .A1(opt_tmp_lr_max), .A2(n1468), .B0(n1457), .B1(
        n1421), .Y(n606) );
  AO22X1 U1132 ( .A0(N1008), .A1(n603), .B0(N1015), .B1(n1790), .Y(
        opt_num_w[2]) );
  AO22X1 U1133 ( .A0(N1010), .A1(n603), .B0(N1017), .B1(n1790), .Y(
        opt_num_w[4]) );
  NAND2X1 U1134 ( .A(n1879), .B(n1877), .Y(or_result[7]) );
  NAND2X1 U1135 ( .A(n1900), .B(n1898), .Y(or_result[4]) );
  NAND2X1 U1136 ( .A(n1872), .B(n1870), .Y(or_result[8]) );
  NAND2X1 U1137 ( .A(n1914), .B(n1912), .Y(or_result[2]) );
  NAND2X1 U1138 ( .A(n1893), .B(n1891), .Y(or_result[5]) );
  OAI222XL U1139 ( .A0(n1427), .A1(n1348), .B0(n1456), .B1(n1484), .C0(n1346), 
        .C1(n231), .Y(n1336) );
  OAI222XL U1140 ( .A0(n1427), .A1(n1349), .B0(n1456), .B1(n1482), .C0(n1436), 
        .C1(n231), .Y(n1335) );
  OAI222XL U1141 ( .A0(n1427), .A1(n1350), .B0(n1456), .B1(n1480), .C0(n1434), 
        .C1(n231), .Y(n1334) );
  OAI222XL U1142 ( .A0(n1427), .A1(n1354), .B0(n1456), .B1(n1467), .C0(n1439), 
        .C1(n231), .Y(n1342) );
  OAI222XL U1143 ( .A0(n1427), .A1(n1928), .B0(n1456), .B1(n1927), .C0(n231), 
        .C1(n1926), .Y(n985) );
  OAI222XL U1144 ( .A0(n1427), .A1(n1925), .B0(n1456), .B1(n1924), .C0(n231), 
        .C1(n1923), .Y(n965) );
  OAI222XL U1145 ( .A0(n1427), .A1(n1921), .B0(n1456), .B1(n1920), .C0(n231), 
        .C1(n1919), .Y(n984) );
  OAI222XL U1146 ( .A0(n1427), .A1(n1918), .B0(n1456), .B1(n1917), .C0(n231), 
        .C1(n1916), .Y(n964) );
  OAI222XL U1147 ( .A0(n1427), .A1(n1914), .B0(n1456), .B1(n1913), .C0(n231), 
        .C1(n1912), .Y(n983) );
  OAI222XL U1148 ( .A0(n1427), .A1(n1911), .B0(n1456), .B1(n1910), .C0(n231), 
        .C1(n1909), .Y(n963) );
  OAI222XL U1149 ( .A0(n1427), .A1(n1907), .B0(n1456), .B1(n1906), .C0(n231), 
        .C1(n1905), .Y(n982) );
  OAI222XL U1150 ( .A0(n1427), .A1(n1904), .B0(n1456), .B1(n1903), .C0(n231), 
        .C1(n1902), .Y(n962) );
  OAI222XL U1151 ( .A0(n1427), .A1(n1900), .B0(n1456), .B1(n1899), .C0(n231), 
        .C1(n1898), .Y(n981) );
  OAI222XL U1152 ( .A0(n1427), .A1(n1897), .B0(n1456), .B1(n1896), .C0(n231), 
        .C1(n1895), .Y(n961) );
  OAI222XL U1153 ( .A0(n1427), .A1(n1893), .B0(n1456), .B1(n1892), .C0(n231), 
        .C1(n1891), .Y(n980) );
  OAI222XL U1154 ( .A0(n1427), .A1(n1890), .B0(n1456), .B1(n1889), .C0(n231), 
        .C1(n1888), .Y(n960) );
  OAI222XL U1155 ( .A0(n1427), .A1(n1886), .B0(n1456), .B1(n1885), .C0(n231), 
        .C1(n1884), .Y(n979) );
  OAI222XL U1156 ( .A0(n1427), .A1(n1883), .B0(n1456), .B1(n1882), .C0(n231), 
        .C1(n1881), .Y(n959) );
  OAI222XL U1157 ( .A0(n1427), .A1(n1879), .B0(n1456), .B1(n1878), .C0(n231), 
        .C1(n1877), .Y(n978) );
  OAI222XL U1158 ( .A0(n1427), .A1(n1876), .B0(n1456), .B1(n1875), .C0(n231), 
        .C1(n1874), .Y(n958) );
  OAI222XL U1159 ( .A0(n1427), .A1(n1872), .B0(n1456), .B1(n1871), .C0(n231), 
        .C1(n1870), .Y(n977) );
  OAI222XL U1160 ( .A0(n1427), .A1(n1869), .B0(n1456), .B1(n1868), .C0(n231), 
        .C1(n1867), .Y(n957) );
  OAI222XL U1161 ( .A0(n1427), .A1(n1865), .B0(n1456), .B1(n1864), .C0(n231), 
        .C1(n1863), .Y(n976) );
  OAI222XL U1162 ( .A0(n1427), .A1(n1862), .B0(n1456), .B1(n1861), .C0(n231), 
        .C1(n1860), .Y(n956) );
  OAI222XL U1163 ( .A0(n1427), .A1(n1858), .B0(n1456), .B1(n1857), .C0(n231), 
        .C1(n1856), .Y(n975) );
  OAI222XL U1164 ( .A0(n1427), .A1(n1855), .B0(n1456), .B1(n1854), .C0(n231), 
        .C1(n1853), .Y(n955) );
  OAI222XL U1165 ( .A0(n1427), .A1(n1851), .B0(n1456), .B1(n1850), .C0(n231), 
        .C1(n1849), .Y(n974) );
  OAI222XL U1166 ( .A0(n1427), .A1(n1848), .B0(n1456), .B1(n1847), .C0(n231), 
        .C1(n1846), .Y(n954) );
  OAI222XL U1167 ( .A0(n1427), .A1(n1844), .B0(n1456), .B1(n1843), .C0(n231), 
        .C1(n1842), .Y(n973) );
  OAI222XL U1168 ( .A0(n1427), .A1(n1841), .B0(n1456), .B1(n1840), .C0(n231), 
        .C1(n1839), .Y(n953) );
  OAI222XL U1169 ( .A0(n1427), .A1(n1837), .B0(n1456), .B1(n1836), .C0(n231), 
        .C1(n1835), .Y(n972) );
  OAI222XL U1170 ( .A0(n1427), .A1(n1834), .B0(n1456), .B1(n1833), .C0(n231), 
        .C1(n1832), .Y(n952) );
  OAI222XL U1171 ( .A0(n1427), .A1(n1830), .B0(n1456), .B1(n1829), .C0(n231), 
        .C1(n1828), .Y(n971) );
  OAI222XL U1172 ( .A0(n1427), .A1(n1827), .B0(n1456), .B1(n1826), .C0(n231), 
        .C1(n1825), .Y(n951) );
  OAI222XL U1173 ( .A0(n1427), .A1(n1823), .B0(n1456), .B1(n1822), .C0(n231), 
        .C1(n1821), .Y(n970) );
  OAI222XL U1174 ( .A0(n1427), .A1(n1820), .B0(n1456), .B1(n1819), .C0(n231), 
        .C1(n1818), .Y(n950) );
  OAI222XL U1175 ( .A0(n1427), .A1(n1816), .B0(n1456), .B1(n1815), .C0(n231), 
        .C1(n1814), .Y(n969) );
  OAI222XL U1176 ( .A0(n1427), .A1(n1813), .B0(n1456), .B1(n1812), .C0(n231), 
        .C1(n1811), .Y(n949) );
  OAI222XL U1177 ( .A0(n1427), .A1(n1809), .B0(n1456), .B1(n1808), .C0(n231), 
        .C1(n1807), .Y(n968) );
  OAI222XL U1178 ( .A0(n1427), .A1(n1806), .B0(n1456), .B1(n1805), .C0(n231), 
        .C1(n1804), .Y(n948) );
  OAI222XL U1179 ( .A0(n1427), .A1(n1802), .B0(n1456), .B1(n1801), .C0(n231), 
        .C1(n1800), .Y(n967) );
  OAI222XL U1180 ( .A0(n1427), .A1(n1799), .B0(n1456), .B1(n1798), .C0(n231), 
        .C1(n1797), .Y(n947) );
  OAI222XL U1181 ( .A0(n1427), .A1(n1795), .B0(n1456), .B1(n1794), .C0(n231), 
        .C1(n1793), .Y(n966) );
  ADDFXL U1182 ( .A(or_result[15]), .B(or_result[18]), .CI(or_result[12]), 
        .CO(N783), .S(N782) );
  NAND2X1 U1183 ( .A(n1844), .B(n1842), .Y(or_result[12]) );
  NAND2X1 U1184 ( .A(n1802), .B(n1800), .Y(or_result[18]) );
  NAND2X1 U1185 ( .A(n1823), .B(n1821), .Y(or_result[15]) );
  AO22X1 U1186 ( .A0(N1006), .A1(n603), .B0(N1013), .B1(n1790), .Y(
        opt_num_w[0]) );
  AO22X1 U1187 ( .A0(N1007), .A1(n603), .B0(N1014), .B1(n1790), .Y(
        opt_num_w[1]) );
  NAND2X1 U1188 ( .A(n1921), .B(n1919), .Y(or_result[1]) );
  CLKINVX1 U1189 ( .A(n1443), .Y(n1453) );
  NAND2X1 U1190 ( .A(n1886), .B(n1884), .Y(or_result[6]) );
  NAND2X1 U1191 ( .A(n1928), .B(n1926), .Y(or_result[0]) );
  NAND2X1 U1192 ( .A(n1907), .B(n1905), .Y(or_result[3]) );
  ADDFXL U1193 ( .A(or_result[24]), .B(or_result[27]), .CI(or_result[21]), 
        .CO(N847), .S(N846) );
  NAND2X1 U1194 ( .A(n1918), .B(n1916), .Y(or_result[21]) );
  NAND2X1 U1195 ( .A(n1876), .B(n1874), .Y(or_result[27]) );
  NAND2X1 U1196 ( .A(n1897), .B(n1895), .Y(or_result[24]) );
  ADDFXL U1197 ( .A(or_result[34]), .B(or_result[22]), .CI(or_result[28]), 
        .CO(N759), .S(N758) );
  NAND2X1 U1198 ( .A(n1869), .B(n1867), .Y(or_result[28]) );
  NAND2X1 U1199 ( .A(n1911), .B(n1909), .Y(or_result[22]) );
  NAND2X1 U1200 ( .A(n1827), .B(n1825), .Y(or_result[34]) );
  ADDFXL U1201 ( .A(or_result[10]), .B(or_result[11]), .CI(or_result[9]), .CO(
        N736), .S(N735) );
  NAND2X1 U1202 ( .A(n1865), .B(n1863), .Y(or_result[9]) );
  NAND2X1 U1203 ( .A(n1851), .B(n1849), .Y(or_result[11]) );
  NAND2X1 U1204 ( .A(n1858), .B(n1856), .Y(or_result[10]) );
  ADDFXL U1205 ( .A(or_result[20]), .B(or_result[26]), .CI(or_result[35]), 
        .CO(N743), .S(N742) );
  NAND2X1 U1206 ( .A(n1820), .B(n1818), .Y(or_result[35]) );
  NAND2X1 U1207 ( .A(n1883), .B(n1881), .Y(or_result[26]) );
  NAND2X1 U1208 ( .A(n1925), .B(n1923), .Y(or_result[20]) );
  ADDFXL U1209 ( .A(or_result[14]), .B(or_result[38]), .CI(or_result[17]), 
        .CO(N879), .S(N878) );
  NAND2X1 U1210 ( .A(n1809), .B(n1807), .Y(or_result[17]) );
  NAND2X1 U1211 ( .A(n1799), .B(n1797), .Y(or_result[38]) );
  NAND2X1 U1212 ( .A(n1830), .B(n1828), .Y(or_result[14]) );
  ADDFXL U1213 ( .A(or_result[19]), .B(or_result[13]), .CI(or_result[16]), 
        .CO(N767), .S(N766) );
  NAND2X1 U1214 ( .A(n1816), .B(n1814), .Y(or_result[16]) );
  NAND2X1 U1215 ( .A(n1837), .B(n1835), .Y(or_result[13]) );
  NAND2X1 U1216 ( .A(n1795), .B(n1793), .Y(or_result[19]) );
  ADDFXL U1217 ( .A(or_result[32]), .B(or_result[29]), .CI(or_result[23]), 
        .CO(N751), .S(N750) );
  NAND2X1 U1218 ( .A(n1904), .B(n1902), .Y(or_result[23]) );
  NAND2X1 U1219 ( .A(n1862), .B(n1860), .Y(or_result[29]) );
  NAND2X1 U1220 ( .A(n1841), .B(n1839), .Y(or_result[32]) );
  ADDFXL U1221 ( .A(or_result[36]), .B(or_result[33]), .CI(or_result[30]), 
        .CO(N775), .S(N774) );
  NAND2X1 U1222 ( .A(n1855), .B(n1853), .Y(or_result[30]) );
  NAND2X1 U1223 ( .A(n1834), .B(n1832), .Y(or_result[33]) );
  NAND2X1 U1224 ( .A(n1813), .B(n1811), .Y(or_result[36]) );
  ADDFXL U1225 ( .A(or_result[31]), .B(or_result[25]), .CI(or_result[37]), 
        .CO(N839), .S(N838) );
  NAND2X1 U1226 ( .A(n1806), .B(n1804), .Y(or_result[37]) );
  NAND2X1 U1227 ( .A(n1890), .B(n1888), .Y(or_result[25]) );
  NAND2X1 U1228 ( .A(n1848), .B(n1846), .Y(or_result[31]) );
  CLKINVX1 U1229 ( .A(n1434), .Y(n1433) );
  NAND2BX1 U1230 ( .AN(n239), .B(n1458), .Y(n242) );
  CLKINVX1 U1231 ( .A(n1361), .Y(n1367) );
  CLKINVX1 U1232 ( .A(n1361), .Y(n1368) );
  CLKINVX1 U1233 ( .A(n1359), .Y(n1363) );
  CLKINVX1 U1234 ( .A(n1359), .Y(n1364) );
  CLKINVX1 U1235 ( .A(n1360), .Y(n1365) );
  CLKINVX1 U1236 ( .A(n1360), .Y(n1366) );
  NAND3BX1 U1237 ( .AN(n235), .B(n1458), .C(n1426), .Y(n189) );
  OAI22XL U1238 ( .A0(n1422), .A1(n1791), .B0(n1417), .B1(n1792), .Y(n906) );
  OAI22XL U1239 ( .A0(n1422), .A1(n1833), .B0(n1421), .B1(n1834), .Y(n912) );
  OAI22XL U1240 ( .A0(n1422), .A1(n1819), .B0(n1421), .B1(n1820), .Y(n910) );
  OAI22XL U1241 ( .A0(n1422), .A1(n1812), .B0(n1421), .B1(n1813), .Y(n909) );
  OAI22XL U1242 ( .A0(n1422), .A1(n1805), .B0(n1421), .B1(n1806), .Y(n908) );
  OAI22XL U1243 ( .A0(n1422), .A1(n1798), .B0(n1421), .B1(n1799), .Y(n907) );
  OAI22XL U1244 ( .A0(n1425), .A1(n1927), .B0(n1418), .B1(n1928), .Y(n945) );
  OAI22XL U1245 ( .A0(n1423), .A1(n1924), .B0(n1419), .B1(n1925), .Y(n925) );
  OAI22XL U1246 ( .A0(n1425), .A1(n1920), .B0(n1418), .B1(n1921), .Y(n944) );
  OAI22XL U1247 ( .A0(n1423), .A1(n1917), .B0(n1420), .B1(n1918), .Y(n924) );
  OAI22XL U1248 ( .A0(n1425), .A1(n1913), .B0(n1418), .B1(n1914), .Y(n943) );
  OAI22XL U1249 ( .A0(n1423), .A1(n1910), .B0(n1420), .B1(n1911), .Y(n923) );
  OAI22XL U1250 ( .A0(n1425), .A1(n1906), .B0(n1418), .B1(n1907), .Y(n942) );
  OAI22XL U1251 ( .A0(n1423), .A1(n1903), .B0(n1420), .B1(n1904), .Y(n922) );
  OAI22XL U1252 ( .A0(n1424), .A1(n1899), .B0(n1418), .B1(n1900), .Y(n941) );
  OAI22XL U1253 ( .A0(n1423), .A1(n1896), .B0(n1420), .B1(n1897), .Y(n921) );
  OAI22XL U1254 ( .A0(n1424), .A1(n1892), .B0(n1418), .B1(n1893), .Y(n940) );
  OAI22XL U1255 ( .A0(n1423), .A1(n1889), .B0(n1420), .B1(n1890), .Y(n920) );
  OAI22XL U1256 ( .A0(n1424), .A1(n1885), .B0(n1418), .B1(n1886), .Y(n939) );
  OAI22XL U1257 ( .A0(n1423), .A1(n1882), .B0(n1420), .B1(n1883), .Y(n919) );
  OAI22XL U1258 ( .A0(n1424), .A1(n1878), .B0(n1418), .B1(n1879), .Y(n938) );
  OAI22XL U1259 ( .A0(n1423), .A1(n1875), .B0(n1420), .B1(n1876), .Y(n918) );
  OAI22XL U1260 ( .A0(n1424), .A1(n1871), .B0(n1418), .B1(n1872), .Y(n937) );
  OAI22XL U1261 ( .A0(n1422), .A1(n1868), .B0(n1420), .B1(n1869), .Y(n917) );
  OAI22XL U1262 ( .A0(n1424), .A1(n1864), .B0(n1419), .B1(n1865), .Y(n936) );
  OAI22XL U1263 ( .A0(n1422), .A1(n1861), .B0(n1420), .B1(n1862), .Y(n916) );
  OAI22XL U1264 ( .A0(n1424), .A1(n1857), .B0(n1419), .B1(n1858), .Y(n935) );
  OAI22XL U1265 ( .A0(n1422), .A1(n1854), .B0(n1420), .B1(n1855), .Y(n915) );
  OAI22XL U1266 ( .A0(n1424), .A1(n1850), .B0(n1419), .B1(n1851), .Y(n934) );
  OAI22XL U1267 ( .A0(n1422), .A1(n1847), .B0(n1420), .B1(n1848), .Y(n914) );
  OAI22XL U1268 ( .A0(n1424), .A1(n1843), .B0(n1419), .B1(n1844), .Y(n933) );
  OAI22XL U1269 ( .A0(n1422), .A1(n1840), .B0(n1420), .B1(n1841), .Y(n913) );
  OAI22XL U1270 ( .A0(n1424), .A1(n1836), .B0(n1419), .B1(n1837), .Y(n932) );
  OAI22XL U1271 ( .A0(n1424), .A1(n1829), .B0(n1419), .B1(n1830), .Y(n931) );
  OAI22XL U1272 ( .A0(n1422), .A1(n1826), .B0(n1420), .B1(n1827), .Y(n911) );
  OAI22XL U1273 ( .A0(n1424), .A1(n1822), .B0(n1419), .B1(n1823), .Y(n930) );
  OAI22XL U1274 ( .A0(n1423), .A1(n1815), .B0(n1419), .B1(n1816), .Y(n929) );
  OAI22XL U1275 ( .A0(n1423), .A1(n1808), .B0(n1419), .B1(n1809), .Y(n928) );
  OAI22XL U1276 ( .A0(n1423), .A1(n1801), .B0(n1419), .B1(n1802), .Y(n927) );
  OAI22XL U1277 ( .A0(n1423), .A1(n1794), .B0(n1419), .B1(n1795), .Y(n926) );
  OAI22XL U1278 ( .A0(n1425), .A1(n1486), .B0(n1417), .B1(n1347), .Y(n1330) );
  OAI22XL U1279 ( .A0(n1425), .A1(n1484), .B0(n1417), .B1(n1348), .Y(n1324) );
  OAI22XL U1280 ( .A0(n1425), .A1(n1482), .B0(n1417), .B1(n1349), .Y(n1325) );
  OAI22XL U1281 ( .A0(n1425), .A1(n1480), .B0(n1417), .B1(n1350), .Y(n1326) );
  OAI22XL U1282 ( .A0(n1425), .A1(n1478), .B0(n1417), .B1(n1351), .Y(n1327) );
  OAI22XL U1283 ( .A0(n1425), .A1(n1476), .B0(n1417), .B1(n1352), .Y(n1328) );
  OAI22XL U1284 ( .A0(n1425), .A1(n1474), .B0(n1417), .B1(n1353), .Y(n1329) );
  OAI22XL U1285 ( .A0(n1425), .A1(n1467), .B0(n1417), .B1(n1354), .Y(n1323) );
  NAND2X1 U1286 ( .A(n1370), .B(n1458), .Y(n240) );
  NOR2X1 U1287 ( .A(n186), .B(n1469), .Y(n235) );
  CLKBUFX3 U1288 ( .A(n244), .Y(n1371) );
  NAND2X1 U1289 ( .A(n1356), .B(n1458), .Y(n607) );
  OAI2BB2XL U1290 ( .B0(n1356), .B1(n1439), .A0N(N445), .A1N(n1356), .Y(n890)
         );
  CLKINVX1 U1291 ( .A(n1439), .Y(n1438) );
  CLKINVX1 U1292 ( .A(n605), .Y(n1468) );
  OAI222XL U1293 ( .A0(n1413), .A1(n1666), .B0(n1401), .B1(n1686), .C0(n1372), 
        .C1(n1685), .Y(n1004) );
  OAI222XL U1294 ( .A0(n1413), .A1(n1665), .B0(n1401), .B1(n1685), .C0(n1372), 
        .C1(n1684), .Y(n1012) );
  OAI222XL U1295 ( .A0(n1413), .A1(n1664), .B0(n1400), .B1(n1684), .C0(n1372), 
        .C1(n1683), .Y(n1020) );
  OAI222XL U1296 ( .A0(n1413), .A1(n1663), .B0(n1399), .B1(n1683), .C0(n1373), 
        .C1(n1682), .Y(n1028) );
  OAI222XL U1297 ( .A0(n1413), .A1(n1662), .B0(n1399), .B1(n1682), .C0(n1373), 
        .C1(n1681), .Y(n1036) );
  OAI222XL U1298 ( .A0(n1413), .A1(n1661), .B0(n1398), .B1(n1681), .C0(n1373), 
        .C1(n1680), .Y(n1044) );
  OAI222XL U1299 ( .A0(n1413), .A1(n1660), .B0(n1397), .B1(n1680), .C0(n1373), 
        .C1(n1679), .Y(n1052) );
  OAI222XL U1300 ( .A0(n1412), .A1(n1659), .B0(n1397), .B1(n1679), .C0(n1373), 
        .C1(n1678), .Y(n1060) );
  OAI222XL U1301 ( .A0(n1412), .A1(n1658), .B0(n1396), .B1(n1678), .C0(n1373), 
        .C1(n1677), .Y(n1068) );
  OAI222XL U1302 ( .A0(n1412), .A1(n1657), .B0(n1396), .B1(n1677), .C0(n1373), 
        .C1(n1676), .Y(n1076) );
  OAI222XL U1303 ( .A0(n1412), .A1(n1656), .B0(n1395), .B1(n1676), .C0(n1373), 
        .C1(n1675), .Y(n1084) );
  OAI222XL U1304 ( .A0(n1412), .A1(n1655), .B0(n1394), .B1(n1675), .C0(n1373), 
        .C1(n1674), .Y(n1092) );
  OAI222XL U1305 ( .A0(n1412), .A1(n1654), .B0(n1394), .B1(n1674), .C0(n1373), 
        .C1(n1673), .Y(n1100) );
  OAI222XL U1306 ( .A0(n1412), .A1(n1653), .B0(n1393), .B1(n1673), .C0(n1373), 
        .C1(n1672), .Y(n1108) );
  OAI222XL U1307 ( .A0(n1412), .A1(n1652), .B0(n1393), .B1(n1672), .C0(n1373), 
        .C1(n1671), .Y(n1116) );
  OAI222XL U1308 ( .A0(n1412), .A1(n1651), .B0(n1392), .B1(n1671), .C0(n1374), 
        .C1(n1670), .Y(n1124) );
  OAI222XL U1309 ( .A0(n1412), .A1(n1650), .B0(n1391), .B1(n1670), .C0(n1374), 
        .C1(n1669), .Y(n1132) );
  OAI222XL U1310 ( .A0(n1412), .A1(n1649), .B0(n1391), .B1(n1669), .C0(n1374), 
        .C1(n1668), .Y(n1140) );
  OAI222XL U1311 ( .A0(n1414), .A1(n1648), .B0(n1390), .B1(n1668), .C0(n1374), 
        .C1(n1667), .Y(n1148) );
  OAI222XL U1312 ( .A0(n1413), .A1(n1506), .B0(n1401), .B1(n1526), .C0(n1372), 
        .C1(n1525), .Y(n1000) );
  OAI222XL U1313 ( .A0(n1413), .A1(n1505), .B0(n1401), .B1(n1525), .C0(n1372), 
        .C1(n1524), .Y(n1008) );
  OAI222XL U1314 ( .A0(n1413), .A1(n1504), .B0(n1400), .B1(n1524), .C0(n1372), 
        .C1(n1523), .Y(n1016) );
  OAI222XL U1315 ( .A0(n1413), .A1(n1503), .B0(n1400), .B1(n1523), .C0(n1373), 
        .C1(n1522), .Y(n1024) );
  OAI222XL U1316 ( .A0(n1413), .A1(n1502), .B0(n1399), .B1(n1522), .C0(n1373), 
        .C1(n1521), .Y(n1032) );
  OAI222XL U1317 ( .A0(n1413), .A1(n1501), .B0(n1398), .B1(n1521), .C0(n1373), 
        .C1(n1520), .Y(n1040) );
  OAI222XL U1318 ( .A0(n1413), .A1(n1500), .B0(n1398), .B1(n1520), .C0(n1373), 
        .C1(n1519), .Y(n1048) );
  OAI222XL U1319 ( .A0(n1412), .A1(n1499), .B0(n1397), .B1(n1519), .C0(n1373), 
        .C1(n1518), .Y(n1056) );
  OAI222XL U1320 ( .A0(n1412), .A1(n1498), .B0(n1397), .B1(n1518), .C0(n1373), 
        .C1(n1517), .Y(n1064) );
  OAI222XL U1321 ( .A0(n1412), .A1(n1497), .B0(n1396), .B1(n1517), .C0(n1373), 
        .C1(n1516), .Y(n1072) );
  OAI222XL U1322 ( .A0(n1412), .A1(n1496), .B0(n1395), .B1(n1516), .C0(n1373), 
        .C1(n1515), .Y(n1080) );
  OAI222XL U1323 ( .A0(n1412), .A1(n1495), .B0(n1395), .B1(n1515), .C0(n1373), 
        .C1(n1514), .Y(n1088) );
  OAI222XL U1324 ( .A0(n1412), .A1(n1494), .B0(n1394), .B1(n1514), .C0(n1373), 
        .C1(n1513), .Y(n1096) );
  OAI222XL U1325 ( .A0(n1412), .A1(n1493), .B0(n1393), .B1(n1513), .C0(n1373), 
        .C1(n1512), .Y(n1104) );
  OAI222XL U1326 ( .A0(n1412), .A1(n1492), .B0(n1393), .B1(n1512), .C0(n1373), 
        .C1(n1511), .Y(n1112) );
  OAI222XL U1327 ( .A0(n1412), .A1(n1491), .B0(n1392), .B1(n1511), .C0(n1374), 
        .C1(n1510), .Y(n1120) );
  OAI222XL U1328 ( .A0(n1412), .A1(n1490), .B0(n1392), .B1(n1510), .C0(n1374), 
        .C1(n1509), .Y(n1128) );
  OAI222XL U1329 ( .A0(n1412), .A1(n1489), .B0(n1391), .B1(n1509), .C0(n1374), 
        .C1(n1508), .Y(n1136) );
  OAI222XL U1330 ( .A0(n1412), .A1(n1488), .B0(n1390), .B1(n1508), .C0(n1507), 
        .C1(n1374), .Y(n1144) );
  OAI222XL U1331 ( .A0(n1413), .A1(n1667), .B0(n1402), .B1(n1687), .C0(n1372), 
        .C1(n1686), .Y(n996) );
  OAI222XL U1332 ( .A0(n1413), .A1(n1507), .B0(n1402), .B1(n1527), .C0(n1371), 
        .C1(n1526), .Y(n992) );
  OAI222XL U1333 ( .A0(n1413), .A1(n1786), .B0(n1401), .B1(n1915), .C0(n1372), 
        .C1(n1908), .Y(n1007) );
  OAI222XL U1334 ( .A0(n1413), .A1(n1785), .B0(n1400), .B1(n1908), .C0(n1372), 
        .C1(n1901), .Y(n1015) );
  OAI222XL U1335 ( .A0(n1413), .A1(n1784), .B0(n1400), .B1(n1901), .C0(n1372), 
        .C1(n1894), .Y(n1023) );
  OAI222XL U1336 ( .A0(n1413), .A1(n1783), .B0(n1399), .B1(n1894), .C0(n1373), 
        .C1(n1887), .Y(n1031) );
  OAI222XL U1337 ( .A0(n1413), .A1(n1782), .B0(n1398), .B1(n1887), .C0(n1373), 
        .C1(n1880), .Y(n1039) );
  OAI222XL U1338 ( .A0(n1413), .A1(n1781), .B0(n1398), .B1(n1880), .C0(n1373), 
        .C1(n1873), .Y(n1047) );
  OAI222XL U1339 ( .A0(n1413), .A1(n1780), .B0(n1397), .B1(n1873), .C0(n1373), 
        .C1(n1866), .Y(n1055) );
  OAI222XL U1340 ( .A0(n1412), .A1(n1779), .B0(n1397), .B1(n1866), .C0(n1373), 
        .C1(n1859), .Y(n1063) );
  OAI222XL U1341 ( .A0(n1412), .A1(n1778), .B0(n1396), .B1(n1859), .C0(n1373), 
        .C1(n1852), .Y(n1071) );
  OAI222XL U1342 ( .A0(n1412), .A1(n1777), .B0(n1395), .B1(n1852), .C0(n1373), 
        .C1(n1845), .Y(n1079) );
  OAI222XL U1343 ( .A0(n1412), .A1(n1776), .B0(n1395), .B1(n1845), .C0(n1373), 
        .C1(n1838), .Y(n1087) );
  OAI222XL U1344 ( .A0(n1412), .A1(n1775), .B0(n1394), .B1(n1838), .C0(n1373), 
        .C1(n1831), .Y(n1095) );
  OAI222XL U1345 ( .A0(n1412), .A1(n1774), .B0(n1394), .B1(n1831), .C0(n1373), 
        .C1(n1824), .Y(n1103) );
  OAI222XL U1346 ( .A0(n1412), .A1(n1773), .B0(n1393), .B1(n1824), .C0(n1373), 
        .C1(n1817), .Y(n1111) );
  OAI222XL U1347 ( .A0(n1412), .A1(n1772), .B0(n1392), .B1(n1817), .C0(n1373), 
        .C1(n1810), .Y(n1119) );
  OAI222XL U1348 ( .A0(n1412), .A1(n1771), .B0(n1392), .B1(n1810), .C0(n1374), 
        .C1(n1803), .Y(n1127) );
  OAI222XL U1349 ( .A0(n1412), .A1(n1770), .B0(n1391), .B1(n1803), .C0(n1374), 
        .C1(n1796), .Y(n1135) );
  OAI222XL U1350 ( .A0(n1412), .A1(n1769), .B0(n1390), .B1(n1796), .C0(n1374), 
        .C1(n1788), .Y(n1143) );
  OAI222XL U1351 ( .A0(n1414), .A1(n1768), .B0(n1390), .B1(n1788), .C0(n1371), 
        .C1(n1787), .Y(n1151) );
  OAI222XL U1352 ( .A0(n1413), .A1(n1746), .B0(n1401), .B1(n1766), .C0(n1372), 
        .C1(n1765), .Y(n1006) );
  OAI222XL U1353 ( .A0(n1413), .A1(n1745), .B0(n1400), .B1(n1765), .C0(n1372), 
        .C1(n1764), .Y(n1014) );
  OAI222XL U1354 ( .A0(n1413), .A1(n1744), .B0(n1400), .B1(n1764), .C0(n1372), 
        .C1(n1763), .Y(n1022) );
  OAI222XL U1355 ( .A0(n1413), .A1(n1743), .B0(n1399), .B1(n1763), .C0(n1373), 
        .C1(n1762), .Y(n1030) );
  OAI222XL U1356 ( .A0(n1413), .A1(n1742), .B0(n1399), .B1(n1762), .C0(n1373), 
        .C1(n1761), .Y(n1038) );
  OAI222XL U1357 ( .A0(n1413), .A1(n1741), .B0(n1398), .B1(n1761), .C0(n1373), 
        .C1(n1760), .Y(n1046) );
  OAI222XL U1358 ( .A0(n1413), .A1(n1740), .B0(n1397), .B1(n1760), .C0(n1373), 
        .C1(n1759), .Y(n1054) );
  OAI222XL U1359 ( .A0(n1412), .A1(n1739), .B0(n1397), .B1(n1759), .C0(n1373), 
        .C1(n1758), .Y(n1062) );
  OAI222XL U1360 ( .A0(n1412), .A1(n1738), .B0(n1396), .B1(n1758), .C0(n1373), 
        .C1(n1757), .Y(n1070) );
  OAI222XL U1361 ( .A0(n1412), .A1(n1737), .B0(n1395), .B1(n1757), .C0(n1373), 
        .C1(n1756), .Y(n1078) );
  OAI222XL U1362 ( .A0(n1412), .A1(n1736), .B0(n1395), .B1(n1756), .C0(n1373), 
        .C1(n1755), .Y(n1086) );
  OAI222XL U1363 ( .A0(n1412), .A1(n1735), .B0(n1394), .B1(n1755), .C0(n1373), 
        .C1(n1754), .Y(n1094) );
  OAI222XL U1364 ( .A0(n1412), .A1(n1734), .B0(n1394), .B1(n1754), .C0(n1373), 
        .C1(n1753), .Y(n1102) );
  OAI222XL U1365 ( .A0(n1412), .A1(n1733), .B0(n1393), .B1(n1753), .C0(n1373), 
        .C1(n1752), .Y(n1110) );
  OAI222XL U1366 ( .A0(n1412), .A1(n1732), .B0(n1392), .B1(n1752), .C0(n1373), 
        .C1(n1751), .Y(n1118) );
  OAI222XL U1367 ( .A0(n1412), .A1(n1731), .B0(n1392), .B1(n1751), .C0(n1374), 
        .C1(n1750), .Y(n1126) );
  OAI222XL U1368 ( .A0(n1412), .A1(n1730), .B0(n1391), .B1(n1750), .C0(n1374), 
        .C1(n1749), .Y(n1134) );
  OAI222XL U1369 ( .A0(n1412), .A1(n1729), .B0(n1391), .B1(n1749), .C0(n1374), 
        .C1(n1748), .Y(n1142) );
  OAI222XL U1370 ( .A0(n1414), .A1(n1728), .B0(n1390), .B1(n1748), .C0(n1371), 
        .C1(n1747), .Y(n1150) );
  OAI222XL U1371 ( .A0(n1413), .A1(n1626), .B0(n1401), .B1(n1646), .C0(n1372), 
        .C1(n1645), .Y(n1003) );
  OAI222XL U1372 ( .A0(n1413), .A1(n1625), .B0(n1401), .B1(n1645), .C0(n1372), 
        .C1(n1644), .Y(n1011) );
  OAI222XL U1373 ( .A0(n1413), .A1(n1624), .B0(n1400), .B1(n1644), .C0(n1372), 
        .C1(n1643), .Y(n1019) );
  OAI222XL U1374 ( .A0(n1413), .A1(n1623), .B0(n1399), .B1(n1643), .C0(n1373), 
        .C1(n1642), .Y(n1027) );
  OAI222XL U1375 ( .A0(n1413), .A1(n1622), .B0(n1399), .B1(n1642), .C0(n1373), 
        .C1(n1641), .Y(n1035) );
  OAI222XL U1376 ( .A0(n1413), .A1(n1621), .B0(n1398), .B1(n1641), .C0(n1373), 
        .C1(n1640), .Y(n1043) );
  OAI222XL U1377 ( .A0(n1413), .A1(n1620), .B0(n1398), .B1(n1640), .C0(n1373), 
        .C1(n1639), .Y(n1051) );
  OAI222XL U1378 ( .A0(n1412), .A1(n1619), .B0(n1397), .B1(n1639), .C0(n1373), 
        .C1(n1638), .Y(n1059) );
  OAI222XL U1379 ( .A0(n1412), .A1(n1618), .B0(n1396), .B1(n1638), .C0(n1373), 
        .C1(n1637), .Y(n1067) );
  OAI222XL U1380 ( .A0(n1412), .A1(n1617), .B0(n1396), .B1(n1637), .C0(n1373), 
        .C1(n1636), .Y(n1075) );
  OAI222XL U1381 ( .A0(n1412), .A1(n1616), .B0(n1395), .B1(n1636), .C0(n1373), 
        .C1(n1635), .Y(n1083) );
  OAI222XL U1382 ( .A0(n1412), .A1(n1615), .B0(n1394), .B1(n1635), .C0(n1373), 
        .C1(n1634), .Y(n1091) );
  OAI222XL U1383 ( .A0(n1412), .A1(n1614), .B0(n1394), .B1(n1634), .C0(n1373), 
        .C1(n1633), .Y(n1099) );
  OAI222XL U1384 ( .A0(n1412), .A1(n1613), .B0(n1393), .B1(n1633), .C0(n1373), 
        .C1(n1632), .Y(n1107) );
  OAI222XL U1385 ( .A0(n1412), .A1(n1612), .B0(n1393), .B1(n1632), .C0(n1373), 
        .C1(n1631), .Y(n1115) );
  OAI222XL U1386 ( .A0(n1412), .A1(n1611), .B0(n1392), .B1(n1631), .C0(n1374), 
        .C1(n1630), .Y(n1123) );
  OAI222XL U1387 ( .A0(n1412), .A1(n1610), .B0(n1391), .B1(n1630), .C0(n1374), 
        .C1(n1629), .Y(n1131) );
  OAI222XL U1388 ( .A0(n1412), .A1(n1609), .B0(n1391), .B1(n1629), .C0(n1374), 
        .C1(n1628), .Y(n1139) );
  OAI222XL U1389 ( .A0(n1414), .A1(n1608), .B0(n1390), .B1(n1628), .C0(n1374), 
        .C1(n1627), .Y(n1147) );
  OAI222XL U1390 ( .A0(n1413), .A1(n1586), .B0(n1401), .B1(n1606), .C0(n1372), 
        .C1(n1605), .Y(n1002) );
  OAI222XL U1391 ( .A0(n1413), .A1(n1585), .B0(n1401), .B1(n1605), .C0(n1372), 
        .C1(n1604), .Y(n1010) );
  OAI222XL U1392 ( .A0(n1413), .A1(n1584), .B0(n1400), .B1(n1604), .C0(n1372), 
        .C1(n1603), .Y(n1018) );
  OAI222XL U1393 ( .A0(n1413), .A1(n1583), .B0(n1399), .B1(n1603), .C0(n1373), 
        .C1(n1602), .Y(n1026) );
  OAI222XL U1394 ( .A0(n1413), .A1(n1582), .B0(n1399), .B1(n1602), .C0(n1373), 
        .C1(n1601), .Y(n1034) );
  OAI222XL U1395 ( .A0(n1413), .A1(n1581), .B0(n1398), .B1(n1601), .C0(n1373), 
        .C1(n1600), .Y(n1042) );
  OAI222XL U1396 ( .A0(n1413), .A1(n1580), .B0(n1398), .B1(n1600), .C0(n1373), 
        .C1(n1599), .Y(n1050) );
  OAI222XL U1397 ( .A0(n1412), .A1(n1579), .B0(n1397), .B1(n1599), .C0(n1373), 
        .C1(n1598), .Y(n1058) );
  OAI222XL U1398 ( .A0(n1412), .A1(n1578), .B0(n1396), .B1(n1598), .C0(n1373), 
        .C1(n1597), .Y(n1066) );
  OAI222XL U1399 ( .A0(n1412), .A1(n1577), .B0(n1396), .B1(n1597), .C0(n1373), 
        .C1(n1596), .Y(n1074) );
  OAI222XL U1400 ( .A0(n1412), .A1(n1576), .B0(n1395), .B1(n1596), .C0(n1373), 
        .C1(n1595), .Y(n1082) );
  OAI222XL U1401 ( .A0(n1412), .A1(n1575), .B0(n1395), .B1(n1595), .C0(n1373), 
        .C1(n1594), .Y(n1090) );
  OAI222XL U1402 ( .A0(n1412), .A1(n1574), .B0(n1394), .B1(n1594), .C0(n1373), 
        .C1(n1593), .Y(n1098) );
  OAI222XL U1403 ( .A0(n1412), .A1(n1573), .B0(n1393), .B1(n1593), .C0(n1373), 
        .C1(n1592), .Y(n1106) );
  OAI222XL U1404 ( .A0(n1412), .A1(n1572), .B0(n1393), .B1(n1592), .C0(n1373), 
        .C1(n1591), .Y(n1114) );
  OAI222XL U1405 ( .A0(n1412), .A1(n1571), .B0(n1392), .B1(n1591), .C0(n1374), 
        .C1(n1590), .Y(n1122) );
  OAI222XL U1406 ( .A0(n1412), .A1(n1570), .B0(n1391), .B1(n1590), .C0(n1374), 
        .C1(n1589), .Y(n1130) );
  OAI222XL U1407 ( .A0(n1412), .A1(n1569), .B0(n1391), .B1(n1589), .C0(n1374), 
        .C1(n1588), .Y(n1138) );
  OAI222XL U1408 ( .A0(n1412), .A1(n1568), .B0(n1390), .B1(n1588), .C0(n1374), 
        .C1(n1587), .Y(n1146) );
  OAI222XL U1409 ( .A0(n1413), .A1(n1787), .B0(n1402), .B1(n1922), .C0(n1372), 
        .C1(n1915), .Y(n999) );
  OAI222XL U1410 ( .A0(n1413), .A1(n1747), .B0(n1402), .B1(n1767), .C0(n1372), 
        .C1(n1766), .Y(n998) );
  OAI222XL U1411 ( .A0(n1413), .A1(n1706), .B0(n1401), .B1(n1726), .C0(n1372), 
        .C1(n1725), .Y(n1005) );
  OAI222XL U1412 ( .A0(n1413), .A1(n1705), .B0(n1400), .B1(n1725), .C0(n1372), 
        .C1(n1724), .Y(n1013) );
  OAI222XL U1413 ( .A0(n1413), .A1(n1704), .B0(n1400), .B1(n1724), .C0(n1372), 
        .C1(n1723), .Y(n1021) );
  OAI222XL U1414 ( .A0(n1413), .A1(n1703), .B0(n1399), .B1(n1723), .C0(n1373), 
        .C1(n1722), .Y(n1029) );
  OAI222XL U1415 ( .A0(n1413), .A1(n1702), .B0(n1399), .B1(n1722), .C0(n1373), 
        .C1(n1721), .Y(n1037) );
  OAI222XL U1416 ( .A0(n1413), .A1(n1701), .B0(n1398), .B1(n1721), .C0(n1373), 
        .C1(n1720), .Y(n1045) );
  OAI222XL U1417 ( .A0(n1413), .A1(n1700), .B0(n1397), .B1(n1720), .C0(n1373), 
        .C1(n1719), .Y(n1053) );
  OAI222XL U1418 ( .A0(n1412), .A1(n1699), .B0(n1397), .B1(n1719), .C0(n1373), 
        .C1(n1718), .Y(n1061) );
  OAI222XL U1419 ( .A0(n1412), .A1(n1698), .B0(n1396), .B1(n1718), .C0(n1373), 
        .C1(n1717), .Y(n1069) );
  OAI222XL U1420 ( .A0(n1412), .A1(n1697), .B0(n1396), .B1(n1717), .C0(n1373), 
        .C1(n1716), .Y(n1077) );
  OAI222XL U1421 ( .A0(n1412), .A1(n1696), .B0(n1395), .B1(n1716), .C0(n1373), 
        .C1(n1715), .Y(n1085) );
  OAI222XL U1422 ( .A0(n1412), .A1(n1695), .B0(n1394), .B1(n1715), .C0(n1373), 
        .C1(n1714), .Y(n1093) );
  OAI222XL U1423 ( .A0(n1412), .A1(n1694), .B0(n1394), .B1(n1714), .C0(n1373), 
        .C1(n1713), .Y(n1101) );
  OAI222XL U1424 ( .A0(n1412), .A1(n1693), .B0(n1393), .B1(n1713), .C0(n1373), 
        .C1(n1712), .Y(n1109) );
  OAI222XL U1425 ( .A0(n1412), .A1(n1692), .B0(n1392), .B1(n1712), .C0(n1373), 
        .C1(n1711), .Y(n1117) );
  OAI222XL U1426 ( .A0(n1412), .A1(n1691), .B0(n1392), .B1(n1711), .C0(n1374), 
        .C1(n1710), .Y(n1125) );
  OAI222XL U1427 ( .A0(n1412), .A1(n1690), .B0(n1391), .B1(n1710), .C0(n1374), 
        .C1(n1709), .Y(n1133) );
  OAI222XL U1428 ( .A0(n1412), .A1(n1689), .B0(n1391), .B1(n1709), .C0(n1374), 
        .C1(n1708), .Y(n1141) );
  OAI222XL U1429 ( .A0(n1414), .A1(n1688), .B0(n1390), .B1(n1708), .C0(n1371), 
        .C1(n1707), .Y(n1149) );
  OAI222XL U1430 ( .A0(n1413), .A1(n1627), .B0(n1402), .B1(n1647), .C0(n1372), 
        .C1(n1646), .Y(n995) );
  OAI222XL U1431 ( .A0(n1413), .A1(n1587), .B0(n1402), .B1(n1607), .C0(n1372), 
        .C1(n1606), .Y(n994) );
  OAI222XL U1432 ( .A0(n1413), .A1(n1546), .B0(n1401), .B1(n1566), .C0(n1372), 
        .C1(n1565), .Y(n1001) );
  OAI222XL U1433 ( .A0(n1413), .A1(n1545), .B0(n1401), .B1(n1565), .C0(n1372), 
        .C1(n1564), .Y(n1009) );
  OAI222XL U1434 ( .A0(n1413), .A1(n1544), .B0(n1400), .B1(n1564), .C0(n1372), 
        .C1(n1563), .Y(n1017) );
  OAI222XL U1435 ( .A0(n1413), .A1(n1543), .B0(n1400), .B1(n1563), .C0(n1373), 
        .C1(n1562), .Y(n1025) );
  OAI222XL U1436 ( .A0(n1413), .A1(n1542), .B0(n1399), .B1(n1562), .C0(n1373), 
        .C1(n1561), .Y(n1033) );
  OAI222XL U1437 ( .A0(n1413), .A1(n1541), .B0(n1398), .B1(n1561), .C0(n1373), 
        .C1(n1560), .Y(n1041) );
  OAI222XL U1438 ( .A0(n1413), .A1(n1540), .B0(n1398), .B1(n1560), .C0(n1373), 
        .C1(n1559), .Y(n1049) );
  OAI222XL U1439 ( .A0(n1412), .A1(n1539), .B0(n1397), .B1(n1559), .C0(n1373), 
        .C1(n1558), .Y(n1057) );
  OAI222XL U1440 ( .A0(n1412), .A1(n1538), .B0(n1396), .B1(n1558), .C0(n1373), 
        .C1(n1557), .Y(n1065) );
  OAI222XL U1441 ( .A0(n1412), .A1(n1537), .B0(n1396), .B1(n1557), .C0(n1373), 
        .C1(n1556), .Y(n1073) );
  OAI222XL U1442 ( .A0(n1412), .A1(n1536), .B0(n1395), .B1(n1556), .C0(n1373), 
        .C1(n1555), .Y(n1081) );
  OAI222XL U1443 ( .A0(n1412), .A1(n1535), .B0(n1395), .B1(n1555), .C0(n1373), 
        .C1(n1554), .Y(n1089) );
  OAI222XL U1444 ( .A0(n1412), .A1(n1534), .B0(n1394), .B1(n1554), .C0(n1373), 
        .C1(n1553), .Y(n1097) );
  OAI222XL U1445 ( .A0(n1412), .A1(n1533), .B0(n1393), .B1(n1553), .C0(n1373), 
        .C1(n1552), .Y(n1105) );
  OAI222XL U1446 ( .A0(n1412), .A1(n1532), .B0(n1393), .B1(n1552), .C0(n1373), 
        .C1(n1551), .Y(n1113) );
  OAI222XL U1447 ( .A0(n1412), .A1(n1531), .B0(n1392), .B1(n1551), .C0(n1374), 
        .C1(n1550), .Y(n1121) );
  OAI222XL U1448 ( .A0(n1412), .A1(n1530), .B0(n1392), .B1(n1550), .C0(n1374), 
        .C1(n1549), .Y(n1129) );
  OAI222XL U1449 ( .A0(n1412), .A1(n1529), .B0(n1391), .B1(n1549), .C0(n1374), 
        .C1(n1548), .Y(n1137) );
  OAI222XL U1450 ( .A0(n1412), .A1(n1528), .B0(n1390), .B1(n1548), .C0(n1374), 
        .C1(n1547), .Y(n1145) );
  OAI222XL U1451 ( .A0(n1413), .A1(n1707), .B0(n1402), .B1(n1727), .C0(n1372), 
        .C1(n1726), .Y(n997) );
  OAI222XL U1452 ( .A0(n1413), .A1(n1547), .B0(n1402), .B1(n1567), .C0(n1373), 
        .C1(n1566), .Y(n993) );
  OAI222XL U1453 ( .A0(n1414), .A1(n1922), .B0(n1389), .B1(n1787), .C0(n1371), 
        .C1(n1786), .Y(n1159) );
  OAI222XL U1454 ( .A0(n1414), .A1(n1915), .B0(n1389), .B1(n1786), .C0(n1371), 
        .C1(n1785), .Y(n1167) );
  OAI222XL U1455 ( .A0(n1414), .A1(n1908), .B0(n1388), .B1(n1785), .C0(n1371), 
        .C1(n1784), .Y(n1175) );
  OAI222XL U1456 ( .A0(n1414), .A1(n1901), .B0(n1387), .B1(n1784), .C0(n1371), 
        .C1(n1783), .Y(n1183) );
  OAI222XL U1457 ( .A0(n1414), .A1(n1894), .B0(n1387), .B1(n1783), .C0(n1371), 
        .C1(n1782), .Y(n1191) );
  OAI222XL U1458 ( .A0(n1414), .A1(n1887), .B0(n1386), .B1(n1782), .C0(n1371), 
        .C1(n1781), .Y(n1199) );
  OAI222XL U1459 ( .A0(n1414), .A1(n1880), .B0(n1386), .B1(n1781), .C0(n1371), 
        .C1(n1780), .Y(n1207) );
  OAI222XL U1460 ( .A0(n1414), .A1(n1873), .B0(n1385), .B1(n1780), .C0(n1371), 
        .C1(n1779), .Y(n1215) );
  OAI222XL U1461 ( .A0(n1414), .A1(n1866), .B0(n1384), .B1(n1779), .C0(n1371), 
        .C1(n1778), .Y(n1223) );
  OAI222XL U1462 ( .A0(n1414), .A1(n1859), .B0(n1384), .B1(n1778), .C0(n1371), 
        .C1(n1777), .Y(n1231) );
  OAI222XL U1463 ( .A0(n1414), .A1(n1852), .B0(n1383), .B1(n1777), .C0(n1372), 
        .C1(n1776), .Y(n1239) );
  OAI222XL U1464 ( .A0(n1414), .A1(n1845), .B0(n1382), .B1(n1776), .C0(n1372), 
        .C1(n1775), .Y(n1247) );
  OAI222XL U1465 ( .A0(n1413), .A1(n1838), .B0(n1382), .B1(n1775), .C0(n1372), 
        .C1(n1774), .Y(n1255) );
  OAI222XL U1466 ( .A0(n1413), .A1(n1831), .B0(n1381), .B1(n1774), .C0(n1372), 
        .C1(n1773), .Y(n1263) );
  OAI222XL U1467 ( .A0(n1413), .A1(n1824), .B0(n1381), .B1(n1773), .C0(n1372), 
        .C1(n1772), .Y(n1271) );
  OAI222XL U1468 ( .A0(n1413), .A1(n1817), .B0(n1380), .B1(n1772), .C0(n1372), 
        .C1(n1771), .Y(n1279) );
  OAI222XL U1469 ( .A0(n1413), .A1(n1810), .B0(n1379), .B1(n1771), .C0(n1372), 
        .C1(n1770), .Y(n1287) );
  OAI222XL U1470 ( .A0(n1413), .A1(n1803), .B0(n1379), .B1(n1770), .C0(n1372), 
        .C1(n1769), .Y(n1295) );
  OAI222XL U1471 ( .A0(n1412), .A1(n1796), .B0(n1378), .B1(n1769), .C0(n1372), 
        .C1(n1768), .Y(n1303) );
  OAI222XL U1472 ( .A0(n1414), .A1(n1767), .B0(n1389), .B1(n1747), .C0(n1371), 
        .C1(n1746), .Y(n1158) );
  OAI222XL U1473 ( .A0(n1414), .A1(n1766), .B0(n1389), .B1(n1746), .C0(n1371), 
        .C1(n1745), .Y(n1166) );
  OAI222XL U1474 ( .A0(n1414), .A1(n1765), .B0(n1388), .B1(n1745), .C0(n1371), 
        .C1(n1744), .Y(n1174) );
  OAI222XL U1475 ( .A0(n1414), .A1(n1764), .B0(n1387), .B1(n1744), .C0(n1371), 
        .C1(n1743), .Y(n1182) );
  OAI222XL U1476 ( .A0(n1414), .A1(n1763), .B0(n1387), .B1(n1743), .C0(n1371), 
        .C1(n1742), .Y(n1190) );
  OAI222XL U1477 ( .A0(n1414), .A1(n1762), .B0(n1386), .B1(n1742), .C0(n1371), 
        .C1(n1741), .Y(n1198) );
  OAI222XL U1478 ( .A0(n1414), .A1(n1761), .B0(n1386), .B1(n1741), .C0(n1371), 
        .C1(n1740), .Y(n1206) );
  OAI222XL U1479 ( .A0(n1414), .A1(n1760), .B0(n1385), .B1(n1740), .C0(n1371), 
        .C1(n1739), .Y(n1214) );
  OAI222XL U1480 ( .A0(n1414), .A1(n1759), .B0(n1384), .B1(n1739), .C0(n1371), 
        .C1(n1738), .Y(n1222) );
  OAI222XL U1481 ( .A0(n1414), .A1(n1758), .B0(n1384), .B1(n1738), .C0(n1371), 
        .C1(n1737), .Y(n1230) );
  OAI222XL U1482 ( .A0(n1414), .A1(n1757), .B0(n1383), .B1(n1737), .C0(n1372), 
        .C1(n1736), .Y(n1238) );
  OAI222XL U1483 ( .A0(n1414), .A1(n1756), .B0(n1383), .B1(n1736), .C0(n1372), 
        .C1(n1735), .Y(n1246) );
  OAI222XL U1484 ( .A0(n1414), .A1(n1755), .B0(n1382), .B1(n1735), .C0(n1372), 
        .C1(n1734), .Y(n1254) );
  OAI222XL U1485 ( .A0(n1413), .A1(n1754), .B0(n1381), .B1(n1734), .C0(n1372), 
        .C1(n1733), .Y(n1262) );
  OAI222XL U1486 ( .A0(n1413), .A1(n1753), .B0(n1381), .B1(n1733), .C0(n1372), 
        .C1(n1732), .Y(n1270) );
  OAI222XL U1487 ( .A0(n1413), .A1(n1752), .B0(n1380), .B1(n1732), .C0(n1372), 
        .C1(n1731), .Y(n1278) );
  OAI222XL U1488 ( .A0(n1413), .A1(n1751), .B0(n1379), .B1(n1731), .C0(n1372), 
        .C1(n1730), .Y(n1286) );
  OAI222XL U1489 ( .A0(n1413), .A1(n1750), .B0(n1379), .B1(n1730), .C0(n1372), 
        .C1(n1729), .Y(n1294) );
  OAI222XL U1490 ( .A0(n1414), .A1(n1749), .B0(n1378), .B1(n1729), .C0(n1372), 
        .C1(n1728), .Y(n1302) );
  OAI222XL U1491 ( .A0(n1414), .A1(n1727), .B0(n1389), .B1(n1707), .C0(n1371), 
        .C1(n1706), .Y(n1157) );
  OAI222XL U1492 ( .A0(n1414), .A1(n1726), .B0(n1389), .B1(n1706), .C0(n1371), 
        .C1(n1705), .Y(n1165) );
  OAI222XL U1493 ( .A0(n1414), .A1(n1725), .B0(n1388), .B1(n1705), .C0(n1371), 
        .C1(n1704), .Y(n1173) );
  OAI222XL U1494 ( .A0(n1414), .A1(n1724), .B0(n1388), .B1(n1704), .C0(n1371), 
        .C1(n1703), .Y(n1181) );
  OAI222XL U1495 ( .A0(n1414), .A1(n1723), .B0(n1387), .B1(n1703), .C0(n1371), 
        .C1(n1702), .Y(n1189) );
  OAI222XL U1496 ( .A0(n1414), .A1(n1722), .B0(n1386), .B1(n1702), .C0(n1371), 
        .C1(n1701), .Y(n1197) );
  OAI222XL U1497 ( .A0(n1414), .A1(n1721), .B0(n1386), .B1(n1701), .C0(n1371), 
        .C1(n1700), .Y(n1205) );
  OAI222XL U1498 ( .A0(n1414), .A1(n1720), .B0(n1385), .B1(n1700), .C0(n1371), 
        .C1(n1699), .Y(n1213) );
  OAI222XL U1499 ( .A0(n1414), .A1(n1719), .B0(n1384), .B1(n1699), .C0(n1371), 
        .C1(n1698), .Y(n1221) );
  OAI222XL U1500 ( .A0(n1414), .A1(n1718), .B0(n1384), .B1(n1698), .C0(n1371), 
        .C1(n1697), .Y(n1229) );
  OAI222XL U1501 ( .A0(n1414), .A1(n1717), .B0(n1383), .B1(n1697), .C0(n1371), 
        .C1(n1696), .Y(n1237) );
  OAI222XL U1502 ( .A0(n1414), .A1(n1716), .B0(n1383), .B1(n1696), .C0(n1372), 
        .C1(n1695), .Y(n1245) );
  OAI222XL U1503 ( .A0(n1414), .A1(n1715), .B0(n1382), .B1(n1695), .C0(n1372), 
        .C1(n1694), .Y(n1253) );
  OAI222XL U1504 ( .A0(n1413), .A1(n1714), .B0(n1381), .B1(n1694), .C0(n1372), 
        .C1(n1693), .Y(n1261) );
  OAI222XL U1505 ( .A0(n1413), .A1(n1713), .B0(n1381), .B1(n1693), .C0(n1372), 
        .C1(n1692), .Y(n1269) );
  OAI222XL U1506 ( .A0(n1413), .A1(n1712), .B0(n1380), .B1(n1692), .C0(n1372), 
        .C1(n1691), .Y(n1277) );
  OAI222XL U1507 ( .A0(n1413), .A1(n1711), .B0(n1380), .B1(n1691), .C0(n1372), 
        .C1(n1690), .Y(n1285) );
  OAI222XL U1508 ( .A0(n1413), .A1(n1710), .B0(n1379), .B1(n1690), .C0(n1372), 
        .C1(n1689), .Y(n1293) );
  OAI222XL U1509 ( .A0(n1413), .A1(n1709), .B0(n1378), .B1(n1689), .C0(n1372), 
        .C1(n1688), .Y(n1301) );
  OAI222XL U1510 ( .A0(n1414), .A1(n1687), .B0(n1389), .B1(n1667), .C0(n1371), 
        .C1(n1666), .Y(n1156) );
  OAI222XL U1511 ( .A0(n1414), .A1(n1686), .B0(n1389), .B1(n1666), .C0(n1371), 
        .C1(n1665), .Y(n1164) );
  OAI222XL U1512 ( .A0(n1414), .A1(n1685), .B0(n1388), .B1(n1665), .C0(n1371), 
        .C1(n1664), .Y(n1172) );
  OAI222XL U1513 ( .A0(n1414), .A1(n1684), .B0(n1388), .B1(n1664), .C0(n1371), 
        .C1(n1663), .Y(n1180) );
  OAI222XL U1514 ( .A0(n1414), .A1(n1683), .B0(n1387), .B1(n1663), .C0(n1371), 
        .C1(n1662), .Y(n1188) );
  OAI222XL U1515 ( .A0(n1414), .A1(n1682), .B0(n1386), .B1(n1662), .C0(n1371), 
        .C1(n1661), .Y(n1196) );
  OAI222XL U1516 ( .A0(n1414), .A1(n1681), .B0(n1386), .B1(n1661), .C0(n1371), 
        .C1(n1660), .Y(n1204) );
  OAI222XL U1517 ( .A0(n1414), .A1(n1680), .B0(n1385), .B1(n1660), .C0(n1371), 
        .C1(n1659), .Y(n1212) );
  OAI222XL U1518 ( .A0(n1414), .A1(n1679), .B0(n1385), .B1(n1659), .C0(n1371), 
        .C1(n1658), .Y(n1220) );
  OAI222XL U1519 ( .A0(n1414), .A1(n1678), .B0(n1384), .B1(n1658), .C0(n1371), 
        .C1(n1657), .Y(n1228) );
  OAI222XL U1520 ( .A0(n1414), .A1(n1677), .B0(n1383), .B1(n1657), .C0(n1371), 
        .C1(n1656), .Y(n1236) );
  OAI222XL U1521 ( .A0(n1414), .A1(n1676), .B0(n1383), .B1(n1656), .C0(n1372), 
        .C1(n1655), .Y(n1244) );
  OAI222XL U1522 ( .A0(n1414), .A1(n1675), .B0(n1382), .B1(n1655), .C0(n1372), 
        .C1(n1654), .Y(n1252) );
  OAI222XL U1523 ( .A0(n1413), .A1(n1674), .B0(n1381), .B1(n1654), .C0(n1372), 
        .C1(n1653), .Y(n1260) );
  OAI222XL U1524 ( .A0(n1413), .A1(n1673), .B0(n1381), .B1(n1653), .C0(n1372), 
        .C1(n1652), .Y(n1268) );
  OAI222XL U1525 ( .A0(n1413), .A1(n1672), .B0(n1380), .B1(n1652), .C0(n1372), 
        .C1(n1651), .Y(n1276) );
  OAI222XL U1526 ( .A0(n1413), .A1(n1671), .B0(n1380), .B1(n1651), .C0(n1372), 
        .C1(n1650), .Y(n1284) );
  OAI222XL U1527 ( .A0(n1413), .A1(n1670), .B0(n1379), .B1(n1650), .C0(n1372), 
        .C1(n1649), .Y(n1292) );
  OAI222XL U1528 ( .A0(n1413), .A1(n1669), .B0(n1378), .B1(n1649), .C0(n1372), 
        .C1(n1648), .Y(n1300) );
  OAI222XL U1529 ( .A0(n1414), .A1(n1647), .B0(n1390), .B1(n1627), .C0(n1371), 
        .C1(n1626), .Y(n1155) );
  OAI222XL U1530 ( .A0(n1414), .A1(n1646), .B0(n1389), .B1(n1626), .C0(n1371), 
        .C1(n1625), .Y(n1163) );
  OAI222XL U1531 ( .A0(n1414), .A1(n1645), .B0(n1388), .B1(n1625), .C0(n1371), 
        .C1(n1624), .Y(n1171) );
  OAI222XL U1532 ( .A0(n1414), .A1(n1644), .B0(n1388), .B1(n1624), .C0(n1371), 
        .C1(n1623), .Y(n1179) );
  OAI222XL U1533 ( .A0(n1414), .A1(n1643), .B0(n1387), .B1(n1623), .C0(n1371), 
        .C1(n1622), .Y(n1187) );
  OAI222XL U1534 ( .A0(n1414), .A1(n1642), .B0(n1386), .B1(n1622), .C0(n1371), 
        .C1(n1621), .Y(n1195) );
  OAI222XL U1535 ( .A0(n1414), .A1(n1641), .B0(n1386), .B1(n1621), .C0(n1371), 
        .C1(n1620), .Y(n1203) );
  OAI222XL U1536 ( .A0(n1414), .A1(n1640), .B0(n1385), .B1(n1620), .C0(n1371), 
        .C1(n1619), .Y(n1211) );
  OAI222XL U1537 ( .A0(n1414), .A1(n1639), .B0(n1385), .B1(n1619), .C0(n1371), 
        .C1(n1618), .Y(n1219) );
  OAI222XL U1538 ( .A0(n1414), .A1(n1638), .B0(n1384), .B1(n1618), .C0(n1371), 
        .C1(n1617), .Y(n1227) );
  OAI222XL U1539 ( .A0(n1414), .A1(n1637), .B0(n1383), .B1(n1617), .C0(n1371), 
        .C1(n1616), .Y(n1235) );
  OAI222XL U1540 ( .A0(n1414), .A1(n1636), .B0(n1383), .B1(n1616), .C0(n1372), 
        .C1(n1615), .Y(n1243) );
  OAI222XL U1541 ( .A0(n1414), .A1(n1635), .B0(n1382), .B1(n1615), .C0(n1372), 
        .C1(n1614), .Y(n1251) );
  OAI222XL U1542 ( .A0(n1413), .A1(n1634), .B0(n1382), .B1(n1614), .C0(n1372), 
        .C1(n1613), .Y(n1259) );
  OAI222XL U1543 ( .A0(n1413), .A1(n1633), .B0(n1381), .B1(n1613), .C0(n1372), 
        .C1(n1612), .Y(n1267) );
  OAI222XL U1544 ( .A0(n1413), .A1(n1632), .B0(n1380), .B1(n1612), .C0(n1372), 
        .C1(n1611), .Y(n1275) );
  OAI222XL U1545 ( .A0(n1413), .A1(n1631), .B0(n1380), .B1(n1611), .C0(n1372), 
        .C1(n1610), .Y(n1283) );
  OAI222XL U1546 ( .A0(n1413), .A1(n1630), .B0(n1379), .B1(n1610), .C0(n1372), 
        .C1(n1609), .Y(n1291) );
  OAI222XL U1547 ( .A0(n1413), .A1(n1629), .B0(n1378), .B1(n1609), .C0(n1372), 
        .C1(n1608), .Y(n1299) );
  OAI222XL U1548 ( .A0(n1414), .A1(n1607), .B0(n1390), .B1(n1587), .C0(n1371), 
        .C1(n1586), .Y(n1154) );
  OAI222XL U1549 ( .A0(n1414), .A1(n1606), .B0(n1389), .B1(n1586), .C0(n1371), 
        .C1(n1585), .Y(n1162) );
  OAI222XL U1550 ( .A0(n1414), .A1(n1605), .B0(n1388), .B1(n1585), .C0(n1371), 
        .C1(n1584), .Y(n1170) );
  OAI222XL U1551 ( .A0(n1414), .A1(n1604), .B0(n1388), .B1(n1584), .C0(n1371), 
        .C1(n1583), .Y(n1178) );
  OAI222XL U1552 ( .A0(n1414), .A1(n1603), .B0(n1387), .B1(n1583), .C0(n1371), 
        .C1(n1582), .Y(n1186) );
  OAI222XL U1553 ( .A0(n1414), .A1(n1602), .B0(n1387), .B1(n1582), .C0(n1371), 
        .C1(n1581), .Y(n1194) );
  OAI222XL U1554 ( .A0(n1414), .A1(n1601), .B0(n1386), .B1(n1581), .C0(n1371), 
        .C1(n1580), .Y(n1202) );
  OAI222XL U1555 ( .A0(n1414), .A1(n1600), .B0(n1385), .B1(n1580), .C0(n1371), 
        .C1(n1579), .Y(n1210) );
  OAI222XL U1556 ( .A0(n1414), .A1(n1599), .B0(n1385), .B1(n1579), .C0(n1371), 
        .C1(n1578), .Y(n1218) );
  OAI222XL U1557 ( .A0(n1414), .A1(n1598), .B0(n1384), .B1(n1578), .C0(n1371), 
        .C1(n1577), .Y(n1226) );
  OAI222XL U1558 ( .A0(n1414), .A1(n1597), .B0(n1383), .B1(n1577), .C0(n1371), 
        .C1(n1576), .Y(n1234) );
  OAI222XL U1559 ( .A0(n1414), .A1(n1596), .B0(n1383), .B1(n1576), .C0(n1372), 
        .C1(n1575), .Y(n1242) );
  OAI222XL U1560 ( .A0(n1414), .A1(n1595), .B0(n1382), .B1(n1575), .C0(n1372), 
        .C1(n1574), .Y(n1250) );
  OAI222XL U1561 ( .A0(n1413), .A1(n1594), .B0(n1382), .B1(n1574), .C0(n1372), 
        .C1(n1573), .Y(n1258) );
  OAI222XL U1562 ( .A0(n1413), .A1(n1593), .B0(n1381), .B1(n1573), .C0(n1372), 
        .C1(n1572), .Y(n1266) );
  OAI222XL U1563 ( .A0(n1413), .A1(n1592), .B0(n1380), .B1(n1572), .C0(n1372), 
        .C1(n1571), .Y(n1274) );
  OAI222XL U1564 ( .A0(n1413), .A1(n1591), .B0(n1380), .B1(n1571), .C0(n1372), 
        .C1(n1570), .Y(n1282) );
  OAI222XL U1565 ( .A0(n1413), .A1(n1590), .B0(n1379), .B1(n1570), .C0(n1372), 
        .C1(n1569), .Y(n1290) );
  OAI222XL U1566 ( .A0(n1413), .A1(n1589), .B0(n1379), .B1(n1569), .C0(n1372), 
        .C1(n1568), .Y(n1298) );
  OAI222XL U1567 ( .A0(n1414), .A1(n1567), .B0(n1390), .B1(n1547), .C0(n1371), 
        .C1(n1546), .Y(n1153) );
  OAI222XL U1568 ( .A0(n1414), .A1(n1566), .B0(n1389), .B1(n1546), .C0(n1371), 
        .C1(n1545), .Y(n1161) );
  OAI222XL U1569 ( .A0(n1414), .A1(n1565), .B0(n1388), .B1(n1545), .C0(n1371), 
        .C1(n1544), .Y(n1169) );
  OAI222XL U1570 ( .A0(n1414), .A1(n1564), .B0(n1388), .B1(n1544), .C0(n1371), 
        .C1(n1543), .Y(n1177) );
  OAI222XL U1571 ( .A0(n1414), .A1(n1563), .B0(n1387), .B1(n1543), .C0(n1371), 
        .C1(n1542), .Y(n1185) );
  OAI222XL U1572 ( .A0(n1414), .A1(n1562), .B0(n1387), .B1(n1542), .C0(n1371), 
        .C1(n1541), .Y(n1193) );
  OAI222XL U1573 ( .A0(n1414), .A1(n1561), .B0(n1386), .B1(n1541), .C0(n1371), 
        .C1(n1540), .Y(n1201) );
  OAI222XL U1574 ( .A0(n1414), .A1(n1560), .B0(n1385), .B1(n1540), .C0(n1371), 
        .C1(n1539), .Y(n1209) );
  OAI222XL U1575 ( .A0(n1414), .A1(n1559), .B0(n1385), .B1(n1539), .C0(n1371), 
        .C1(n1538), .Y(n1217) );
  OAI222XL U1576 ( .A0(n1414), .A1(n1558), .B0(n1384), .B1(n1538), .C0(n1371), 
        .C1(n1537), .Y(n1225) );
  OAI222XL U1577 ( .A0(n1414), .A1(n1557), .B0(n1384), .B1(n1537), .C0(n1371), 
        .C1(n1536), .Y(n1233) );
  OAI222XL U1578 ( .A0(n1414), .A1(n1556), .B0(n1383), .B1(n1536), .C0(n1372), 
        .C1(n1535), .Y(n1241) );
  OAI222XL U1579 ( .A0(n1414), .A1(n1555), .B0(n1382), .B1(n1535), .C0(n1372), 
        .C1(n1534), .Y(n1249) );
  OAI222XL U1580 ( .A0(n1413), .A1(n1554), .B0(n1382), .B1(n1534), .C0(n1372), 
        .C1(n1533), .Y(n1257) );
  OAI222XL U1581 ( .A0(n1413), .A1(n1553), .B0(n1381), .B1(n1533), .C0(n1372), 
        .C1(n1532), .Y(n1265) );
  OAI222XL U1582 ( .A0(n1413), .A1(n1552), .B0(n1380), .B1(n1532), .C0(n1372), 
        .C1(n1531), .Y(n1273) );
  OAI222XL U1583 ( .A0(n1413), .A1(n1551), .B0(n1380), .B1(n1531), .C0(n1372), 
        .C1(n1530), .Y(n1281) );
  OAI222XL U1584 ( .A0(n1413), .A1(n1550), .B0(n1379), .B1(n1530), .C0(n1372), 
        .C1(n1529), .Y(n1289) );
  OAI222XL U1585 ( .A0(n1413), .A1(n1549), .B0(n1379), .B1(n1529), .C0(n1372), 
        .C1(n1528), .Y(n1297) );
  OAI222XL U1586 ( .A0(n1527), .A1(n1412), .B0(n1390), .B1(n1507), .C0(n1371), 
        .C1(n1506), .Y(n1152) );
  OAI222XL U1587 ( .A0(n1414), .A1(n1526), .B0(n1389), .B1(n1506), .C0(n1371), 
        .C1(n1505), .Y(n1160) );
  OAI222XL U1588 ( .A0(n1414), .A1(n1525), .B0(n1389), .B1(n1505), .C0(n1371), 
        .C1(n1504), .Y(n1168) );
  OAI222XL U1589 ( .A0(n1414), .A1(n1524), .B0(n1388), .B1(n1504), .C0(n1371), 
        .C1(n1503), .Y(n1176) );
  OAI222XL U1590 ( .A0(n1414), .A1(n1523), .B0(n1387), .B1(n1503), .C0(n1371), 
        .C1(n1502), .Y(n1184) );
  OAI222XL U1591 ( .A0(n1414), .A1(n1522), .B0(n1387), .B1(n1502), .C0(n1371), 
        .C1(n1501), .Y(n1192) );
  OAI222XL U1592 ( .A0(n1414), .A1(n1521), .B0(n1386), .B1(n1501), .C0(n1371), 
        .C1(n1500), .Y(n1200) );
  OAI222XL U1593 ( .A0(n1414), .A1(n1520), .B0(n1385), .B1(n1500), .C0(n1371), 
        .C1(n1499), .Y(n1208) );
  OAI222XL U1594 ( .A0(n1414), .A1(n1519), .B0(n1385), .B1(n1499), .C0(n1371), 
        .C1(n1498), .Y(n1216) );
  OAI222XL U1595 ( .A0(n1414), .A1(n1518), .B0(n1384), .B1(n1498), .C0(n1371), 
        .C1(n1497), .Y(n1224) );
  OAI222XL U1596 ( .A0(n1414), .A1(n1517), .B0(n1384), .B1(n1497), .C0(n1372), 
        .C1(n1496), .Y(n1232) );
  OAI222XL U1597 ( .A0(n1414), .A1(n1516), .B0(n1383), .B1(n1496), .C0(n1372), 
        .C1(n1495), .Y(n1240) );
  OAI222XL U1598 ( .A0(n1414), .A1(n1515), .B0(n1382), .B1(n1495), .C0(n1372), 
        .C1(n1494), .Y(n1248) );
  OAI222XL U1599 ( .A0(n1413), .A1(n1514), .B0(n1382), .B1(n1494), .C0(n1372), 
        .C1(n1493), .Y(n1256) );
  OAI222XL U1600 ( .A0(n1413), .A1(n1513), .B0(n1381), .B1(n1493), .C0(n1372), 
        .C1(n1492), .Y(n1264) );
  OAI222XL U1601 ( .A0(n1413), .A1(n1512), .B0(n1381), .B1(n1492), .C0(n1372), 
        .C1(n1491), .Y(n1272) );
  OAI222XL U1602 ( .A0(n1413), .A1(n1511), .B0(n1380), .B1(n1491), .C0(n1372), 
        .C1(n1490), .Y(n1280) );
  OAI222XL U1603 ( .A0(n1413), .A1(n1510), .B0(n1379), .B1(n1490), .C0(n1372), 
        .C1(n1489), .Y(n1288) );
  OAI222XL U1604 ( .A0(n1413), .A1(n1509), .B0(n1379), .B1(n1489), .C0(n1372), 
        .C1(n1488), .Y(n1296) );
  CLKINVX1 U1605 ( .A(n603), .Y(n1790) );
  CLKINVX1 U1606 ( .A(n1362), .Y(n1369) );
  AND3X2 U1607 ( .A(n239), .B(n238), .C(n237), .Y(n233) );
  CLKBUFX3 U1608 ( .A(n244), .Y(n1373) );
  CLKBUFX3 U1609 ( .A(n244), .Y(n1372) );
  OAI2BB2XL U1610 ( .B0(n1356), .B1(n1346), .A0N(N444), .A1N(n1356), .Y(n891)
         );
  OAI2BB2XL U1611 ( .B0(n1356), .B1(n1436), .A0N(N443), .A1N(n1356), .Y(n892)
         );
  OAI2BB2XL U1612 ( .B0(n1356), .B1(n1434), .A0N(N442), .A1N(n1356), .Y(n893)
         );
  CLKBUFX3 U1613 ( .A(n244), .Y(n1374) );
  NAND2X1 U1614 ( .A(n1469), .B(n186), .Y(N39) );
  OAI222XL U1615 ( .A0(n1427), .A1(n1347), .B0(n1456), .B1(n1486), .C0(n903), 
        .C1(n231), .Y(n1337) );
  OAI222XL U1616 ( .A0(n1427), .A1(n1351), .B0(n1456), .B1(n1478), .C0(n900), 
        .C1(n231), .Y(n1333) );
  OAI222XL U1617 ( .A0(n1427), .A1(n1352), .B0(n1456), .B1(n1476), .C0(n901), 
        .C1(n231), .Y(n1332) );
  OAI222XL U1618 ( .A0(n1427), .A1(n1353), .B0(n1456), .B1(n1474), .C0(n902), 
        .C1(n231), .Y(n1331) );
  OAI222XL U1619 ( .A0(n1792), .A1(n1427), .B0(n1456), .B1(n1791), .C0(n231), 
        .C1(n1789), .Y(n946) );
  CLKINVX1 U1620 ( .A(opt_num_w[0]), .Y(n1451) );
  CLKINVX1 U1621 ( .A(opt_num_w[1]), .Y(n1452) );
  OAI32X1 U1622 ( .A0(n1457), .A1(RST), .A2(n235), .B0(opt_tmp_lr_max), .B1(
        n607), .Y(n602) );
  OAI222XL U1623 ( .A0(n1462), .A1(n1374), .B0(n1768), .B1(n1378), .C0(n1788), 
        .C1(n1412), .Y(n1311) );
  CLKINVX1 U1624 ( .A(X[0]), .Y(n1462) );
  OAI222XL U1625 ( .A0(n1461), .A1(n1374), .B0(n1728), .B1(n1378), .C0(n1748), 
        .C1(n1412), .Y(n1310) );
  CLKINVX1 U1626 ( .A(X[1]), .Y(n1461) );
  OAI222XL U1627 ( .A0(n1460), .A1(n1374), .B0(n1688), .B1(n1378), .C0(n1708), 
        .C1(n1412), .Y(n1309) );
  CLKINVX1 U1628 ( .A(X[2]), .Y(n1460) );
  OAI222XL U1629 ( .A0(n1459), .A1(n1374), .B0(n1648), .B1(n1378), .C0(n1668), 
        .C1(n1412), .Y(n1308) );
  CLKINVX1 U1630 ( .A(X[3]), .Y(n1459) );
  OAI222XL U1631 ( .A0(n1466), .A1(n1374), .B0(n1608), .B1(n1378), .C0(n1628), 
        .C1(n1412), .Y(n1307) );
  CLKINVX1 U1632 ( .A(Y[0]), .Y(n1466) );
  OAI222XL U1633 ( .A0(n1465), .A1(n1374), .B0(n1568), .B1(n1378), .C0(n1588), 
        .C1(n1412), .Y(n1306) );
  CLKINVX1 U1634 ( .A(Y[1]), .Y(n1465) );
  OAI222XL U1635 ( .A0(n1464), .A1(n1374), .B0(n1528), .B1(n1378), .C0(n1548), 
        .C1(n1412), .Y(n1305) );
  CLKINVX1 U1636 ( .A(Y[2]), .Y(n1464) );
  OAI222XL U1637 ( .A0(n1463), .A1(n1374), .B0(n1488), .B1(n1378), .C0(n1508), 
        .C1(n1412), .Y(n1304) );
  CLKINVX1 U1638 ( .A(Y[3]), .Y(n1463) );
  AO22X1 U1639 ( .A0(opt_num_w[5]), .A1(n601), .B0(opt_num[5]), .B1(n602), .Y(
        n1343) );
  AO22X1 U1640 ( .A0(opt_num_w[4]), .A1(n601), .B0(opt_num[4]), .B1(n602), .Y(
        n1341) );
  AO22X1 U1641 ( .A0(opt_num_w[2]), .A1(n601), .B0(opt_num[2]), .B1(n602), .Y(
        n1339) );
  AO22X1 U1642 ( .A0(opt_num_w[0]), .A1(n601), .B0(opt_num[0]), .B1(n602), .Y(
        n1344) );
  AO22X1 U1643 ( .A0(opt_num_w[3]), .A1(n601), .B0(opt_num[3]), .B1(n602), .Y(
        n1340) );
  AO22X1 U1644 ( .A0(opt_num_w[1]), .A1(n601), .B0(opt_num[1]), .B1(n602), .Y(
        n1338) );
  CLKBUFX3 U1645 ( .A(col_ptr[1]), .Y(n1429) );
  NOR2BX1 U1646 ( .AN(curr_state_0_), .B(n1469), .Y(n571) );
  NAND3X1 U1647 ( .A(n571), .B(n1458), .C(n899), .Y(n244) );
  NAND2BX1 U1648 ( .AN(curr_state_0_), .B(n899), .Y(n186) );
  NAND4BX1 U1649 ( .AN(n903), .B(n1356), .C(n612), .D(n613), .Y(n605) );
  NOR3X1 U1650 ( .A(n902), .B(n900), .C(n901), .Y(n612) );
  NOR4X1 U1651 ( .A(n1439), .B(n1346), .C(n1436), .D(n1434), .Y(n613) );
  NOR2X1 U1652 ( .A(max_c2_dirty_39_), .B(tmp_dirty_39_), .Y(n603) );
  OAI22XL U1653 ( .A0(n1426), .A1(n1347), .B0(n1417), .B1(n1487), .Y(n1322) );
  CLKINVX1 U1654 ( .A(circal_loc_max[0]), .Y(n1487) );
  OAI22XL U1655 ( .A0(n1426), .A1(n1348), .B0(n1418), .B1(n1485), .Y(n1316) );
  CLKINVX1 U1656 ( .A(circal_loc_max[6]), .Y(n1485) );
  OAI22XL U1657 ( .A0(n1426), .A1(n1349), .B0(n1419), .B1(n1483), .Y(n1317) );
  CLKINVX1 U1658 ( .A(circal_loc_max[5]), .Y(n1483) );
  OAI22XL U1659 ( .A0(n1426), .A1(n1350), .B0(n1418), .B1(n1481), .Y(n1318) );
  CLKINVX1 U1660 ( .A(circal_loc_max[4]), .Y(n1481) );
  OAI22XL U1661 ( .A0(n1426), .A1(n1351), .B0(n1417), .B1(n1479), .Y(n1319) );
  CLKINVX1 U1662 ( .A(circal_loc_max[3]), .Y(n1479) );
  OAI22XL U1663 ( .A0(n1426), .A1(n1352), .B0(n1417), .B1(n1477), .Y(n1320) );
  CLKINVX1 U1664 ( .A(circal_loc_max[2]), .Y(n1477) );
  OAI22XL U1665 ( .A0(n1426), .A1(n1353), .B0(n1417), .B1(n1475), .Y(n1321) );
  CLKINVX1 U1666 ( .A(circal_loc_max[1]), .Y(n1475) );
  OAI22XL U1667 ( .A0(n1426), .A1(n1354), .B0(n1418), .B1(n1473), .Y(n1315) );
  CLKINVX1 U1668 ( .A(circal_loc_max[7]), .Y(n1473) );
  OAI22XL U1669 ( .A0(iter_cnt[0]), .A1(n1426), .B0(n1418), .B1(n1470), .Y(
        n1313) );
  CLKBUFX3 U1670 ( .A(col_ptr[3]), .Y(n1430) );
  CLKBUFX3 U1671 ( .A(n905), .Y(n1370) );
  NOR3X1 U1672 ( .A(curr_state_0_), .B(n899), .C(n1469), .Y(n905) );
  CLKBUFX3 U1673 ( .A(col_ptr[3]), .Y(n1431) );
  CLKBUFX3 U1674 ( .A(n181), .Y(n1356) );
  NOR2BX1 U1675 ( .AN(n571), .B(n899), .Y(n181) );
  CLKINVX1 U1676 ( .A(col_ptr[2]), .Y(n1361) );
  CLKINVX1 U1677 ( .A(col_ptr[2]), .Y(n1362) );
  CLKINVX1 U1678 ( .A(col_ptr[2]), .Y(n1359) );
  CLKINVX1 U1679 ( .A(col_ptr[2]), .Y(n1360) );
  OA21XL U1680 ( .A0(iter_cnt[0]), .A1(n1426), .B0(n1421), .Y(n576) );
  OAI2BB1X1 U1681 ( .A0N(iter_cnt[2]), .A1N(n572), .B0(n573), .Y(n1312) );
  OR4X1 U1682 ( .A(n1426), .B(n1471), .C(n1470), .D(iter_cnt[2]), .Y(n573) );
  OAI21XL U1683 ( .A0(iter_cnt[1]), .A1(n1426), .B0(n576), .Y(n572) );
  OAI32X1 U1684 ( .A0(n1470), .A1(iter_cnt[1]), .A2(n1427), .B0(n576), .B1(
        n1471), .Y(n1314) );
  NOR3BXL U1685 ( .AN(global_cnt[0]), .B(global_cnt[3]), .C(global_cnt[4]), 
        .Y(n626) );
  NOR4X1 U1686 ( .A(n235), .B(RST), .C(n233), .D(n236), .Y(n234) );
  NAND2X1 U1687 ( .A(n237), .B(n238), .Y(n236) );
  NAND4X1 U1688 ( .A(n899), .B(n571), .C(n626), .D(n627), .Y(n237) );
  AND3X2 U1689 ( .A(global_cnt[5]), .B(global_cnt[1]), .C(global_cnt[2]), .Y(
        n627) );
  NAND3X1 U1690 ( .A(n1370), .B(n626), .C(n628), .Y(n238) );
  NOR3X1 U1691 ( .A(global_cnt[1]), .B(global_cnt[5]), .C(global_cnt[2]), .Y(
        n628) );
  INVX3 U1692 ( .A(RST), .Y(n1458) );
  OAI2BB2XL U1693 ( .B0(n902), .B1(n1356), .A0N(N439), .A1N(n1356), .Y(n896)
         );
  OAI2BB2XL U1694 ( .B0(n900), .B1(n1356), .A0N(N441), .A1N(n1356), .Y(n894)
         );
  OAI2BB2XL U1695 ( .B0(n901), .B1(n1356), .A0N(N440), .A1N(n1356), .Y(n895)
         );
  OAI2BB2XL U1696 ( .B0(n903), .B1(n1356), .A0N(N438), .A1N(n1356), .Y(n897)
         );
  ADDHXL U1697 ( .A(global_cnt[1]), .B(global_cnt[0]), .CO(add_144_carry[2]), 
        .S(N87) );
  ADDHXL U1698 ( .A(global_cnt[2]), .B(add_144_carry[2]), .CO(add_144_carry[3]), .S(N88) );
  ADDHXL U1699 ( .A(global_cnt[3]), .B(add_144_carry[3]), .CO(add_144_carry[4]), .S(N89) );
  AO22X1 U1700 ( .A0(N90), .A1(n233), .B0(global_cnt[4]), .B1(n234), .Y(n987)
         );
  AO22X1 U1701 ( .A0(N89), .A1(n233), .B0(global_cnt[3]), .B1(n234), .Y(n988)
         );
  AO22X1 U1702 ( .A0(N91), .A1(n233), .B0(n234), .B1(global_cnt[5]), .Y(n986)
         );
  AO22X1 U1703 ( .A0(N88), .A1(n233), .B0(n234), .B1(global_cnt[2]), .Y(n989)
         );
  AO22X1 U1704 ( .A0(N87), .A1(n233), .B0(n234), .B1(global_cnt[1]), .Y(n990)
         );
  AO22X1 U1705 ( .A0(N86), .A1(n233), .B0(n234), .B1(global_cnt[0]), .Y(n991)
         );
  ADDHXL U1706 ( .A(global_cnt[4]), .B(add_144_carry[4]), .CO(add_144_carry[5]), .S(N90) );
  NOR3X1 U1707 ( .A(n186), .B(n889), .C(RST), .Y(n898) );
  NAND2X1 U1708 ( .A(n629), .B(n1458), .Y(N14) );
  CLKINVX1 U1709 ( .A(iter_cnt[0]), .Y(n1470) );
  CLKINVX1 U1710 ( .A(max_c2_dirty_39_), .Y(n1792) );
  CLKINVX1 U1711 ( .A(circal_loc_C1[0]), .Y(n1486) );
  CLKINVX1 U1712 ( .A(circal_loc_C1[6]), .Y(n1484) );
  CLKINVX1 U1713 ( .A(circal_loc_C1[5]), .Y(n1482) );
  CLKINVX1 U1714 ( .A(circal_loc_C1[4]), .Y(n1480) );
  CLKINVX1 U1715 ( .A(circal_loc_C1[3]), .Y(n1478) );
  CLKINVX1 U1716 ( .A(circal_loc_C1[2]), .Y(n1476) );
  CLKINVX1 U1717 ( .A(circal_loc_C1[1]), .Y(n1474) );
  CLKINVX1 U1718 ( .A(circal_loc_C1[7]), .Y(n1467) );
  CLKINVX1 U1719 ( .A(iter_cnt[1]), .Y(n1471) );
  XNOR2X1 U1720 ( .A(circal_loc_C1[3]), .B(circal_loc_max[3]), .Y(n621) );
  XNOR2X1 U1721 ( .A(circal_loc_C1[7]), .B(circal_loc_max[7]), .Y(n617) );
  XNOR2X1 U1722 ( .A(circal_loc_C1[4]), .B(circal_loc_max[4]), .Y(n620) );
  XNOR2X1 U1723 ( .A(circal_loc_C1[5]), .B(circal_loc_max[5]), .Y(n619) );
  XNOR2X1 U1724 ( .A(circal_loc_C1[6]), .B(circal_loc_max[6]), .Y(n618) );
  AOI21X1 U1725 ( .A0(n238), .A1(n625), .B0(n1469), .Y(N40) );
  NAND2X1 U1726 ( .A(n899), .B(n237), .Y(n625) );
  NAND4X1 U1727 ( .A(n621), .B(n622), .C(n623), .D(n624), .Y(n615) );
  XNOR2X1 U1728 ( .A(circal_loc_C1[2]), .B(circal_loc_max[2]), .Y(n622) );
  XNOR2X1 U1729 ( .A(circal_loc_C1[1]), .B(circal_loc_max[1]), .Y(n623) );
  XNOR2X1 U1730 ( .A(circal_loc_C1[0]), .B(circal_loc_max[0]), .Y(n624) );
  OAI31XL U1731 ( .A0(n1469), .A1(n899), .A2(N42), .B0(n237), .Y(N41) );
  AND2X2 U1732 ( .A(n611), .B(n1468), .Y(N42) );
  OAI32X1 U1733 ( .A0(n1472), .A1(iter_cnt[1]), .A2(n1470), .B0(n615), .B1(
        n616), .Y(n611) );
  CLKINVX1 U1734 ( .A(iter_cnt[2]), .Y(n1472) );
  NAND4X1 U1735 ( .A(n617), .B(n618), .C(n619), .D(n620), .Y(n616) );
  AND2X1 U1736 ( .A(N854), .B(N886), .Y(
        add_0_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1737 ( .A(N886), .B(N854), .Y(N1006) );
  AND2X1 U1738 ( .A(N798), .B(N790), .Y(
        add_1_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1739 ( .A(N790), .B(N798), .Y(N886) );
  AND2X1 U1740 ( .A(N814), .B(N806), .Y(
        add_3_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1741 ( .A(N806), .B(N814), .Y(N790) );
  AND2X1 U1742 ( .A(N750), .B(N758), .Y(
        add_6_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1743 ( .A(N758), .B(N750), .Y(N806) );
  AND2X1 U1744 ( .A(N774), .B(N878), .Y(
        add_7_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1745 ( .A(N878), .B(N774), .Y(N814) );
  AND2X1 U1746 ( .A(N870), .B(N830), .Y(
        add_4_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1747 ( .A(N830), .B(N870), .Y(N798) );
  AND2X1 U1748 ( .A(N720), .B(N724), .Y(
        add_11_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1749 ( .A(N724), .B(N720), .Y(N830) );
  AND2X1 U1750 ( .A(N766), .B(N846), .Y(
        add_9_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1751 ( .A(N846), .B(N766), .Y(N870) );
  AND2X1 U1752 ( .A(add_2_root_add_13_root_add_299_I39_aco_carry_3_), .B(N865), 
        .Y(N858) );
  XOR2X1 U1753 ( .A(N865), .B(add_2_root_add_13_root_add_299_I39_aco_carry_3_), 
        .Y(N857) );
  AND2X1 U1754 ( .A(N894), .B(N862), .Y(
        add_2_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1755 ( .A(N862), .B(N894), .Y(N854) );
  AND2X1 U1756 ( .A(N838), .B(N742), .Y(
        add_8_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1757 ( .A(N742), .B(N838), .Y(N894) );
  AND2X1 U1758 ( .A(add_5_root_add_13_root_add_299_I39_aco_carry_2_), .B(N824), 
        .Y(N865) );
  XOR2X1 U1759 ( .A(N824), .B(add_5_root_add_13_root_add_299_I39_aco_carry_2_), 
        .Y(N864) );
  AND2X1 U1760 ( .A(N735), .B(N822), .Y(
        add_5_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1761 ( .A(N822), .B(N735), .Y(N862) );
  AND2X1 U1762 ( .A(N729), .B(N782), .Y(
        add_10_root_add_13_root_add_299_I39_aco_carry_1_) );
  XOR2X1 U1763 ( .A(N782), .B(N729), .Y(N822) );
  CLKINVX1 U1764 ( .A(N1006), .Y(N1013) );
  XOR2X1 U1765 ( .A(add_299_I40_carry[5]), .B(N1011), .Y(N1018) );
  CLKINVX1 U1766 ( .A(global_cnt[0]), .Y(N86) );
  XOR2X1 U1767 ( .A(add_144_carry[5]), .B(global_cnt[5]), .Y(N91) );
  NAND2BX1 U1768 ( .AN(opt_num[4]), .B(opt_num_w[4]), .Y(n1450) );
  NOR2BX1 U1769 ( .AN(opt_num[4]), .B(opt_num_w[4]), .Y(n1440) );
  OA22X1 U1770 ( .A0(n1440), .A1(n1455), .B0(n1440), .B1(opt_num[5]), .Y(n1449) );
  NAND2BX1 U1771 ( .AN(opt_num[2]), .B(opt_num_w[2]), .Y(n1443) );
  AO22X1 U1772 ( .A0(n1451), .A1(opt_num[0]), .B0(n1452), .B1(opt_num[1]), .Y(
        n1441) );
  OAI21XL U1773 ( .A0(opt_num[1]), .A1(n1452), .B0(n1441), .Y(n1446) );
  NOR2BX1 U1774 ( .AN(opt_num[2]), .B(opt_num_w[2]), .Y(n1442) );
  OAI22XL U1775 ( .A0(n1442), .A1(n1454), .B0(opt_num[3]), .B1(n1442), .Y(
        n1445) );
  OAI22XL U1776 ( .A0(opt_num[3]), .A1(n1454), .B0(opt_num[3]), .B1(n1443), 
        .Y(n1444) );
  AOI221XL U1777 ( .A0(opt_num_w[3]), .A1(n1453), .B0(n1446), .B1(n1445), .C0(
        n1444), .Y(n1448) );
  OA22X1 U1778 ( .A0(opt_num[5]), .A1(n1455), .B0(n1450), .B1(opt_num[5]), .Y(
        n1447) );
  OAI221XL U1779 ( .A0(n1450), .A1(n1455), .B0(n1449), .B1(n1448), .C0(n1447), 
        .Y(opt_tmp_lr_max) );
endmodule


module LASER_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Inside_0 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  NOR2X1 U15 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U16 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U17 ( .A(n34), .Y(n6) );
  CLKINVX1 U18 ( .A(n73), .Y(n9) );
  ADDFXL U19 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U20 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U21 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  OR2X1 U22 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U23 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U24 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_1 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  NOR2X1 U15 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U16 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U17 ( .A(n34), .Y(n6) );
  CLKINVX1 U18 ( .A(n73), .Y(n9) );
  ADDFXL U19 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U20 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U21 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  OR2X1 U22 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U23 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U24 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_2 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  NOR2X1 U15 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U16 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U17 ( .A(n34), .Y(n6) );
  CLKINVX1 U18 ( .A(n73), .Y(n9) );
  ADDFXL U19 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U20 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U21 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  OR2X1 U22 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U23 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U24 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_3 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  NOR2X1 U15 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U16 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U17 ( .A(n34), .Y(n6) );
  CLKINVX1 U18 ( .A(n73), .Y(n9) );
  ADDFXL U19 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U20 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U21 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  OR2X1 U22 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U23 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U24 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_4 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  NOR2X1 U15 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U16 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U17 ( .A(n34), .Y(n6) );
  CLKINVX1 U18 ( .A(n73), .Y(n9) );
  ADDFXL U19 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U20 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U21 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  OR2X1 U22 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U23 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U24 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_5 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  OR2X1 U14 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U15 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U16 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U17 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U18 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U19 ( .A(n34), .Y(n6) );
  CLKINVX1 U20 ( .A(n73), .Y(n9) );
  ADDFXL U21 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U22 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U23 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U24 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U25 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U26 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U27 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U28 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U29 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U31 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U32 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U33 ( .A(circle_x[2]), .Y(n7) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_6 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  OR2X1 U14 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U15 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U16 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U17 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U18 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U19 ( .A(n34), .Y(n6) );
  CLKINVX1 U20 ( .A(n73), .Y(n9) );
  ADDFXL U21 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U22 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U23 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U24 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U25 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U26 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U27 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U28 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U29 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U31 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U32 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U33 ( .A(circle_x[2]), .Y(n7) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  XOR2X1 U59 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_7 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U59 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_8 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U59 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_9 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U59 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_10 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U31 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U59 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_11 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  OR2X1 U14 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U15 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U16 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U17 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U18 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U19 ( .A(n34), .Y(n6) );
  CLKINVX1 U20 ( .A(n73), .Y(n9) );
  ADDFXL U21 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U22 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U23 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U24 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U25 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U26 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U27 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U28 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U29 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  OR4X1 U31 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U32 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U33 ( .A(circle_x[2]), .Y(n7) );
  CLKINVX1 U34 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U35 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  CLKINVX1 U36 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U37 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U38 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U39 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U41 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U43 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n18) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  CLKINVX1 U53 ( .A(n68), .Y(n11) );
  OA22X1 U54 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U55 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AOI2BB1X1 U56 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U57 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  XOR2X1 U58 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U59 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U60 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U61 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  OAI2BB1X1 U62 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U63 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U64 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U65 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U66 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U67 ( .A(in_y[0]), .Y(n13) );
  OA21XL U68 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U69 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_12 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_13 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_14 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_15 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_16 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_17 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_18 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n65), .B0(n73), .B1(n64), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n17), .B1(n29), .Y(n34) );
  OAI22XL U5 ( .A0(n9), .A1(n60), .B0(n59), .B1(n73), .Y(dis_y[1]) );
  OAI22XL U6 ( .A0(circle_y[3]), .A1(n12), .B0(n36), .B1(n68), .Y(n73) );
  OAI31XL U7 ( .A0(n73), .A1(n72), .A2(n11), .B0(n71), .Y(dis_y[3]) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n58), .B(n62), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n19), .B(n23), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n76), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n75), .D(n74), .Y(n76) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n74) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n58) );
  NOR2X1 U19 ( .A(n15), .B(circle_x[0]), .Y(n19) );
  CLKINVX1 U20 ( .A(n34), .Y(n6) );
  CLKINVX1 U21 ( .A(n73), .Y(n9) );
  ADDFXL U22 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U23 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U24 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U25 ( .A(n67), .B(n63), .Y(n65) );
  XOR2X1 U26 ( .A(n66), .B(n63), .Y(n64) );
  OAI22XL U27 ( .A0(n6), .A1(n26), .B0(n34), .B1(n25), .Y(dis_x[2]) );
  XNOR2X1 U28 ( .A(n28), .B(n24), .Y(n26) );
  XOR2X1 U29 ( .A(n27), .B(n24), .Y(n25) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n23) );
  NAND2X1 U31 ( .A(circle_y[0]), .B(n13), .Y(n62) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n75)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n66), .A1(n63), .B0(n69), .Y(n36) );
  XNOR2X1 U36 ( .A(n58), .B(n57), .Y(n59) );
  XOR2X1 U37 ( .A(n62), .B(n57), .Y(n60) );
  XOR2X1 U38 ( .A(in_y[1]), .B(n3), .Y(n57) );
  OAI22XL U39 ( .A0(n6), .A1(n21), .B0(n20), .B1(n34), .Y(dis_x[1]) );
  XNOR2X1 U40 ( .A(n19), .B(n18), .Y(n20) );
  XOR2X1 U41 ( .A(n23), .B(n18), .Y(n21) );
  XOR2X1 U42 ( .A(in_x[1]), .B(n1), .Y(n18) );
  CLKINVX1 U43 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U44 ( .A0(n27), .A1(n24), .B0(n30), .Y(n17) );
  OA21XL U45 ( .A0(n19), .A1(n2), .B0(n16), .Y(n27) );
  AO21X1 U46 ( .A0(n2), .A1(n19), .B0(in_x[1]), .Y(n16) );
  OA21XL U47 ( .A0(n58), .A1(n4), .B0(n35), .Y(n66) );
  AO21X1 U48 ( .A0(n4), .A1(n58), .B0(in_y[1]), .Y(n35) );
  OAI31XL U49 ( .A0(n34), .A1(n33), .A2(n8), .B0(n32), .Y(dis_x[3]) );
  CLKINVX1 U50 ( .A(n29), .Y(n8) );
  OA22X1 U51 ( .A0(n7), .A1(in_x[2]), .B0(n30), .B1(n27), .Y(n33) );
  OAI211X1 U52 ( .A0(n31), .A1(n30), .B0(n34), .C0(n29), .Y(n32) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n30), .Y(n24) );
  AOI2BB1X1 U54 ( .A0N(in_y[2]), .A1N(n10), .B0(n69), .Y(n63) );
  OAI2BB1X1 U55 ( .A0N(n4), .A1N(n62), .B0(n61), .Y(n67) );
  OAI21XL U56 ( .A0(n4), .A1(n62), .B0(in_y[1]), .Y(n61) );
  XOR2X1 U57 ( .A(circle_y[3]), .B(in_y[3]), .Y(n68) );
  XOR2X1 U58 ( .A(circle_x[3]), .B(in_x[3]), .Y(n29) );
  OAI2BB1X1 U59 ( .A0N(n2), .A1N(n23), .B0(n22), .Y(n28) );
  OAI21XL U60 ( .A0(n2), .A1(n23), .B0(in_x[1]), .Y(n22) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n30) );
  AND2X2 U62 ( .A(in_y[2]), .B(n10), .Y(n69) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  CLKINVX1 U64 ( .A(in_y[0]), .Y(n13) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n28), .Y(n31) );
  OA21XL U66 ( .A0(in_y[2]), .A1(n10), .B0(n67), .Y(n70) );
  CLKINVX1 U67 ( .A(n68), .Y(n11) );
  OA22X1 U68 ( .A0(n10), .A1(in_y[2]), .B0(n69), .B1(n66), .Y(n72) );
  OAI211X1 U69 ( .A0(n70), .A1(n69), .B0(n73), .C0(n68), .Y(n71) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule


module Inside_19 ( in_x, in_y, circle_x, circle_y, is_inside );
  input [3:0] in_x;
  input [3:0] in_y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   N23, dis_4_, dis_3_, dis_2_, dis_1_, dis_0_, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [3:0] dis_x;
  wire   [3:0] dis_y;
  wire   [3:1] add_314_carry;

  OAI22XL U3 ( .A0(n9), .A1(n48), .B0(n40), .B1(n49), .Y(dis_y[2]) );
  OAI22XL U4 ( .A0(circle_x[3]), .A1(n14), .B0(n76), .B1(n64), .Y(n59) );
  OAI22XL U5 ( .A0(n9), .A1(n53), .B0(n54), .B1(n40), .Y(dis_y[1]) );
  OAI31XL U6 ( .A0(n40), .A1(n41), .A2(n11), .B0(n42), .Y(dis_y[3]) );
  OAI22XL U7 ( .A0(circle_y[3]), .A1(n12), .B0(n57), .B1(n45), .Y(n40) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(circle_y[1]), .Y(n3) );
  ADDFXL U10 ( .A(dis_x[2]), .B(dis_y[2]), .CI(add_314_carry[2]), .CO(
        add_314_carry[3]), .S(dis_2_) );
  CLKINVX1 U11 ( .A(n1), .Y(n2) );
  NAND2BX1 U12 ( .AN(n55), .B(n51), .Y(dis_y[0]) );
  NAND2BX1 U13 ( .AN(n74), .B(n70), .Y(dis_x[0]) );
  CLKINVX1 U14 ( .A(circle_x[2]), .Y(n7) );
  OR2X1 U15 ( .A(n37), .B(N23), .Y(is_inside) );
  NOR4BBX1 U16 ( .AN(dis_y[1]), .BN(dis_x[1]), .C(n38), .D(n39), .Y(n37) );
  XNOR2X1 U17 ( .A(dis_x[0]), .B(dis_y[0]), .Y(n39) );
  NOR2X1 U18 ( .A(n13), .B(circle_y[0]), .Y(n55) );
  CLKINVX1 U19 ( .A(n40), .Y(n9) );
  CLKINVX1 U20 ( .A(n59), .Y(n6) );
  ADDFXL U21 ( .A(dis_x[1]), .B(dis_y[1]), .CI(add_314_carry[1]), .CO(
        add_314_carry[2]), .S(dis_1_) );
  CLKBUFX3 U22 ( .A(circle_x[1]), .Y(n1) );
  ADDFXL U23 ( .A(dis_x[3]), .B(dis_y[3]), .CI(add_314_carry[3]), .CO(dis_4_), 
        .S(dis_3_) );
  XNOR2X1 U24 ( .A(n46), .B(n50), .Y(n48) );
  XOR2X1 U25 ( .A(n47), .B(n50), .Y(n49) );
  OAI22XL U26 ( .A0(n6), .A1(n67), .B0(n59), .B1(n68), .Y(dis_x[2]) );
  XNOR2X1 U27 ( .A(n65), .B(n69), .Y(n67) );
  XOR2X1 U28 ( .A(n66), .B(n69), .Y(n68) );
  NAND2X1 U29 ( .A(circle_y[0]), .B(n13), .Y(n51) );
  NAND2X1 U30 ( .A(circle_x[0]), .B(n15), .Y(n70) );
  NOR2X1 U31 ( .A(n15), .B(circle_x[0]), .Y(n74) );
  OR4X1 U32 ( .A(dis_x[2]), .B(dis_x[3]), .C(dis_y[2]), .D(dis_y[3]), .Y(n38)
         );
  CLKINVX1 U33 ( .A(circle_y[2]), .Y(n10) );
  CLKINVX1 U34 ( .A(in_y[3]), .Y(n12) );
  AOI21X1 U35 ( .A0(n47), .A1(n50), .B0(n44), .Y(n57) );
  CLKINVX1 U36 ( .A(in_x[3]), .Y(n14) );
  AOI21X1 U37 ( .A0(n66), .A1(n69), .B0(n63), .Y(n76) );
  XNOR2X1 U38 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U39 ( .A(n51), .B(n56), .Y(n53) );
  XOR2X1 U40 ( .A(in_y[1]), .B(n3), .Y(n56) );
  OAI22XL U41 ( .A0(n6), .A1(n72), .B0(n73), .B1(n59), .Y(dis_x[1]) );
  XNOR2X1 U42 ( .A(n74), .B(n75), .Y(n73) );
  XOR2X1 U43 ( .A(n70), .B(n75), .Y(n72) );
  XOR2X1 U44 ( .A(in_x[1]), .B(n1), .Y(n75) );
  OA21XL U45 ( .A0(n55), .A1(n4), .B0(n58), .Y(n47) );
  AO21X1 U46 ( .A0(n4), .A1(n55), .B0(in_y[1]), .Y(n58) );
  OA21XL U47 ( .A0(n74), .A1(n2), .B0(n77), .Y(n66) );
  AO21X1 U48 ( .A0(n2), .A1(n74), .B0(in_x[1]), .Y(n77) );
  CLKINVX1 U49 ( .A(n45), .Y(n11) );
  OA22X1 U50 ( .A0(n10), .A1(in_y[2]), .B0(n44), .B1(n47), .Y(n41) );
  OAI211X1 U51 ( .A0(n43), .A1(n44), .B0(n40), .C0(n45), .Y(n42) );
  AOI2BB1X1 U52 ( .A0N(in_y[2]), .A1N(n10), .B0(n44), .Y(n50) );
  AOI2BB1X1 U53 ( .A0N(in_x[2]), .A1N(n7), .B0(n63), .Y(n69) );
  XOR2X1 U54 ( .A(circle_x[3]), .B(in_x[3]), .Y(n64) );
  XOR2X1 U55 ( .A(circle_y[3]), .B(in_y[3]), .Y(n45) );
  OAI2BB1X1 U56 ( .A0N(n4), .A1N(n51), .B0(n52), .Y(n46) );
  OAI21XL U57 ( .A0(n4), .A1(n51), .B0(in_y[1]), .Y(n52) );
  OAI2BB1X1 U58 ( .A0N(n2), .A1N(n70), .B0(n71), .Y(n65) );
  OAI21XL U59 ( .A0(n2), .A1(n70), .B0(in_x[1]), .Y(n71) );
  AND2X2 U60 ( .A(in_y[2]), .B(n10), .Y(n44) );
  AND2X2 U61 ( .A(in_x[2]), .B(n7), .Y(n63) );
  CLKINVX1 U62 ( .A(in_y[0]), .Y(n13) );
  CLKINVX1 U63 ( .A(in_x[0]), .Y(n15) );
  OA21XL U64 ( .A0(in_y[2]), .A1(n10), .B0(n46), .Y(n43) );
  OA21XL U65 ( .A0(in_x[2]), .A1(n7), .B0(n65), .Y(n62) );
  OAI31XL U66 ( .A0(n59), .A1(n60), .A2(n8), .B0(n61), .Y(dis_x[3]) );
  CLKINVX1 U67 ( .A(n64), .Y(n8) );
  OA22X1 U68 ( .A0(n7), .A1(in_x[2]), .B0(n63), .B1(n66), .Y(n60) );
  OAI211X1 U69 ( .A0(n62), .A1(n63), .B0(n59), .C0(n64), .Y(n61) );
  AND2X1 U70 ( .A(dis_y[0]), .B(dis_x[0]), .Y(add_314_carry[1]) );
  XOR2X1 U71 ( .A(dis_y[0]), .B(dis_x[0]), .Y(dis_0_) );
  OA21XL U72 ( .A0(dis_1_), .A1(dis_0_), .B0(dis_2_), .Y(n5) );
  NOR3X1 U73 ( .A(n5), .B(dis_4_), .C(dis_3_), .Y(N23) );
endmodule

