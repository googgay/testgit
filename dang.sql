/*
Navicat MySQL Data Transfer

Source Server         : shabilifanzhi
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : dang

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-20 23:44:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for d_book
-- ----------------------------
DROP TABLE IF EXISTS `d_book`;
CREATE TABLE `d_book` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) NOT NULL,
  `publishing` varchar(200) NOT NULL,
  `publish_time` bigint(20) NOT NULL,
  `word_number` varchar(15) DEFAULT NULL,
  `which_edtion` varchar(15) DEFAULT NULL,
  `total_page` varchar(15) DEFAULT NULL,
  `print_time` bigint(20) DEFAULT NULL,
  `print_number` varchar(15) DEFAULT NULL,
  `isbn` varchar(25) DEFAULT NULL,
  `author_summary` text NOT NULL,
  `catalogue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_book
-- ----------------------------
INSERT INTO `d_book` VALUES ('1', '莫言', '上海文艺出版社', '1338480000000', '542000', '1', '621', '1338480000000', '1', '9787532142750', '莫言，山东高密人，1955年生。著有《红高粱家族》、《酒国》、《丰乳肥臀》、《檀香刑》、《生死疲劳》、《蛙》等长篇小说十一部', '新版自序 第一卷 第二卷 第三卷 第四卷 第五卷 第六卷 第七卷 卷外卷 拾遗补阙');
INSERT INTO `d_book` VALUES ('2', '路遥', '北京十月文艺出版社', '1330531200000', '1100000', '2', '480', '1330531200000', '1', '9787530212004', '路遥（1949-1992）原名王卫国，1949年12月3日生于陕西榆林市清涧县一个贫困的农民家庭，7岁时因为家里困难被过继给延川县农村的伯父', '第一部 第二部 第三部');
INSERT INTO `d_book` VALUES ('3', '陈忠实', '北京十月文艺出版社', '1314806400000', '526000', '1', '322', '1314806400000', '1', '9787530210116', '陈忠实是我国当代著名作家，任中国作家协会副主席，《白鹿原》是其成名著作', '第一部 第二部 第三部');
INSERT INTO `d_book` VALUES ('4', '季良', '珠海出版社', '1262275200000', '350000', '1', '331', '1262275200000', '1', '9787545303261', '季良，男，土家族，大学文化，1959年2月出生于湖南慈利的知识分子家庭', '01、孤男寡女 02、心猿意马 03、女人的魅力 04、弥天大谎');
INSERT INTO `d_book` VALUES ('5', '南派三叔', '北京联合出版公司', '1343750400000', '277000', '1', '262', '1343750400000', '1', '9787550209459', '南派三叔，本名徐磊，男，浙江人，现居杭州。被称为中国最会讲故事的小说家，激荡想象力剧情的推崇者', '第一章  起源  第二章  第一件怪事（上）第三章  第一件怪事（下）');
INSERT INTO `d_book` VALUES ('6', '姜戎', '长江文艺出版社', '1080748800000', '511000', '1', '408', '1080748800000', '1', '9787535427304', '姜戎，58岁。北京人。北京某大学研究人员。主业：政治经济学，偏重政治学方面', '编者荐言 我们是龙的传人还是狼的传人？正文 理性探掘——关于狼图腾的讲座与对话');
INSERT INTO `d_book` VALUES ('7', '张小娴', '北京十月文艺出版社', '1349020800000', '130000', '1', '256', '1349020800000', '1', '9787530212547', '张小娴，华语文坛最耀眼的名字。迄今已出版超过四十本小说和散文集，独创了一种既温柔又犀利的爱情文学', '自序  第一章 那些少年的岁月  第二章 恋人的感觉');
INSERT INTO `d_book` VALUES ('8', '莫言', '上海文艺出版社', '1349020800000', '274000', '1', '331', '1349020800000', '1', '9787532146314', '莫言，先后毕业于解放军艺术学院文学系（1984－1986）和北京师范大学?鲁迅文学院研究生班（1989－1991），获文艺学硕士学位', '第一章 第二章 第三章');
INSERT INTO `d_book` VALUES ('9', '二月河', '长江文艺出版社', '1251734400000', '337000', '1', '223', '1251734400000', '1', '9787535440556', '二月河：本名凌解放。当代著名历史小说作家。现为中国作家协会会员，河南省作家协会副主席', '第一回 皇阿哥怜贫护盐贩　桐城令断案打奸商第二回 理河工贝勒榨藩台 探世情阿哥淋澡汤　第三回 十三郎仗义救风尘　八阿哥串连说人情');
INSERT INTO `d_book` VALUES ('10', '路遥', '北京十月文艺出版社', '1330531200000', '144000', '2', '248', '1330531200000', '1', '9787530211564', '路遥（1949—1992）原名王卫国，1949年12月3日生于陕西榆林市清涧县一个贫困的农民家庭，7岁时因为家里困难被过继给延川县农村的伯父', '第一章 第二章 第三章');
INSERT INTO `d_book` VALUES ('11', '余华', '作家出版社', '1343750400000', '136000', '3', '191', '1343750400000', '28', '9787506365437', '余华，1960年4月3日生于浙江杭州，曾经从事过5年的牙医工作，1983年开始写作，已经完成长篇小说4部，中短篇小说集6部，随笔集3部，其作品被翻译成二十多种文字，在近三十个国家出版', '中文版自序 韩文版自序 外文版评论摘要');
INSERT INTO `d_book` VALUES ('12', '钱钟书', '人民文学出版社', '665337600000', '254000', '2', '362', '1338480000000', '1', '9787020090006', '钱钟书，原名仰先，字默存，号槐聚，曾用笔名中书君，中国现代著名作家、文学研究家。曾为《毛泽东选集》英文版翻译小组成员', '序 围城 附录 记钱钟书与《围城》——杨绛');
INSERT INTO `d_book` VALUES ('13', '蔡东藩', '上海科学技术文献出版社', '1122825600000', '6240000', '1', '1100', '1122825600000', '1', '9211342', '蔡东藩（1877-1945），浙江萧山人。1890年（光绪十六年）考中秀才。1910年赴北京朝考得中，分发福建，以知县候补，因不满官场恶习，于1911年称病归里', '第一回 移花接木计献美姬 用李代桃欢承淫后  第二回 诛假父纳言迎母 称皇帝立法愚民 ');
INSERT INTO `d_book` VALUES ('14', '沈从文', '北京十月文艺出版社', '1214841600000', '411000', '1', '464', '1214841600000', '1', '9787530209455', '沈从文（1902－1988），原名沈岳焕，字崇文。湖南凤凰县人.沈从文是现代著名作家、历史文物研究家、京派小说代表人物', '渔 三三 虎雏 黔小景');
INSERT INTO `d_book` VALUES ('15', '曲波', '人民文学出版社', '1104508800000', '400000', '3', '526', '1104508800000', '1', '9787020049110', '曲波（1923-2002），山东龙口人。1938年参加八路军，曾任连、营指挥员。解入军战争时期曾率领解入军小分队在东北牧丹江一带进行剿匪战斗', '一 血债  二 许大马棒和蝴蝶迷 三 受命');
INSERT INTO `d_book` VALUES ('16', '许开祯', '凤凰出版社', '1333209600000', '280000', '1', '283', '1333209600000', '1', '9787550611597', '许开祯，甘肃省文学院签约作家，曾任政府秘书、乡企厂长、大型企业集团副总经理，身在官场数十年。2002年开始走上专业创作之路，代表作有《省委班子》《拿下》《打黑》《政法书记》《黑手》等作品', '第一章　绕不过去的12·1 第二章　南湖再起血斗 第三章　沙尘暴来了');
INSERT INTO `d_book` VALUES ('17', '都梁', '北京联合出版公司', '1338480000000', '420000', '1', '412', '1335801600000', '1', '9787550206885', '都梁，上世纪50年代生人，因出版《亮剑》《血色浪漫》《狼烟北平》和《荣宝斋》而蛮声文坛。四部小说均被改编成同名电视剧，其中《亮剑》和《血色浪漫》红遍大江南北，《狼烟北平》和《荣宝斋》在北京地区极受欢迎。', '第一章 第二章 第三章');
INSERT INTO `d_book` VALUES ('18', '鲁迅', '译林出版社', '1330531200000', '190000', '1', '287', '1330531200000', '1', '9787544724241', '鲁迅(1881-1936)，文学家、思想家和革命家。原名周树人，字豫才，浙江绍兴人。著有小说集《呐喊》、《彷徨》、《故事新编》，散文集《朝花夕拾》，散文诗集《野草》，杂文集《坟》、《热风》、《华盖集》、《南腔北凋集》、《且介亭杂文》等。', '自序 狂人日记 孔乙己');
INSERT INTO `d_book` VALUES ('19', '林语堂', '陕西师范大学出版社', '1120147200000', '13000', '1', '611', '1120147200000', '1', '9787561334386', '林语堂（1895年10月3日—1976年3月26日）福建龙溪人。原名和乐，后改玉堂，又改语堂。1912年入上海圣约翰大学，毕业后在清华大学任教。1919年秋赴美哈佛大学文学系。1922年获文学硕士学位。同年转赴德国入莱比锡大学，专攻语言学', '第一章 后花园富翁埋珠宝 北京城百姓避兵灾  第二章 遇乱兵骨肉失散 贴告白沿路寻人 ');
INSERT INTO `d_book` VALUES ('20', '苏青', '中国妇女出版社', '1251734400000', '200000', '1', '260', '1251734400000', '1', '9787802037663', '苏青（1914年～1982年） 中国作家，小说家、散文家、剧作家。是与张爱玲齐名的海派女作家的代表人物。浙江宁波人。1933年考入国立中央大学（1949年更名为南京大学）外文系，后肄业移居上海。', '第一章　新旧合璧的婚礼 第二章　洞房花烛夜 第三章　风流寡妇');
INSERT INTO `d_book` VALUES ('21', '沈从文', '天津人民出版社', '1262275200000', '200000', '1', '200', '1262275200000', '1', '9787201062914', '沈从文(1902-1988)，原名沈岳焕，字崇文，湖南凤凰县人。现代著名作家、历史文物研究家、京派小说代表人物，二十世纪最优秀的中国文学家之一。他一生笔耕不辍，著作颇丰，作品结集约有八十多部，是现代作家中成书最多的一位', '边城  长河');
INSERT INTO `d_book` VALUES ('22', '歧途佳人', '中国三峡出版社', '1262275200000', '120000', '1', '100', '1262275200000', '1', '9787802235915', '苏青最好的时候能够做到一种“天涯若比邻”的广大亲切，唤起了古往今来无所不在的妻性母性的回忆……', '一、邂逅 二、姊姊在青岛 三、其言也善？ ');
INSERT INTO `d_book` VALUES ('23', '都梁', '人民文学出版社', '1183219200000', '601000', '1', '544', '1183219200000', '1', '9787020061211', '都梁，50年代出生，做过教师、公务员、公司经理，本名张煐、石油勘探技术研究所所长，现为自由撰稿人。2000年1月出版长篇小说《亮剑》。同名电视连续剧由海润影视传播忪司拍摄。2001年12月发表26集电视连续剧剧本《血色浪漫》，由润亚影视传播有限公司拍摄。', '第一章 第二章 第三章');
INSERT INTO `d_book` VALUES ('24', '张爱玲', '北京十月文艺出版社', '1254326400000', '252000', '1', '351', '1254326400000', '1', '9787530210055', '张爱玲，中国现代作家。张爱玲的家世显赫，祖父张佩纶是清末名臣，祖母李菊耦是朝廷重臣李鸿章的长女。张爱玲一生创作大量文学作品，她的书信也被人们作为著作的一部分加以研究', '第一回 赵朴斋咸瓜街访舅 洪善卿聚秀堂做媒 第二回 小伙子装烟空一笑 清倌人吃酒枉相讥');

-- ----------------------------
-- Table structure for d_category
-- ----------------------------
DROP TABLE IF EXISTS `d_category`;
CREATE TABLE `d_category` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `turn` int(10) NOT NULL,
  `en_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_category
-- ----------------------------
INSERT INTO `d_category` VALUES ('1', '1', 'Book', '图书', null, '0');
INSERT INTO `d_category` VALUES ('2', '1', 'Novel', '小说', null, '1');
INSERT INTO `d_category` VALUES ('3', '2', 'Youth', '青春', null, '1');
INSERT INTO `d_category` VALUES ('4', '3', 'Humanity And Social Science', '人文社科', null, '1');
INSERT INTO `d_category` VALUES ('5', '4', 'Management', '管理', null, '1');
INSERT INTO `d_category` VALUES ('6', '5', 'Children', '少儿', null, '1');
INSERT INTO `d_category` VALUES ('7', '6', 'Foreign Language', '外语', null, '1');
INSERT INTO `d_category` VALUES ('8', '7', 'Computer', '计算机', null, '1');
INSERT INTO `d_category` VALUES ('9', '1', 'Chinese Contemporary Novel', '当代小说', null, '2');
INSERT INTO `d_category` VALUES ('10', '2', 'Chinese Modern Novel', '近现代小说', null, '2');
INSERT INTO `d_category` VALUES ('11', '3', 'Chinese Classical  Novel', '古典小说', null, '2');
INSERT INTO `d_category` VALUES ('12', '4', 'Four Classic Novels', '四大名著', null, '2');
INSERT INTO `d_category` VALUES ('13', '5', 'Translated Works', '世界名著', null, '2');
INSERT INTO `d_category` VALUES ('14', '1', 'School', '校园', null, '3');
INSERT INTO `d_category` VALUES ('15', '2', 'Love', '爱情/情感', null, '3');
INSERT INTO `d_category` VALUES ('16', '3', 'Grow Up', '叛逆/成长', null, '3');
INSERT INTO `d_category` VALUES ('17', '4', 'Fantasy', '玄幻', null, '3');
INSERT INTO `d_category` VALUES ('18', '5', 'Original', '原创', null, '3');
INSERT INTO `d_category` VALUES ('19', '1', 'Political', '政治', null, '4');
INSERT INTO `d_category` VALUES ('20', '2', 'Economic', '经济', null, '4');
INSERT INTO `d_category` VALUES ('21', '3', 'Law', '法律', null, '4');
INSERT INTO `d_category` VALUES ('22', '4', 'Philosophy', '哲学', null, '4');
INSERT INTO `d_category` VALUES ('23', '5', 'History', '历史', null, '4');
INSERT INTO `d_category` VALUES ('24', '1', 'Commen Management', '管理学', null, '5');
INSERT INTO `d_category` VALUES ('25', '2', 'Strategic Management', '战略管理', null, '5');
INSERT INTO `d_category` VALUES ('26', '3', 'Marketing', '市场营销', null, '5');
INSERT INTO `d_category` VALUES ('27', '4', 'Business History', '商业史传', null, '5');
INSERT INTO `d_category` VALUES ('28', '5', 'E-Business', '电子商务', null, '5');
INSERT INTO `d_category` VALUES ('29', '1', '0-2', '0-2岁', null, '6');
INSERT INTO `d_category` VALUES ('30', '2', '3-6', '3-6岁', null, '6');
INSERT INTO `d_category` VALUES ('31', '3', '7-10', '7-10岁', null, '6');
INSERT INTO `d_category` VALUES ('32', '4', '11-14', '11-14岁', null, '6');
INSERT INTO `d_category` VALUES ('33', '5', 'Child Literature', '儿童文学', null, '6');
INSERT INTO `d_category` VALUES ('34', '1', 'English', '英语', null, '7');
INSERT INTO `d_category` VALUES ('35', '2', 'Japanese', '日语', null, '7');
INSERT INTO `d_category` VALUES ('36', '3', 'Korean', '韩语', null, '7');
INSERT INTO `d_category` VALUES ('37', '4', 'Russian', '俄语', null, '7');
INSERT INTO `d_category` VALUES ('38', '5', 'German', '德语', null, '7');
INSERT INTO `d_category` VALUES ('39', '1', 'Computer Theory', '计算机理论', null, '8');
INSERT INTO `d_category` VALUES ('40', '2', 'Database', '数据库', null, '8');
INSERT INTO `d_category` VALUES ('41', '3', 'Programming', '程序设计', null, '8');
INSERT INTO `d_category` VALUES ('42', '4', 'Artificial Intelligence', '人工智能', null, '8');
INSERT INTO `d_category` VALUES ('43', '5', 'Computer Examination', '计算机考试', null, '8');

-- ----------------------------
-- Table structure for d_category_product
-- ----------------------------
DROP TABLE IF EXISTS `d_category_product`;
CREATE TABLE `d_category_product` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_thbqavckp3uhxxwow5sf1r6bs` (`cat_id`),
  CONSTRAINT `FK_thbqavckp3uhxxwow5sf1r6bs` FOREIGN KEY (`cat_id`) REFERENCES `d_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_category_product
-- ----------------------------
INSERT INTO `d_category_product` VALUES ('1', '1', '9');
INSERT INTO `d_category_product` VALUES ('2', '2', '9');
INSERT INTO `d_category_product` VALUES ('3', '3', '9');
INSERT INTO `d_category_product` VALUES ('4', '4', '9');
INSERT INTO `d_category_product` VALUES ('5', '5', '9');
INSERT INTO `d_category_product` VALUES ('6', '6', '9');
INSERT INTO `d_category_product` VALUES ('7', '7', '9');
INSERT INTO `d_category_product` VALUES ('8', '8', '9');
INSERT INTO `d_category_product` VALUES ('9', '9', '9');
INSERT INTO `d_category_product` VALUES ('10', '10', '9');
INSERT INTO `d_category_product` VALUES ('11', '11', '10');
INSERT INTO `d_category_product` VALUES ('12', '12', '10');
INSERT INTO `d_category_product` VALUES ('13', '13', '10');
INSERT INTO `d_category_product` VALUES ('14', '14', '10');
INSERT INTO `d_category_product` VALUES ('15', '15', '10');
INSERT INTO `d_category_product` VALUES ('16', '16', '10');
INSERT INTO `d_category_product` VALUES ('17', '17', '10');
INSERT INTO `d_category_product` VALUES ('18', '18', '10');
INSERT INTO `d_category_product` VALUES ('19', '19', '10');
INSERT INTO `d_category_product` VALUES ('20', '20', '10');
INSERT INTO `d_category_product` VALUES ('21', '21', '10');
INSERT INTO `d_category_product` VALUES ('22', '22', '10');
INSERT INTO `d_category_product` VALUES ('23', '23', '10');
INSERT INTO `d_category_product` VALUES ('24', '24', '10');
INSERT INTO `d_category_product` VALUES ('25', '1', '2');
INSERT INTO `d_category_product` VALUES ('26', '2', '2');
INSERT INTO `d_category_product` VALUES ('27', '3', '2');
INSERT INTO `d_category_product` VALUES ('28', '4', '2');
INSERT INTO `d_category_product` VALUES ('29', '5', '2');
INSERT INTO `d_category_product` VALUES ('30', '6', '2');
INSERT INTO `d_category_product` VALUES ('31', '7', '2');
INSERT INTO `d_category_product` VALUES ('32', '8', '2');
INSERT INTO `d_category_product` VALUES ('33', '9', '2');
INSERT INTO `d_category_product` VALUES ('34', '10', '2');
INSERT INTO `d_category_product` VALUES ('35', '11', '2');
INSERT INTO `d_category_product` VALUES ('36', '12', '2');
INSERT INTO `d_category_product` VALUES ('37', '13', '2');
INSERT INTO `d_category_product` VALUES ('38', '14', '2');
INSERT INTO `d_category_product` VALUES ('39', '15', '2');
INSERT INTO `d_category_product` VALUES ('40', '16', '2');
INSERT INTO `d_category_product` VALUES ('41', '17', '2');
INSERT INTO `d_category_product` VALUES ('42', '18', '2');
INSERT INTO `d_category_product` VALUES ('43', '19', '2');
INSERT INTO `d_category_product` VALUES ('44', '20', '2');
INSERT INTO `d_category_product` VALUES ('45', '21', '2');
INSERT INTO `d_category_product` VALUES ('46', '22', '2');
INSERT INTO `d_category_product` VALUES ('47', '23', '2');
INSERT INTO `d_category_product` VALUES ('48', '24', '2');
INSERT INTO `d_category_product` VALUES ('49', '1', '1');
INSERT INTO `d_category_product` VALUES ('50', '2', '1');
INSERT INTO `d_category_product` VALUES ('51', '3', '1');
INSERT INTO `d_category_product` VALUES ('52', '4', '1');
INSERT INTO `d_category_product` VALUES ('53', '5', '1');
INSERT INTO `d_category_product` VALUES ('54', '6', '1');
INSERT INTO `d_category_product` VALUES ('55', '7', '1');
INSERT INTO `d_category_product` VALUES ('56', '8', '1');
INSERT INTO `d_category_product` VALUES ('57', '9', '1');
INSERT INTO `d_category_product` VALUES ('58', '10', '1');
INSERT INTO `d_category_product` VALUES ('59', '11', '1');
INSERT INTO `d_category_product` VALUES ('60', '12', '1');
INSERT INTO `d_category_product` VALUES ('61', '13', '1');
INSERT INTO `d_category_product` VALUES ('62', '14', '1');
INSERT INTO `d_category_product` VALUES ('63', '15', '1');
INSERT INTO `d_category_product` VALUES ('64', '16', '1');
INSERT INTO `d_category_product` VALUES ('65', '17', '1');
INSERT INTO `d_category_product` VALUES ('66', '18', '1');
INSERT INTO `d_category_product` VALUES ('67', '19', '1');
INSERT INTO `d_category_product` VALUES ('68', '20', '1');
INSERT INTO `d_category_product` VALUES ('69', '21', '1');
INSERT INTO `d_category_product` VALUES ('70', '22', '1');
INSERT INTO `d_category_product` VALUES ('71', '23', '1');
INSERT INTO `d_category_product` VALUES ('72', '24', '1');

-- ----------------------------
-- Table structure for d_item
-- ----------------------------
DROP TABLE IF EXISTS `d_item`;
CREATE TABLE `d_item` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `dang_price` double NOT NULL,
  `product_num` int(10) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_item
-- ----------------------------

-- ----------------------------
-- Table structure for d_order
-- ----------------------------
DROP TABLE IF EXISTS `d_order`;
CREATE TABLE `d_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `order_time` bigint(20) NOT NULL,
  `order_desc` varchar(100) DEFAULT NULL,
  `total_price` double NOT NULL,
  `receive_name` varchar(100) DEFAULT NULL,
  `full_address` varchar(200) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_order
-- ----------------------------

-- ----------------------------
-- Table structure for d_product
-- ----------------------------
DROP TABLE IF EXISTS `d_product`;
CREATE TABLE `d_product` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `fixed_price` double NOT NULL,
  `dang_price` double NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `has_deleted` int(1) NOT NULL DEFAULT '0',
  `product_pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_product
-- ----------------------------
INSERT INTO `d_product` VALUES ('1', '丰乳肥臀', '《丰乳肥臀》是莫言早期创作中的一座高峰,小说从抗日战争一直写到新中国改革开放之后，以汪洋恣肆的笔触对波澜壮阔的历史进行了描绘。', '1351923203963', '48', '33.6', '莫言', '0', '16.jpg');
INSERT INTO `d_product` VALUES ('2', '平凡的世界', '茅盾文学奖皇冠上的明珠激励千万青年的不朽经典', '1351923103969', '79.8', '59.8', '不朽经典', '0', '17.jpg');
INSERT INTO `d_product` VALUES ('3', '白鹿原', '茅盾文学奖获奖经典作品，权威未删节平装版', '1351924103969', '32', '22', '白鹿原', '0', '18.jpg');
INSERT INTO `d_product` VALUES ('4', '副省长夫人', '常务副省长穆桑俞的舅子、云雾县的代理县长邱俊辉偷情，事后女孩控告他强奸，因为她的手指甲上沾着他的血液．铁证如山', '1351924303961', '29.8', '14.9', '官场腐败', '0', '19.jpg');
INSERT INTO `d_product` VALUES ('5', '藏海花', '南派三叔2012新作《藏海花》：《盗墓笔记》前传，闷油瓶的盗墓传奇！流潋紫倾心推荐', '1351928503963', '32.8', '20.4', '盗墓笔记', '0', '20.jpg');
INSERT INTO `d_product` VALUES ('6', '狼图腾', '这是世界上迄今为止惟一一部描绘、研究蒙古草原狼的“旷世奇书”。阅读此书，将是我们这个时代享用不尽的关于狼图腾的精神盛宴', '1351928513967', '32', '24', '狼图腾', '0', '21.jpg');
INSERT INTO `d_product` VALUES ('7', '面包树上的女人', '张小娴都市爱情小说经典代表作，面包树三部曲之一', '1351927503960', '28', '19.6', '都市爱情', '0', '22.jpg');
INSERT INTO `d_product` VALUES ('8', '天堂蒜薹之歌', '2012年度诺贝尔文学奖获得者，中国著名作家莫言十一部长篇小说完整集结，重磅亮相', '1351927203967', '33', '23.1', '诺贝尔', '0', '23.jpg');
INSERT INTO `d_product` VALUES ('9', '康熙大帝', '这一卷主要描写康熙晚年选择皇储以及众阿哥为争当皇储勾心斗角的故事', '1351827502960', '110', '77', '历史帝王', '0', '24.jpg');
INSERT INTO `d_product` VALUES ('10', '人生', '影响千万青年的励志名篇-- 马云、贾樟柯倾情推荐', '1351827500960', '25', '18.7', '人生哲理', '0', '2.jpg');
INSERT INTO `d_product` VALUES ('11', '活着', '《活着》是一部充满血泪的小说。余华通过一位中国农民的苦难生活讲述了人如何去承受巨大的苦难；讲述了眼泪的丰富和宽广', '1351827500060', '20', '14.4', '余华小说', '0', '3.jpg');
INSERT INTO `d_product` VALUES ('12', '围城', '钱锺书所著的《围城》是一幅栩栩如生的世井百态图，人生的酸甜苦辣千般滋味均在其中得到了淋漓尽致的体现', '1351826503061', '39', '29.3', '围城', '0', '4.jpg');
INSERT INTO `d_product` VALUES ('13', '中国历代通俗演义', '蔡东藩先生的这套《中国历代通俗演义》从秦汉写到民国，全书共一千余回，五百多万字，写了近二千二百年的历史', '1351846403051', '318', '206.7', '中国历史', '0', '5.jpg');
INSERT INTO `d_product` VALUES ('14', '沈从文集：边城', '边城是沈从文小说的代表作，是我国文学史上一部优秀的抒发乡土情怀的中篇小说', '1351796403052', '29.8', '20.6', '纯美爱情', '0', '6.jpg');
INSERT INTO `d_product` VALUES ('15', '林海雪原', '书里所写的是东北民主联军一支小分队，在团参谋长少剑波的率领下，深入林海雪原执行剿匪任务的过程', '1351777403052', '27', '19.7', '剿匪', '0', '7.jpg');
INSERT INTO `d_product` VALUES ('16', '县委班子', '非常有内涵！许开祯经典之作，一本书看清官场里的所有门道', '1351796103152', '32', '22.1', '官场现形', '0', '8.jpg');
INSERT INTO `d_product` VALUES ('17', '荣宝斋', '都梁家国四部曲之四，根据真实故事创作而成，讲述“家族奋斗”创造商业传奇的鸿篇巨作', '1351396103156', '36', '23', '都梁小说', '0', '9.jpg');
INSERT INTO `d_product` VALUES ('18', '鲁迅－呐喊·彷徨', '重读鲁迅文字，体会他对现实社会与人生的冷峻刻画，感受他对旧礼教和国民性的深刻批判', '1351386113156', '26.8', '16.3', '鲁迅', '0', '10.jpg');
INSERT INTO `d_product` VALUES ('19', '京华烟云(林语堂著)', '《京华烟云》是林语堂旅居巴黎时于1938年8月至1939年8月间用英文写就的长篇小说，并题献给“英勇的中国士兵”', '1351385223156', '43', '29.3', '林语堂', '0', '11.jpg');
INSERT INTO `d_product` VALUES ('20', '结婚十年', '她和张爱玲是中国孤岛时期荒芜文坛上并列的奇葩，这是一本畅销中国半个世纪的长篇小说', '1351355113167', '26', '15.9', '爱情', '0', '12.jpg');
INSERT INTO `d_product` VALUES ('21', '边城.长河', '沈从文小说是中国现代小说的典范。本书收入最能代表沈从文艺术水平的中篇小说《边城》和长篇小说《长河》', '1351455913167', '25', '18.8', '沈从文', '0', '13.jpg');
INSERT INTO `d_product` VALUES ('22', '歧途佳人', '这篇小说是苏青以自己的婚恋经历和理想破灭过程为背景，加以耳闻目睹了黑社会里各种尔虞我诈的事件和人性丑恶的一面，再经过提炼而写成', '1351475913267', '26', '16.9', '张爱玲', '0', '14.jpg');
INSERT INTO `d_product` VALUES ('23', '血色浪漫', '没有炮火的年代，一代人的青春挥洒在武斗与呐喊声中，这是他们阳光灿烂的日子，他们的浪漫在血色昏黄中弥漫成昨日的记忆', '1351479913266', '40', '30.3', '浪漫爱情', '0', '15.jpg');

-- ----------------------------
-- Table structure for d_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `d_receive_address`;
CREATE TABLE `d_receive_address` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `receive_name` varchar(20) NOT NULL,
  `full_address` varchar(200) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_receive_address
-- ----------------------------
INSERT INTO `d_receive_address` VALUES ('1', '1', '曹当当', '外星球', '123456', '12321', '110110110');

-- ----------------------------
-- Table structure for d_user
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `user_integral` int(12) NOT NULL DEFAULT '0',
  `is_email_verify` char(3) DEFAULT NULL,
  `email_verify_code` varchar(50) DEFAULT NULL,
  `last_login_time` bigint(20) DEFAULT NULL,
  `last_login_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('1', 'caofeng2012@126.com', '当当小锋', 'X7J17fvELYRAVJhXfGNRag==', '10', 'T', '07b61776-7f04-4fcc-b4da-22542b6578c0', '1367651563576', '0:0:0:0:0:0:0:1');
INSERT INTO `d_user` VALUES ('2', 'asd@qq.com', '123456', '4QrcOUm6Wau+VuBX8g+IPg==', '10', '1', '962d1234-00b4-47a9-80dd-91364cc427e9', '1505922079266', '0:0:0:0:0:0:0:1');
