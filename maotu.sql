/*
 Navicat Premium Data Transfer

 Source Server         : 0522
 Source Server Type    : MySQL
 Source Server Version : 50630
 Source Host           : localhost:3306
 Source Schema         : maotu

 Target Server Type    : MySQL
 Target Server Version : 50630
 File Encoding         : 65001

 Date: 12/07/2018 20:00:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminID` int(50) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminPWD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');
INSERT INTO `admin` VALUES (2, '123', '123');
INSERT INTO `admin` VALUES (3, 'zxx', '123');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `collectionID` int(50) NOT NULL AUTO_INCREMENT,
  `proID` int(50) NOT NULL,
  PRIMARY KEY (`collectionID`) USING BTREE,
  INDEX `collection_proID_fk`(`proID`) USING BTREE,
  CONSTRAINT `collection_proID_fk` FOREIGN KEY (`proID`) REFERENCES `production` (`proID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentID` int(50) NOT NULL AUTO_INCREMENT,
  `proID` int(50) NOT NULL,
  `userID` int(50) NOT NULL,
  `commentTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commentDetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`commentID`) USING BTREE,
  INDEX `comment_userID_fk`(`userID`) USING BTREE,
  INDEX `comment_proID_fk`(`proID`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`proID`) REFERENCES `production` (`proID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (2, 1, 1, '2018-07-04 07:22', '而闫中三和公主都是高冷傲娇自负型,所以他俩也是绝配');
INSERT INTO `comment` VALUES (4, 1, 2, '2018-06-29 16:22', '出好慢啊啊啊');
INSERT INTO `comment` VALUES (5, 1, 1, '2018-06-28 04:46', '云云好可爱');
INSERT INTO `comment` VALUES (6, 1, 1, '2018-06-27 19:55', '炒鸡好看，男主炒鸡帅，而且我就喜欢有Q版插图的，幽默赞');
INSERT INTO `comment` VALUES (7, 2, 3, '2018-07-04 23:11', '紀米好可愛(ﾉ*>∀<)ﾉ♡');
INSERT INTO `comment` VALUES (8, 2, 2, '2018-06-28 15:28', '比起紀米，我還是更喜歡秦雅');
INSERT INTO `comment` VALUES (9, 2, 2, '2018-07-05 08:17', '索隆跟路飞全力打过，当初设定是实力相当，谁也没打赢。所以，他的强是注定的。');
INSERT INTO `comment` VALUES (10, 2, 3, '2018-07-05 00:05', '罗宾子美翻啊啊啊啊啊啊啊啊！！！！！！！');
INSERT INTO `comment` VALUES (16, 7, 4, '2018-07-04 15:03', '山治年终于过去了，索大年来');
INSERT INTO `comment` VALUES (18, 7, 4, '2018-07-05 08:17', '索隆跟路飞全力打过，当初设定是实力相当，谁也没打赢。所以，他的强是注定的。');
INSERT INTO `comment` VALUES (19, 7, 5, '2018-07-03 17:29', '哆啦A梦的手(｡･∀･)ﾉﾞ');
INSERT INTO `comment` VALUES (20, 8, 7, '2018-07-03 17:20', '董香姐姐是我的，你们谁也抢不走');
INSERT INTO `comment` VALUES (21, 8, 9, '2018-07-05 08:55', '更新慢是必然的，每次更新份量很足，画风剧情比一些漫画强太多了，表示永远支持一拳～');
INSERT INTO `comment` VALUES (22, 8, 14, '2018-07-05 08:16', '我是king，我现在已经不慌了2333');
INSERT INTO `comment` VALUES (23, 10, 16, '2018-07-05 03:05', '波罗斯:我要有伴了');
INSERT INTO `comment` VALUES (24, 10, 16, '2018-07-05 02:34', '对爆破的身份可以说是非常好奇了...');
INSERT INTO `comment` VALUES (25, 10, 8, '2018-06-30 06:19', '还可以哦^0^');
INSERT INTO `comment` VALUES (27, 11, 12, '2018-06-27 21:14', '太少了');
INSERT INTO `comment` VALUES (28, 11, 9, '2018-07-04 00:05', '等來等去卻等到一個番外篇');
INSERT INTO `comment` VALUES (29, 13, 14, '2018-06-04 01:51', '哥哥傑西cp萌芽中！');
INSERT INTO `comment` VALUES (30, 13, 9, '2018-07-05 11:18', '根据字迹辨认，满分的是林枫的，作弊说不过去啊，做多认为是田梦倩写错人，要问问为啥');
INSERT INTO `comment` VALUES (32, 13, 17, '2018-07-05 10:21', '顺拐~');
INSERT INTO `comment` VALUES (33, 13, 16, '2018-07-05 04:36', '对啊付款了还那几页，看毛毛虫啊');
INSERT INTO `comment` VALUES (34, 14, 11, '2018-07-04 18:01', '看这架势要憋大招了');
INSERT INTO `comment` VALUES (36, 14, 8, '2018-07-04 13:06', '可以快點更新吗');
INSERT INTO `comment` VALUES (38, 15, 6, '2018-07-04 23:07', '这~~~不能多画几个分镜？？他爹和主角的情绪递进也太快了吧？？');
INSERT INTO `comment` VALUES (40, 15, 7, '2018-07-01 08:52', '这谁啊？');
INSERT INTO `comment` VALUES (41, 16, 9, '2018-06-30 18:15', 'Real好搞笑。');
INSERT INTO `comment` VALUES (42, 16, 16, '2018-06-29 15:53', 'Real變得很強了哦');
INSERT INTO `comment` VALUES (44, 16, 9, '2018-06-23 19:11', '感覺中間少了什麼……');
INSERT INTO `comment` VALUES (47, 17, 7, '2018-06-16 04:40', '這麼少頁太誇了');
INSERT INTO `comment` VALUES (48, 17, 9, '2018-06-28 03:11', '这名字太出戏了。我一直看成郭盛。。皮一下还可以看成狗盛。。。。');
INSERT INTO `comment` VALUES (49, 18, 16, '2018-06-30 10:47', '不是說很聰明嗎？怎麼忘了女主(°▽°)');
INSERT INTO `comment` VALUES (50, 18, 8, '2018-06-23 05:29', '男主你完了你以后要为你现在的金鱼记忆付出代价！！！！！！！！！！女主真可爱 喜欢这样的宝宝！');
INSERT INTO `comment` VALUES (52, 19, 7, '2018-06-21 18:26', '好有趣！老師出新作真的太感動了啊啊啊啊');
INSERT INTO `comment` VALUES (53, 19, 14, '2018-06-28 14:36', '全国大赛就打两场吗？后来呢。我没看够，真没看够');
INSERT INTO `comment` VALUES (54, 20, 8, '2018-06-23 14:28', '晴子真女神！每个篮球手心里都有一个赤木晴子。除了流川枫');
INSERT INTO `comment` VALUES (55, 21, 17, '2018-05-31 21:23', '看了不知道是第几遍了已经');
INSERT INTO `comment` VALUES (56, 21, 17, '2018-07-05 06:52', '又是一部有生之年');
INSERT INTO `comment` VALUES (57, 22, 7, '2018-06-26 23:02', '魔王軍的幹部出現了！！！');
INSERT INTO `comment` VALUES (58, 22, 8, '2018-06-24 20:12', '早期的傳統異世界 vs 現代的科幻系');
INSERT INTO `comment` VALUES (60, 23, 5, '2018-06-24 17:00', '主角: 異世界的魔法太落後了，但是我的魔法更落後');
INSERT INTO `comment` VALUES (61, 23, 6, '2018-04-18 22:43', '复活？');
INSERT INTO `comment` VALUES (62, 24, 17, '2018-07-03 15:51', '烧开了没可还行，不是洗澡而是煮汤吗');
INSERT INTO `comment` VALUES (64, 24, 13, '2018-07-04 22:44', '更新更新更新');
INSERT INTO `comment` VALUES (65, 25, 13, '2018-07-04 22:44', '更新更新更新');
INSERT INTO `comment` VALUES (66, 25, 17, '2018-05-31 21:23', '看了不知道是第几遍了已经');
INSERT INTO `comment` VALUES (67, 25, 17, '2018-07-05 06:52', '又是一部有生之年');
INSERT INTO `comment` VALUES (68, 25, 9, '2018-06-28 03:11', '这名字太出戏了。我一直看成郭盛。。皮一下还可以看成狗盛。。。。');
INSERT INTO `comment` VALUES (69, 27, 9, '2018-06-28 03:11', '这名字太出戏了。我一直看成郭盛。。皮一下还可以看成狗盛。。。。');
INSERT INTO `comment` VALUES (70, 27, 9, '2018-06-28 03:11', '这名字太出戏了。我一直看成郭盛。。皮一下还可以看成狗盛。。。。');
INSERT INTO `comment` VALUES (71, 27, 7, '2018-06-26 23:02', '魔王軍的幹部出現了！！！');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `concenID` int(50) NOT NULL AUTO_INCREMENT,
  `concenName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conPublish` int(50) NULL DEFAULT NULL,
  `conVisit` int(50) NULL DEFAULT NULL,
  `confans` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `conmessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `conImg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`concenID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '爆鱼热干面', 15, 450, '100', '爆鱼热干面 更新了 《（新作半价）大魔王与小可爱》更新剧情~+上新大魔王徽章！...', 'img/2.jpg');
INSERT INTO `message` VALUES (2, '海贼王', 20, 120, '90', '海贼王 表白了 《变装少女闯男关（完结）》的角色洛司辰 ...', 'img/4.jpg');
INSERT INTO `message` VALUES (3, '沧海兮兮', 25, 100, '120', '沧海兮兮 更新了 《情不紫禁城·康熙十二年》更新1500字：乾清宫落日初吻...', 'img/5.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `newsID` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsDetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `newsTime` datetime(0) NULL DEFAULT NULL,
  `newsAuthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorImg` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsHotspot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsMajor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsList` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`newsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '《妖神记》', '摇曳露营与“村の鍛造屋”的新联动周边发售，本次发售的周边是三种十分实用的物品。', '2018-03-06 14:51:46', '摇曳露营与“村の鍛造屋”的新联动周边发售.', 'img/002.jpg', 'img/t2.png', '1', NULL, NULL, '不知道大家有没有读过《妖神记》这部玄幻小说，它讲述的是一个“资质平庸的穷小子”通过“珍宝”时空妖灵之书，在和人对战即将死亡的时候，“啪”的一下YY了一小下，就重新回到了自己的小时候，然后就开始了自己装逼耍酷的一生。离奇不离奇，扯不扯。最关键的是人家还是穷小子的时候就就抱的了美人归，然后回来以后在人家还是萝莉的时候就重新追到了手，你说是不是实力，真是实力呀。');
INSERT INTO `news` VALUES (2, '《幼女战记》', '《幼女战记》宣布将于6月29日在新潮社的WEB漫画站《くらげバンチ》上...', '2018-04-12 14:32:23', '《幼女战记》原作者カルロ・ゼン（Carlo Zen）.', 'img/m7.jpg', 'img/t1.png', '2', NULL, NULL, '  カルロ・ゼン曾创作出《幼女战记》《约定之国》等作品，此次新作以战争刚刚结束的国家为题材。讲述了名为“チュファルテク合同共和国”的国家夹在两大对立国之间，充当缓冲国的角色，而国民们对于两大国家越过本国的冲突，很多人十分不满。而面对这种境地的特务机关需要面对所有和平的威胁，死守国家安全，与反对他们的爱国人死陷入暗斗。');
INSERT INTO `news` VALUES (3, '《卖火柴的小女孩》', '推特网友jyupiponi近日公开的漫画《卖火柴的小女孩与可怕大哥哥的故事》受到了不少网友的好评', '2018-07-02 14:58:23', '这次的漫画是根据“卖火柴的小女孩”创作的。', 'img/m6.jpg', 'img/t4.png', '3', NULL, NULL, '推特网友jyupiponi近日公开的漫画《卖火柴的小女孩与可怕大哥哥的故事》受到了不少网友的好评在公开10天的时间里，就有近7万人点赞。这次的漫画是根据“卖火柴的小女孩”的进行创作的。正当小女孩由于饥寒交加想要睡过去的时候，一位看上去就很吓人的大哥哥突然叼着烟说要买火柴。');
INSERT INTO `news` VALUES (4, '《空色墙壁》', '本作的主人公是和祖母生活的15岁少女真壁爽空风童纯新感觉攀岩漫画熊孩子挑战攀岩……', '2018-05-16 15:09:38', '开始在TORICO的网站sukima上每月连载了。', 'img/m4.jpg', 'img/t1.png', '4', NULL, NULL, '风童纯新感觉攀岩漫画《空色墙壁》开始在TORICO的网站sukima上每月连载了。本作的主人公是和祖母生活的15岁少女真壁爽空。擅长爬树的她在一个快要迟到的早上，为了抄近道而开始攀爬校门前的高墙。虽然经历了多次失败，但身为“冠军的女儿”的爽空，心怀对母亲的思念，始终没有放弃……');
INSERT INTO `news` VALUES (5, '《死神》', '真人电影上映还有一个月的时间，官方在今天公开了角色预告，黑崎一护、朽木纷纷登场...', '2018-07-12 14:32:23', '相信提起“志村贵子”这个名字，经常看漫画的读者.', 'img/m3.jpg', 'img/t2.png', '5', NULL, NULL, '910话情报公开，在本集中路飞他们貌似抵达了和之国，但是中途又遇到了奇怪的情况。路飞和千阳号到了一个不知名的沙滩，然而同伴们却都不见了。话说这剧情真是进展的非常快，世界会议的剧情啥都没交代就直接结束了？');
INSERT INTO `news` VALUES (6, '《圣☆哥传》', '真人电视剧将由山田孝之担任制作总指挥、福田雄一负责监督和脚本。视觉图是截取的松山健...', '2018-06-06 10:03:18', '真人电视剧公布视觉图与VR影像！', 'img/m5.jpg', 'img/t3.png', '6', NULL, NULL, '漫画家中村光的人气作品《圣☆哥传》（圣☆おにいさん）早前已发布了将会拍摄真人版电视剧，而选角今回亦都正式释出了！《圣☆哥传》是讲述佛陀与耶稣在度过了世纪末的危机之后，来到人间渡假并合租一间公寓的生活故事，由于二人身份与性格、生活习惯等均截然不同而闹出不少笑话。');
INSERT INTO `news` VALUES (7, '《死神》真人电影角色预告 露琪亚生死决断气势十足', '距离《死神》真人电影上映还有一个月的时间，官方在今天公开了角色预告，黑崎一护、朽木露琪亚和石田雨龙纷纷登场，其中露琪亚也有大量的新画面公开。', '2018-06-18 11:30:01', ' 点击量：2363     评论：86', 'img/004.jpg', NULL, NULL, '1', NULL, '真人电影《死神》是根据2001年开始连载的同名漫画改编，漫画讲述了除了能看见灵以外，是个普通的高中生的黑崎一护，在一天从死神朽木露琪亚那里得到死神之力，与恶灵展开战斗的故事。漫画全74卷，累计发行部数高达9000万部。');
INSERT INTO `news` VALUES (8, '熊孩子挑战攀岩！风童纯推出新作漫画《空色墙壁》', '风童纯新感觉攀岩漫画《空色墙壁》开始在TORICO的网站sukima上每月连载了。本作的主人公是和祖母生活的15岁少女真壁爽空。擅长爬树的她在一个快要迟到的早上，为了抄近道而开始攀爬校门前的高墙……', '2018-01-18 11:38:35', ' 点击量：2363     评论：86', 'img/m1.jpg', NULL, NULL, '2', NULL, '《海贼王》910话情报公开，在本集中路飞他们貌似抵达了和之国，但是中途又遇到了奇怪的情况。路飞和千阳号到了一个不知名的沙滩，然而同伴们却都不见了。话说这剧情真是进展的非常快，世界会议的剧情啥都没交代就直接结束了？');
INSERT INTO `news` VALUES (9, '《幼女战记》原作者执笔，爱国漫画《卖国机关》即将开幕！', '2018年6月22日中午，《幼女战记》原作者カルロ・ゼン（Carlo Zen）在自己的推特上发布了一条置顶推文，宣布将于6月29日在新潮社的WEB漫画站《くらげバンチ》上开始连载新漫画《卖国机关》。', '2018-07-09 11:39:54', ' 点击量：2363     评论：86', 'img/m2.jpg', NULL, NULL, '3', NULL, '  カルロ・ゼン曾创作出《幼女战记》《约定之国》等作品，此次新作以战争刚刚结束的国家为题材。讲述了名为“チュファルテク合同共和国”的国家夹在两大对立国之间，充当缓冲国的角色，而国民们对于两大国家越过本国的冲突，很多人十分不满。而面对这种境地的特务机关需要面对所有和平的威胁，死守国家安全，与反对他们的爱国人死陷入暗斗。');
INSERT INTO `news` VALUES (10, '菲律宾的英雄被漫画化！《何塞•黎刹》面向全世界连载开始', '根据松井孝浩原作改编的漫画《何塞·黎刹》，于6月19日在TORICO的网站上开始连载。并且在面向全球的漫画网站MANGA.CLUB上也进行了刊载', '2018-06-12 11:41:27', ' 点击量：2363     评论：86', 'img/m3.jpg', NULL, NULL, '4', NULL, '本作联合了菲律宾的公司CREATIVE CONNECTIONS & COMMONS，将菲律宾独立运动的领导人何塞·黎刹的英雄事迹描绘了出来。通晓十五国的语言，并且同时拥有小说家、医生、画家等多重身份的他，用一本自己编著的小说，指引人民走向了革命的道路。漫画本篇全十话，第一话选择了何塞·黎刹的生日当天公布，以后..');
INSERT INTO `news` VALUES (11, '\"绝不和你这家伙做\"志村贵子单行本《Beautiful Everyday》', '相信提起“志村贵子”这个名字，经常看漫画的读者一定不会感到陌生，青花、放浪息子、不材的儿子和倔恋等等作品都相当精彩，她题材的新颖和选题的独特性经常能在读者圈子中产生不少的话题。', '2018-06-21 11:42:27', ' 点击量：2363     评论：86', 'img/m4.jpg', NULL, NULL, '5', NULL, '风童纯新感觉攀岩漫画《空色墙壁》开始在TORICO的网站sukima上每月连载了。本作的主人公是和祖母生活的15岁少女真壁爽空。擅长爬树的她在一个快要迟到的早上，为了抄近道而开始攀爬校门前的高墙。虽然经历了多次失败，但身为“冠军的女儿”的爽空，心怀对母亲的思念，始终没有放弃……');
INSERT INTO `news` VALUES (12, '《圣☆哥传》真人电视剧公布视觉图与VR影像！', '《圣☆哥传》真人电视剧将由山田孝之担任制作总指挥、福田雄一负责监督和脚本。视觉图是截取的由出演耶稣的松山健一与出演佛祖的染谷将太围绕在饭桌前的一幅日常景象。', '2018-03-03 11:43:19', ' 点击量：2363     评论：8', 'img/m5.jpg', NULL, NULL, '6', NULL, '漫画家中村光的人气作品《圣☆哥传》（圣☆おにいさん）早前已发布了将会拍摄真人版电视剧，而选角今回亦都正式释出了！《圣☆哥传》是讲述佛陀与耶稣在度过了世纪末的危机之后，来到人间渡假并合租一间公寓的生活故事，由于二人身份与性格、生活习惯等均截然不同而闹出不少笑话。');
INSERT INTO `news` VALUES (13, '漫画《卖火柴的小女孩与可怕大哥哥的故事》受好评', '推特网友jyupiponi近日公开的漫画《卖火柴的小女孩与可怕大哥哥的故事》受到了不少网友的好评在公开10天的时间里，就有近7万人点赞。这次的漫画是根据“卖火柴的小女孩”的进行创作的。', '2018-04-04 11:44:10', ' 点击量：2363     评论：8', 'img/m6.jpg', NULL, NULL, '7', NULL, '推特网友jyupiponi近日公开的漫画《卖火柴的小女孩与可怕大哥哥的故事》受到了不少网友的好评在公开10天的时间里，就有近7万人点赞。这次的漫画是根据“卖火柴的小女孩”的进行创作的。正当小女孩由于饥寒交加想要睡过去的时候，一位看上去就很吓人的大哥哥突然叼着烟说要买火柴。');
INSERT INTO `news` VALUES (14, '《摇曳露营△》本格派硬核周边发布', '摇曳露营与“村の鍛造屋”的新联动周边发售，不过这次与以往大家想象中挂饰/文件夹/景品这样的一般向周边不同，本次发售的周边是三种十分实用的物品，居家旅行实用顺手。', '2018-06-20 11:45:09', ' 点击量：2363     评论：90', 'img/m7.jpg', NULL, NULL, '8', NULL, '首先是这家锻造屋的一个非常独特的产品叫做“终极铁锤”（别问我为什么这么中二，它就叫ultimate hammer），与其他“终极铁锤”不同，除了有三种不同的锤头可选以外，这款锤子还使用了纹路密集的白桦木，最重要的是刻有摇曳露营主角们的剪影和锻造屋的logo。');
INSERT INTO `news` VALUES (15, '妖神记', '了解详情', NULL, '相关资讯', 'img/001.jpg', NULL, NULL, NULL, '1', NULL);
INSERT INTO `news` VALUES (16, '海贼王', '了解详情', NULL, '相关资讯', 'img/002.jpg', NULL, NULL, NULL, '2', NULL);
INSERT INTO `news` VALUES (17, '火凤燎原', '了解详情', NULL, '相关资讯', 'img/003.jpg', NULL, NULL, NULL, '3', NULL);
INSERT INTO `news` VALUES (18, '转生成为魔剑', '了解详情', NULL, '相关资讯', 'img/004.jpg', NULL, NULL, NULL, '4', NULL);

-- ----------------------------
-- Table structure for proclass
-- ----------------------------
DROP TABLE IF EXISTS `proclass`;
CREATE TABLE `proclass`  (
  `proClassID` int(50) NOT NULL AUTO_INCREMENT,
  `proClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`proClassID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of proclass
-- ----------------------------
INSERT INTO `proclass` VALUES (1, '热血');
INSERT INTO `proclass` VALUES (2, '搞笑');
INSERT INTO `proclass` VALUES (3, '青春');
INSERT INTO `proclass` VALUES (4, '奇幻');
INSERT INTO `proclass` VALUES (5, '恋爱');
INSERT INTO `proclass` VALUES (6, '校园');
INSERT INTO `proclass` VALUES (7, '百合');
INSERT INTO `proclass` VALUES (8, '耽美');
INSERT INTO `proclass` VALUES (9, '冒险');
INSERT INTO `proclass` VALUES (10, '后宫');
INSERT INTO `proclass` VALUES (11, '科幻');
INSERT INTO `proclass` VALUES (12, '战争');
INSERT INTO `proclass` VALUES (13, '悬疑');
INSERT INTO `proclass` VALUES (14, '推理');
INSERT INTO `proclass` VALUES (15, '恐怖');
INSERT INTO `proclass` VALUES (16, '神鬼');
INSERT INTO `proclass` VALUES (17, '历史');
INSERT INTO `proclass` VALUES (18, '同人');
INSERT INTO `proclass` VALUES (19, '运动');
INSERT INTO `proclass` VALUES (20, '绅士');
INSERT INTO `proclass` VALUES (21, '机甲');
INSERT INTO `proclass` VALUES (22, '日漫');
INSERT INTO `proclass` VALUES (23, '古风');
INSERT INTO `proclass` VALUES (24, '人气推荐');
INSERT INTO `proclass` VALUES (25, '最近更新');
INSERT INTO `proclass` VALUES (26, '轮播');

-- ----------------------------
-- Table structure for production
-- ----------------------------
DROP TABLE IF EXISTS `production`;
CREATE TABLE `production`  (
  `proID` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proIntroduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `proImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorID` int(50) NOT NULL,
  `proClassID` int(50) NOT NULL,
  `click` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `listClass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `showImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`proID`) USING BTREE,
  INDEX `production_userID_fk`(`authorID`) USING BTREE,
  INDEX `production_proClassID_fk`(`proClassID`) USING BTREE,
  CONSTRAINT `production_proClassID_fk` FOREIGN KEY (`proClassID`) REFERENCES `proclass` (`proClassID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `production_userID_fk` FOREIGN KEY (`authorID`) REFERENCES `users` (`userID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of production
-- ----------------------------
INSERT INTO `production` VALUES (1, '海贼王', '相传22年前，在一个童话般的世界里，曾经拥有一切的海贼王在走上断头台的时候对人们狂笑道：“想要我的财宝是吗，想要就给你们！去找吧，全世界的宝藏都在那里！”……自此开始，全世界勇敢的男人都离开了平庸的生活，走向了大海，向着埋藏海贼王宝藏的伟大航道挺进！世界简直成为了大海贼时代！ 在某个村子的的小孩莫奇。D.路飞对“海贼王”甚为仰慕，立志要成为新一代的海贼王。', 'img/pro/1.jpg', 5, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (2, '一拳超人', '一拳超人漫画 ，主人公埼玉原本是一名整日奔波于求职的普通人。3年前的一天偶然遇到了要对淘气少年下杀手的异变螃蟹人后', 'img/pro/2.jpg', 6, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (7, '入间同学入魔了', '入间同学入魔了漫画 ，周刊少年Champion上的新连载大攻势第五', 'img/pro/3.jpg', 8, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (8, '盾之勇者成名录', '盾之勇者成名录漫画 ，作为盾之勇者被召唤至异世界的岩谷尚文。 谁', 'img/pro/4.jpg', 11, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (10, '女子学院的男生', '男生转入美女如云的女校？！', 'img/pro/5.jpg', 7, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (11, '世界终焉的世界录', '英勇艾尔莱英和传送中的三大姬曾为了拯救世界而战斗。终焉战争结束后三百年—', 'img/pro/6.jpg', 13, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (12, '在地牢里寻求邂逅难道有错吗', '在地牢里寻求邂逅难道有错吗漫画 ，大迷宫都市欧拉里奥，下拥巨大的地下迷宫“地牢”的超级都市。', 'img/pro/7.jpg', 9, 4, '1000', '1', NULL);
INSERT INTO `production` VALUES (13, '灵剑尊', '强者遇袭，重返少年时代。 前世的仇人，今生，绝不会放过！待到灵剑长啸之时，天地三界，我为至尊！ 若有不从者，一剑，杀之！', 'img/pro/8.jpg', 10, 4, '1000', '1', NULL);
INSERT INTO `production` VALUES (14, '约定的梦幻岛', '约定的梦幻岛漫画 ，妈妈说外面的世界好可怕，我不信； 但是那一', 'img/pro/9.jpg', 1, 4, '1000', '1', NULL);
INSERT INTO `production` VALUES (15, '测不准的阿波连同学', '测不准的阿波连同学漫画 ，邻座的阿波连同学是个「小小一只」「安静」不过「测不准」的女孩子？', 'img/pro/10.jpg', 6, 1, '1000', '1', NULL);
INSERT INTO `production` VALUES (16, '圣女的魔力是万能的', '工作狂加班回家竟然被异世界召唤成为圣女！？', 'img/pro/11.jpg', 4, 4, '1000', '2', NULL);
INSERT INTO `production` VALUES (17, '事与愿违的不死冒险者', '在边境之地的万年铜级冒险者的主人公，十分不幸地遭遇到迷宫深处的强大魔物，败北了。当他回过神来，', 'img/pro/12.jpg', 4, 1, '1000', '2', NULL);
INSERT INTO `production` VALUES (18, 'Re:Monster', 'Re:Monster漫画 ，在一天夜里突然被妹妹跟踪杀死的伴杭彼方，突然发现自己已经转生为丑陋的哥布林。他开始运用自己', 'img/pro/13.jpg', 4, 4, '1000', '2', NULL);
INSERT INTO `production` VALUES (19, '不过是蜘蛛什么的', '不过是蜘蛛什么的漫画 ，让一个女生转生成蜘蛛实在是一件有些残忍的事情，能够接受自己转生成为蜘蛛的女性，', 'img/pro/14.jpg', 4, 1, '1000', '2', NULL);
INSERT INTO `production` VALUES (20, '魔笛MAGI', '故事内容故事讲述了一明魔神为了帮助别人实现别人愿望的故事，关键的时候还可以召唤巨大的魔神来帮助自己战斗', 'img/pro/15.jpg', 4, 1, '1000', '2', NULL);
INSERT INTO `production` VALUES (21, '异世界悠闲农家', '异世界悠闲农家漫画 ，和病魔斗争但最终死去的火乐，被神大人所复', 'img/pro/16.jpg', 4, 4, '1000', '2', NULL);
INSERT INTO `production` VALUES (22, '爱书的下克上', '爱书的下克上漫画 ，讲述了超级喜欢书的丽乃被书籍压死了之后转生', 'img/pro/17.jpg', 4, 1, '1000', '2', NULL);
INSERT INTO `production` VALUES (23, '监狱乐园', '监狱乐园漫画 ，被诱拐的少女们……神秘的监狱…… 在那前方究竟有什麼在等待著她们？', 'img/pro/18.jpg', 4, 4, '1000', '2', NULL);
INSERT INTO `production` VALUES (24, 'Let\'s Lagoon', '醒来的时候，那里是一个无人岛！！然后就开始了两个人的生', 'img/pro/19.jpg', 4, 1, '1000', '2', NULL);
INSERT INTO `production` VALUES (25, '赤与黑', '生于极道之家、这是我和大和的故事。', 'img/pro/20.jpg', 4, 1, '1000', '2', NULL);
INSERT INTO `production` VALUES (27, '蓝翅', '明蓝作为养女来到尚家，被养母南希视作死去女儿的替身，然而尚家两兄弟明晴和明静对她并不欢迎，玩偶的捉弄，虚伪的笑容，同一屋檐下的平静生活被搅乱·····', 'img/pro/240.jpg', 5, 24, '1000', NULL, 'img/tj1.jpg');
INSERT INTO `production` VALUES (28, '白夜玲珑', '平凡女孩玲珑的一天，本来想要打起精神好好过，却又搞得一团糟。原来是因为，最喜\r\n欢的网友最近突然开始不联系自己了，随着时间的推移她越来越烦恼。平凡的生活似乎正在发生微妙的变化....', 'img/pro/221.jpg', 7, 24, '1000', NULL, 'img/lb2.jpg');
INSERT INTO `production` VALUES (29, '帝王攻略', '楚渊与段白月一个在朝堂一个在西南，所有人都以为他们是相互对立的关系，却没想到他们之间却并不是如此。为这大好河山，楚渊要做一个好皇帝，段白月便成为他最大的助力。', 'img/pro/260.jpg', 6, 24, NULL, NULL, 'img/lb3.jpg');
INSERT INTO `production` VALUES (30, '凤凰劫', '神鸟倚风就差一劫就可以飞升凤凰啦，可历劫所需要的“灵”机缘巧合下被鞠陵于天山的一株小植物阿青误吞，从此神鸟不得不踏上“漫漫讨灵路”，两人的命运也因为一个“灵”而相互关联，从而扯出了一场百年前的纠葛...', 'img/pro/280.jpg', 4, 24, NULL, NULL, 'img/tj4.jpg');
INSERT INTO `production` VALUES (31, '狐妖小红娘', '南国公主的真正愿望', 'img/pro/220.jpg', 14, 26, NULL, NULL, 'img/lb1.jpg');
INSERT INTO `production` VALUES (32, '白夜玲珑', '最帅土地公公英雄救美', 'img/pro/221.jpg', 15, 26, NULL, NULL, 'img/lb2.jpg');
INSERT INTO `production` VALUES (33, '帝王攻略', '段白月单枪匹马逼退叛军', 'img/pro/260.jpg', 16, 26, NULL, NULL, 'img/lb3.jpg');
INSERT INTO `production` VALUES (34, '末日曙光', '小队内部矛盾激化', 'img/pro/261.jpg', 7, 26, NULL, NULL, 'img/lb4.jpg');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `sectionID` int(50) NOT NULL AUTO_INCREMENT,
  `sectionName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proID` int(50) NULL DEFAULT NULL,
  `sectionContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`sectionID`) USING BTREE,
  INDEX `proID`(`proID`) USING BTREE,
  CONSTRAINT `section_proID_fk` FOREIGN KEY (`proID`) REFERENCES `production` (`proID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (2, NULL, NULL, NULL);
INSERT INTO `section` VALUES (3, NULL, NULL, NULL);
INSERT INTO `section` VALUES (4, '6', NULL, NULL);
INSERT INTO `section` VALUES (5, NULL, NULL, NULL);
INSERT INTO `section` VALUES (6, NULL, NULL, NULL);
INSERT INTO `section` VALUES (7, NULL, NULL, NULL);
INSERT INTO `section` VALUES (8, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userID` int(50) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPWD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPhoto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userCity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userStar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'hejing', 'hejing', 'img/userPic/tx1.jpg', '200', '男', '潇潇', '天津', '白羊座');
INSERT INTO `users` VALUES (2, '123', '123', 'img/userPic/tx2.jpg', '12', '女', 'bigbang', '北京', '双子座');
INSERT INTO `users` VALUES (3, 'z98666', '123', 'img/userPic/tx3.jpg', '1212', '女', '木子风', '上海', '摩羯座');
INSERT INTO `users` VALUES (4, 'zxx', '123', 'img/userPic/tx4.jpg', '1000', '男', '踏雪动漫', '石家庄', '天秤座');
INSERT INTO `users` VALUES (5, 'hejing', 'hejing', 'img/userPic/tx1.jpg', '200', '男', '尾田荣一郎', '重庆', '狮子座');
INSERT INTO `users` VALUES (6, '123', '123', 'img/userPic/tx2.jpg', '12', '女', '村田雄介ONE', '上海', '天秤座');
INSERT INTO `users` VALUES (7, 'z98666', '123', 'img/userPic/tx3.jpg', '1212', '女', '触岛漫画', '重庆', '摩羯座');
INSERT INTO `users` VALUES (8, 'hejing', 'hejing', 'img/userPic/tx1.jpg', '200', '男', '西修', '石家庄', '巨像座');
INSERT INTO `users` VALUES (9, '123', '123', 'img/userPic/tx2.jpg', '12', '女', '钧泽懿', '南京', '射手座');
INSERT INTO `users` VALUES (10, 'z98666', '123', 'img/userPic/tx3.jpg', '1212', '女', '风炫动漫', '成都', '金牛座');
INSERT INTO `users` VALUES (11, 'zxx', '123', 'img/userPic/tx4.jpg', '1000', '男', 'アネコユサギ 藍屋球', '济南', '摩羯座');
INSERT INTO `users` VALUES (12, 'hejing', 'hejing', 'img/userPic/tx1.jpg', '200', '男', '天蚕土豆 编绘：Dr.大吉', '武汉', '双鱼座');
INSERT INTO `users` VALUES (13, 'zxx', '123', 'img/userPic/tx4.jpg', '1000', '男', '雨水龙', '长沙', '摩羯座');
INSERT INTO `users` VALUES (14, 'tuoxiaoxin', 'tuoxiaoxin', NULL, '30000', '男', '庹小新', '合肥', '金牛座');
INSERT INTO `users` VALUES (15, 'hehex', 'hehex', NULL, '25000', '男', 'HeHex小林', '南京', '摩羯座');
INSERT INTO `users` VALUES (16, 'yxls', 'yxls', NULL, '50000', '女', '语笑阑珊', '济南', '狮子座');
INSERT INTO `users` VALUES (17, 'fei', 'fei', NULL, '60000', '男', '飞天夜翔', '长沙', '天秤座');

SET FOREIGN_KEY_CHECKS = 1;
