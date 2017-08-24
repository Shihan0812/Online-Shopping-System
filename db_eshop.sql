/*
Navicat MySQL Data Transfer

Source Server         : fr
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : db_eshop

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-12-18 16:32:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  ID int(4) NOT NULL AUTO_INCREMENT,
  AdminType int(4) DEFAULT NULL,
  AdminName char(12) DEFAULT NULL,
  LoginName char(12) DEFAULT NULL,
  LoginPwd char(12) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO admin VALUES ('5', '1', 'root', 'root', '123456');
INSERT INTO admin VALUES ('6', '2', 'root1', 'root1', '123456');
INSERT INTO admin VALUES ('7', '3', 'root2', 'root2', '123456');
INSERT INTO admin VALUES ('8', '4', 'root3', 'root3', '123456');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS cart;
CREATE TABLE cart (
  ID int(4) NOT NULL AUTO_INCREMENT,
  Member int(4) NOT NULL,
  Money decimal(9,2) DEFAULT NULL,
  CartStatus int(4) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO cart VALUES ('4', '3', '120.00', '0');
INSERT INTO cart VALUES ('7', '1', '56.00', '0');
INSERT INTO cart VALUES ('12', '12', '900.00', '1');
INSERT INTO cart VALUES ('13', '12', '111.40', '0');
INSERT INTO cart VALUES ('14', '11', '962.00', '0');
INSERT INTO cart VALUES ('15', '13', '900.00', '1');
INSERT INTO cart VALUES ('16', '13', '900.00', '1');

-- ----------------------------
-- Table structure for cartselectedmer
-- ----------------------------
DROP TABLE IF EXISTS cartselectedmer;
CREATE TABLE cartselectedmer (
  ID int(4) NOT NULL AUTO_INCREMENT,
  Cart int(4) NOT NULL,
  Merchandise int(4) NOT NULL,
  Number int(4) NOT NULL DEFAULT '1',
  Price decimal(8,2) NOT NULL DEFAULT '0.00',
  Money decimal(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of cartselectedmer
-- ----------------------------
INSERT INTO cartselectedmer VALUES ('14', '4', '1', '1', '34.00', '34.00');
INSERT INTO cartselectedmer VALUES ('16', '4', '3', '2', '43.00', '86.00');
INSERT INTO cartselectedmer VALUES ('20', '7', '15', '1', '50.00', '50.00');
INSERT INTO cartselectedmer VALUES ('26', '12', '20', '1', '300.00', '300.00');
INSERT INTO cartselectedmer VALUES ('27', '13', '22', '1', '50.00', '50.00');
INSERT INTO cartselectedmer VALUES ('28', '13', '29', '1', '11.40', '11.40');
INSERT INTO cartselectedmer VALUES ('29', '14', '29', '1', '11.40', '11.40');
INSERT INTO cartselectedmer VALUES ('30', '14', '22', '1', '50.00', '50.00');
INSERT INTO cartselectedmer VALUES ('31', '14', '20', '3', '300.00', '900.00');
INSERT INTO cartselectedmer VALUES ('32', '15', '20', '1', '300.00', '300.00');
INSERT INTO cartselectedmer VALUES ('33', '16', '20', '1', '300.00', '300.00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS category;
CREATE TABLE category (
  ID int(4) NOT NULL AUTO_INCREMENT,
  CateName char(40) DEFAULT NULL,
  CateDesc text,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO category VALUES ('4', '图书书籍', '各类科目书籍');
INSERT INTO category VALUES ('5', '品牌服装', '各种女装男装');
INSERT INTO category VALUES ('6', '鞋包配饰', '男鞋女鞋');
INSERT INTO category VALUES ('7', '户外运动', '各种户外运动装备');
INSERT INTO category VALUES ('8', '数码', '数码产品，手机，电脑');
INSERT INTO category VALUES ('9', '虚拟物品', '车票，机票，电话费充值');
INSERT INTO category VALUES ('10', '珠宝手表', '珠宝钻石黄金铂金施华洛');
INSERT INTO category VALUES ('11', '家电', '小家电挂烫电热毯熨斗干衣机');
INSERT INTO category VALUES ('12', '美容护发', '护肤洁面');
INSERT INTO category VALUES ('13', '母婴用品', '奶粉牛奶粉钙铁');
INSERT INTO category VALUES ('14', '家居建材', '家具床沙');
INSERT INTO category VALUES ('15', '美食特产', '零食牛肉红');
INSERT INTO category VALUES ('16', '日用宝货', '拖把收纳压缩袋旋转拖清洁');
INSERT INTO category VALUES ('17', '文化娱乐', '个性定制婚纱样片个性杯手机');

-- ----------------------------
-- Table structure for leaveword
-- ----------------------------
DROP TABLE IF EXISTS leaveword;
CREATE TABLE leaveword (
  ID int(4) NOT NULL AUTO_INCREMENT,
  Member int(4) NOT NULL,
  Admin int(4) DEFAULT NULL,
  Title char(60) DEFAULT NULL,
  Content text,
  LeaveDate datetime DEFAULT NULL,
  AnswerContent text,
  AnswerDate datetime DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of leaveword
-- ----------------------------
INSERT INTO leaveword VALUES ('1', '2', null, '非常感谢', '非常感谢，很方便！', '2009-04-20 21:14:44', null, null);
INSERT INTO leaveword VALUES ('2', '2', null, '不错', '不错的电子商务网站！', '2009-04-20 21:15:40', null, null);
INSERT INTO leaveword VALUES ('3', '3', null, '支持', '支持电子商务！', '2009-04-20 22:38:58', null, null);
INSERT INTO leaveword VALUES ('4', '11', null, '哈撒的撒旦是', '大赛丰盛的', '2012-12-13 13:21:50', null, null);
INSERT INTO leaveword VALUES ('5', '11', null, '大赛', '的爱上的', '2012-12-13 13:21:56', null, null);
INSERT INTO leaveword VALUES ('6', '11', null, '123', '1213123', '2012-12-13 13:22:11', null, null);
INSERT INTO leaveword VALUES ('7', '11', null, 'haha', 'sasas', '2012-12-13 16:13:03', null, null);
INSERT INTO leaveword VALUES ('8', '12', null, '撒 撒', '撒飒飒  撒', '2012-12-13 16:28:51', null, null);
INSERT INTO leaveword VALUES ('9', '12', null, '123', '1213', '2012-12-13 16:30:08', null, null);
INSERT INTO leaveword VALUES ('10', '12', null, '飒飒', '爱上大时代', '2012-12-13 16:30:31', null, null);
INSERT INTO leaveword VALUES ('11', '12', null, '飒飒', '撒爱上是', '2012-12-13 16:30:41', null, null);
INSERT INTO leaveword VALUES ('12', '12', null, '飒飒', '撒爱上爱上爱上', '2012-12-13 16:30:57', null, null);
INSERT INTO leaveword VALUES ('13', '12', null, '飒飒飒飒飒飒飒飒', '飒飒飒飒飒飒飒飒飒飒飒飒', '2012-12-13 16:33:04', null, null);
INSERT INTO leaveword VALUES ('14', '11', null, '留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:53:36', null, null);
INSERT INTO leaveword VALUES ('15', '11', null, '留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:53:41', null, null);
INSERT INTO leaveword VALUES ('16', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:53:45', null, null);
INSERT INTO leaveword VALUES ('17', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:54:11', null, null);
INSERT INTO leaveword VALUES ('18', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:54:16', null, null);
INSERT INTO leaveword VALUES ('19', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:54:20', null, null);
INSERT INTO leaveword VALUES ('20', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:54:25', null, null);
INSERT INTO leaveword VALUES ('21', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:14', null, null);
INSERT INTO leaveword VALUES ('22', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:17', null, null);
INSERT INTO leaveword VALUES ('23', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:21', null, null);
INSERT INTO leaveword VALUES ('24', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:30', null, null);
INSERT INTO leaveword VALUES ('25', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:34', null, null);
INSERT INTO leaveword VALUES ('26', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:38', null, null);
INSERT INTO leaveword VALUES ('27', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:43', null, null);
INSERT INTO leaveword VALUES ('28', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:47', null, null);
INSERT INTO leaveword VALUES ('29', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:52', null, null);
INSERT INTO leaveword VALUES ('30', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:56:56', null, null);
INSERT INTO leaveword VALUES ('31', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:57:00', null, null);
INSERT INTO leaveword VALUES ('32', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:57:04', null, null);
INSERT INTO leaveword VALUES ('33', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:57:08', null, null);
INSERT INTO leaveword VALUES ('34', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:57:12', null, null);
INSERT INTO leaveword VALUES ('35', '11', null, '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒留言标题：撒 撒', '2012-12-13 16:57:15', null, null);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS member;
CREATE TABLE member (
  ID int(4) NOT NULL AUTO_INCREMENT,
  Memberlevel int(4) NOT NULL,
  LoginName char(12) DEFAULT NULL,
  LoginPwd char(12) DEFAULT NULL,
  MemberName char(20) DEFAULT NULL,
  Phone char(15) DEFAULT NULL,
  Address varchar(100) DEFAULT NULL,
  Zip char(10) DEFAULT NULL,
  RegDate datetime DEFAULT NULL,
  LastDate datetime DEFAULT NULL,
  LoginTimes int(4) DEFAULT NULL,
  EMail varchar(100) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('11', '1', 'chenzhi', '123456', 'chenzhi', '15208285789', '四川大学', '70929', '2012-11-30 13:32:44', '2012-12-18 15:43:23', '35', '616407606@qq.com');
INSERT INTO member VALUES ('12', '1', '123', '123', '张三', '15208285789', '所谓的', '526323', '2012-12-13 16:25:35', '2012-12-13 16:25:42', '1', '121213213@qq.com');
INSERT INTO member VALUES ('13', '1', 'wlz', 'wlz', 'wlz', '15208285789', '四川大学', '6164071', '2012-12-18 15:45:07', '2012-12-18 15:53:32', '2', '616407606@qq.com');

-- ----------------------------
-- Table structure for memberlevel
-- ----------------------------
DROP TABLE IF EXISTS memberlevel;
CREATE TABLE memberlevel (
  ID int(4) NOT NULL AUTO_INCREMENT,
  LevelName char(20) DEFAULT NULL,
  Favourable int(4) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of memberlevel
-- ----------------------------
INSERT INTO memberlevel VALUES ('1', '普通会员', '95');
INSERT INTO memberlevel VALUES ('2', '黄金会员', '90');
INSERT INTO memberlevel VALUES ('3', '白金会员', '85');
INSERT INTO memberlevel VALUES ('4', '钻石会员', '80');

-- ----------------------------
-- Table structure for merchandise
-- ----------------------------
DROP TABLE IF EXISTS merchandise;
CREATE TABLE merchandise (
  ID int(4) NOT NULL AUTO_INCREMENT,
  Category int(4) NOT NULL,
  MerName char(40) DEFAULT NULL,
  Price decimal(8,2) DEFAULT NULL,
  SPrice decimal(8,2) DEFAULT NULL,
  MerModel char(40) DEFAULT NULL,
  Picture varchar(100) DEFAULT NULL,
  MerDesc text,
  Manufacturer char(60) DEFAULT NULL,
  LeaveFactoryDate datetime DEFAULT NULL,
  Special int(4) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of merchandise
-- ----------------------------
INSERT INTO merchandise VALUES ('13', '4', '士兵突击', '36.00', '0.00', 'n5', '/Picture/9255064-1_b.jpg', '这真的不是一部小说，它是哲学、是人生，是我们成长的历史。每一位读者都能在许三多身上找到自己的一些影子。许多三像是两个人，可根子里的他还是让你佩服、让你回味，甚至是他的“傻”，也足以让你去喜欢。你会觉得：“一本好书，能教会你怎样做人！”\r\n　　金戈铁马，斗志男儿，士兵的精神世界丰富和冷峻；一个有着性格缺点的普通农村孩子，他单纯而执着，在军人的世界里跌打滚爬。因为他的笨，让全人受累；因为他的认真，让全连队为之感动；因为他的执着，让全营战士为之骄傲。\r\n　　虽然他的家乡祖屋在爆炸声中变成一堆瓦砾，却无法阻止他坚毅的军人步伐；善良的怜悯，并未使他忘记军人的职责，枪杀毒犯……他在种种困厄和磨难中百炼成钢。\r\n　　他的名字叫――许三多。', '文艺出版社', '2009-04-09 00:00:00', '0');
INSERT INTO merchandise VALUES ('14', '4', '领导力是什么', '66.00', '0.00', 'm5', '/Picture/9250656-1_b.jpg', '《领导力是什么》汇集了众多新文章，集中讨论如何领导变革、如何处理复杂局面和不确定因素、如何建立学习型组织、如何促进创新以及在当今国际性组织中管理知识型员工必备的新技能等问题。\r\n本书的撰稿者都是当今世界最受尊重的商业思想家和顾问中的佼佼者。他们涉猎的领域广泛深入，为营销和研发提供了新的领导方法，为促进下一代领导力的发展提供了新的技巧，为危机管理提供了新的领导方法，也为打造在竞争中获胜的灵活组织提供了新的路径。本书如同一本代表专业技术与智慧的名副其实的名人录，为我们描画了一幅21世纪的领导力蓝图。', '文艺出版社', '2009-04-09 00:00:00', '0');
INSERT INTO merchandise VALUES ('15', '4', '管理是什么', '56.00', '50.00', 'm8', '/Picture/8768781-1_b.jpg', '本书是过去１０年管理思想革新的简洁实用的总结。书中对各种新的管理理念做了详尽的介绍，并对如何将之运用到复杂的日常组织中进行了阐述。书中建议管理者从旧有的控制性思维中转变到弹性的、重视网络关系、充满活力并能持续学习的思维中。\r\n新时代的竞争形势对管理者提出了新的挑战，企业的学习潜力、反应速度和适应能力取代了传统的资产规模、市场份额和资产收益率指标。以客户为中心不再只是营销部门的主导思想，它现在主宰整个企业。\r\n本书不是要你抛弃传统的管理实践，它要做的是带领你在纷纭的商业环境中寻找最有效的管理思想，以实现企业绩效的重大突破。\r\n作者在欧洲和美国的成功管理实践保证了本书与实际管理生活的密切接近，为管理者们提供了现实的操作指南。', '商务出版社', '2009-01-14 00:00:00', '1');
INSERT INTO merchandise VALUES ('16', '5', '狐狸大毛领短款修身羽绒服女潮', '500.00', '320.00', 'L', '/Picture/1.jpg', '主图来源: 自主实拍图\r\n板型: 修身型\r\n厚薄: 适中\r\n风格: 甜美\r\n衣长: 短款(40cm<衣长≤50cm)\r\n袖长: 长袖\r\n领子: 立领\r\n袖型: 常规袖\r\n衣门襟: 拉链\r\n图案: 纯色\r\n主材质含量: 91%-95%\r\n材质: 聚酯纤维\r\n填充料: 白鸭绒91%及以上\r\n价格: 201-500元\r\n年份: 2012冬季\r\n颜色分类: 黑色 粉红色 杏色\r\n尺码: S【独家首发，奢华狐狸毛领】 M【低价疯抢，价格随时上调】 L【双十二狂欢提前特惠320】 XL【商城品质，支持七天退换】\r\n面料: 记忆/仿记忆面料', '康熙服饰连锁', '2012-12-13 00:00:00', '1');
INSERT INTO merchandise VALUES ('17', '5', '美特斯邦威冬装新品休闲女', '300.00', '209.00', 'M', '/Picture/1.jpg', '主图来源: 自主实拍图\r\n板型: 修身型\r\n厚薄: 适中\r\n风格: 甜美\r\n领子: 立领\r\n衣门襟: 拉链\r\n主材质含量: 81%-90%\r\n填充料: 白鸭绒91%及以上\r\n价格: 201-500元\r\n年份: 2012冬季\r\n颜色分类: 黑色 橙色 粉红色 军绿色', '家家', '2012-12-15 00:00:00', '1');
INSERT INTO merchandise VALUES ('18', '5', '甜美超薄透气毛领立体桔色羽绒服短', '528.00', '300.00', 'M', '/Picture/1.jpg', '主图来源: 自主实拍图\r\n品牌: 桃品爱\r\n货号: D1-W1-21\r\n板型: 直筒型\r\n厚薄: 薄款\r\n风格: 甜美\r\n甜美: 公主\r\n衣长: 短款(40cm<衣长≤50cm)\r\n袖长: 长袖\r\n领子: 圆领\r\n袖型: 常规袖\r\n衣门襟: 拉链\r\n图案: 纯色\r\n流行元素/工艺: 蝴蝶结 带毛领 口袋 系带/腰带\r\n主材质含量: 96%及以上\r\n材质: 锦纶\r\n填充料: 白鸭绒91%及以上\r\n适合人群年龄段: 18-24岁\r\n价格: 501-1000元\r\n年份: 2012秋季\r\n颜色分类: 白色 浅绿色 桔色\r\n尺码: S M L\r\n面料: 尼丝纺', '衣家亲生活馆', '2012-12-04 00:00:00', '1');
INSERT INTO merchandise VALUES ('19', '6', '正品 劳斯帅特女士钱包', '528.00', '300.00', 'M', '/Picture/1.jpg', '货号: KU85-3684 性别: 女 款式: 手拿包 拿包方式: 手拿 质地: PU PU特征: 印花 提拎部件: 装卸式提把 箱包开袋方式: 拉链 内部结构: 拉链暗袋 手机袋 证件袋 夹层拉链袋 外袋种类: 挖袋 流行元素: 印花 箱包图案: 几何图案 颜色分类: 手拿款中号骨头纹啡色 手拿款特大号啡色圈圈 手拿款大号啡色圈圈 手拿款中号梅花纹杏色 升级版大号骨头纹啡色两用 升级版特大号骨头纹啡色两用款 手拿款特大号梅花纹杏色 手拿款特大号杏色圈圈 手拿款中号啡色圈圈 手拿款大号杏色圈圈 手拿款中号杏色圈圈 手拿款大号梅花纹杏色 手拿款大号骨头纹啡色 手拿款特大号骨头纹啡色 有无夹层: 有 硬度: 软 有无拉杆: 有 可否折叠: 否 价格区间: 101-300元 成色: 全新 箱包场合: 休闲/街头 包袋大小: 小（最长边20-30cm） 品牌: Latuc Seed/劳斯・帅特 箱包风格: 欧美时尚 箱包外形: 竖款方形 箱包肩带样式: 无肩带 里料质地: 涤纶 箱包尺寸: 大版：宽210*厚40*高115mm 容量/容积: 可放iphone手机', '衣家亲生活馆', '2012-12-04 00:00:00', '0');
INSERT INTO merchandise VALUES ('20', '7', '内增高 运动鞋女', '900.00', '300.00', '35', '/Picture/1.jpg', '颜色分类: 黑色 白粉红色 浅灰色货号: 563品牌: 贝踏上市年份: 2012年秋季吊牌价: 288运动鞋性别: 女子是否现货: 现货鞋帮款式: 中帮鞋面材料: PU/人造革运动鞋外底材料: 耐磨橡胶运动鞋功能: 包裹性 防滑 耐磨 平衡 支撑尺码: 35 36 37 38 39 40 此鞋比正常运动鞋偏小一码^0^ 购买时比平常挑大一个码^0^价格区间: 151-200元帆布鞋闭合方式: 系带系列: 运动时尚鞋帆布鞋流行元素: 亮片', '每天', '2012-12-04 00:00:00', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  ID int(4) NOT NULL AUTO_INCREMENT,
  Member int(4) NOT NULL,
  Cart int(4) NOT NULL,
  OrderNO char(20) DEFAULT NULL,
  OrderDate datetime DEFAULT NULL,
  OrderStatus int(4) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO orders VALUES ('9', '12', '12', '1355387168460', '2012-12-13 16:26:08', '1');
INSERT INTO orders VALUES ('10', '13', '15', '1355816736771', '2012-12-18 15:45:36', '1');
INSERT INTO orders VALUES ('11', '13', '16', '1355817409774', '2012-12-18 15:56:49', '3');
