var proData=[{pk:1,pv:'北京'},{pk:2,pv:'上海'},{pk:3,pv:'天津'},{pk:4,pv:'重庆'},{pk:5,pv:'河北'},{pk:6,pv:'山西'},{pk:7,pv:'河南'},{pk:8,pv:'辽宁'},{pk:9,pv:'吉林'},{pk:10,pv:'黑龙江'},{pk:11,pv:'内蒙古'},{pk:12,pv:'江苏'},{pk:13,pv:'山东'},{pk:14,pv:'安徽'},{pk:15,pv:'浙江'},{pk:16,pv:'福建'},{pk:17,pv:'湖北'},{pk:18,pv:'湖南'},{pk:19,pv:'广东'},{pk:20,pv:'广西'},{pk:21,pv:'江西'},{pk:22,pv:'四川'},{pk:23,pv:'海南'},{pk:24,pv:'贵州'},{pk:25,pv:'云南'},{pk:26,pv:'西藏'},{pk:27,pv:'陕西'},{pk:28,pv:'甘肃'},{pk:29,pv:'青海'},{pk:30,pv:'宁夏'},{pk:31,pv:'新疆'},{pk:32,pv:'台湾'},{pk:42,pv:'香港'},{pk:43,pv:'澳门'}]
var cityData=[{pk:1,ck:72,cv:'朝阳区'},{pk:1,ck:2800,cv:'海淀区'},{pk:1,ck:2801,cv:'西城区'},{pk:1,ck:2802,cv:'东城区'},{pk:1,ck:2803,cv:'崇文区'},{pk:1,ck:2804,cv:'宣武区'},{pk:1,ck:2805,cv:'丰台区'},{pk:1,ck:2806,cv:'石景山区'},{pk:1,ck:2807,cv:'门头沟'},{pk:1,ck:2808,cv:'房山区'},{pk:1,ck:2809,cv:'通州区'},{pk:1,ck:2810,cv:'大兴区'},{pk:1,ck:2812,cv:'顺义区'},{pk:1,ck:2814,cv:'怀柔区'},{pk:1,ck:2816,cv:'密云区'},{pk:1,ck:2901,cv:'昌平区'},{pk:1,ck:2953,cv:'平谷区'},{pk:1,ck:3065,cv:'延庆县'},{pk:2,ck:78,cv:'黄浦区'},{pk:2,ck:2813,cv:'徐汇区'},{pk:2,ck:2815,cv:'长宁区'},{pk:2,ck:2817,cv:'静安区'},{pk:2,ck:2820,cv:'闸北区'},{pk:2,ck:2822,cv:'虹口区'},{pk:2,ck:2823,cv:'杨浦区'},{pk:2,ck:2824,cv:'宝山区'},{pk:2,ck:2825,cv:'闵行区'},{pk:2,ck:2826,cv:'嘉定区'},{pk:2,ck:2830,cv:'浦东新区'},{pk:2,ck:2833,cv:'青浦区'},{pk:2,ck:2834,cv:'松江区'},{pk:2,ck:2835,cv:'金山区'},{pk:2,ck:2837,cv:'奉贤区'},{pk:2,ck:2841,cv:'普陀区'},{pk:2,ck:2919,cv:'崇明县'},{pk:3,ck:51035,cv:'东丽区'},{pk:3,ck:51036,cv:'和平区'},{pk:3,ck:51037,cv:'河北区'},{pk:3,ck:51038,cv:'河东区'},{pk:3,ck:51039,cv:'河西区'},{pk:3,ck:51040,cv:'红桥区'},{pk:3,ck:51041,cv:'蓟县'},{pk:3,ck:51042,cv:'静海县'},{pk:3,ck:51043,cv:'南开区'},{pk:3,ck:51044,cv:'塘沽区'},{pk:3,ck:51045,cv:'西青区'},{pk:3,ck:51046,cv:'武清区'},{pk:3,ck:51047,cv:'津南区'},{pk:3,ck:51048,cv:'汉沽区'},{pk:3,ck:51049,cv:'大港区'},{pk:3,ck:51050,cv:'北辰区'},{pk:3,ck:51051,cv:'宝坻区'},{pk:3,ck:51052,cv:'宁河县'},{pk:4,ck:113,cv:'万州区'},{pk:4,ck:114,cv:'涪陵区'},{pk:4,ck:115,cv:'梁平县'},{pk:4,ck:119,cv:'南川区'},{pk:4,ck:123,cv:'潼南县'},{pk:4,ck:126,cv:'大足区'},{pk:4,ck:128,cv:'黔江区'},{pk:4,ck:129,cv:'武隆县'},{pk:4,ck:130,cv:'丰都县'},{pk:4,ck:131,cv:'奉节县'},{pk:4,ck:132,cv:'开县'},{pk:4,ck:133,cv:'云阳县'},{pk:4,ck:134,cv:'忠县'},{pk:4,ck:135,cv:'巫溪县'},{pk:4,ck:136,cv:'巫山县'},{pk:4,ck:137,cv:'石柱县'},{pk:4,ck:138,cv:'彭水县'},{pk:4,ck:139,cv:'垫江县'},{pk:4,ck:140,cv:'酉阳县'},{pk:4,ck:141,cv:'秀山县'},{pk:4,ck:4164,cv:'城口县'},{pk:4,ck:48131,cv:'璧山县'},{pk:4,ck:48132,cv:'荣昌县'},{pk:4,ck:48133,cv:'铜梁县'},{pk:4,ck:48201,cv:'合川区'},{pk:4,ck:48202,cv:'巴南区'},{pk:4,ck:48203,cv:'北碚区'},{pk:4,ck:48204,cv:'江津区'},{pk:4,ck:48205,cv:'渝北区'},{pk:4,ck:48206,cv:'长寿区'},{pk:4,ck:48207,cv:'永川区'},{pk:4,ck:50950,cv:'江北区'},{pk:4,ck:50951,cv:'南岸区'},{pk:4,ck:50952,cv:'九龙坡区'},{pk:4,ck:50953,cv:'沙坪坝区'},{pk:4,ck:50954,cv:'大渡口区'},{pk:4,ck:50995,cv:'綦江区'},{pk:4,ck:51026,cv:'渝中区'},{pk:4,ck:51027,cv:'高新区'},{pk:4,ck:51028,cv:'北部新区'},{pk:5,ck:142,cv:'石家庄市'},{pk:5,ck:148,cv:'邯郸市'},{pk:5,ck:164,cv:'邢台市'},{pk:5,ck:199,cv:'保定市'},{pk:5,ck:224,cv:'张家口市'},{pk:5,ck:239,cv:'承德市'},{pk:5,ck:248,cv:'秦皇岛市'},{pk:5,ck:258,cv:'唐山市'},{pk:5,ck:264,cv:'沧州市'},{pk:5,ck:274,cv:'廊坊市'},{pk:5,ck:275,cv:'衡水市'},{pk:6,ck:303,cv:'太原市'},{pk:6,ck:309,cv:'大同市'},{pk:6,ck:318,cv:'阳泉市'},{pk:6,ck:325,cv:'晋城市'},{pk:6,ck:330,cv:'朔州市'},{pk:6,ck:336,cv:'晋中市'},{pk:6,ck:350,cv:'忻州市'},{pk:6,ck:368,cv:'吕梁市'},{pk:6,ck:379,cv:'临汾市'},{pk:6,ck:398,cv:'运城市'},{pk:6,ck:3074,cv:'长治市'},{pk:7,ck:412,cv:'郑州市'},{pk:7,ck:420,cv:'开封市'},{pk:7,ck:427,cv:'洛阳市'},{pk:7,ck:438,cv:'平顶山市'},{pk:7,ck:446,cv:'焦作市'},{pk:7,ck:454,cv:'鹤壁市'},{pk:7,ck:458,cv:'新乡市'},{pk:7,ck:468,cv:'安阳市'},{pk:7,ck:475,cv:'濮阳市'},{pk:7,ck:482,cv:'许昌市'},{pk:7,ck:489,cv:'漯河市'},{pk:7,ck:495,cv:'三门峡市'},{pk:7,ck:502,cv:'南阳市'},{pk:7,ck:517,cv:'商丘市'},{pk:7,ck:527,cv:'周口市'},{pk:7,ck:538,cv:'驻马店市'},{pk:7,ck:549,cv:'信阳市'},{pk:7,ck:2780,cv:'济源市'},{pk:8,ck:560,cv:'沈阳市'},{pk:8,ck:573,cv:'大连市'},{pk:8,ck:579,cv:'鞍山市'},{pk:8,ck:584,cv:'抚顺市'},{pk:8,ck:589,cv:'本溪市'},{pk:8,ck:593,cv:'丹东市'},{pk:8,ck:598,cv:'锦州市'},{pk:8,ck:604,cv:'葫芦岛市'},{pk:8,ck:609,cv:'营口市'},{pk:8,ck:613,cv:'盘锦市'},{pk:8,ck:617,cv:'阜新市'},{pk:8,ck:621,cv:'辽阳市'},{pk:8,ck:632,cv:'朝阳市'},{pk:8,ck:6858,cv:'铁岭市'},{pk:9,ck:639,cv:'长春市'},{pk:9,ck:644,cv:'吉林市'},{pk:9,ck:651,cv:'四平市'},{pk:9,ck:657,cv:'通化市'},{pk:9,ck:664,cv:'白山市'},{pk:9,ck:674,cv:'松原市'},{pk:9,ck:681,cv:'白城市'},{pk:9,ck:687,cv:'延边州'},{pk:9,ck:2992,cv:'辽源市'},{pk:10,ck:698,cv:'哈尔滨市'},{pk:10,ck:712,cv:'齐齐哈尔市'},{pk:10,ck:727,cv:'鹤岗市'},{pk:10,ck:731,cv:'双鸭山市'},{pk:10,ck:737,cv:'鸡西市'},{pk:10,ck:742,cv:'大庆市'},{pk:10,ck:753,cv:'伊春市'},{pk:10,ck:757,cv:'牡丹江市'},{pk:10,ck:765,cv:'佳木斯市'},{pk:10,ck:773,cv:'七台河市'},{pk:10,ck:776,cv:'黑河市'},{pk:10,ck:782,cv:'绥化市'},{pk:10,ck:793,cv:'大兴安岭地区'},{pk:11,ck:799,cv:'呼和浩特市'},{pk:11,ck:805,cv:'包头市'},{pk:11,ck:810,cv:'乌海市'},{pk:11,ck:812,cv:'赤峰市'},{pk:11,ck:823,cv:'乌兰察布市'},{pk:11,ck:835,cv:'锡林郭勒盟'},{pk:11,ck:848,cv:'呼伦贝尔市'},{pk:11,ck:870,cv:'鄂尔多斯市'},{pk:11,ck:880,cv:'巴彦淖尔市'},{pk:11,ck:891,cv:'阿拉善盟'},{pk:11,ck:895,cv:'兴安盟'},{pk:11,ck:902,cv:'通辽市'},{pk:12,ck:904,cv:'南京市'},{pk:12,ck:911,cv:'徐州市'},{pk:12,ck:919,cv:'连云港市'},{pk:12,ck:925,cv:'淮安市'},{pk:12,ck:933,cv:'宿迁市'},{pk:12,ck:939,cv:'盐城市'},{pk:12,ck:951,cv:'扬州市'},{pk:12,ck:959,cv:'泰州市'},{pk:12,ck:965,cv:'南通市'},{pk:12,ck:972,cv:'镇江市'},{pk:12,ck:978,cv:'常州市'},{pk:12,ck:984,cv:'无锡市'},{pk:12,ck:988,cv:'苏州市'},{pk:13,ck:1000,cv:'济南市'},{pk:13,ck:1007,cv:'青岛市'},{pk:13,ck:1016,cv:'淄博市'},{pk:13,ck:1022,cv:'枣庄市'},{pk:13,ck:1025,cv:'东营市'},{pk:13,ck:1032,cv:'潍坊市'},{pk:13,ck:1042,cv:'烟台市'},{pk:13,ck:1053,cv:'威海市'},{pk:13,ck:1058,cv:'莱芜市'},{pk:13,ck:1060,cv:'德州市'},{pk:13,ck:1072,cv:'临沂市'},{pk:13,ck:1081,cv:'聊城市'},{pk:13,ck:1090,cv:'滨州市'},{pk:13,ck:1099,cv:'菏泽市'},{pk:13,ck:1108,cv:'日照市'},{pk:13,ck:1112,cv:'泰安市'},{pk:13,ck:2900,cv:'济宁市'},{pk:14,ck:1114,cv:'铜陵市'},{pk:14,ck:1116,cv:'合肥市'},{pk:14,ck:1121,cv:'淮南市'},{pk:14,ck:1124,cv:'淮北市'},{pk:14,ck:1127,cv:'芜湖市'},{pk:14,ck:1132,cv:'蚌埠市'},{pk:14,ck:1137,cv:'马鞍山市'},{pk:14,ck:1140,cv:'安庆市'},{pk:14,ck:1151,cv:'黄山市'},{pk:14,ck:1159,cv:'滁州市'},{pk:14,ck:1167,cv:'阜阳市'},{pk:14,ck:1174,cv:'亳州市'},{pk:14,ck:1180,cv:'宿州市'},{pk:14,ck:1201,cv:'池州市'},{pk:14,ck:1206,cv:'六安市'},{pk:14,ck:2971,cv:'宣城市'},{pk:15,ck:1158,cv:'宁波市'},{pk:15,ck:1213,cv:'杭州市'},{pk:15,ck:1233,cv:'温州市'},{pk:15,ck:1243,cv:'嘉兴市'},{pk:15,ck:1250,cv:'湖州市'},{pk:15,ck:1255,cv:'绍兴市'},{pk:15,ck:1262,cv:'金华市'},{pk:15,ck:1273,cv:'衢州市'},{pk:15,ck:1280,cv:'丽水市'},{pk:15,ck:1290,cv:'台州市'},{pk:15,ck:1298,cv:'舟山市'},{pk:16,ck:1303,cv:'福州市'},{pk:16,ck:1315,cv:'厦门市'},{pk:16,ck:1317,cv:'三明市'},{pk:16,ck:1329,cv:'莆田市'},{pk:16,ck:1332,cv:'泉州市'},{pk:16,ck:1341,cv:'漳州市'},{pk:16,ck:1352,cv:'南平市'},{pk:16,ck:1362,cv:'龙岩市'},{pk:16,ck:1370,cv:'宁德市'},{pk:17,ck:1381,cv:'武汉市'},{pk:17,ck:1387,cv:'黄石市'},{pk:17,ck:1396,cv:'襄阳市'},{pk:17,ck:1405,cv:'十堰市'},{pk:17,ck:1413,cv:'荆州市'},{pk:17,ck:1421,cv:'宜昌市'},{pk:17,ck:1432,cv:'孝感市'},{pk:17,ck:1441,cv:'黄冈市'},{pk:17,ck:1458,cv:'咸宁市'},{pk:17,ck:1466,cv:'恩施州'},{pk:17,ck:1475,cv:'鄂州市'},{pk:17,ck:1477,cv:'荆门市'},{pk:17,ck:1479,cv:'随州市'},{pk:17,ck:2922,cv:'潜江市'},{pk:17,ck:2980,cv:'天门市'},{pk:17,ck:2983,cv:'仙桃市'},{pk:17,ck:3154,cv:'神农架林区'},{pk:18,ck:1482,cv:'长沙市'},{pk:18,ck:1488,cv:'株洲市'},{pk:18,ck:1495,cv:'湘潭市'},{pk:18,ck:1499,cv:'韶山市'},{pk:18,ck:1501,cv:'衡阳市'},{pk:18,ck:1511,cv:'邵阳市'},{pk:18,ck:1522,cv:'岳阳市'},{pk:18,ck:1530,cv:'常德市'},{pk:18,ck:1540,cv:'张家界市'},{pk:18,ck:1544,cv:'郴州市'},{pk:18,ck:1555,cv:'益阳市'},{pk:18,ck:1560,cv:'永州市'},{pk:18,ck:1574,cv:'怀化市'},{pk:18,ck:1586,cv:'娄底市'},{pk:18,ck:1592,cv:'湘西州'},{pk:19,ck:1601,cv:'广州市'},{pk:19,ck:1607,cv:'深圳市'},{pk:19,ck:1609,cv:'珠海市'},{pk:19,ck:1611,cv:'汕头市'},{pk:19,ck:1617,cv:'韶关市'},{pk:19,ck:1627,cv:'河源市'},{pk:19,ck:1634,cv:'梅州市'},{pk:19,ck:1643,cv:'惠州市'},{pk:19,ck:1650,cv:'汕尾市'},{pk:19,ck:1655,cv:'东莞市'},{pk:19,ck:1657,cv:'中山市'},{pk:19,ck:1659,cv:'江门市'},{pk:19,ck:1666,cv:'佛山市'},{pk:19,ck:1672,cv:'阳江市'},{pk:19,ck:1677,cv:'湛江市'},{pk:19,ck:1684,cv:'茂名市'},{pk:19,ck:1690,cv:'肇庆市'},{pk:19,ck:1698,cv:'云浮市'},{pk:19,ck:1704,cv:'清远市'},{pk:19,ck:1705,cv:'潮州市'},{pk:19,ck:1709,cv:'揭阳市'},{pk:20,ck:1715,cv:'南宁市'},{pk:20,ck:1720,cv:'柳州市'},{pk:20,ck:1726,cv:'桂林市'},{pk:20,ck:1740,cv:'梧州市'},{pk:20,ck:1746,cv:'北海市'},{pk:20,ck:1749,cv:'防城港市'},{pk:20,ck:1753,cv:'钦州市'},{pk:20,ck:1757,cv:'贵港市'},{pk:20,ck:1761,cv:'玉林市'},{pk:20,ck:1792,cv:'贺州市'},{pk:20,ck:1806,cv:'百色市'},{pk:20,ck:1818,cv:'河池市'},{pk:20,ck:3044,cv:'来宾市'},{pk:20,ck:3168,cv:'崇左市'},{pk:21,ck:1827,cv:'南昌市'},{pk:21,ck:1832,cv:'景德镇市'},{pk:21,ck:1836,cv:'萍乡市'},{pk:21,ck:1842,cv:'新余市'},{pk:21,ck:1845,cv:'九江市'},{pk:21,ck:1857,cv:'鹰潭市'},{pk:21,ck:1861,cv:'上饶市'},{pk:21,ck:1874,cv:'宜春市'},{pk:21,ck:1885,cv:'抚州市'},{pk:21,ck:1898,cv:'吉安市'},{pk:21,ck:1911,cv:'赣州市'},{pk:22,ck:1930,cv:'成都市'},{pk:22,ck:1946,cv:'自贡市'},{pk:22,ck:1950,cv:'攀枝花市'},{pk:22,ck:1954,cv:'泸州市'},{pk:22,ck:1960,cv:'绵阳市'},{pk:22,ck:1962,cv:'德阳市'},{pk:22,ck:1977,cv:'广元市'},{pk:22,ck:1983,cv:'遂宁市'},{pk:22,ck:1988,cv:'内江市'},{pk:22,ck:1993,cv:'乐山市'},{pk:22,ck:2005,cv:'宜宾市'},{pk:22,ck:2016,cv:'广安市'},{pk:22,ck:2022,cv:'南充市'},{pk:22,ck:2033,cv:'达州市'},{pk:22,ck:2042,cv:'巴中市'},{pk:22,ck:2047,cv:'雅安市'},{pk:22,ck:2058,cv:'眉山市'},{pk:22,ck:2065,cv:'资阳市'},{pk:22,ck:2070,cv:'阿坝州'},{pk:22,ck:2084,cv:'甘孜州'},{pk:22,ck:2103,cv:'凉山州'},{pk:23,ck:2121,cv:'海口市'},{pk:23,ck:3034,cv:'儋州市'},{pk:23,ck:3115,cv:'琼海市'},{pk:23,ck:3137,cv:'万宁市'},{pk:23,ck:3173,cv:'东方市'},{pk:23,ck:3690,cv:'三亚市'},{pk:23,ck:3698,cv:'文昌市'},{pk:23,ck:3699,cv:'五指山市'},{pk:23,ck:3701,cv:'临高县'},{pk:23,ck:3702,cv:'澄迈县'},{pk:23,ck:3703,cv:'定安县'},{pk:23,ck:3704,cv:'屯昌县'},{pk:23,ck:3705,cv:'昌江县'},{pk:23,ck:3706,cv:'白沙县'},{pk:23,ck:3707,cv:'琼中县'},{pk:23,ck:3708,cv:'陵水县'},{pk:23,ck:3709,cv:'保亭县'},{pk:23,ck:3710,cv:'乐东县'},{pk:23,ck:3711,cv:'三沙市'},{pk:24,ck:2144,cv:'贵阳市'},{pk:24,ck:2150,cv:'六盘水市'},{pk:24,ck:2155,cv:'遵义市'},{pk:24,ck:2169,cv:'铜仁市'},{pk:24,ck:2180,cv:'毕节市'},{pk:24,ck:2189,cv:'安顺市'},{pk:24,ck:2196,cv:'黔西南州'},{pk:24,ck:2205,cv:'黔东南州'},{pk:24,ck:2222,cv:'黔南州'},{pk:25,ck:2235,cv:'昆明市'},{pk:25,ck:2247,cv:'曲靖市'},{pk:25,ck:2258,cv:'玉溪市'},{pk:25,ck:2270,cv:'昭通市'},{pk:25,ck:2281,cv:'普洱市'},{pk:25,ck:2291,cv:'临沧市'},{pk:25,ck:2298,cv:'保山市'},{pk:25,ck:2304,cv:'丽江市'},{pk:25,ck:2309,cv:'文山州'},{pk:25,ck:2318,cv:'红河州'},{pk:25,ck:2332,cv:'西双版纳州'},{pk:25,ck:2336,cv:'楚雄州'},{pk:25,ck:2347,cv:'大理州'},{pk:25,ck:2360,cv:'德宏州'},{pk:25,ck:2366,cv:'怒江州'},{pk:25,ck:4108,cv:'迪庆州'},{pk:26,ck:2951,cv:'拉萨市'},{pk:26,ck:3107,cv:'那曲地区'},{pk:26,ck:3129,cv:'山南地区'},{pk:26,ck:3138,cv:'昌都地区'},{pk:26,ck:3144,cv:'日喀则地区'},{pk:26,ck:3970,cv:'阿里地区'},{pk:26,ck:3971,cv:'林芝地区'},{pk:27,ck:2376,cv:'西安市'},{pk:27,ck:2386,cv:'铜川市'},{pk:27,ck:2390,cv:'宝鸡市'},{pk:27,ck:2402,cv:'咸阳市'},{pk:27,ck:2416,cv:'渭南市'},{pk:27,ck:2428,cv:'延安市'},{pk:27,ck:2442,cv:'汉中市'},{pk:27,ck:2454,cv:'榆林市'},{pk:27,ck:2468,cv:'商洛市'},{pk:27,ck:2476,cv:'安康市'},{pk:28,ck:2487,cv:'兰州市'},{pk:28,ck:2492,cv:'金昌市'},{pk:28,ck:2495,cv:'白银市'},{pk:28,ck:2501,cv:'天水市'},{pk:28,ck:2509,cv:'嘉峪关市'},{pk:28,ck:2518,cv:'平凉市'},{pk:28,ck:2525,cv:'庆阳市'},{pk:28,ck:2534,cv:'陇南市'},{pk:28,ck:2544,cv:'武威市'},{pk:28,ck:2549,cv:'张掖市'},{pk:28,ck:2556,cv:'酒泉市'},{pk:28,ck:2564,cv:'甘南州'},{pk:28,ck:2573,cv:'临夏州'},{pk:28,ck:3080,cv:'定西市'},{pk:29,ck:2580,cv:'西宁市'},{pk:29,ck:2585,cv:'海东地区'},{pk:29,ck:2592,cv:'海北州'},{pk:29,ck:2597,cv:'黄南州'},{pk:29,ck:2603,cv:'海南州'},{pk:29,ck:2605,cv:'果洛州'},{pk:29,ck:2612,cv:'玉树州'},{pk:29,ck:2620,cv:'海西州'},{pk:30,ck:2628,cv:'银川市'},{pk:30,ck:2632,cv:'石嘴山市'},{pk:30,ck:2637,cv:'吴忠市'},{pk:30,ck:2644,cv:'固原市'},{pk:30,ck:3071,cv:'中卫市'},{pk:31,ck:2652,cv:'乌鲁木齐市'},{pk:31,ck:2654,cv:'克拉玛依市'},{pk:31,ck:2656,cv:'石河子市'},{pk:31,ck:2658,cv:'吐鲁番地区'},{pk:31,ck:2662,cv:'哈密地区'},{pk:31,ck:2666,cv:'和田地区'},{pk:31,ck:2675,cv:'阿克苏地区'},{pk:31,ck:2686,cv:'喀什地区'},{pk:31,ck:2699,cv:'克孜勒苏州'},{pk:31,ck:2704,cv:'巴音郭楞州'},{pk:31,ck:2714,cv:'昌吉州'},{pk:31,ck:2723,cv:'博尔塔拉州'},{pk:31,ck:2727,cv:'伊犁州'},{pk:31,ck:2736,cv:'塔城地区'},{pk:31,ck:2744,cv:'阿勒泰地区'},{pk:31,ck:4110,cv:'五家渠市'},{pk:31,ck:4163,cv:'博尔塔拉蒙古自治州阿拉山口口岸'},{pk:31,ck:15945,cv:'阿拉尔市'},{pk:31,ck:15946,cv:'图木舒克市'},{pk:32,ck:2768,cv:'台湾'},{pk:42,ck:2754,cv:'香港特别行政区'},{pk:43,ck:2770,cv:'澳门特别行政区'}]