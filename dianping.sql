/*
Navicat MySQL Data Transfer

Source Server         : 10.51.162.21_3306
Source Server Version : 50561
Source Host           : 10.51.162.21:3306
Source Database       : dianping

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2019-12-09 15:14:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `At_AUid` int(11) NOT NULL,
  `At_Uid` int(11) NOT NULL,
  KEY `At_AUid` (`At_AUid`),
  KEY `At_Uid` (`At_Uid`),
  CONSTRAINT `attention_ibfk_1` FOREIGN KEY (`At_AUid`) REFERENCES `user` (`Uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `attention_ibfk_2` FOREIGN KEY (`At_Uid`) REFERENCES `user` (`Uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('1', '10');
INSERT INTO `attention` VALUES ('2', '9');
INSERT INTO `attention` VALUES ('3', '8');
INSERT INTO `attention` VALUES ('4', '7');
INSERT INTO `attention` VALUES ('5', '6');
INSERT INTO `attention` VALUES ('6', '5');
INSERT INTO `attention` VALUES ('7', '4');
INSERT INTO `attention` VALUES ('10', '1');
INSERT INTO `attention` VALUES ('8', '3');
INSERT INTO `attention` VALUES ('9', '2');

-- ----------------------------
-- Table structure for bar
-- ----------------------------
DROP TABLE IF EXISTS `bar`;
CREATE TABLE `bar` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `bar_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bar
-- ----------------------------
INSERT INTO `bar` VALUES ('1', '风暴SOS酒吧', '营业时间：周一至周日 全天', '营业中', '1', '沿江中路298号中区4007', '13544201147');
INSERT INTO `bar` VALUES ('2', '1881酒吧', '营业时间：周一至周日 全天', '营业中', '2', '沿江西路147号', '13925064669');
INSERT INTO `bar` VALUES ('3', '维多利亚酒吧', '营业时间：周一至周日 全天', '营业中', '3', '沿江中路241号', '15918567896');
INSERT INTO `bar` VALUES ('4', 'Midnight酒吧', '营业时间：周一至周日 全天', '营业中', '4', '珠江东路6号K11购物艺术中心8楼802号', '020-6681876');
INSERT INTO `bar` VALUES ('5', 'bbR', '营业时间：周一至周日 全天', '营业中', '5', '暄悦东街保利中悦广场3楼', '020-4478511');
INSERT INTO `bar` VALUES ('6', '晚装空间酒吧', '营业时间：周一至周日 全天', '营业中', '6', '中山三路33号中华广场十层', '19128661757');
INSERT INTO `bar` VALUES ('7', '般若酒吧', '营业时间：周一至周日 全天', '营业中', '7', '天河路365号天俊阁28层2804室', '18620201197');
INSERT INTO `bar` VALUES ('8', 'BRASSTON', '营业时间：周一至周日 全天', '营业中', '8', '盐运西正街1号', '17688389712');
INSERT INTO `bar` VALUES ('9', '美蒲国际俱乐部', '营业时间：周一至周日 全天', '营业中', '9', '金穗路28号丽晶都汇4楼408A', '18620605478');
INSERT INTO `bar` VALUES ('10', 'M2', '营业时间：周一至周日 全天', '营业中', '10', '兴安路15号', '18588884120');

-- ----------------------------
-- Table structure for bath
-- ----------------------------
DROP TABLE IF EXISTS `bath`;
CREATE TABLE `bath` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `bath_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bath
-- ----------------------------
INSERT INTO `bath` VALUES ('1', '金城桑拿会所', '营业时间：周一至周日 9：00-02：00', '营业中', '11', '平江路与平苑路交叉口300米', '13725701745');
INSERT INTO `bath` VALUES ('2', '九号行馆', '营业时间：周一至周日 9：00-02：00', '营业中', '12', '林和西路161号中泰国际广场4-7楼', '020-22222818');
INSERT INTO `bath` VALUES ('3', '御水泉国际水疗会', '营业时间：周一至周日 9：00-02：00', '营业中', '13', '兴南大道35号', '020-66852998');
INSERT INTO `bath` VALUES ('4', '水玲珑会馆', '营业时间：周一至周日 9：00-02：00', '营业中', '14', '中山二路菜园东路78号', '020-37651084');
INSERT INTO `bath` VALUES ('5', '在水一方商务休闲会所', '营业时间：周一至周日 9：00-02：00', '营业中', '15', '珠江新城海安路18号3楼', '020-83866666');
INSERT INTO `bath` VALUES ('6', '大浪淘沙', '营业时间：周一至周日 9：00-02：00', '营业中', '16', '冼村路100号利雅湾', '020-85275688');
INSERT INTO `bath` VALUES ('7', '金鼎城休闲会所', '营业时间：周一至周日 9：00-02：00', '营业中', '17', '兴南大道268号', '13532761154');
INSERT INTO `bath` VALUES ('8', '蓝色海岸国际水会', '营业时间：周一至周日 9：00-02：00', '营业中', '18', '人和镇太岗公路1号', '020-55688771');
INSERT INTO `bath` VALUES ('9', '马场水疗', '营业时间：周一至周日 9：00-02：00', '营业中', '19', '黄埔大道西668号跑马场内', '020-38887644');
INSERT INTO `bath` VALUES ('10', '龙之泉国际水疗会所', '营业时间：周一至周日 9：00-02：00', '营业中', '20', '洛溪新城北环路88号', '020-22845566');

-- ----------------------------
-- Table structure for chamber
-- ----------------------------
DROP TABLE IF EXISTS `chamber`;
CREATE TABLE `chamber` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `chamber_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chamber
-- ----------------------------
INSERT INTO `chamber` VALUES ('1', 'Xcape异时刻密室逃脱', '营业时间：周一至周日 9：00-02：00', '营业中', '61', '黄埔大道西74号花城汇北区负一层A区', '020-89280531');
INSERT INTO `chamber` VALUES ('2', '怪诞小镇原创剧情密室', '营业时间：周一至周日 9：00-02：00', '营业中', '62', '西湖路广百新翼商务中心2108', '18665692428');
INSERT INTO `chamber` VALUES ('3', '关你鬼室大型密室逃脱', '营业时间：周一至周日 9：00-02：00', '营业中', '63', '健康路岭南电商园3街47-48', '020-31104505');
INSERT INTO `chamber` VALUES ('4', 'T方密室', '营业时间：周一至周日 9：00-02：00', '营业中', '64', '体育西路28号', '020-85585656');
INSERT INTO `chamber` VALUES ('5', '大笨象原创剧情密室逃脱', '营业时间：周一至周日 9：00-02：00', '营业中', '65', '龙口横街28号丽柏国际酒店南塔2601', '16624717124');
INSERT INTO `chamber` VALUES ('6', '有點方真人恐怖密室', '营业时间：周一至周日 9：00-02：00', '营业中', '66', '文明路50号2层', '13556120122');
INSERT INTO `chamber` VALUES ('7', '光明代码真人密室逃脱', '营业时间：周一至周日 9：00-02：00', '营业中', '67', '西湖路63号光明广场B1楼B057铺', '13711770977');
INSERT INTO `chamber` VALUES ('8', '谜古屋剧情密室', '营业时间：周一至周日 9：00-02：00', '营业中', '68', '惠福东路455号景腾大厦7楼703室', '15521111231');
INSERT INTO `chamber` VALUES ('9', '寂静之地沉浸式剧场密室', '营业时间：周一至周日 9：00-02：00', '营业中', '69', '江南大道中路173号侨鸿大厦四楼', '13823323448');
INSERT INTO `chamber` VALUES ('10', '谋局实景主题密室体验馆', '营业时间：周一至周日 9：00-02：00', '营业中', '70', '西湖路18号广百新翼商务中心22楼', '18024529944');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------

-- ----------------------------
-- Table structure for coms
-- ----------------------------
DROP TABLE IF EXISTS `coms`;
CREATE TABLE `coms` (
  `Coms_content` varchar(255) NOT NULL,
  `Coms_nature` varchar(255) NOT NULL,
  `Coms_stype` varchar(255) NOT NULL,
  `Coms_sID` int(11) NOT NULL,
  `Coms_price` varchar(255) NOT NULL,
  `Coms_score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coms
-- ----------------------------
INSERT INTO `coms` VALUES ('房问里有茶台，他们家主要是会员制，茶，普查型白酒，精致湖汕菜，各种茶都有，推荐单丛.餐饮是私房菜，按位收60', '好', 'teahouse', '5', '100', '8');
INSERT INTO `coms` VALUES ('金利来省经在这里办过VIP答谢会，当时看到还有点惊讶，感觉这里做品牌活动可能还是小了点', '中', 'teahouse', '5', '100', '7');
INSERT INTO `coms` VALUES ('胡桃夹子果然很童话~以胡桃夹子童话故事作为背景的解谜游戏，很温馨的很warm很sweet的解避游戏e一点也不恐情', '好', 'chamber', '1', '137', '9');
INSERT INTO `coms` VALUES ('道具很趣致-里边许多的互动小游戏很有趣，超级好玩!！！感觉可以一直重复玩小游戏-嘻嘻嘻，小剧场制作很精美', '好', 'chamber', '2', '125', '9');
INSERT INTO `coms` VALUES ('广州市九号行信酒店是中泰国际重团倾斥3亿 巨资打违的国际型水中之城，位于—广州东越，落驻中泰国际广场4一7', '好', 'bath', '2', '314', '9');
INSERT INTO `coms` VALUES ('第二次去，比去年服务更加热情了，很周到，环境很好', '好', 'bath', '2', '314', '9');
INSERT INTO `coms` VALUES ('总感觉很累，不过地方很好找，挺大的，做了个古法按摩，按完全身肌肉都松了', '好', 'bath', '3', '244', '10');
INSERT INTO `coms` VALUES ('第一次来这家呢，门面是大大的嘻哈风格，但是房间也太小了吧，大房10个人都挤不下', '差', 'ktv', '3', '65', '5');
INSERT INTO `coms` VALUES ('性价比很高的ktv，打电话一问也太便宜了，果断来试试', '好', 'ktv', '4', '50', '8');
INSERT INTO `coms` VALUES ('跟同事来唱k，一早就约好了房间，238元，大概10个人一起去唱', '好', 'ktv', '6', '100', '9');

-- ----------------------------
-- Table structure for com_collection
-- ----------------------------
DROP TABLE IF EXISTS `com_collection`;
CREATE TABLE `com_collection` (
  `Coc_stype` varchar(255) NOT NULL,
  `Coc_sID` int(11) NOT NULL,
  `Coc_Cid` int(11) NOT NULL,
  `Cos_Uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_collection
-- ----------------------------
INSERT INTO `com_collection` VALUES ('massage', '1', '1', '1');
INSERT INTO `com_collection` VALUES ('bath', '1', '1', '3');
INSERT INTO `com_collection` VALUES ('bar', '1', '1', '4');
INSERT INTO `com_collection` VALUES ('fitness', '1', '1', '5');
INSERT INTO `com_collection` VALUES ('chamber', '1', '1', '7');
INSERT INTO `com_collection` VALUES ('teahouse', '1', '1', '6');
INSERT INTO `com_collection` VALUES ('league', '1', '1', '8');
INSERT INTO `com_collection` VALUES ('farmhouse', '1', '1', '9');
INSERT INTO `com_collection` VALUES ('play', '1', '1', '10');
INSERT INTO `com_collection` VALUES ('ktv', '1', '1', '2');

-- ----------------------------
-- Table structure for c_bar
-- ----------------------------
DROP TABLE IF EXISTS `c_bar`;
CREATE TABLE `c_bar` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_bar_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `bar` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_bar
-- ----------------------------
INSERT INTO `c_bar` VALUES ('1', '1-3人尊享洋酒乐聚套餐', '1', '10', '338');
INSERT INTO `c_bar` VALUES ('2', '2-5人尊享洋酒欢聚套餐', '1', '10', '688');
INSERT INTO `c_bar` VALUES ('3', '双人套餐', '3', '10', '198');
INSERT INTO `c_bar` VALUES ('4', '科罗娜（每打）', '3', '10', '300');
INSERT INTO `c_bar` VALUES ('5', '鸡尾酒', '5', '10', '88');
INSERT INTO `c_bar` VALUES ('6', '麦卡伦蓝钻（瓶）', '5', '10', '980');
INSERT INTO `c_bar` VALUES ('7', '精选哈尔滨啤酒小吃套餐', '8', '10', '88');
INSERT INTO `c_bar` VALUES ('8', '代金券', '7', '10', '50');
INSERT INTO `c_bar` VALUES ('9', '精选百威啤酒小吃套餐', '8', '10', '210');
INSERT INTO `c_bar` VALUES ('10', '双人鸡尾酒套餐', '10', '10', '88');

-- ----------------------------
-- Table structure for c_bath
-- ----------------------------
DROP TABLE IF EXISTS `c_bath`;
CREATE TABLE `c_bath` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_bath_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `bath` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_bath
-- ----------------------------
INSERT INTO `c_bath` VALUES ('1', '单人周日至周四24小时净桑套餐', '2', '10', '229');
INSERT INTO `c_bath` VALUES ('2', '单人全天节假日24小时净桑套餐', '2', '10', '246');
INSERT INTO `c_bath` VALUES ('3', '中式/泰式按摩+24小时净桑', '3', '10', '426');
INSERT INTO `c_bath` VALUES ('4', '舒压按摩SPA+24小时净桑', '4', '10', '538');
INSERT INTO `c_bath` VALUES ('5', '单人泰式按摩+全天净桑套餐', '5', '10', '279');
INSERT INTO `c_bath` VALUES ('6', '单人净桑+大堂足浴+餐饮套餐', '5', '10', '189');
INSERT INTO `c_bath` VALUES ('7', '净桑24小时+免费自助', '6', '10', '168');
INSERT INTO `c_bath` VALUES ('8', '芬香SPA+免费自助餐+净桑', '6', '10', '258');
INSERT INTO `c_bath` VALUES ('9', '单人24小时净桑+自助餐', '9', '10', '258');
INSERT INTO `c_bath` VALUES ('10', '单人中式按摩+大堂项目', '9', '10', '528');

-- ----------------------------
-- Table structure for c_chamber
-- ----------------------------
DROP TABLE IF EXISTS `c_chamber`;
CREATE TABLE `c_chamber` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `c_chamber_ibfk_1` (`C_sID`),
  CONSTRAINT `c_chamber_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `chamber` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_chamber
-- ----------------------------
INSERT INTO `c_chamber` VALUES ('1', '湘府秘闻或返校（周末专用）', '1', '10', '145');
INSERT INTO `c_chamber` VALUES ('2', '湘府秘闻或返校（工作日专用）', '1', '10', '135');
INSERT INTO `c_chamber` VALUES ('3', '全国年度主题<晴天娃娃>', '2', '10', '148');
INSERT INTO `c_chamber` VALUES ('4', '梦幻童话<胡桃夹子>', '2', '10', '118');
INSERT INTO `c_chamber` VALUES ('5', '《导师》', '3', '10', '70');
INSERT INTO `c_chamber` VALUES ('6', '《黑白灰》', '3', '10', '120');
INSERT INTO `c_chamber` VALUES ('7', '校怨', '4', '10', '178');
INSERT INTO `c_chamber` VALUES ('8', '回廊和歌', '5', '10', '158');
INSERT INTO `c_chamber` VALUES ('9', '圣保罗', '6', '10', '70');
INSERT INTO `c_chamber` VALUES ('10', '乔巴的梦想', '8', '10', '78');

-- ----------------------------
-- Table structure for c_farmhouse
-- ----------------------------
DROP TABLE IF EXISTS `c_farmhouse`;
CREATE TABLE `c_farmhouse` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `c_farmhouse_ibfk_1` (`C_sID`),
  CONSTRAINT `c_farmhouse_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `farmhouse` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_farmhouse
-- ----------------------------
INSERT INTO `c_farmhouse` VALUES ('1', '单人钓虾套餐', '3', '10', '75');
INSERT INTO `c_farmhouse` VALUES ('2', '4人同行特价豪华套餐', '3', '10', '357');
INSERT INTO `c_farmhouse` VALUES ('3', '钓鱼', '2', '10', '100');
INSERT INTO `c_farmhouse` VALUES ('4', '农家乐采摘体验一天', '4', '10', '38');
INSERT INTO `c_farmhouse` VALUES ('5', '四季农场情侣露营帐篷', '4', '10', '79');
INSERT INTO `c_farmhouse` VALUES ('6', '速度与激情主题团建+野炊/烧烤+团建场地', '6', '10', '125');
INSERT INTO `c_farmhouse` VALUES ('7', '钓鱼+大塘+赠玩桌球+风筝+观光单车+捞鱼超值套餐', '6', '10', '135');
INSERT INTO `c_farmhouse` VALUES ('8', '家庭钓虾烧烤套餐（4-5人）', '8', '10', '368');
INSERT INTO `c_farmhouse` VALUES ('9', '荔枝碳烧烤', '9', '10', '80');
INSERT INTO `c_farmhouse` VALUES ('10', '草莓采摘', '10', '10', '40');

-- ----------------------------
-- Table structure for c_fitness
-- ----------------------------
DROP TABLE IF EXISTS `c_fitness`;
CREATE TABLE `c_fitness` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_fitness_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `fitness` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_fitness
-- ----------------------------
INSERT INTO `c_fitness` VALUES ('1', '私人订制一对一极速瘦身课程', '1', '10', '50');
INSERT INTO `c_fitness` VALUES ('2', '青少年体适能、体态调整私教1节', '1', '10', '60');
INSERT INTO `c_fitness` VALUES ('3', '一对一私教体验课程', '2', '10', '40');
INSERT INTO `c_fitness` VALUES ('4', '产前产后一对一私教体验', '3', '10', '50');
INSERT INTO `c_fitness` VALUES ('5', '自助健身体验（单次）', '4', '10', '38');
INSERT INTO `c_fitness` VALUES ('6', '自助健身体验（3天）', '4', '10', '68');
INSERT INTO `c_fitness` VALUES ('7', '7天减脂私教小团体课', '5', '10', '68');
INSERT INTO `c_fitness` VALUES ('8', '1对1私教体验课', '7', '10', '30');
INSERT INTO `c_fitness` VALUES ('9', '小团班精准塑形单节体验', '6', '10', '53');
INSERT INTO `c_fitness` VALUES ('10', '精准塑形普拉提私教评估体验', '6', '10', '138');

-- ----------------------------
-- Table structure for c_ktv
-- ----------------------------
DROP TABLE IF EXISTS `c_ktv`;
CREATE TABLE `c_ktv` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_ktv_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `ktv` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_ktv
-- ----------------------------
INSERT INTO `c_ktv` VALUES ('1', '周一至周日16:00-21:00欢唱3小时+自助餐', '1', '10', '40');
INSERT INTO `c_ktv` VALUES ('2', '周一至周日13:00-17:00欢唱4小时+饮品套餐', '1', '10', '29');
INSERT INTO `c_ktv` VALUES ('3', '19:00—21:00内进房欢唱7小时+酒水套餐', '2', '10', '988');
INSERT INTO `c_ktv` VALUES ('4', '19:00-02：00欢唱7小时+酒水套餐', '2', '10', '1588');
INSERT INTO `c_ktv` VALUES ('5', '单人周一到周日午市/晚市4小时欢唱+自助餐', '5', '10', '45');
INSERT INTO `c_ktv` VALUES ('6', '周一至周五单人3小时自助餐，免费WiFi', '4', '10', '55');
INSERT INTO `c_ktv` VALUES ('7', '周一至周日欢唱3小时+自助餐单人券', '3', '10', '75');
INSERT INTO `c_ktv` VALUES ('8', '周一至周五3小时欢唱券+自助餐单人券', '3', '10', '63');
INSERT INTO `c_ktv` VALUES ('9', '周日至周四19:00-04:00大房欢唱5小时酒水美食套餐', '8', '10', '788');
INSERT INTO `c_ktv` VALUES ('10', '周五周六19:00-04:00大房欢唱5小时酒水美食套餐', '8', '10', '868');

-- ----------------------------
-- Table structure for c_league
-- ----------------------------
DROP TABLE IF EXISTS `c_league`;
CREATE TABLE `c_league` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_league_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `league` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_league
-- ----------------------------
INSERT INTO `c_league` VALUES ('1', '任玩含餐派对性价比超值自助套餐一', '6', '10', '69');
INSERT INTO `c_league` VALUES ('2', '团建11项含餐加私人派对超值性价比 标准拓展一', '6', '10', '99');
INSERT INTO `c_league` VALUES ('3', '任选时段包全场5小时不限人数', '3', '10', '3480');
INSERT INTO `c_league` VALUES ('4', '周一至周四包场4小时限12人', '3', '10', '2080');
INSERT INTO `c_league` VALUES ('5', '工作日独家剧本单人卷', '4', '10', '118');
INSERT INTO `c_league` VALUES ('6', '单人盒装游戏工作日卷', '4', '10', '98');
INSERT INTO `c_league` VALUES ('7', '【颤抖的工具箱】主题单人劵', '9', '10', '98');
INSERT INTO `c_league` VALUES ('8', '网红沉浸式密室平日单人券', '9', '10', '296');
INSERT INTO `c_league` VALUES ('9', '『创意年会』轰趴策划·尬场终结者', '5', '10', '68');
INSERT INTO `c_league` VALUES ('10', '【聚会轰趴】吃喝玩乐一站式单人券', '5', '10', '98');

-- ----------------------------
-- Table structure for c_massage
-- ----------------------------
DROP TABLE IF EXISTS `c_massage`;
CREATE TABLE `c_massage` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_massage_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `massage` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_massage
-- ----------------------------
INSERT INTO `c_massage` VALUES ('1', '【男士专享】都市精品spa按摩', '3', '10', '598');
INSERT INTO `c_massage` VALUES ('2', '【免费接送】全身缓压精油spa按摩', '3', '10', '598');
INSERT INTO `c_massage` VALUES ('3', '颈肩调理（推拿／按摩／艾灸／拔罐）', '1', '10', '288');
INSERT INTO `c_massage` VALUES ('4', '360度经络通调套餐', '1', '10', '398');
INSERT INTO `c_massage` VALUES ('5', '招牌足底SPA套餐', '6', '10', '158');
INSERT INTO `c_massage` VALUES ('6', '沐足+采耳套餐', '6', '10', '198');
INSERT INTO `c_massage` VALUES ('7', '三式足底按摩+日式整体放松', '7', '10', '96');
INSERT INTO `c_massage` VALUES ('8', '腿部塑形+日式整体放松', '7', '10', '96');
INSERT INTO `c_massage` VALUES ('9', '单人中式保健推拿60分钟', '10', '10', '88');
INSERT INTO `c_massage` VALUES ('10', '单人推拿套餐', '10', '10', '98');

-- ----------------------------
-- Table structure for c_play
-- ----------------------------
DROP TABLE IF EXISTS `c_play`;
CREATE TABLE `c_play` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_play_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `play` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_play
-- ----------------------------
INSERT INTO `c_play` VALUES ('1', '单人70分钟驾驶模拟体验/训练', '1', '10', '48');
INSERT INTO `c_play` VALUES ('2', '3人60分钟联机赛车体验', '1', '10', '130');
INSERT INTO `c_play` VALUES ('3', '【双人3款】精品套餐', '8', '10', '198');
INSERT INTO `c_play` VALUES ('4', '<单人2款>套餐', '8', '10', '80');
INSERT INTO `c_play` VALUES ('5', '游戏币60个', '6', '10', '30');
INSERT INTO `c_play` VALUES ('6', '游戏币108个', '6', '10', '50');
INSERT INTO `c_play` VALUES ('7', '【包厢·周末及节假日】双人联机60分钟', '4', '10', '208');
INSERT INTO `c_play` VALUES ('8', '【包厢·周一至周五】双人联机60分钟', '4', '10', '148');
INSERT INTO `c_play` VALUES ('9', '游戏币60枚', '7', '10', '50');
INSERT INTO `c_play` VALUES ('10', '游戏币100枚', '7', '10', '80');

-- ----------------------------
-- Table structure for c_teahouse
-- ----------------------------
DROP TABLE IF EXISTS `c_teahouse`;
CREATE TABLE `c_teahouse` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `C_sID` int(11) NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`Cid`),
  KEY `C_sID` (`C_sID`),
  CONSTRAINT `c_teahouse_ibfk_1` FOREIGN KEY (`C_sID`) REFERENCES `teahouse` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_teahouse
-- ----------------------------
INSERT INTO `c_teahouse` VALUES ('1', '静谧居室（4人）', '5', '10', '680');
INSERT INTO `c_teahouse` VALUES ('2', '东方雅致花园（4人）', '5', '10', '490');
INSERT INTO `c_teahouse` VALUES ('3', '2-4人休闲独立雅室品茶商务房', '4', '10', '258');
INSERT INTO `c_teahouse` VALUES ('4', '5-6人景观雅室休闲商务茶聚', '4', '10', '358');
INSERT INTO `c_teahouse` VALUES ('5', '茶室品茗长时套餐', '1', '10', '298');
INSERT INTO `c_teahouse` VALUES ('6', '茶室品茗短时套餐', '1', '10', '168');
INSERT INTO `c_teahouse` VALUES ('7', '双人茶聚', '6', '10', '188');
INSERT INTO `c_teahouse` VALUES ('8', '单人套餐（生活茶道初体验）', '6', '10', '88');
INSERT INTO `c_teahouse` VALUES ('9', '雅致 | 2/6人 静室', '7', '10', '368');
INSERT INTO `c_teahouse` VALUES ('10', '休闲 | 2/4人 静室', '7', '10', '268');

-- ----------------------------
-- Table structure for farmhouse
-- ----------------------------
DROP TABLE IF EXISTS `farmhouse`;
CREATE TABLE `farmhouse` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `farmhouse_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of farmhouse
-- ----------------------------
INSERT INTO `farmhouse` VALUES ('1', '经久开心农场', '营业时间：周一至周日 9：00-02：00', '营业中', '41', '新港东路万胜围地铁C出口东行', '13925135982');
INSERT INTO `farmhouse` VALUES ('2', '长洲岛简朴寨', '营业时间：周一至周日 9：00-02：00', '营业中', '42', '海洋路18号', '13828419543');
INSERT INTO `farmhouse` VALUES ('3', '光头佬钓虾场', '营业时间：周一至周日 9：00-02：00', '营业中', '43', '黄村三联路12号对面', '18665038686');
INSERT INTO `farmhouse` VALUES ('4', '四季果园', '营业时间：周一至周日 9：00-02：00', '营业中', '44', '温泉镇温泉大道卫东村', '13711195374');
INSERT INTO `farmhouse` VALUES ('5', '帽峰山百万果园', '营业时间：周一至周日 9：00-02：00', '营业中', '45', '太和镇头陂村龙亭', '18665088078');
INSERT INTO `farmhouse` VALUES ('6', '海岛农庄乐园钓鱼烧烤场', '营业时间：周一至周日 9：00-02：00', '营业中', '46', '石楼镇海鸥岛光明一路', '18666276285');
INSERT INTO `farmhouse` VALUES ('7', '叔一烧园林钓虾场', '营业时间：周一至周日 9：00-02：00', '营业中', '47', '古祠路黄大仙祠正门左侧', '18664831984');
INSERT INTO `farmhouse` VALUES ('8', '大夫山聚友烧烤场', '营业时间：周一至周日 9：00-02：00', '营业中', '48', '大夫山森林公园侧雍景路口直入200米', '13450424550');
INSERT INTO `farmhouse` VALUES ('9', '尚果夫庄园', '营业时间：周一至周日 9：00-02：00', '营业中', '49', '城郊街道木古冚街三角岭', '15914354472');
INSERT INTO `farmhouse` VALUES ('10', '万胜围草莓园', '营业时间：周一至周日 9：00-02：00', '营业中', '50', '新港东路万胜围地铁站C出口东200米路北', '18958196196');

-- ----------------------------
-- Table structure for fitness
-- ----------------------------
DROP TABLE IF EXISTS `fitness`;
CREATE TABLE `fitness` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `fitness_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fitness
-- ----------------------------
INSERT INTO `fitness` VALUES ('1', 'FighterFit健身工作室', '营业时间：周一至周日 9：00-02：00', '营业中', '31', '马场路28号富力公园28', '19925858874');
INSERT INTO `fitness` VALUES ('2', 'GM健身', '营业时间：周一至周日 9：00-02：00', '营业中', '32', '大丰路19号大丰汇B栋308-309', '020-83269003');
INSERT INTO `fitness` VALUES ('3', '胡子健身', '营业时间：周一至周日 9：00-02：00', '营业中', '33', '花地大道壹号国际文化广场3F', '18122478012');
INSERT INTO `fitness` VALUES ('4', '威克健身俱乐部', '营业时间：周一至周日 9：00-02：00', '营业中', '34', '新港东路1236号万胜广场5层', '020-89621621');
INSERT INTO `fitness` VALUES ('5', '凡动A⁺健身工作室', '营业时间：周一至周日 9：00-02：00', '营业中', '35', '芳村大道西211号二楼', '13925009849');
INSERT INTO `fitness` VALUES ('6', '意施精准塑形普拉提', '营业时间：周一至周日 9：00-02：00', '营业中', '36', '署前路33号大院电梯7楼', '020-38321137');
INSERT INTO `fitness` VALUES ('7', 'COMBO健身工作室', '营业时间：周一至周日 9：00-02：00', '营业中', '37', '革新路139号自编中船汇1栋2楼及3楼', '15817050001');
INSERT INTO `fitness` VALUES ('8', '占叔健身工作室', '营业时间：周一至周日 9：00-02：00', '营业中', '38', '江燕路万科里公寓12楼1223', '18028563641');
INSERT INTO `fitness` VALUES ('9', '8维健身', '营业时间：周一至周日 9：00-02：00', '营业中', '39', '珠江新城华夏路26号雅居乐中心3层', '020-39290455');
INSERT INTO `fitness` VALUES ('10', 'ALPHA BEAST野兽馆', '营业时间：周一至周日 9：00-02：00', '营业中', '40', '中山大道983号天汇商厦2楼205房', '13435587123');

-- ----------------------------
-- Table structure for ktv
-- ----------------------------
DROP TABLE IF EXISTS `ktv`;
CREATE TABLE `ktv` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `ktv_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ktv
-- ----------------------------
INSERT INTO `ktv` VALUES ('1', 'FREESTYLE', '营业时间：周一至周日 9：00-02：00', '营业中', '21', '北京路粤海仰忠汇7楼', '020-83522886');
INSERT INTO `ktv` VALUES ('2', 'kboss名堂', '营业时间：周一至周日 9：00-02：00', '营业中', '22', '黄埔大道西495号1-4层', '020-38848999');
INSERT INTO `ktv` VALUES ('3', '堂会', '营业时间：周一至周日 9：00-02：00', '营业中', '23', '天河直街160号天河汇底商1层', '020-83333999');
INSERT INTO `ktv` VALUES ('4', '星豪量贩KTV', '营业时间：周一至周日 9：00-02：00', '营业中', '24', '太和镇北太路1760号白云商务酒店5楼', '18925025088');
INSERT INTO `ktv` VALUES ('5', '潮派KTV', '营业时间：周一至周日 9：00-02：00', '营业中', '25', '中山大道西天河骏景花园对面棠下店', '020-61082666');
INSERT INTO `ktv` VALUES ('6', '活力无限KTV', '营业时间：周一至周日 9：00-02：00', '营业中', '26', '北京路182号潮楼4-5楼', '020-38887171');
INSERT INTO `ktv` VALUES ('7', '盈点V-PARTY', '营业时间：周一至周日 9：00-02：00', '营业中', '27', '贝岗村中二横路1号GOGO新天地商业广场4楼', '020-39158222');
INSERT INTO `ktv` VALUES ('8', '糖潮量贩KTV', '营业时间：周一至周日 9：00-02：00', '营业中', '28', '双山大道3号3F', '020-29866555');
INSERT INTO `ktv` VALUES ('9', 'K+全国连锁KTV', '营业时间：周一至周日 9：00-02：00', '营业中', '29', '云城西路880号绿地缤纷天地4楼401', '020-86562222');
INSERT INTO `ktv` VALUES ('10', '佰音KTV', '营业时间：周一至周日 9：00-02：00', '营业中', '30', '黄埔大道西668号跑马场马会酒店副楼3-4楼', '020-38838838');

-- ----------------------------
-- Table structure for league
-- ----------------------------
DROP TABLE IF EXISTS `league`;
CREATE TABLE `league` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `league_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of league
-- ----------------------------
INSERT INTO `league` VALUES ('1', '绿色农庄拓展野战俱乐部', '营业时间：周一至周日 9：00-02：00', '营业中', '51', '天河路228号正佳广场正佳金殿3516室', '18998495920');
INSERT INTO `league` VALUES ('2', '长洲青青农场', '营业时间：周一至周日 9：00-02：00', '营业中', '52', '东圃二马路近东圃地铁站', '18681517389');
INSERT INTO `league` VALUES ('3', '撒野公园·轰趴团建', '营业时间：周一至周日 9：00-02：00', '营业中', '53', '天河路238号华龙大厦25楼2501室', '020-83627543');
INSERT INTO `league` VALUES ('4', 'JOKER实景推理剧本杀店 ', '营业时间：周一至周日 9：00-02：00', '营业中', '54', '东圃大马路天力街11号3层315', '18927596427');
INSERT INTO `league` VALUES ('5', '白梧桐·谏山百人年会', '营业时间：周一至周日 9：00-02：00', '营业中', '55', '环岛路大阪仓1904创意园', '13826095027');
INSERT INTO `league` VALUES ('6', '长青农场', '营业时间：周一至周日 9：00-02：00', '营业中', '56', '海鸥公路与深沙上街交叉口西南角', '13928785699');
INSERT INTO `league` VALUES ('7', '9527实景侦探推理馆', '营业时间：周一至周日 9：00-02：00', '营业中', '57', '龙口中路华天国际广场西苑7楼7A室', '13362139527');
INSERT INTO `league` VALUES ('8', 'Poker face桌游轰趴真人剧本店', '营业时间：周一至周日 9：00-02：00', '营业中', '58', '科韵路琶洲国际采购中心５楼', '18145850334');
INSERT INTO `league` VALUES ('9', '聚游联盟沉浸式主题游戏馆', '营业时间：周一至周日 9：00-02：00', '营业中', '59', '光明南路199号友利创意园2号楼2层', '18102760215');
INSERT INTO `league` VALUES ('10', '玩加射击竞技娱乐馆', '营业时间：周一至周日 9：00-02：00', '营业中', '60', '天河路隆德大厦B座3005', '020-87589032');

-- ----------------------------
-- Table structure for massage
-- ----------------------------
DROP TABLE IF EXISTS `massage`;
CREATE TABLE `massage` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `massage_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of massage
-- ----------------------------
INSERT INTO `massage` VALUES ('1', '晓悦按摩服务', '营业时间：周一至周日 9：00-02：00', '营业中', '71', '天河南一路102号', '18922363558');
INSERT INTO `massage` VALUES ('2', '宽窄采耳 · 采耳文化楼', '营业时间：周一至周日 9：00-02：00', '营业中', '72', '天河南一路80号2楼', '020-86190995');
INSERT INTO `massage` VALUES ('3', '丝韵阁男子SPA按摩会所', '营业时间：周一至周日 9：00-02：00', '营业中', '73', '林乐路39号中旅商务大厦西塔真功夫旁边', '17709175627');
INSERT INTO `massage` VALUES ('4', '耳艺采耳文化体验馆', '营业时间：周一至周日 9：00-02：00', '营业中', '74', '体育东路33号天盛大厦南梯10楼1006房', '13711513375');
INSERT INTO `massage` VALUES ('5', '韬耳堂采耳文化馆', '营业时间：周一至周日 9：00-02：00', '营业中', '75', '新塘镇友谊一横街1号富丽大厦12楼1217室', '13710563797');
INSERT INTO `massage` VALUES ('6', '玲珑时光保健会所', '营业时间：周一至周日 9：00-02：00', '营业中', '76', '天河南路六运五街40号', '020-83622844');
INSERT INTO `massage` VALUES ('7', '三友日式按摩店', '营业时间：周一至周日 9：00-02：00', '营业中', '77', '龙津西路333号一楼', '020-61914339');
INSERT INTO `massage` VALUES ('8', '皇庭沐足棋牌休闲会所', '营业时间：周一至周日 9：00-02：00', '营业中', '78', '花城大道53号高德公寓朱美拉内', '15915827307');
INSERT INTO `massage` VALUES ('9', '耳匠专业采耳体验馆', '营业时间：周一至周日 9：00-02：00', '营业中', '79', '白灰场路4号', '18682023321');
INSERT INTO `massage` VALUES ('10', '舒心盲人推拿 ', '营业时间：周一至周日 9：00-02：00', '营业中', '80', '天河北路华南师范大学附属中学北门对面', '18148788718');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `Mid` int(11) NOT NULL AUTO_INCREMENT,
  `Mpassword` varchar(255) NOT NULL,
  `Mname` varchar(255) NOT NULL,
  PRIMARY KEY (`Mid`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1', '1', '1');
INSERT INTO `merchant` VALUES ('2', '1', '1');
INSERT INTO `merchant` VALUES ('3', '1', '1');
INSERT INTO `merchant` VALUES ('4', '1', '1');
INSERT INTO `merchant` VALUES ('5', '1', '1');
INSERT INTO `merchant` VALUES ('6', '1', '1');
INSERT INTO `merchant` VALUES ('7', '1', '1');
INSERT INTO `merchant` VALUES ('8', '1', '1');
INSERT INTO `merchant` VALUES ('9', '1', '1');
INSERT INTO `merchant` VALUES ('10', '1', '1');
INSERT INTO `merchant` VALUES ('11', '1', '1');
INSERT INTO `merchant` VALUES ('12', '1', '1');
INSERT INTO `merchant` VALUES ('13', '1', '1');
INSERT INTO `merchant` VALUES ('14', '1', '1');
INSERT INTO `merchant` VALUES ('15', '1', '1');
INSERT INTO `merchant` VALUES ('16', '1', '1');
INSERT INTO `merchant` VALUES ('17', '1', '1');
INSERT INTO `merchant` VALUES ('18', '1', '1');
INSERT INTO `merchant` VALUES ('19', '1', '1');
INSERT INTO `merchant` VALUES ('20', '1', '1');
INSERT INTO `merchant` VALUES ('21', '1', '1');
INSERT INTO `merchant` VALUES ('22', '1', '1');
INSERT INTO `merchant` VALUES ('23', '1', '1');
INSERT INTO `merchant` VALUES ('24', '1', '1');
INSERT INTO `merchant` VALUES ('25', '1', '1');
INSERT INTO `merchant` VALUES ('26', '1', '1');
INSERT INTO `merchant` VALUES ('27', '1', '1');
INSERT INTO `merchant` VALUES ('28', '1', '1');
INSERT INTO `merchant` VALUES ('29', '1', '1');
INSERT INTO `merchant` VALUES ('30', '1', '1');
INSERT INTO `merchant` VALUES ('31', '1', '1');
INSERT INTO `merchant` VALUES ('32', '1', '1');
INSERT INTO `merchant` VALUES ('33', '1', '1');
INSERT INTO `merchant` VALUES ('34', '1', '1');
INSERT INTO `merchant` VALUES ('35', '1', '1');
INSERT INTO `merchant` VALUES ('36', '1', '1');
INSERT INTO `merchant` VALUES ('37', '1', '1');
INSERT INTO `merchant` VALUES ('38', '1', '1');
INSERT INTO `merchant` VALUES ('39', '1', '1');
INSERT INTO `merchant` VALUES ('40', '1', '1');
INSERT INTO `merchant` VALUES ('41', '1', '1');
INSERT INTO `merchant` VALUES ('42', '1', '1');
INSERT INTO `merchant` VALUES ('43', '1', '1');
INSERT INTO `merchant` VALUES ('44', '1', '1');
INSERT INTO `merchant` VALUES ('45', '1', '1');
INSERT INTO `merchant` VALUES ('46', '1', '1');
INSERT INTO `merchant` VALUES ('47', '1', '1');
INSERT INTO `merchant` VALUES ('48', '1', '1');
INSERT INTO `merchant` VALUES ('49', '1', '1');
INSERT INTO `merchant` VALUES ('50', '1', '1');
INSERT INTO `merchant` VALUES ('51', '1', '1');
INSERT INTO `merchant` VALUES ('52', '1', '1');
INSERT INTO `merchant` VALUES ('53', '1', '1');
INSERT INTO `merchant` VALUES ('54', '1', '1');
INSERT INTO `merchant` VALUES ('55', '1', '1');
INSERT INTO `merchant` VALUES ('56', '1', '1');
INSERT INTO `merchant` VALUES ('57', '1', '1');
INSERT INTO `merchant` VALUES ('58', '1', '1');
INSERT INTO `merchant` VALUES ('59', '1', '1');
INSERT INTO `merchant` VALUES ('60', '1', '1');
INSERT INTO `merchant` VALUES ('61', '1', '1');
INSERT INTO `merchant` VALUES ('62', '1', '1');
INSERT INTO `merchant` VALUES ('63', '1', '1');
INSERT INTO `merchant` VALUES ('64', '1', '1');
INSERT INTO `merchant` VALUES ('65', '1', '1');
INSERT INTO `merchant` VALUES ('66', '1', '1');
INSERT INTO `merchant` VALUES ('67', '1', '1');
INSERT INTO `merchant` VALUES ('68', '1', '1');
INSERT INTO `merchant` VALUES ('69', '1', '1');
INSERT INTO `merchant` VALUES ('70', '1', '1');
INSERT INTO `merchant` VALUES ('71', '1', '1');
INSERT INTO `merchant` VALUES ('72', '1', '1');
INSERT INTO `merchant` VALUES ('73', '1', '1');
INSERT INTO `merchant` VALUES ('74', '1', '1');
INSERT INTO `merchant` VALUES ('75', '1', '1');
INSERT INTO `merchant` VALUES ('76', '1', '1');
INSERT INTO `merchant` VALUES ('77', '1', '1');
INSERT INTO `merchant` VALUES ('78', '1', '1');
INSERT INTO `merchant` VALUES ('79', '1', '1');
INSERT INTO `merchant` VALUES ('80', '1', '1');
INSERT INTO `merchant` VALUES ('81', '1', '1');
INSERT INTO `merchant` VALUES ('82', '1', '1');
INSERT INTO `merchant` VALUES ('83', '1', '1');
INSERT INTO `merchant` VALUES ('84', '1', '1');
INSERT INTO `merchant` VALUES ('85', '1', '1');
INSERT INTO `merchant` VALUES ('86', '1', '1');
INSERT INTO `merchant` VALUES ('87', '1', '1');
INSERT INTO `merchant` VALUES ('88', '1', '1');
INSERT INTO `merchant` VALUES ('89', '1', '1');
INSERT INTO `merchant` VALUES ('90', '1', '1');
INSERT INTO `merchant` VALUES ('91', '1', '1');
INSERT INTO `merchant` VALUES ('92', '1', '1');
INSERT INTO `merchant` VALUES ('93', '1', '1');
INSERT INTO `merchant` VALUES ('94', '1', '1');
INSERT INTO `merchant` VALUES ('95', '1', '1');
INSERT INTO `merchant` VALUES ('96', '1', '1');
INSERT INTO `merchant` VALUES ('97', '1', '1');
INSERT INTO `merchant` VALUES ('98', '1', '1');
INSERT INTO `merchant` VALUES ('99', '1', '1');
INSERT INTO `merchant` VALUES ('100', '1', '1');
INSERT INTO `merchant` VALUES ('101', '1', '1');
INSERT INTO `merchant` VALUES ('102', '1', '1');
INSERT INTO `merchant` VALUES ('103', '1', '1');
INSERT INTO `merchant` VALUES ('104', '1', '1');
INSERT INTO `merchant` VALUES ('105', '1', '1');
INSERT INTO `merchant` VALUES ('106', '1', '1');
INSERT INTO `merchant` VALUES ('107', '1', '1');
INSERT INTO `merchant` VALUES ('108', '1', '1');
INSERT INTO `merchant` VALUES ('109', '1', '1');
INSERT INTO `merchant` VALUES ('110', '1', '1');

-- ----------------------------
-- Table structure for play
-- ----------------------------
DROP TABLE IF EXISTS `play`;
CREATE TABLE `play` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `play_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of play
-- ----------------------------
INSERT INTO `play` VALUES ('1', '速度501赛车休闲驾驶体验', '营业时间：周一至周日 9：00-02：00', '营业中', '91', '百合路14号', '13719112992');
INSERT INTO `play` VALUES ('2', 'Haruharu', '营业时间：周一至周日 9：00-02：00', '营业中', '92', '北京路168号粤海仰忠汇4层B404', '15767888930');
INSERT INTO `play` VALUES ('3', '环游嘉年华', '营业时间：周一至周日 9：00-02：00', '营业中', '93', '天河路208号天河城6楼', '18966541245');
INSERT INTO `play` VALUES ('4', 'VR KAMA 虚拟部落', '营业时间：周一至周日 9：00-02：00', '营业中', '94', '天河路299号时尚天河商业广场中区中五街B1层040号铺', '13265364152');
INSERT INTO `play` VALUES ('5', 'Win Win电玩', '营业时间：周一至周日 9：00-02：00', '营业中', '95', '江南西玫瑰园三街29号会所2楼206A', '15820231312');
INSERT INTO `play` VALUES ('6', '乐缤纷电玩世界', '营业时间：周一至周日 9：00-02：00', '营业中', '96', '下九路90-92号东急新天地购物广场3层', '020-81058628');
INSERT INTO `play` VALUES ('7', '大玩家', '营业时间：周一至周日 9：00-02：00', '营业中', '97', '六运二街8号205房', '17728124758');
INSERT INTO `play` VALUES ('8', 'The Player电玩体验吧', '营业时间：周一至周日 9：00-02：00', '营业中', '98', '西湖路63号光明广场1层', '4008973688');
INSERT INTO `play` VALUES ('9', '伟创PS4电玩', '营业时间：周一至周日 9：00-02：00', '营业中', '99', '中山三路流行前线F014', '020-28846556');
INSERT INTO `play` VALUES ('10', '哇哇哇游乐城', '营业时间：周一至周日 9：00-02：00', '营业中', '100', '天河路228号正佳广场7层', '020-38331883');

-- ----------------------------
-- Table structure for r_merchant
-- ----------------------------
DROP TABLE IF EXISTS `r_merchant`;
CREATE TABLE `r_merchant` (
  `R_Uid` int(11) NOT NULL,
  `R_Uintroduction` varchar(255) NOT NULL,
  `R_Ustatus` varchar(255) NOT NULL,
  PRIMARY KEY (`R_Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_merchant
-- ----------------------------
INSERT INTO `r_merchant` VALUES ('1', '郎岩 235407195106112745', '待审核');
INSERT INTO `r_merchant` VALUES ('2', '孟琬 210203197503102721', '待审核');
INSERT INTO `r_merchant` VALUES ('3', '杭健雯 130102196303250459', '待审核');
INSERT INTO `r_merchant` VALUES ('4', '柯琼彦 511502199103223189', '待审核');
INSERT INTO `r_merchant` VALUES ('5', '方华 431202198811101720', '待审核');
INSERT INTO `r_merchant` VALUES ('6', '常善勤 130821199103278829', '待审核');
INSERT INTO `r_merchant` VALUES ('7', '戚轮伯 520323197806058856', '待审核');
INSERT INTO `r_merchant` VALUES ('8', '伏佳 350105199506138487', '待审核');
INSERT INTO `r_merchant` VALUES ('9', '狄彪树 610729197408202551', '待审核');
INSERT INTO `r_merchant` VALUES ('10', '平明奇 820000195008115837', '待审核');

-- ----------------------------
-- Table structure for r_store
-- ----------------------------
DROP TABLE IF EXISTS `r_store`;
CREATE TABLE `r_store` (
  `R_sID` int(11) NOT NULL,
  `R_sname` varchar(255) NOT NULL,
  `R_sURL_f` varchar(255) NOT NULL,
  `R_Status` varchar(255) NOT NULL,
  `R_S_Mid` int(11) NOT NULL,
  `R_s_address` varchar(255) NOT NULL,
  `R_s_tel` varchar(255) NOT NULL,
  `R_Sstatus` varchar(255) NOT NULL,
  PRIMARY KEY (`R_sID`),
  KEY `R_S_Mid` (`R_S_Mid`),
  CONSTRAINT `r_store_ibfk_1` FOREIGN KEY (`R_S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_store
-- ----------------------------
INSERT INTO `r_store` VALUES ('1', 'ABC量贩式KTV', '营业时间：周一至周日 全体', '休息', '101', '平江路与平苑路交叉口300米', '13725701745', '待审核');
INSERT INTO `r_store` VALUES ('2', '匣子KBOX KTV', '营业时间：周一至周日 全体', '休息', '102', '林和西路161号中泰国际广场4-7楼', '020-22222818', '待审核');
INSERT INTO `r_store` VALUES ('3', '妃吧', '营业时间：周一至周日 全体', '休息', '104', '兴南大道35号', '020-66852998', '待审核');
INSERT INTO `r_store` VALUES ('4', '畅想国度', '营业时间：周一至周日 全体', '休息', '103', '中山二路菜园东路78号', '020-37651084', '待审核');
INSERT INTO `r_store` VALUES ('5', '庙前冰室', '营业时间：周一至周日 全体', '休息', '105', '珠江新城海安路18号3楼', '020-83866666', '待审核');
INSERT INTO `r_store` VALUES ('6', '天吧', '营业时间：周一至周日 全体', '休息', '106', '冼村路100号利雅湾', '020-85275688', '待审核');
INSERT INTO `r_store` VALUES ('7', '天龙山庄', '营业时间：周一至周日 全体', '休息', '107', '兴南大道268号', '13532761154', '待审核');
INSERT INTO `r_store` VALUES ('8', '派森高端主题聚会轰趴', '营业时间：周一至周日 全体', '休息', '108', '人和镇太岗公路1号', '020-55688771', '待审核');
INSERT INTO `r_store` VALUES ('9', '兰社轰趴馆', '营业时间：周一至周日 全体', '休息', '109', '黄埔大道西668号跑马场内', '020-38887644', '待审核');
INSERT INTO `r_store` VALUES ('10', '鹿见轰趴KTV聚会馆', '营业时间：周一至周日 全体', '休息', '110', '洛溪新城北环路88号', '020-22845566', '待审核');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------

-- ----------------------------
-- Table structure for s_collection
-- ----------------------------
DROP TABLE IF EXISTS `s_collection`;
CREATE TABLE `s_collection` (
  `Cos_stype` varchar(255) NOT NULL,
  `Cos_sID` int(11) NOT NULL,
  `Cos_Uid` int(11) NOT NULL,
  KEY `Cos_Uid` (`Cos_Uid`),
  CONSTRAINT `s_collection_ibfk_1` FOREIGN KEY (`Cos_Uid`) REFERENCES `user` (`Uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_collection
-- ----------------------------
INSERT INTO `s_collection` VALUES ('massage', '1', '1');
INSERT INTO `s_collection` VALUES ('bath', '1', '2');
INSERT INTO `s_collection` VALUES ('bar', '1', '3');
INSERT INTO `s_collection` VALUES ('fitness', '1', '4');
INSERT INTO `s_collection` VALUES ('chamber', '1', '5');
INSERT INTO `s_collection` VALUES ('teahouse', '1', '6');
INSERT INTO `s_collection` VALUES ('league', '1', '7');
INSERT INTO `s_collection` VALUES ('farmhouse', '1', '8');
INSERT INTO `s_collection` VALUES ('play', '1', '9');
INSERT INTO `s_collection` VALUES ('ktv', '1', '10');

-- ----------------------------
-- Table structure for teahouse
-- ----------------------------
DROP TABLE IF EXISTS `teahouse`;
CREATE TABLE `teahouse` (
  `sID` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `sURL_f` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `S_Mid` int(11) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `sID` (`sID`),
  KEY `S_Mid` (`S_Mid`),
  CONSTRAINT `teahouse_ibfk_1` FOREIGN KEY (`S_Mid`) REFERENCES `merchant` (`Mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teahouse
-- ----------------------------
INSERT INTO `teahouse` VALUES ('1', '澄园茶坊', '营业时间：周一至周日 9：00-02：00', '营业中', '81', '临江大道T26产业园A18栋', '15918463837');
INSERT INTO `teahouse` VALUES ('2', '翠岭茶馆', '营业时间：周一至周日 9：00-02：00', '营业中', '82', '车陂大岗路2号1C栋106号', '19924391216');
INSERT INTO `teahouse` VALUES ('3', '羲园', '营业时间：周一至周日 9：00-02：00', '营业中', '83', '亚运城莲花湾路10号村长院', '020-84786979');
INSERT INTO `teahouse` VALUES ('4', '小茶闲舍·空中五星级茶馆', '营业时间：周一至周日 9：00-02：00', '营业中', '84', '艺景路234号振华商务中心11楼1102室', '020-89066867');
INSERT INTO `teahouse` VALUES ('5', '悠然家院', '营业时间：周一至周日 9：00-02：00', '营业中', '85', '二沙岛晴波路11号', '020-87393399');
INSERT INTO `teahouse` VALUES ('6', '阅江楼艺术馆·茶肆', '营业时间：周一至周日 9：00-02：00', '营业中', '86', '沙面北街43号', '020-81293827');
INSERT INTO `teahouse` VALUES ('7', '意河', '营业时间：周一至周日 9：00-02：00', '营业中', '87', '中山一路梅花村65号之六101', '18688882868');
INSERT INTO `teahouse` VALUES ('8', '寸板斋茶馆总店', '营业时间：周一至周日 9：00-02：00', '营业中', '88', '华穗路保利克洛维中景B座5楼', '13602863680');
INSERT INTO `teahouse` VALUES ('9', '瑞丰茶馆', '营业时间：周一至周日 9：00-02：00', '营业中', '89', '林乐路林和街240号远东大厦首层', '020-38847483');
INSERT INTO `teahouse` VALUES ('10', '漉茗堂茶社', '营业时间：周一至周日 9：00-02：00', '营业中', '90', '六运五街36号首层', '020-83626832');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Uid` int(11) NOT NULL,
  `Upassword` varchar(255) NOT NULL,
  `Uname` varchar(255) NOT NULL,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '小明');
INSERT INTO `user` VALUES ('2', '1', '小红');
INSERT INTO `user` VALUES ('3', '1', '小黑');
INSERT INTO `user` VALUES ('4', '1', '小江');
INSERT INTO `user` VALUES ('5', '1', '小林');
INSERT INTO `user` VALUES ('6', '1', '小陈');
INSERT INTO `user` VALUES ('7', '1', '小翁');
INSERT INTO `user` VALUES ('8', '1', '小楠');
INSERT INTO `user` VALUES ('9', '1', '小樱');
INSERT INTO `user` VALUES ('10', '1', '小兰');
