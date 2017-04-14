/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : arrange

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-04-13 21:31:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_arrange`
-- ----------------------------
DROP TABLE IF EXISTS `t_arrange`;
CREATE TABLE `t_arrange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) DEFAULT NULL,
  `testid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_arrange
-- ----------------------------
INSERT INTO `t_arrange` VALUES ('1', '1', '128');
INSERT INTO `t_arrange` VALUES ('2', '2', '127');

-- ----------------------------
-- Table structure for `t_basecase`
-- ----------------------------
DROP TABLE IF EXISTS `t_basecase`;
CREATE TABLE `t_basecase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `caseId` int(11) DEFAULT NULL COMMENT '为0则为基础case',
  `kind` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basecase
-- ----------------------------
INSERT INTO `t_basecase` VALUES ('3', '课程添加', '课程添加', '99', '4', '104', '0', '0', '2', '0');
INSERT INTO `t_basecase` VALUES ('5', '课件上传', '课件上传', '99', '4', '104', '0', '0', '2', '0');
INSERT INTO `t_basecase` VALUES ('6', '课程发布', '课程发布', '99', '4', '104', '0', '0', '2', '0');
INSERT INTO `t_basecase` VALUES ('10', '课程启用', '课程启用', '99', '4', '104', '2', '1', '2', '6');
INSERT INTO `t_basecase` VALUES ('11', '课程下架', '课程下架', '99', '4', '104', '2', '1', '2', '7');
INSERT INTO `t_basecase` VALUES ('12', '课程上架', '课程上架', '99', '4', '104', '2', '1', '2', '8');
INSERT INTO `t_basecase` VALUES ('13', '试卷添加', '试卷添加', '102', '4', '104', '2', '2', '2', '1');
INSERT INTO `t_basecase` VALUES ('14', '试题添加', '试题添加', '103', '4', '104', '2', '3', '2', '1');
INSERT INTO `t_basecase` VALUES ('15', 'test', 'test', '99', '0', '0', '2', '0', '2', '0');
INSERT INTO `t_basecase` VALUES ('16', 'test', 'test', '99', '0', '0', '2', '0', '2', '0');
INSERT INTO `t_basecase` VALUES ('18', 'test', 'test', '99', '4', '0', '2', '1', '2', '0');

-- ----------------------------
-- Table structure for `t_buginfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_buginfo`;
CREATE TABLE `t_buginfo` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `bug_id` varchar(50) NOT NULL DEFAULT '0',
  `severity` varchar(50) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `bug_title` varchar(255) DEFAULT NULL,
  `creater` varchar(50) DEFAULT NULL,
  `assign` varchar(50) DEFAULT NULL,
  `solvers` varchar(50) DEFAULT NULL,
  `solution` varchar(50) DEFAULT NULL,
  `modify_date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`bug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_buginfo
-- ----------------------------
INSERT INTO `t_buginfo` VALUES ('1', '15700', 'Critical', 'Urgent', '152-guangxixinganxian-报名-散拼-单价不正确', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('2', '15699', 'Critical', 'Urgent', '142环境，金旅牛途，定价策略设置框显示错位。', '李瑞雪', 'Closed', '高丽娟', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('3', '15698', 'Critical', '', '验证对团期批量设置费率&对渠道批量填写费率', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('4', '15697', 'Critical', 'Urgent', '转团操作对订单结算价的影响', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('5', '15696', 'Critical', '', '验证设置费率页面筛选项取值', '郭庭昊', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('6', '15695', 'Major', '', '152 设置费率页面逐一点击下属门店，弹出层不会消失', '王一朋', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('7', '15694', 'Critical', '', '验证费率管理页面筛选项取值', '郭庭昊', 'Closed', '李鑫', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('8', '15693', 'Critical', '', '152 设置默认费率字段可删除及滚动条', '郭庭昊', '郭庭昊', '徐玉东', '推迟', '2016-09-06', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('9', '15692', 'Critical', '', '验证QUAUQ产品费率设置规则', '郭庭昊', 'Closed', '徐玉东', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('10', '15691', 'Critical', '', '验证渠道策略列表搜索有效&页面排版', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('11', '15690', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-渠道代收服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('12', '15689', 'Major', '', '152 费率设置页面样式存在问题', '王一朋', 'Closed', '张潮', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('13', '15688', 'Critical', 'High', '152，总社费率设置为金额时，多币种其他费用应将金额按...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('14', '15687', 'Major', 'Medium', '152，,费率重设后订单详情页单价金额显示错误', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('15', '15686', 'Critical', '', '152，散拼报名其他费用为美元时结算价计算错误', '张瑞琦', 'Closed', '张瑞琦', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('16', '15685', 'Critical', 'Urgent', '152 批量设置渠道相关费率，点击批量填写无效', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('17', '15684', 'Critical', 'Urgent', '152-guangxixinganxian-报名-添加其它费用-服务费错...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('18', '15683', 'Major', '', '152 销售机票订单借款页面样式混乱', '王一朋', 'Closed', '刘涛', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('19', '15682', 'Major', 'High', '152 渠道设置费率，可用右键粘贴输入特殊字符；输入2...', '唐浩然', 'Closed', '李鑫', '无法重现', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('20', '15681', 'Critical', '', '152-自由行订单，申请发票和申请收据，页面报500', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('21', '15680', 'Critical', 'Urgent', '137-test-admin-报名-报错', '杨纯', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('22', '15679', 'Major', 'High', '152，订单-【改价】页面改后应收总计显示错误', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('23', '15678', 'Critical', '', 'T2-订单【quauq渠道】-收据申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('24', '15677', 'Critical', '', 'T2-订单【quauq渠道】-发票申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('25', '15676', 'Critical', '', 'T2-订单【quauq渠道】-退团、退款页面中结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('26', '15675', 'Critical', 'High', '152，申请改价后改价费用没有计入结算价', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('27', '15674', 'Major', '', '152-机票产品申请切位上传收款凭证后，在切位订单详...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('28', '15673', 'Critical', '', 'T2-订单【quauq渠道】-转团、转款操做后结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('29', '15672', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-缺少渠道服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('30', '15671', 'Critical', 'High', '152，T2-散拼订单【改价】页面数据取值错误', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('31', '15670', 'Critical', 'Urgent', '152 费率管理页面，出发城市、目的地、抵达城市排序...', '唐浩然', 'Closed', '李鑫', '不需要修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('32', '15669', 'Major', '', '137环境，预报单锁定后，人数列为空', '姚翠娟', 'Closed', '刘世军', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('33', '15668', 'Critical', '', 'T2-订单-【quauq渠道】结算价查看-详情页面', '郭庭昊', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('34', '15667', 'Critical', '', '152-改价记录详情页面，订单团号和销售显示为空', '王佳', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('35', '15666', 'Critical', 'High', '152，改价未经过审批，改价数据也出现在其他费用中', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('36', '15665', 'Critical', 'Urgent', '152，改价审批提示信息错误，无法审批', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('37', '15664', 'Critical', 'Urgent', '152 产品QUAUQ费率，输入文本框不允许输入的数据，可用...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('38', '15663', 'Critical', '', '152 ie 进行改价，添加金额之后不能保存', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('39', '15662', 'Critical', 'High', '152，,订单-【改价】功能修改-添加弹出框编辑框字符...', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('40', '15661', 'Critical', '', '152 改价当前应收价错误', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('41', '15660', 'Critical', '', '152-无法报名', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('42', '15659', 'Critical', '', '152环境，报名散拼产品显示保存失败', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('43', '15658', 'Critical', 'Urgent', '152 QUAUQ渠道散拼订单改价页，单价币种展示错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('44', '15657', 'Critical', 'Urgent', '152-testadmin1-运控-预报单-无法锁定', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('45', '15656', 'Critical', 'Urgent', '152 申请改价通过后，订单总额不变', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('46', '15655', 'Critical', '', '改价详情中取值仍不正确', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('47', '15654', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】结算价查看-转团页面、转款页...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('48', '15653', 'Critical', 'Urgent', '152，设置渠道费率后，预定单价仍然按照批发商默认费率...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('49', '15652', 'Critical', '', '152 改价添加多币种', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('50', '15651', 'Critical', '', '152-批发商费率修改失败', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('51', '15650', 'Major', '', '设置渠道费率后生成订单，预报单/结算单中不显示代收服...', '姚翠娟', 'Closed', '刘世军', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('52', '15649', 'Critical', '', '152-团期费率管理中，找不相应数据', '王佳', 'Closed', '李鑫', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('53', '15648', 'Major', '', '152环境，添加其他费用后，预报单/结算单中代收服务...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('54', '15647', 'Major', 'High', '152，交易服务费统计已缴费为0时，显示错误', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('55', '15646', 'Critical', 'High', '152，服务费统计页面交易服务费取值错误', '张瑞琦', 'Closed', '白亚昆', '待产品确认', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('56', '15645', 'Critical', '', '改价总计那里需要与原型一致', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('57', '15644', 'Critical', 'Urgent', 'T2-订单【quauq渠道】-结算价取值 其他费用为负值时...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('58', '15643', 'Critical', '', '152 改价 改后应收价的价格明细悬浮框消失', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('59', '15642', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】修改订单后结算价取值', '王子正', 'Closed', '白亚昆', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('60', '15700', 'Critical', 'Urgent', '152-guangxixinganxian-报名-散拼-单价不正确', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('61', '15699', 'Critical', 'Urgent', '142环境，金旅牛途，定价策略设置框显示错位。', '李瑞雪', 'Closed', '高丽娟', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('62', '15698', 'Critical', '', '验证对团期批量设置费率&对渠道批量填写费率', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('63', '15697', 'Critical', 'Urgent', '转团操作对订单结算价的影响', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('64', '15696', 'Critical', '', '验证设置费率页面筛选项取值', '郭庭昊', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('65', '15695', 'Major', '', '152 设置费率页面逐一点击下属门店，弹出层不会消失', '王一朋', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('66', '15694', 'Critical', '', '验证费率管理页面筛选项取值', '郭庭昊', 'Closed', '李鑫', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('67', '15693', 'Critical', '', '152 设置默认费率字段可删除及滚动条', '郭庭昊', '郭庭昊', '徐玉东', '推迟', '2016-09-06', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('68', '15692', 'Critical', '', '验证QUAUQ产品费率设置规则', '郭庭昊', 'Closed', '徐玉东', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('69', '15691', 'Critical', '', '验证渠道策略列表搜索有效&页面排版', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('70', '15690', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-渠道代收服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('71', '15689', 'Major', '', '152 费率设置页面样式存在问题', '王一朋', 'Closed', '张潮', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('72', '15688', 'Critical', 'High', '152，总社费率设置为金额时，多币种其他费用应将金额按...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('73', '15687', 'Major', 'Medium', '152，,费率重设后订单详情页单价金额显示错误', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('74', '15686', 'Critical', '', '152，散拼报名其他费用为美元时结算价计算错误', '张瑞琦', 'Closed', '张瑞琦', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('75', '15685', 'Critical', 'Urgent', '152 批量设置渠道相关费率，点击批量填写无效', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('76', '15684', 'Critical', 'Urgent', '152-guangxixinganxian-报名-添加其它费用-服务费错...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('77', '15683', 'Major', '', '152 销售机票订单借款页面样式混乱', '王一朋', 'Closed', '刘涛', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('78', '15682', 'Major', 'High', '152 渠道设置费率，可用右键粘贴输入特殊字符；输入2...', '唐浩然', 'Closed', '李鑫', '无法重现', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('79', '15681', 'Critical', '', '152-自由行订单，申请发票和申请收据，页面报500', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('80', '15680', 'Critical', 'Urgent', '137-test-admin-报名-报错', '杨纯', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('81', '15679', 'Major', 'High', '152，订单-【改价】页面改后应收总计显示错误', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('82', '15678', 'Critical', '', 'T2-订单【quauq渠道】-收据申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('83', '15677', 'Critical', '', 'T2-订单【quauq渠道】-发票申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('84', '15676', 'Critical', '', 'T2-订单【quauq渠道】-退团、退款页面中结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('85', '15675', 'Critical', 'High', '152，申请改价后改价费用没有计入结算价', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('86', '15674', 'Major', '', '152-机票产品申请切位上传收款凭证后，在切位订单详...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('87', '15673', 'Critical', '', 'T2-订单【quauq渠道】-转团、转款操做后结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('88', '15672', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-缺少渠道服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('89', '15671', 'Critical', 'High', '152，T2-散拼订单【改价】页面数据取值错误', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('90', '15670', 'Critical', 'Urgent', '152 费率管理页面，出发城市、目的地、抵达城市排序...', '唐浩然', 'Closed', '李鑫', '不需要修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('91', '15669', 'Major', '', '137环境，预报单锁定后，人数列为空', '姚翠娟', 'Closed', '刘世军', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('92', '15668', 'Critical', '', 'T2-订单-【quauq渠道】结算价查看-详情页面', '郭庭昊', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('93', '15667', 'Critical', '', '152-改价记录详情页面，订单团号和销售显示为空', '王佳', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('94', '15666', 'Critical', 'High', '152，改价未经过审批，改价数据也出现在其他费用中', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('95', '15665', 'Critical', 'Urgent', '152，改价审批提示信息错误，无法审批', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('96', '15664', 'Critical', 'Urgent', '152 产品QUAUQ费率，输入文本框不允许输入的数据，可用...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('97', '15663', 'Critical', '', '152 ie 进行改价，添加金额之后不能保存', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('98', '15662', 'Critical', 'High', '152，,订单-【改价】功能修改-添加弹出框编辑框字符...', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('99', '15661', 'Critical', '', '152 改价当前应收价错误', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('100', '15660', 'Critical', '', '152-无法报名', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('101', '15659', 'Critical', '', '152环境，报名散拼产品显示保存失败', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('102', '15658', 'Critical', 'Urgent', '152 QUAUQ渠道散拼订单改价页，单价币种展示错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('103', '15657', 'Critical', 'Urgent', '152-testadmin1-运控-预报单-无法锁定', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('104', '15656', 'Critical', 'Urgent', '152 申请改价通过后，订单总额不变', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('105', '15655', 'Critical', '', '改价详情中取值仍不正确', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('106', '15654', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】结算价查看-转团页面、转款页...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('107', '15653', 'Critical', 'Urgent', '152，设置渠道费率后，预定单价仍然按照批发商默认费率...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('108', '15652', 'Critical', '', '152 改价添加多币种', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('109', '15651', 'Critical', '', '152-批发商费率修改失败', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('110', '15650', 'Major', '', '设置渠道费率后生成订单，预报单/结算单中不显示代收服...', '姚翠娟', 'Closed', '刘世军', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('111', '15649', 'Critical', '', '152-团期费率管理中，找不相应数据', '王佳', 'Closed', '李鑫', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('112', '15648', 'Major', '', '152环境，添加其他费用后，预报单/结算单中代收服务...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('113', '15647', 'Major', 'High', '152，交易服务费统计已缴费为0时，显示错误', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('114', '15646', 'Critical', 'High', '152，服务费统计页面交易服务费取值错误', '张瑞琦', 'Closed', '白亚昆', '待产品确认', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('115', '15645', 'Critical', '', '改价总计那里需要与原型一致', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('116', '15644', 'Critical', 'Urgent', 'T2-订单【quauq渠道】-结算价取值 其他费用为负值时...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('117', '15643', 'Critical', '', '152 改价 改后应收价的价格明细悬浮框消失', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('118', '15642', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】修改订单后结算价取值', '王子正', 'Closed', '白亚昆', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('119', '15700', 'Critical', 'Urgent', '152-guangxixinganxian-报名-散拼-单价不正确', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('120', '15699', 'Critical', 'Urgent', '142环境，金旅牛途，定价策略设置框显示错位。', '李瑞雪', 'Closed', '高丽娟', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('121', '15698', 'Critical', '', '验证对团期批量设置费率&对渠道批量填写费率', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('122', '15697', 'Critical', 'Urgent', '转团操作对订单结算价的影响', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('123', '15696', 'Critical', '', '验证设置费率页面筛选项取值', '郭庭昊', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('124', '15695', 'Major', '', '152 设置费率页面逐一点击下属门店，弹出层不会消失', '王一朋', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('125', '15694', 'Critical', '', '验证费率管理页面筛选项取值', '郭庭昊', 'Closed', '李鑫', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('126', '15693', 'Critical', '', '152 设置默认费率字段可删除及滚动条', '郭庭昊', '郭庭昊', '徐玉东', '推迟', '2016-09-06', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('127', '15692', 'Critical', '', '验证QUAUQ产品费率设置规则', '郭庭昊', 'Closed', '徐玉东', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('128', '15691', 'Critical', '', '验证渠道策略列表搜索有效&页面排版', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('129', '15690', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-渠道代收服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('130', '15689', 'Major', '', '152 费率设置页面样式存在问题', '王一朋', 'Closed', '张潮', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('131', '15688', 'Critical', 'High', '152，总社费率设置为金额时，多币种其他费用应将金额按...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('132', '15687', 'Major', 'Medium', '152，,费率重设后订单详情页单价金额显示错误', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('133', '15686', 'Critical', '', '152，散拼报名其他费用为美元时结算价计算错误', '张瑞琦', 'Closed', '张瑞琦', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('134', '15685', 'Critical', 'Urgent', '152 批量设置渠道相关费率，点击批量填写无效', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('135', '15684', 'Critical', 'Urgent', '152-guangxixinganxian-报名-添加其它费用-服务费错...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('136', '15683', 'Major', '', '152 销售机票订单借款页面样式混乱', '王一朋', 'Closed', '刘涛', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('137', '15682', 'Major', 'High', '152 渠道设置费率，可用右键粘贴输入特殊字符；输入2...', '唐浩然', 'Closed', '李鑫', '无法重现', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('138', '15681', 'Critical', '', '152-自由行订单，申请发票和申请收据，页面报500', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('139', '15680', 'Critical', 'Urgent', '137-test-admin-报名-报错', '杨纯', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('140', '15679', 'Major', 'High', '152，订单-【改价】页面改后应收总计显示错误', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('141', '15678', 'Critical', '', 'T2-订单【quauq渠道】-收据申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('142', '15677', 'Critical', '', 'T2-订单【quauq渠道】-发票申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('143', '15676', 'Critical', '', 'T2-订单【quauq渠道】-退团、退款页面中结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('144', '15675', 'Critical', 'High', '152，申请改价后改价费用没有计入结算价', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('145', '15674', 'Major', '', '152-机票产品申请切位上传收款凭证后，在切位订单详...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('146', '15673', 'Critical', '', 'T2-订单【quauq渠道】-转团、转款操做后结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('147', '15672', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-缺少渠道服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('148', '15671', 'Critical', 'High', '152，T2-散拼订单【改价】页面数据取值错误', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('149', '15670', 'Critical', 'Urgent', '152 费率管理页面，出发城市、目的地、抵达城市排序...', '唐浩然', 'Closed', '李鑫', '不需要修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('150', '15669', 'Major', '', '137环境，预报单锁定后，人数列为空', '姚翠娟', 'Closed', '刘世军', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('151', '15668', 'Critical', '', 'T2-订单-【quauq渠道】结算价查看-详情页面', '郭庭昊', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('152', '15667', 'Critical', '', '152-改价记录详情页面，订单团号和销售显示为空', '王佳', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('153', '15666', 'Critical', 'High', '152，改价未经过审批，改价数据也出现在其他费用中', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('154', '15665', 'Critical', 'Urgent', '152，改价审批提示信息错误，无法审批', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('155', '15664', 'Critical', 'Urgent', '152 产品QUAUQ费率，输入文本框不允许输入的数据，可用...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('156', '15663', 'Critical', '', '152 ie 进行改价，添加金额之后不能保存', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('157', '15662', 'Critical', 'High', '152，,订单-【改价】功能修改-添加弹出框编辑框字符...', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('158', '15661', 'Critical', '', '152 改价当前应收价错误', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('159', '15660', 'Critical', '', '152-无法报名', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('160', '15659', 'Critical', '', '152环境，报名散拼产品显示保存失败', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('161', '15658', 'Critical', 'Urgent', '152 QUAUQ渠道散拼订单改价页，单价币种展示错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('162', '15657', 'Critical', 'Urgent', '152-testadmin1-运控-预报单-无法锁定', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('163', '15656', 'Critical', 'Urgent', '152 申请改价通过后，订单总额不变', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('164', '15655', 'Critical', '', '改价详情中取值仍不正确', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('165', '15654', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】结算价查看-转团页面、转款页...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('166', '15653', 'Critical', 'Urgent', '152，设置渠道费率后，预定单价仍然按照批发商默认费率...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('167', '15652', 'Critical', '', '152 改价添加多币种', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('168', '15651', 'Critical', '', '152-批发商费率修改失败', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('169', '15650', 'Major', '', '设置渠道费率后生成订单，预报单/结算单中不显示代收服...', '姚翠娟', 'Closed', '刘世军', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('170', '15649', 'Critical', '', '152-团期费率管理中，找不相应数据', '王佳', 'Closed', '李鑫', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('171', '15648', 'Major', '', '152环境，添加其他费用后，预报单/结算单中代收服务...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('172', '15647', 'Major', 'High', '152，交易服务费统计已缴费为0时，显示错误', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('173', '15646', 'Critical', 'High', '152，服务费统计页面交易服务费取值错误', '张瑞琦', 'Closed', '白亚昆', '待产品确认', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('174', '15645', 'Critical', '', '改价总计那里需要与原型一致', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('175', '15644', 'Critical', 'Urgent', 'T2-订单【quauq渠道】-结算价取值 其他费用为负值时...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('176', '15643', 'Critical', '', '152 改价 改后应收价的价格明细悬浮框消失', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('177', '15642', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】修改订单后结算价取值', '王子正', 'Closed', '白亚昆', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('178', '16790', 'Major', 'High', '152，供应价大于同行价时价格表显示错误', '张瑞琦', '白亚昆', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('179', '16789', 'Major', '', '152--添加其他收入后，预报单中组团社显示错误', '王佳', '王洋', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('180', '16788', 'Critical', '', '152 散拼订单添加其他费用和改价错误', '王一朋', '白亚昆', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('181', '16787', 'Critical', 'High', '152，在产品列表设置价格策略后，定价策略页没有提示提...', '张瑞琦', '李鑫', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('182', '16786', 'Major', 'High', '152 【522】供应价查看页，切换页数速度过慢', '唐浩然', '谷展羽', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('183', '16785', 'Major', 'High', '152 【522】供应价查看页，异常提示的icon为灰色', '唐浩然', '唐浩然', '谷展羽', '已修复', '2016-11-15', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('184', '16784', 'Major', 'High', '152 【522】供应价查看页，异常数据未置顶', '唐浩然', '侯涛', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('185', '16783', 'Major', '', '152-结算单中，同行价显示无分隔符', '王佳', '王佳', '徐玉东', '已修复', '2016-11-15', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('186', '16782', 'Critical', 'High', '152，T1儿童系统结算价大于同行价时显示错误', '张瑞琦', '白亚昆', '', '', '2016-11-15', 'Active');
INSERT INTO `t_buginfo` VALUES ('187', '16781', 'Critical', 'Urgent', '【525V2】beijinghuiyou-后台数据维护-旅游区域-搜索“...', '杨纯', 'Closed', '宗战奎', '已修复', '2016-11-15', 'Closed');
INSERT INTO `t_buginfo` VALUES ('188', '16780', 'Critical', 'Urgent', '【525V2】T1区域显示不正确且点击区域后无数据', '杨纯', '杨纯', '宗战奎', '已修复', '2016-11-15', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('189', '16779', 'Critical', '', '152--散拼订单修改时，添加游客信息无法保存', '王佳', '王佳', '白亚昆', '已修复', '2016-11-15', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('190', '16778', 'Critical', 'Urgent', '【137】散拼产品-修改页-点击两个团期修改-点击保存...', '杨纯', 'Closed', '肖凯', '已修复', '2016-11-15', 'Closed');
INSERT INTO `t_buginfo` VALUES ('191', '16776', 'Major', '', '142-散拼产品发布，添加团期时，团期列表错位', '王佳', '王佳', '肖凯', '已修复', '2016-11-14', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('192', '16775', 'Major', '', '137 T1首页，产品详情价格展示错误', '王一朋', 'Closed', '宗战奎', '已修复', '2016-11-15', 'Closed');
INSERT INTO `t_buginfo` VALUES ('193', '16774', 'Major', '', '137 询价导出Excel，导出数据条数存在问题', '王一朋', 'Closed', '谷展羽', '已修复', '2016-11-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('194', '16773', 'Critical', 'Urgent', '【530需求】137-chenkaka-销售询价列表-展开-再次询...', '杨纯', 'Closed', '谷展羽', '已修复', '2016-11-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('195', '16772', 'Major', 'High', '137，询价导出EXCEL按钮样式消失', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-11-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('196', '16771', 'Minor', '', '137 散拼产品修改，样式存在问题', '王一朋', 'Closed', '童乐雯', '已修复', '2016-11-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('197', '16770', 'Major', '', '142 散拼发布产品时不添加团期，修改时添加团期，报...', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-11-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('198', '16769', 'Major', '', '137环境，T1同一产品金额显示不同', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-11-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('199', '16768', 'Minor', 'Medium', 'T1产品页-符合筛选存在问题', '杨纯', 'Closed', '宗战奎', '已修复', '2016-11-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('200', '16752', 'Major', '', '137 团期类产品，一个团号可以搜索出同一产品下多个...', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-11-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('201', '16743', 'Major', '', '137 财务成本付款，现金支付异常', '王一朋', 'Closed', '徐玉东', '已修复', '2016-11-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('202', '16742', 'Minor', '', '137环境，散拼产品修改页面点击团期修改，团号列与其他...', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-11-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('203', '16741', 'Major', '', '137环境，散拼产品修改页面点击其中一个团期修改，下面...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-11-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('204', '16740', 'Major', 'High', '【IE9】137-chenkaka-询价-地接计调报价记录-鼠标悬...', '杨纯', 'Closed', '童乐雯', '已修复', '2016-11-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('205', '16739', 'Minor', '', '152-T1销售名片中去掉页码', '王佳', 'Closed', '王利军', '已修复', '2016-11-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('206', '16735', 'Critical', 'High', '152 T1筛选项点击多选后再点击取消，多选字段变为更...', '唐浩然', 'Closed', '高丽娟', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('207', '16734', '优化类', 'Low', '【544需求】订单-详情-修改记录中没有记录签发地，签发...', '杨纯', 'Closed', '李鑫', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('208', '16733', 'Major', '', '152环境，计调主管询价分配页面，选择询价状态筛选，搜...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('209', '16732', '优化类', 'Low', '【544需求】散拼订单-详情-“签发日期”不统一', '杨纯', 'Closed', '李鑫', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('210', '16731', 'Major', '', '152 T1首页检索多条件无数据的情况下，筛选条件没有...', '王一朋', 'Closed', '宗战奎', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('211', '16729', 'Major', 'Medium', '152，散拼报名和订单修改出生地输入框缺少校验规则', '张瑞琦', 'Closed', '谷展羽', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('212', '16728', 'Minor', '', '152环境，询价-计调主管询价分配页面，客户筛选项下...', '姚翠娟', 'Closed', '白亚昆', '不需要修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('213', '16727', 'Major', '', '152环境，询价-计调主管询价分配页面，筛选客户点击...', '姚翠娟', 'Closed', '白亚昆', '不需要修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('214', '16726', 'Major', 'Medium', '152，签证报名签发地校验规则有误', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('215', '16725', 'Minor', '', '152环境，地接计调报价记录导出excel表格中报价状态...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('216', '16724', 'Minor', '', '152环境，地接计调报价记录导出excel表格中表头“预...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('217', '16723', 'Major', '', '152环境，地接计调报价记录导出excel表格中计调名称...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('218', '16722', 'Minor', '', '152环境，地接计调报价记录页面中列表和筛选项状态不统...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('219', '16721', 'Critical', 'High', '152，订单详情和订单修改没有出生地一项', '张瑞琦', 'Closed', '谷展羽', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('220', '16720', 'Critical', 'Urgent', '152 骡子假期-团控单存在其他账号下单的数据', '王子正', 'Closed', '谷展羽', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('221', '16719', 'Major', 'High', '152，签证订单修改页面签发地信息未做字符限制', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('222', '16718', 'Critical', 'Medium', '152 骡子假期-散拼产品报名-游客添加 -英文名过长时...', '王子正', 'Closed', '白亚昆', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('223', '16717', 'Major', '', '152环境，地接计调报价记录，询价状态筛选项中不应该有...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('224', '16716', 'Major', '', '152环境，询价确认报价页面，删除外报价，提示外报价提...', '姚翠娟', 'Closed', '谷展羽', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('225', '16715', 'Critical', 'High', '152，签证报名签发地无法输入任何内容', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('226', '16714', 'Minor', '', '142 批发商费率设置，没有排除已删除的批发商', '王一朋', 'Closed', '徐玉东', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('227', '16713', 'Major', 'High', '152 单团产品修改页面，团期样式有误', '唐浩然', 'Closed', '霍常瑛', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('228', '16712', 'Critical', 'Urgent', '152，订单修改保存游客失败', '张瑞琦', 'Closed', '谷展羽', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('229', '16711', 'Critical', 'Urgent', '152 团期类产品下架，下架后的产品团期排序未改变（...', '唐浩然', 'Closed', '杜枷玮', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('230', '16710', 'Critical', 'Urgent', '152 产品详情页面与修改页面的团期排序未改变', '唐浩然', 'Closed', '杜枷玮', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('231', '16709', 'Major', '', '152环境，新增询价-线路国家，输入希腊，下拉框出现...', '姚翠娟', 'Closed', '谷展羽', '不需要修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('232', '16708', 'Minor', 'Low', 'T1产品页-筛选项-点击【更多】-【多选】-【取消】后...', '杨纯', 'Closed', '高丽娟', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('233', '16707', 'Minor', 'Low', '【525V2】T1产品页-筛选项-\'线路玩法\"应改为“游玩线路...', '杨纯', 'Closed', '高丽娟', '已修复', '2016-11-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('234', '16706', 'Major', 'High', '137，下单记录和订单管理点击修改密码弹窗交互有问题', '张瑞琦', 'Closed', '王利军', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('235', '16705', 'Major', 'Medium', '【T1产品页】【更多】按钮失效', '杨纯', 'Closed', '高丽娟', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('236', '16703', 'Critical', 'High', '【T1产品页】【价格区间】筛选存在问题', '杨纯', 'Closed', '宗战奎', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('237', '16702', 'Critical', 'High', '【T1产品页】【余位】筛选存在问题', '杨纯', 'Closed', '宗战奎', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('238', '16701', 'Minor', 'Medium', '137，IE9 T1下单记录搜索框缺少value值', '张瑞琦', 'Closed', '王利军', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('239', '16700', 'Critical', 'Urgent', '【T1产品页】分页控件存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('240', '16699', 'Major', 'High', '137，T1利润计算只填写儿童金额和人数时，门店差额返还...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('241', '16698', 'Critical', 'Urgent', '【T1首页/产品页】鼠标悬浮存应出现“小手”', '杨纯', 'Closed', '高丽娟', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('242', '16697', 'Critical', 'Urgent', '【T1导航】鼠标悬浮存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('243', '16696', 'Critical', 'High', '137,鼎鸿和起航结算管理的成本付款无法确认付款', '张瑞琦', 'Closed', '张潮', '不需要修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('244', '16695', 'Critical', '', '137--财务返佣付款页面，勾选数据，点击批量确认付款，...', '王佳', 'Closed', '王佳', '不需要修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('245', '16694', 'Critical', '', '137--财务各项付款页面，勾选数据，点击批量确认付款，...', '王佳', 'Closed', '张潮', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('246', '16693', 'Major', '', '137--财务借款付款，勾选全选后，再勾选反选，全选按钮...', '王佳', 'Closed', '徐玉东', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('247', '16692', 'Critical', 'Urgent', '142--T1上传名片后，所有销售名片均取同一张', '王佳', 'Closed', '侯涛', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('248', '16691', 'Critical', 'Urgent', '【批量打印】签证订单收款-无法批量打印', '王子正', 'Closed', '王洋', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('249', '16690', 'Major', 'Medium', '【兼容问题】 签证订单收款--ie10列表显示问题', '王子正', 'Closed', '王洋', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('250', '16689', 'Critical', 'Urgent', '【批量打印】 签证押金收款-数据校验', '王子正', 'Closed', '王洋', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('251', '16686', 'Critical', 'High', '152，【批量打印】 借款付款-确认付款后', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('252', '16685', 'Major', '', '152环境，成本付款页面选择多条数据点击批量确认付款后...', '姚翠娟', 'Closed', '张潮', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('253', '16684', 'Major', '', '152环境，成本付款页面点击批量确认付款后，页面没有实...', '姚翠娟', 'Closed', '张潮', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('254', '16683', 'Major', 'High', '152，IE9 借款打印页面兼容性', '张瑞琦', 'Closed', '高丽娟', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('255', '16682', 'Critical', 'Medium', 'T2 环球行管理员菜单样式存在问题', '王子正', 'Closed', '白亚昆', '已修复', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('256', '16681', 'Major', 'High', '152 订单收款、签证押金收款、签证订单收款批量打印...', '唐浩然', 'Closed', '王洋', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('257', '16680', 'Major', 'High', '152 批量打印页面（收款&付款）的title后增加“（批...', '唐浩然', 'Closed', '王洋', '不需要修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('258', '16679', 'Major', '', '152环境，订单收款/切位收款页面“渠道选择”筛选项...', '姚翠娟', 'Closed', '王洋', '已修复', '2016-11-04', 'Closed');
INSERT INTO `t_buginfo` VALUES ('259', '16677', 'Major', '', '152环境，签证批量借款付款页面老数据点击批量确认付款...', '姚翠娟', 'Closed', '徐玉东', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('260', '16676', 'Major', 'High', '152 签证押金收款-已打印的打印时间秒的后面多了个0', '唐浩然', 'Closed', '王洋', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('261', '16675', 'Major', 'High', '152 签证押金收款列表订单号一栏取值错误', '唐浩然', 'Closed', '王洋', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('262', '16674', 'Critical', 'Urgent', '【527需求】152-guangxixinganxian返佣付款-【批量打印...', '杨纯', 'Closed', '张潮', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('263', '16673', 'Minor', 'Medium', '152，联系供应商下单弹窗样式', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('264', '16672', 'Minor', 'Medium', '152，【小屏测试】微信号过长时显示错误', '张瑞琦', 'Closed', '谷展羽', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('265', '16671', 'Critical', 'Urgent', '152-guangxixinganxian-退款付款- 【批量打印】 数据错...', '杨纯', 'Closed', '张潮', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('266', '16670', 'Major', 'High', '【527需求】152-guangxixinganxian- 成本付款-样式错误...', '杨纯', 'Closed', '张潮', '已修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('267', '16669', 'Critical', 'Urgent', '【527需求】152-【批量打印】 成本付款-打印预览-样...', '杨纯', 'Closed', '张潮', '不需要修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('268', '16668', 'Minor', '', '152 【低分辨】，定价策略页面样式存在问题', '王一朋', 'Closed', '霍常瑛', '不需要修复', '2016-11-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('269', '16665', 'Major', '', 'T1，session过期后，点击页面无反应', '王一朋', 'Closed', '宗战奎', '已修复', '2016-11-03', 'Closed');
INSERT INTO `t_buginfo` VALUES ('270', '16664', 'Critical', 'High', '137 财务-结算管理-交易明细，应收未收总金额错误', '唐浩然', 'Closed', '张潮', '不需要修复', '2016-11-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('271', '16663', 'Major', 'High', '137,筛选未达帐金额时，表头统计未达帐金额显示为空', '张瑞琦', 'Closed', '张潮', '已修复', '2016-11-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('272', '16662', 'Critical', 'Urgent', '137-beijinghuiyou-下单后确认收款-订单信息没有写入预...', '杨纯', 'Closed', '张潮', '已修复', '2016-11-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('273', '16661', 'Critical', '', '137--T1首页无法提交下单通知', '王佳', 'Closed', '王利军', '不需要修复', '2016-11-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('274', '16659', 'Major', '', '137 T1按此价格下单后，T2生成两条下单通知', '王一朋', 'Closed', '白亚昆', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('275', '16658', 'Major', 'Urgent', '137--环球行 团队管理中 预报单和结算单 中实际收款...', '王佳', 'Closed', '张潮', '不需要修复', '2016-11-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('276', '16657', 'Major', 'High', '137，T1价格计算下单时多次点击提交生成多条下单记录', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('277', '16656', 'Critical', 'High', '137，产品列表修改特殊人群提示应放到上下架提示之前', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('278', '16655', 'Major', 'Medium', '【538】137-siruichuangtu-下单记录-已取消/已删除-...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('279', '16654', 'Critical', '', '137--团队管理，搜索团号KCE01081，页面报500', '王佳', 'Closed', '张潮', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('280', '16653', '优化类', 'Low', '【538】137-siruichuangtu-下单记录-详情-团号没有悬浮...', '杨纯', 'Closed', '霍常瑛', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('281', '16651', 'Critical', 'Urgent', '【525需求】137-T1产品页-您已选择出存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('282', '16650', 'Critical', 'Urgent', '【525需求】137-T1产品页-导航出错', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('283', '16649', 'Critical', '', '137--团队管理中，各项金额需不包含门店结算价差额返还', '王佳', 'Closed', '张潮', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('284', '16648', 'Critical', 'Urgent', 't2 下单通知，下单，系统提醒余位不足位置节点不准确', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('285', '16647', 'Critical', '', '137---团队管理中，金额总计显示错误', '王佳', 'Closed', '张潮', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('286', '16646', 'Minor', '', '137环境，T1账户管理中银行信息删除，下单时显示已删除...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('287', '16645', 'Major', '', '137--ie【10 兼容】下单通知详情中，交易明细列项展...', '王佳', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('288', '16644', 'Critical', '', '137---下单通知下单时，付款方式显示为空', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('289', '16643', 'Major', '', '137 【兼容性】IE9，第一次登陆T1，点击图片无反应', '王一朋', 'Closed', '高丽娟', '无法重现', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('290', '16642', 'Critical', '', '137---下单通知详情中，收款方式为微信时，账户号码...', '王佳', 'Closed', '王利军', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('291', '16641', 'Major', 'High', '137 【T1订单详情】订单详情中点击产品名称，走下单...', '唐浩然', 'Closed', '王利军', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('292', '16639', 'Minor', '', '137环境，T1下单信息页面滚动条消失', '姚翠娟', 'Closed', '霍常瑛', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('293', '16638', 'Critical', 'Medium', 'T2 门店结算价差额返还 设定字符限制', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-31', 'Closed');
INSERT INTO `t_buginfo` VALUES ('294', '16637', 'Minor', '', '137环境，T1下单信息页面中产品名称显示不全', '姚翠娟', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('295', '16636', 'Major', 'Medium', '浏览器兼容性137 IE10 下单记录页面-列表样式', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('296', '16635', 'Minor', '', '137 T2，下单通知页面，检索不到数据分页依然存在', '王一朋', 'Closed', '王利军', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('297', '16634', 'Major', '', '137 T1，首页，Title错误', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('298', '16633', 'Major', '', '137 【兼容性】【低分辨】IE 8，T1，下单记录详情页...', '王一朋', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('299', '16632', 'Major', '', '137 【兼容性】，T1，IE8，点击计算没有反应', '王一朋', 'Closed', '王利军', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('300', '16631', 'Major', '', '137 T1，下单记录页面，切换Tab时，清空筛选条件', '王一朋', 'Closed', '王利军', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('301', '16630', 'Major', 'High', '137，下单记录全部订单不应显示已删除的数据', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('302', '16629', 'Major', '', '137 【兼容性】【低分辨】IE 8，9，10，T1账户管理页面...', '王一朋', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('303', '16628', '优化类', 'Low', '【538】【IE9】137-testadmin1-下单通知-“下单通知...', '杨纯', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('304', '16626', '优化类', 'Low', '【538】【IE9】137-siruichuangtu-下单记录-搜索\"WWQ...', '杨纯', 'Closed', '霍常瑛', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('305', '16625', 'Critical', 'Urgent', 'T2 下单通知 下单 报名人数大于余位', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('306', '16624', 'Minor', '', '137环境，散拼产品修改页面添加新团期时，酒店字段后面...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('307', '16623', 'Major', '', '137环境，散拼产品修改页面修改余位大于预收时，没有提...', '姚翠娟', 'Closed', '杜枷玮', '不需要修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('308', '16622', 'Major', '', '137环境，散拼产品修改页面添加酒店房型点击保存，酒店...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('309', '16621', 'Critical', 'Urgent', '【525需求】137-T1首页点击南北极-导航存在问题', '杨纯', '杨纯', '毛宇昇', '推迟', '2016-10-28', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('310', '16620', 'Major', 'High', '137 【525】首页点击境外游欧洲区域进入产品列表，页面...', '唐浩然', 'Closed', '高丽娟', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('311', '16618', 'Critical', '', '137环境，T1平台点击下单显示请求失败', '姚翠娟', 'Closed', '姚翠娟', '不需要修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('312', '16617', 'Critical', '', '137---T2下单通知中的详情按钮，点击后显示请求失败', '王佳', 'Closed', '张潮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('313', '16616', 'Critical', 'Urgent', '【538需求】137-testadmin1-财务供-【差额返还明细】数...', '杨纯', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('314', '16615', 'Major', 'High', '137，产品修改添加新团期模块缺少儿童人数限制', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('315', '16614', 'Critical', '', '152--T2下单通知中，查看订单按钮无效', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('316', '16613', 'Critical', 'High', '137 【525】产品列表中的余位反写至筛选项没有20-29...', '唐浩然', 'Closed', '肖凯', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('317', '16612', 'Critical', 'Urgent', '【538】137-testadmin1-散拼订单-搜索“QUA161027014”...', '杨纯', 'Closed', '张潮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('318', '16611', 'Critical', 'High', 'T2 137 下单通知-下单详情页面中-收款方式无取值', '王子正', 'Closed', '王利军', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('319', '16610', 'Minor', '', '137环境，下单记录页面金额没有千位符', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('320', '16609', 'Major', 'Medium', '137，发票管理待审核发票页面样式混乱', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-11-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('321', '16608', 'Major', '', '137环境，T1平台删除银行信息后，下单记录-订单详情...', '姚翠娟', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('322', '16607', 'Minor', '', '137环境，T1银行账户中描述显示不全', '姚翠娟', 'Closed', '霍常瑛', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('323', '16606', 'Critical', 'Urgent', '【538需求】137-guangxixinganxian-订单-散拼订单-搜索...', '杨纯', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('324', '16605', 'Critical', '', '137---T1首页搜索有问题', '王佳', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('325', '16604', 'Major', '', '137 T1，首页订单跟踪样式不一样', '王一朋', 'Closed', '严明夏', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('326', '16603', 'Minor', '', '137环境，T1下单记录-详情页面中金额显示不统一', '姚翠娟', 'Closed', '赵月明', '不需要修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('327', '16602', 'Critical', 'High', '137 【525】T1首页，搜索框搜不到国内游的产品', '唐浩然', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('328', '16601', 'Critical', 'Urgent', 'T2 137下单通知-下单-支付-门店差额返回输入框无限制', '王子正', 'Closed', '张潮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('329', '16600', 'Minor', '', '137环境，T1下单记录-详情页面中产品名称显示不全', '姚翠娟', 'Closed', '霍常瑛', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('330', '16599', 'Major', '', '137 T1，从国内游批发商进去之后，用面板找出境游，...', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('331', '16598', 'Major', 'Low', '137 T1 下单详情页面中的备注框 样式', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('332', '16597', 'Critical', 'Urgent', '【538】137-guangxixinganxian-下单通知-【查看订单...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('333', '16596', 'Critical', 'Urgent', '【525需求】137-T1产品页-筛选项-【全部】按钮出错', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('334', '16595', 'Critical', 'Urgent', '137 下单通知权限功能不存在', '王子正', 'Closed', '王子正', '不需要修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('335', '16594', 'Major', 'High', '137 收款记录-改收款凭证页面，不能上传收款凭证', '唐浩然', 'Closed', '谷展羽', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('336', '16593', 'Major', '', '137 首页，点击登录名，弹出面板自动收起', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('337', '16592', 'Critical', '', '152 越柬行踪批发商不存在，但是可以检索到产品', '王一朋', 'Closed', '王一朋', '不需要修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('338', '16591', 'Major', 'Medium', '152，收款方式选择页面银行卡添加后4位尾号限制', '张瑞琦', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('339', '16590', 'Major', '', '152--T1下单信息页面，联系人名称过长，展示有误', '王佳', 'Closed', '霍常瑛', '不需要修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('340', '16589', 'Critical', 'Urgent', 'T1 产品详情页面 计算利润页面人数值不能为空和0', '王子正', 'Closed', '王利军', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('341', '16588', 'Critical', '', '152---对于订单，财务到账，查看T1订单管理中的实付...', '王佳', 'Closed', '杜枷玮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('342', '16587', 'Critical', 'High', '152，价格计算下单时同一收款类型不同账号，详情只取第...', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('343', '16586', 'Critical', 'High', '152 【收款记录】报名单团，确认收款生成一条订单；...', '唐浩然', 'Closed', '谷展羽', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('344', '16585', 'Critical', '', '152 T1 订单收款方式选择成功后，系统提示过短', '王子正', 'Closed', '王利军', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('345', '16584', 'Critical', 'Urgent', '【525需求】T1首页点击“日本”-进入产品页-点击任意筛...', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('346', '16583', 'Critical', '', '152--T1下单，在收款方式页面，收款方式错位', '王佳', 'Closed', '霍常瑛', '不需要修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('347', '16582', 'Major', '', '152 T1，点击清空筛选条件，不能清空区域', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('348', '16581', 'Major', '', '152 T1，首页，不需要多选，顺次点击筛选条件，可以...', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('349', '16580', 'Major', '', '152 T1从日本下的批发商进行选择，导航处不显示日本', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('350', '16579', 'Major', '', '152 T1首页，多选供应商，然后去掉其中的一个，点击...', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('351', '16578', 'Critical', 'Urgent', '【525需求】T1产品页-筛选项-【确定】按钮存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('352', '16577', 'Critical', 'Urgent', '【525需求】T1产品页-搜索框存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('353', '16576', 'Critical', 'Urgent', '【525需求】T1产品页-悬浮框-批发商多选存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('354', '16575', 'Critical', 'High', '152 【538取消权限】取消权限后，订单总额后的灰色字体...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('355', '16574', 'Minor', 'Medium', '152，散拼产品修改页面团期出现两个备注框', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('356', '16573', 'Critical', 'Urgent', '【538】152-guangxixinganxian-下单通知列表-搜索“t...', '杨纯', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('357', '16572', 'Major', '', '152 散拼产品修改页面旧团期的保存会校验新团期的错...', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('358', '16571', 'Critical', 'Urgent', '【538】152-siruichuangtu-搜索\"tttt\"-查看产品详情-认...', '杨纯', 'Closed', '王利军', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('359', '16570', 'Major', '', '152环境，订单收款取值错误', '姚翠娟', 'Closed', '张潮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('360', '16569', 'Critical', 'Urgent', '152 【538收尾款收款页面】收尾款页面，人民币金额带出...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('361', '16568', '优化类', 'Low', '【538】152-siruichuangtu-搜索\"tttt\"-查看产品详情', '杨纯', 'Closed', '霍常瑛', '不需要修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('362', '16567', 'Critical', 'High', '152 【538收款页面】拉美途因公支付宝页面，带出的总计...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('363', '16566', 'Major', '', '152 散拼产品修改儿童最高人数大于预收，点击保存，...', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('364', '16565', 'Major', '', '152环境，差额返还明细页面输入渠道联系人下拉框取值重...', '姚翠娟', 'Closed', '张潮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('365', '16564', 'Major', '', '152 散拼产品修改添加团期后无法提交保存', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('366', '16563', 'Major', '', '152环境，差额返还明细页面点击搜索框灰色字体没有消失', '姚翠娟', 'Closed', '张潮', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('367', '16562', '优化类', 'Low', '【538】152-guangxixinganxian-下单通知-操作-下单-...', '杨纯', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('368', '16561', 'Minor', 'Medium', '152，下单记录去掉角标标识', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('369', '16560', 'Minor', 'Medium', '152，下单记录联系人手机号为1个字符时没有换行', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('370', '16559', '优化类', 'Low', '【539需求】152-guanliyuan-财务供-发票管理-发票记...', '杨纯', 'Closed', '严明夏', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('371', '16558', 'Critical', 'Urgent', '152，价格计算下单提交时提示保存失败', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('372', '16557', 'Major', '', '152环境，散拼订单修改差额返还金额后，列表中相应的金...', '姚翠娟', 'Closed', '姚翠娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('373', '16556', 'Major', '', '152环境，散拼订单修改差额返还金额没有提示框', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('374', '16555', 'Critical', 'Urgent', '【525需求】T1产品页-搜索框存在问题', '杨纯', 'Closed', '肖凯', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('375', '16554', 'Minor', '', '152环境，散拼订单预订渠道样式有问题', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('376', '16553', 'Major', 'High', '152，下单记录页面没有显示联系人手机', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('377', '16552', 'Major', '', '152环境，已上架产品选择quauq渠道报名，提示本团期...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('378', '16551', 'Minor', '', '152环境，散拼订单中订单类表收款记录列样式错误', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('379', '16550', 'Major', '', '152环境，散拼订单中门店结算价差额返还列取值错误', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('380', '16549', 'Major', 'High', '152 【538报名】门店结算价差额返还输入框可用右键输入...', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('381', '16548', 'Major', 'High', 'T1 产品详情页-在该页面滑动滚轮会影响产品列表的滚...', '王子正', 'Closed', '王利军', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('382', '16547', 'Critical', 'Urgent', '152 【538下单通知】搜索框检索无效', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('383', '16546', 'Critical', 'Urgent', '【539需求】152-guanliyuan-财务供-发票管理-待审核...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('384', '16545', 'Major', 'Medium', '152，t1价格计算下单选择收款方式提交后没有提示保存成...', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('385', '16544', 'Critical', 'Urgent', '【539需求】152-guanliyuan-财务供-发票管理-待审核...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('386', '16543', 'Major', '', '152--T1下单记录列表中点击详情，查看收款类型', '王佳', 'Closed', '白亚昆', '重复问题', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('387', '16542', 'Major', 'High', '152 【538下单通知】登录账号的字段错误', '唐浩然', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('388', '16541', 'Minor', '', '152 T2下单通知页面看不到操作列', '王一朋', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('389', '16540', 'Major', 'High', '152 【538下单通知】取消下单通知，new标识还在', '唐浩然', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('390', '16539', 'Minor', '', '152 T1订单详情页面没有下单记录菜单', '王一朋', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('391', '16538', 'Major', '', '152--T1银行账户中，账户类型下拉数据展开后，点击页面...', '王佳', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('392', '16537', 'Major', '', '152 【兼容性】火狐浏览器下单记录页面导航栏点击无...', '王一朋', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('393', '16536', 'Major', 'High', '152，下单记录金额筛选项筛出不符合条件的数据', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('394', '16535', 'Critical', 'Urgent', 'T1 禁用上架权限的批发商 在T1 首页中仍然存在该批发商...', '王子正', 'Closed', '王子正', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('395', '16534', 'Major', 'High', '152，产品列表下单生成下单记录后顶部导航没有角标提示', '张瑞琦', 'Closed', '张瑞琦', '待产品确认', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('396', '16533', 'Critical', 'Urgent', '【525需求】T1产品页-出团日期筛选条件存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('397', '16532', 'Critical', 'Urgent', 'T1 152 更换批发商logo T1显示不更新', '王子正', 'Closed', '王子正', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('398', '16531', 'Critical', 'High', '152，下单记录筛选模块下单状态符合筛选不可用', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('399', '16530', 'Major', 'High', '152，联系供应商下单弹窗实际售价应为实际结算价', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('400', '16529', 'Minor', '', '152 【兼容性】IE8，搜索框中无文字提示', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('401', '16528', 'Critical', 'High', '152，下单记录页面无法搜索提交编号', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('402', '16527', 'Minor', '', '152 T1，首页 修改密码和退出登录弹出层无法隐藏', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('403', '16526', 'Critical', 'Urgent', '152 【538收款页面】人民币金额带出值错误', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('404', '16525', 'Major', 'Medium', '152，下单记录详情弹窗备注过长时没有换行', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('405', '16524', 'Major', '', '152 【兼容性】IE8，点击产品名称异常', '王一朋', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('406', '16523', 'Minor', '', '152 T1 账户管理页面出现横滚动条', '王一朋', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('407', '16522', 'Minor', 'Low', '【525需求】T1产品页-供应商处存在样式问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('408', '16521', 'Minor', '', '152 T1，订单详情页面样式错误', '王一朋', 'Closed', '霍常瑛', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('409', '16520', 'Major', '', '152 T1，从订单管理页面点击订单跟踪，样式异常', '王一朋', 'Closed', '严明夏', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('410', '16519', 'Major', 'High', '152，T1价格计算下单后下单记录点不开详情', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('411', '16518', 'Critical', 'Urgent', '152 【538预报单&结算单】预报单结算单计入了门店结...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('412', '16517', 'Critical', 'High', '152，下单记录页面进行价格计算下单，备注没有取值', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('413', '16516', 'Major', 'Urgent', 'T1 下单提交成功或者不成功 系统提醒位置', '王子正', 'Closed', '王利军', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('414', '16515', 'Major', '', '152---销售主管账号和新建的销售账号，下单通知没有...', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('415', '16514', 'Major', 'Medium', '【0525需求】T1产品页-出团日期日历显示错误', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('416', '16513', 'Critical', '', '152--去掉下单通知的权限，查看收款类型中的差额返还', '王佳', 'Closed', '张潮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('417', '16512', 'Critical', 'Urgent', '152 【538差额返还明细】搜索渠道联系人无效', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('418', '16511', 'Major', 'High', '152，订单管理订单详情样式错误', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('419', '16510', 'Critical', '', '152--收尾款时，提示出现节点错误', '王佳', 'Closed', '张潮', '无法重现', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('420', '16509', 'Major', 'High', '152 【差额返还明细】搜索框左侧字段应改为“搜索”', '唐浩然', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('421', '16508', 'Critical', '', '152--订单详情页面有问题', '王佳', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('422', '16507', 'Critical', '', '152--下单成功后，筛选条件-已下单无法搜索', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('423', '16506', 'Critical', '', '152--下单成功后，下单通知中的记录状态显示错误', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('424', '16505', 'Critical', '', '152--收款页面显示错误', '王佳', 'Closed', '张潮', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('425', '16504', 'Critical', 'High', '152 【538财务收款单】财务-订单收款-打印，收款金额取...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('426', '16503', 'Minor', 'Medium', '152，下单记录下单详情字段应为“详情”', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('427', '16502', 'Critical', 'High', '152，下单记录弹窗收款方式的收款类型取值错误', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('428', '16501', 'Critical', '', '152--填写联系人/游客姓名页面，修改门店结算价金额...', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('429', '16500', 'Critical', '', '152--下单通知的预定页面，没有确认订单页面', '王佳', 'Closed', '王佳', '不需要修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('430', '16499', 'Major', 'Medium', '【0525需求】T1首页-显示更多筛选条件按钮存在问题', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('431', '16498', 'Critical', '', '152--下单通知的报名页面，可以输入', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('432', '16497', 'Critical', 'Urgent', '【525需求】152-siruichuangtu-产品页-悬浮框点击区...', '杨纯', 'Closed', '肖凯', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('433', '16496', 'Critical', 'High', '152，下单记录详情页价格信息与下单页面信息不一致', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('434', '16495', 'Critical', '', '152--下单通知中，预定弹框中渠道选择显示错误', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('435', '16494', 'Critical', '', '152-下单通知筛选项默认显示错误', '王佳', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('436', '16493', 'Critical', '', '152-下单通知筛选项取值错误', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('437', '16492', 'Critical', '', '152-下单通知页面，门店结算价差额返还不显示', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('438', '16491', 'Major', '', '152--下单通知中无法删除', '王佳', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('439', '16490', 'Major', '', '152--下单通知中取消成功的提示展示不对', '王佳', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('440', '16489', 'Critical', 'Urgent', '152【538财务】财务-订单收款列表已收金额错误；收款确...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('441', '16488', 'Critical', 'Urgent', '【525需求】152-siruichuangtu-搜索“Y1025”-行程天数...', '杨纯', 'Closed', '肖凯', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('442', '16487', 'Critical', 'High', 'T1 152 收款提交成功后 页面跳转', '王子正', 'Closed', '王利军', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('443', '16486', 'Major', 'High', '152，下单记录底部缺少版权信息', '张瑞琦', 'Closed', '王利军', '无法重现', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('444', '16485', 'Major', '', '152--未填写备注，下单通知页面显示备注', '王佳', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('445', '16484', 'Major', '', '152--下单通知页面排版不整齐', '王佳', 'Closed', '霍常瑛', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('446', '16483', 'Critical', 'Urgent', 'T1 选择销售下单按钮失效', '王子正', 'Closed', '王利军', '不需要修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('447', '16482', 'Major', 'Medium', 'T2 152 产品发布页面中 输入完信息后，进入信息确认...', '王子正', 'Closed', '肖凯', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('448', '16481', 'Critical', 'Urgent', '【525需求】T1搜索框搜索“！@#@！#”-再次输入“525需...', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('449', '16480', 'Critical', 'Urgent', '152，下单记录筛选模块控件不可用', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('450', '16479', 'Major', 'Medium', '152，下单记录搜索框默认值', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('451', '16478', 'Major', 'Medium', '152，下单记录页面提交时间等字段错误', '张瑞琦', 'Closed', '王利军', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('452', '16477', 'Critical', 'Urgent', '152 【538】走T2流程，报名QUAUQ渠道，报名页面与生...', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('453', '16476', 'Major', 'High', '152，quauq后台账户信息显示错误', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('454', '16475', 'Critical', '', '152 【538】从T1下单生成的订单，订单修改页面与订单详...', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('455', '16474', 'Critical', 'High', '152，账户类型选择支付宝或微信时显示银行卡的部分信息', '张瑞琦', 'Closed', '霍常瑛', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('456', '16473', 'Major', 'High', '152 订单列表中的订单new标识位置及样式出现问题', '唐浩然', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('457', '16472', 'Critical', 'Urgent', 'T2 152 产品列表页面中所有产品线都存在俩个【酒店、房...', '王子正', 'Closed', '肖凯', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('458', '16471', 'Critical', 'High', '152，T1账户管理样式错误', '张瑞琦', 'Closed', '霍常瑛', '不需要修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('459', '16470', 'Critical', 'Urgent', '152 【538】收款记录中没有门店结算价差额返还一栏', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('460', '16469', 'Critical', 'Urgent', '152 【538】订单列表中的已收金额没有计入差额返还的值', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('461', '16468', 'Critical', 'Urgent', '【IE9】【0525需求】T1产品页-您已选择处显示不全', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('462', '16467', 'Critical', 'Urgent', 'T1 【下单权限】权限配置测试', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('463', '16466', 'Major', 'Medium', '【0525需求】T1首页-点击多选-不选择批发商-点击灰色【...', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('464', '16465', 'Major', 'Low', 'T1 收款方式页面选择支付方式的样式存在问题', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('465', '16464', 'Critical', 'Urgent', 'T1 收款方式页面格式错乱', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('466', '16463', 'Major', '', '152--T2下单通知二级导航栏显示订单列表，不太合理', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('467', '16462', 'Critical', '', 'T1 下单信息页面中，交通工具和联系人电话取值为空', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('468', '16461', 'Critical', '', '152--下单通知无红色圆点和数字提示', '王佳', 'Closed', '白亚昆', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('469', '16460', 'Critical', 'Urgent', 'T1 选择销售下单-按钮重合', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('470', '16459', 'Critical', 'High', '152 差额返还明细渠道名称取值应为T1所有已启用的渠...', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('471', '16458', 'Minor', 'Medium', '【525需求】152-siruichuangtu-产品页面搜索条件处', '赵月明', 'Closed', '高丽娟', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('472', '16457', 'Critical', 'High', 'T1 下单功能-收款方式页面', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('473', '16456', 'Minor', 'Medium', '【525需求】152-siruichuangtu-产品页面搜索条件处和首...', '赵月明', 'Closed', '严明夏', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('474', '16455', 'Major', 'Medium', 'T1 下单功能-选择销售后-下单信息页面', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('475', '16454', 'Major', '', '152 低分辨率下，散拼产品页面样式问题', '王一朋', 'Closed', '童乐雯', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('476', '16453', 'Critical', 'Urgent', '【518】散拼产品列表处-酒店房型存在问题', '杨纯', 'Closed', '杨纯', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('477', '16452', 'Major', 'High', 'T1 下单功能-按此价格下单-选择销售模块页面测试', '王子正', 'Closed', '霍常瑛', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('478', '16451', 'Critical', 'Urgent', '152 T1 添加银行账户信息保存不成功', '唐浩然', 'Closed', '张潮', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('479', '16450', 'Critical', 'Urgent', '【152】T1-批发商认证-查看详情按钮存在样式问题', '杨纯', 'Closed', '严明夏', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('480', '16449', 'Critical', '', 'quauqadmin银行账户页面显示错误', '郭庭昊', 'Closed', '霍常瑛', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('481', '16448', 'Critical', 'Urgent', 'T1 下单功能配置 默认不勾选配置', '王子正', 'Closed', '白亚昆', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('482', '16447', 'Major', '', '152环境，机票订单申请发票填写负数，提示开票金额不能...', '姚翠娟', 'Closed', '王洋', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('483', '16446', 'Minor', '', '【518需求】更多操作下拉菜单会消失', '吴晓茜', '吴晓茜', '杜枷玮', '已修复', '2016-10-24', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('484', '16445', 'Major', '', '137环境，散拼产品列表选择“已下架”筛选，搜索结果错...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-24', 'Closed');
INSERT INTO `t_buginfo` VALUES ('485', '16444', 'Major', '', '137 T1首页，title行高错误', '王一朋', 'Closed', '童乐雯', '已修复', '2016-10-24', 'Closed');
INSERT INTO `t_buginfo` VALUES ('486', '16443', 'Critical', 'Urgent', '【518需求】137-guangxixinganxian-散拼产品页面-修...', '杨纯', 'Closed', '肖凯', '已修复', '2016-10-24', 'Closed');
INSERT INTO `t_buginfo` VALUES ('487', '16442', 'Minor', '', '137 散拼产品修改添加签证资料文件，如果不选国家，...', '王一朋', 'Closed', '童乐雯', '已修复', '2016-10-24', 'Closed');
INSERT INTO `t_buginfo` VALUES ('488', '16441', 'Major', '', '137 散拼产品列表页面，截团日期无法保存', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('489', '16440', 'Major', '', '137 散拼产品，价格表样式问题', '王一朋', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('490', '16439', 'Major', '', '137环境，散拼产品列表添加资料截止日期后，点击保存，...', '姚翠娟', 'Closed', '杜枷玮', '重复问题', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('491', '16438', 'Major', '', '137环境，散拼产品列表点击修改，酒店房型数据消失', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-24', 'Closed');
INSERT INTO `t_buginfo` VALUES ('492', '16437', 'Critical', 'Urgent', '【518需求】137-guangxixinganxian-散拼产品-搜索“Y...', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('493', '16436', 'Major', '', '137--产品修改页面，添加新团期，在价格输入框中可以输...', '王佳', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('494', '16434', 'Major', '', '137环境，散拼产品修改页面点击取消按钮无效', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('495', '16433', 'Major', 'Medium', '137，IE9 散拼产品列表团号被复选框遮挡', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('496', '16432', 'Critical', 'High', '137 游玩线路添加选择中国全部区域，成功后，点击修...', '唐浩然', 'Closed', '王洋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('497', '16431', 'Critical', 'Urgent', '【518】137-guangxixinganxian-散拼产品-搜索“1121...', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('498', '16430', 'Critical', 'High', '137 游玩线路添加选择中国全部区域，成功后，所述旅...', '唐浩然', 'Closed', '王洋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('499', '16429', 'Critical', 'High', '137 游玩线路添加不能选择全部区域', '唐浩然', 'Closed', '王洋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('500', '16428', 'Critical', '', '137--产品修改页面，修改团期价格，点击取消，可以保存...', '王佳', 'Closed', '肖凯', '重复问题', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('501', '16427', 'Critical', 'High', '152，产品列表修改团期后备注消失', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('502', '16426', 'Minor', '', '137环境，散拼产品列表直客价和同行价中输入框没有对齐', '姚翠娟', 'Closed', '童乐雯', '不需要修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('503', '16425', 'Minor', '', '137环境，散拼产品列表直客价和同行价中币种与金额展示...', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('504', '16424', 'Critical', 'Medium', '137 定价策略 中已上架已下架标识展示出错', '王子正', 'Closed', '李鑫', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('505', '16423', 'Major', '', '152环境，T1平台不显示筛选条件', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('506', '16422', 'Critical', 'High', '152，产品列表页修改团期订金大于同行价', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('507', '16421', 'Minor', 'High', '【525需求】152-siruichuangtu-首页-搜索框输入数据-点...', '杨纯', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('508', '16420', 'Critical', 'High', '【525需求】152-siruichuangtu-首页-多选-不选择批发商...', '杨纯', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('509', '16419', 'Major', '', '152 T1，产品详情中的结算价格和列表中的结算价格不...', '王一朋', 'Closed', '宗战奎', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('510', '16414', 'Critical', 'High', '152，散拼产品修改页面余位数大于预收数', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('511', '16411', 'Major', '', '152环境，天马运通机票报名列表没有“预定”按钮', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('512', '16409', 'Critical', 'High', '152，IE9 日信散拼报名展开团期样式混乱', '张瑞琦', 'Closed', '童乐雯', '无法重现', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('513', '16407', 'Minor', 'High', '152 报名-散拼-团期列表，样式有误', '唐浩然', 'Closed', '严明夏', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('514', '16406', 'Critical', 'Urgent', '【525需求】152-guangxixinganxian-散拼产品-搜索“K...', '杨纯', 'Closed', '徐玉东', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('515', '16405', 'Critical', 'Urgent', '152，IE9 散拼产品修改页面团号显示为省略号', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('516', '16404', 'Major', '', '152环境，散拼产品修改页面添加团期操作项按钮重复', '姚翠娟', 'Closed', '肖凯', '无法重现', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('517', '16403', 'Major', 'High', '152，IE9 添加新团期列表出现两个展开价格方案', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('518', '16402', 'Critical', 'Urgent', '152 散拼产品列表-团期修改-操作项下的按钮出现节点...', '王子正', 'Closed', '杜枷玮', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('519', '16401', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-散拼产品-修改-修改...', '杨纯', 'Closed', '肖凯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('520', '16400', 'Minor', '', '152环境，散拼报名列表酒店房型样式错位', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('521', '16399', 'Major', '', '152环境，散拼产品列表点击修改按钮，输入框无法输入', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('522', '16398', 'Critical', '', '152--T1点击清空筛选条件，您已选择不消失', '王佳', 'Closed', '宗战奎', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('523', '16397', 'Critical', 'Medium', '152 散拼产品列表，团号中的勾选框', '王子正', 'Closed', '杜枷玮', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('524', '16396', 'Major', '', '152--散拼产品团期修改，展开团期后列项间距不对', '王佳', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('525', '16395', 'Critical', 'High', '1031-【525需求】152-siruichuangtu-产品页-搜索出错', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('526', '16394', 'Critical', 'High', '【525需求】152-siruichuangtu-产品页筛选数据错误', '杨纯', 'Closed', '宗战奎', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('527', '16393', 'Minor', 'Urgent', '【IE9】152-shangtujiaqi-定价策略样式错误', '杨纯', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('528', '16392', 'Critical', '', '152--T1点击选择批发商后，页面无数据', '王佳', 'Closed', '王佳', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('529', '16391', 'Minor', '', '1031-152--T1首页，筛选均加载过慢', '王佳', 'Closed', '肖凯', '已修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('530', '16390', 'Minor', 'High', '【IE9】【525需求】152-siruichuangtu-首页-LOGO图片和...', '杨纯', 'Closed', '杨纯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('531', '16389', 'Minor', 'Urgent', '【525需求】152-siruichuangtu-点击订单跟踪-样式出...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('532', '16388', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-散拼产品-“线路...', '杨纯', 'Closed', '徐玉东', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('533', '16387', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-散拼产品-修改-不改...', '杨纯', 'Closed', '杨纯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('534', '16386', 'Major', '', '152--T2散拼已下架产品设置空的定价策略后，标识显示错...', '王佳', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('535', '16385', 'Major', '', '152环境，散拼产品修改页面价格方案第一条数据没有输入...', '姚翠娟', 'Closed', '肖凯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('536', '16384', 'Critical', 'Urgent', '【525需求】152-quauqadmin-QUAUQ后台-渠道账号列表-修...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('537', '16383', 'Major', '', '152环境，散拼报名价格表中查询按钮无效', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('538', '16382', 'Major', '', '152环境，散拼报名未上架产品显示价格表按钮', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('539', '16381', 'Critical', '', '137--订单收款中，打印收款单后，打印确认依然是 未...', '王佳', 'Closed', '张潮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('540', '16380', 'Major', 'Medium', '【525需求】152-siruichuangtu-产品页面中的版权。', '赵月明', 'Closed', '高丽娟', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('541', '16379', 'Critical', 'Urgent', '152，日信观光产品修改页修改同行价后产品不下架', '张瑞琦', 'Closed', '肖凯', '无法重现', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('542', '16378', 'Major', '', '152环境，散拼产品修改页面点击修改-取消后，列表为...', '姚翠娟', 'Closed', '肖凯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('543', '16377', 'Critical', 'Urgent', '【525需求】152-guangxixinganxian-产品-散拼产品-游玩...', '杨纯', 'Closed', '肖凯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('544', '16376', 'Critical', 'Urgent', '152 批发商禁用后，散拼产品报名页面仍展示价格表', '唐浩然', 'Closed', '杜枷玮', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('545', '16375', 'Major', '', '152环境，散拼产品修改页面点击删除，列表样式混乱', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('546', '16374', 'Critical', '', '152--T1点击订单管理，批发商认证，账户管理中首页，返...', '王佳', 'Closed', '王佳', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('547', '16373', 'Minor', 'Medium', '1031-【525需求】152-siruichuangtu-产品页面搜索条...', '赵月明', 'Closed', '高丽娟', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('548', '16372', 'Major', 'Urgent', '152.三品产品-列表-批量上架平台字段更改', '王子正', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('549', '16371', 'Minor', '', '152-t1 在首页和批发商产品首页搜索特殊字符，页面...', '王佳', 'Closed', '宗战奎', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('550', '16370', 'Critical', 'Medium', '152.批量上架按钮-上架成功无系统提示', '王子正', 'Closed', '侯涛', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('551', '16369', 'Minor', '', '152-T1导航显示错误', '王佳', 'Closed', '宗战奎', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('552', '16368', 'Major', '', '152环境，散拼产品修改页面，修改出团日期点击取消后，...', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('553', '16367', 'Critical', 'High', '验证【批发商启用】，散拼已下架产品团期【设置定价...', '王子正', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('554', '16366', 'Minor', '', '152--T1首页搜索产品，列表中无任何产品', '王佳', 'Closed', '王佳', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('555', '16365', 'Critical', '', '152--T1，首页搜索产品名称后，筛选项中无目的地和抵达...', '王佳', 'Closed', '宗战奎', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('556', '16364', 'Minor', 'Urgent', '【IE9】【525需求】152-guangxixinganxian-后台数据...', '杨纯', 'Closed', '严明夏', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('557', '16363', 'Critical', 'Urgent', '【IE9】【525需求】152-guangxixinganxian-后台数据...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('558', '16362', 'Critical', '', '152-T1首页，点击韩国--北京台湾会馆国际旅行社，页...', '王佳', 'Closed', '王佳', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('559', '16361', 'Critical', 'Urgent', '152 已上架产品产品详情页面应该去掉quauq策略和供应价', '王子正', '王子正', '侯涛', '推迟', '2016-10-19', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('560', '16360', 'Critical', 'Urgent', '【525需求】152-guangxixinganxian-后台数据维护-线...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('561', '16359', 'Minor', '', '1031-152-T1 鼎鸿假期产品首页，悬浮展示有误', '王佳', 'Closed', '高丽娟', '不需要修复', '2016-10-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('562', '16358', 'Minor', 'Medium', '1031-【525需求】152-siruichuangtu-产品页/首页有批发...', '赵月明', 'Closed', '高丽娟', '已修复', '2016-10-25', 'Closed');
INSERT INTO `t_buginfo` VALUES ('563', '16357', 'Critical', '', '152-T1 鼎鸿假期产品首页，悬浮选择北美，页面无反应', '王佳', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('564', '16356', 'Major', '', '152环境，散拼产品修改页面操作项中按钮折行', '姚翠娟', 'Closed', '肖凯', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('565', '16355', 'Critical', '', '152-T1 首页，模糊搜索产品名称，结果不全', '王佳', 'Closed', '宗战奎', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('566', '16354', 'Minor', 'High', '1031-【IE9】【525需求】152-siruichuangtu-产品页/...', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-24', 'Closed');
INSERT INTO `t_buginfo` VALUES ('567', '16353', 'Major', '', '152 T1账户管理资质信息页面图片样式问题', '王一朋', 'Closed', '张潮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('568', '16352', 'Critical', 'High', '152，IE9 散拼报名展开团期样式混乱', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('569', '16351', 'Minor', 'Medium', '152，IE9定价策略页面产品名称样式错误', '张瑞琦', 'Closed', '严明夏', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('570', '16350', 'Minor', '', '152-T1 批发商产品首页，无logo显示', '王佳', 'Closed', '宗战奎', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('571', '16349', 'Minor', 'Medium', '152，IE9 定价策略搜索框没有默认值', '张瑞琦', 'Closed', '严明夏', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('572', '16348', 'Major', '', '152环境，散拼产品修改页面添加团期后操作项悬浮框不显...', '姚翠娟', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('573', '16347', 'Critical', 'Medium', '验证【批发商启用】，散拼已上架产品团期中【价格表...', '王子正', 'Closed', '王子正', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('574', '16346', 'Critical', 'High', '【IE9】【525需求】152-siruichuangtu-产品页悬浮框...', '杨纯', 'Closed', '杨纯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('575', '16345', 'Minor', 'High', '【IE9】【525需求】152-siruichuangtu-产品页筛选项...', '杨纯', 'Closed', '杨纯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('576', '16344', 'Critical', 'Urgent', '152，设置定价策略后T1找不到已上架产品', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('577', '16343', 'Major', 'High', '【525需求】152-guangxixinganxian-后台数据维护-线...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('578', '16340', 'Major', 'High', '【525需求】152-guangxixinganxian-后台数据维护-线...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('579', '16339', 'Major', '', '152环境，散拼产品展开价格方案显示列表与137环境显...', '姚翠娟', 'Closed', '杜枷玮', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('580', '16338', 'Critical', 'High', '【525需求】152-siruichuangtu-搜索不到数据时-不该...', '杨纯', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('581', '16336', 'Critical', 'High', '【525需求】152-siruichuangtu-导航栏点击过快出错', '杨纯', 'Closed', '高丽娟', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('582', '16335', 'Critical', '', '152-TI筛选条件中，选择批发商后，输入后点击搜索，...', '王佳', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('583', '16334', 'Critical', '', '152-TI筛选条件中，您已选择错位', '王佳', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('584', '16333', 'Critical', '', '152-TI筛选条件中，抵达城市显示不全', '王佳', 'Closed', '王一朋', '已修复', '2016-10-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('585', '16332', 'Critical', 'Medium', '152.ie10 产品列表-设置定价策略弹框 样式比较尴尬', '王子正', 'Closed', '童乐雯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('586', '16331', 'Critical', 'Medium', '152.ie10 产品列表-设置定价策略存在两个滚动条', '王子正', 'Closed', '童乐雯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('587', '16330', 'Critical', 'High', '【525需求】152-siruichuangtu-产品页-没有【出团日...', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('588', '16329', 'Critical', '', '142 团队管理汇总消失', '王一朋', 'Closed', '张潮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('589', '16328', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-散拼产品-修改-添加...', '杨纯', 'Closed', '肖凯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('590', '16327', 'Critical', 'High', '152，报名-散拼产品-目的地悬浮框展示问题', '王子正', 'Closed', '毛宇昇', '推迟', '2016-11-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('591', '16326', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-无法报名已上架T1的...', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('592', '16325', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-无法报名已上架T1的...', '杨纯', 'Closed', '刘涛', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('593', '16324', 'Critical', 'High', '152，验证散拼报名列表特殊人群备注展示错位置错误', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('594', '16323', 'Critical', 'Medium', '【小屏幕样式兼容问题】产品修改页面样式问题', '王子正', 'Closed', '童乐雯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('595', '16322', 'Major', 'High', '152，产品列表展开全部团期，团号列勾选框错位', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('596', '16321', 'Critical', 'High', '【518需求】152-guangxixinganxian-定价策略-鼠标悬...', '杨纯', 'Closed', '李鑫', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('597', '16320', 'Critical', 'High', '152 发布散拼产品后，在产品列表设置定价策略上架后...', '唐浩然', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('598', '16319', 'Critical', 'High', '152，散拼产品修改页面添加新团期保存后仍为添加团期按...', '张瑞琦', 'Closed', '肖凯', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('599', '16318', 'Critical', 'Urgent', '批发商上架权限启用、禁用对产品上下架的问题', '王子正', 'Closed', '杜枷玮', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('600', '16317', 'Critical', 'Urgent', '152，添加新团期模块样式错误，表头缺少复制控件', '张瑞琦', 'Closed', '童乐雯', '已修复', '2016-10-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('601', '16316', 'Critical', '', '152--平台上架状态筛选项无作用', '王佳', 'Closed', '杜枷玮', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('602', '16315', 'Critical', 'High', '152，产品修改添加新团期价格输入框限制均为小数点后两...', '张瑞琦', 'Closed', '肖凯', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('603', '16314', 'Critical', 'Urgent', '【小屏幕样式兼容问题】 报名-产品列表下展开团期滚...', '王子正', 'Closed', '童乐雯', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('604', '16313', 'Critical', '', '152--修改出团日期后，点击批量上架平台，显示另一个团...', '王佳', 'Closed', '杜枷玮', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('605', '16312', 'Critical', 'High', '152 已禁用的渠道在价格表中展示', '唐浩然', 'Closed', '杜枷玮', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('606', '16311', 'Critical', 'Urgent', '【518需求】152-guangxixinganxian-定价策略为空时无提...', '杨纯', 'Closed', '侯涛', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('607', '16310', 'Critical', 'High', '152，已下架产品在产品修改页面没有标识', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('608', '16309', 'Critical', 'High', '产品-散拼产品修改页面-添加团期页面不跳转【批发商...', '王子正', 'Closed', '肖凯', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('609', '16308', 'Critical', 'High', '【518需求】152-guangxixinganxian-散拼产品-”已上...', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('610', '16307', 'Critical', '', '152-散拼产品列表设置定价策略为空时，无弹框提示', '王佳', 'Closed', '杜枷玮', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('611', '16306', 'Critical', 'High', '产品-散拼产品修改页面-删除团期无提示【批发商禁用...', '王子正', 'Closed', '肖凯', '不需要修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('612', '16305', 'Critical', 'Urgent', '152 产品列表，对已上架的团期重新设置定价策略（与...', '唐浩然', 'Closed', '杜枷玮', '重复问题', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('613', '16304', 'Critical', '', '152-散拼产品列表修改价格后，设置定价策略提交后，...', '王佳', 'Closed', '童乐雯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('614', '16303', 'Critical', 'High', '【518需求】152-guangxixinganxian-定价策略处存在”白...', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('615', '16302', 'Critical', 'High', '152 散拼产品列表页面-操作-设定定价策略，提交后，...', '唐浩然', 'Closed', '杜枷玮', '重复问题', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('616', '16301', 'Major', 'Medium', '【小屏幕样式兼容问题】-产品列表', '王子正', '王子正', '童乐雯', '推迟', '2016-10-19', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('617', '16300', 'Critical', '', '152-散拼产品团期无定价策略时，团期无标识也无平台...', '王佳', 'Closed', '杜枷玮', '不需要修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('618', '16299', 'Critical', 'Urgent', '152，散拼产品修改页面提交保存后页面仍停留在当前页', '张瑞琦', 'Closed', '肖凯', '重复问题', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('619', '16298', 'Critical', 'Urgent', '152，散拼产品修改页面删除团期没有提示', '张瑞琦', 'Closed', '肖凯', '重复问题', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('620', '16297', 'Critical', 'Urgent', '验证【批发商禁用】，散拼未上架产品团期【修改】后...', '王子正', 'Closed', '杜枷玮', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('621', '16296', 'Major', 'High', '152，产品修改页面添加新团期后的保存按钮影响已有团期...', '张瑞琦', 'Closed', '肖凯', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('622', '16295', 'Critical', 'Urgent', '152，散拼产品修改页面多次点击修改保存取消，页面报...', '张瑞琦', 'Closed', '肖凯', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('623', '16294', 'Major', 'High', '152，散拼产品点击取消和点击保存团期各价格不统一', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('624', '16293', 'Critical', 'High', '定价策略处的 【已上架】【已下架】标识样式问题', '王子正', 'Closed', '李鑫', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('625', '16292', 'Major', '', '1525环境，散拼产品变为已下架后，更多操作中没有展...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('626', '16291', 'Major', '', '152环境 定价策略列表中鼠标移到上下架标识处没有展...', '姚翠娟', 'Closed', '李鑫', '已修复', '2016-10-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('627', '16290', 'Major', 'Urgent', '152 T1产品列表中结算价显示间距', '王子正', 'Closed', '严明夏', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('628', '16287', 'Major', '', '137 IE9,10,T1首页按钮无效', '王一朋', 'Closed', '严明夏', '已修复', '2016-10-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('629', '16286', 'Critical', 'Urgent', '137-lameitu-订单收款-收款类型选择因公支付宝-失效', '杨纯', 'Closed', '徐玉东', '已修复', '2016-10-17', 'Closed');
INSERT INTO `t_buginfo` VALUES ('630', '16285', 'Critical', '', '137-销售签证订单和签务签证订单，汇票&pos机刷卡等...', '王佳', 'Closed', '徐玉东', '已修复', '2016-10-17', 'Closed');
INSERT INTO `t_buginfo` VALUES ('631', '16277', 'Critical', 'Urgent', '137 订单页面中鼠标悬浮功能不可用', '唐浩然', 'Closed', '唐浩然', '不需要修复', '2016-10-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('632', '16274', 'Critical', 'Urgent', '拉美途（所有批发商）t2产品修改 无法输入中文', '王子正', '王子正', '侯涛', '推迟', '2016-10-17', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('633', '16266', 'Critical', 'Urgent', '152 【IE9】订单-改价，申请改价后没有记录，没有申...', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('634', '16265', 'Critical', 'Urgent', '152 【IE9】订单筛选-条件重置会将订单状态置空', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('635', '16264', 'Critical', 'Urgent', '【0464需求】152-testadmin1-订单-点击-签务签证订单...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('636', '16258', 'Critical', 'Urgent', '【0464需求】152-testadmin1-订单-签务签证订单-[收...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('637', '16257', 'Critical', 'Urgent', '【0464需求】152-testadmin1-订单-签务签证订单-详情...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('638', '16256', 'Critical', 'High', '【0464需求】152-testadmin1-订单-签务签证订单-修改...', '杨纯', 'Closed', '王洋', '已修复', '2016-10-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('639', '16245', 'Major', '', '152-搜索日志中，两个出团日期中的连接符需要修改', '王佳', 'Closed', '张潮', '已修复', '2016-10-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('640', '16242', 'Major', '', '152 T1，产品详情弹出框，点击销售名片，联系供应商...', '王一朋', 'Closed', '徐玉东', '已修复', '2016-10-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('641', '16241', 'Critical', 'Urgent', '（单团）验证产品信息修改页面团号规则', '王子正', 'Closed', '王子正', '不需要修复', '2016-10-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('642', '16240', 'Critical', 'Urgent', '152，,签证报名多个游客并收款后详情页只生成一条收...', '张瑞琦', 'Closed', '王洋', '已修复', '2016-10-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('643', '16239', 'Critical', 'High', '152,销售签证订单“交押金”字段错误', '张瑞琦', 'Closed', '王洋', '已修复', '2016-10-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('644', '16236', 'Major', '', '142-T1未上传logo时，默认图片显示错误', '王佳', 'Closed', '高丽娟', '已修复', '2016-10-11', 'Closed');
INSERT INTO `t_buginfo` VALUES ('645', '16233', 'Major', '', '137环境，批发商费率管理中下拉按钮错位', '姚翠娟', 'Closed', '霍常瑛', '已修复', '2016-10-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('646', '16232', 'Major', 'High', '142环境，T1平台，火狐浏览器部分doc格式行程下载后...', '董道静', 'Closed', '宗战奎', '已修复', '2016-10-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('647', '16230', 'Major', 'Urgent', '137 【T1】批发商认证及详情页面底部copyright的字段错...', '唐浩然', 'Closed', '王洋', '已修复', '2016-10-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('648', '16205', 'Major', '', '137 IE9，T1平台，批发商认证详情页面鼠标经过图片不显...', '王一朋', 'Closed', '严明夏', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('649', '16196', 'Major', '', '137 T1追踪面板不能模糊菜单栏', '郭庭昊', 'Closed', '严明夏', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('650', '16195', 'Major', '', '137 yiyangjiaqi 追踪面板滚动问题', '郭庭昊', 'Closed', '严明夏', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('651', '16194', 'Critical', 'High', '137 ie10 门市名录 数据显示存在格式问题', '王子正', 'Closed', '严明夏', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('652', '16193', 'Critical', 'Medium', '137 ie10 门市名录 新增数据后 数据出现存在长时间延时', '王子正', 'Closed', '高丽娟', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('653', '16191', 'Critical', 'Urgent', '137-新版门市名录-字母定位功能出错', '杨纯', 'Closed', '高丽娟', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('654', '16190', 'Major', 'Urgent', '137 订单追踪面板的悬浮窗中，特殊人群字段显示错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('655', '16188', 'Critical', 'Urgent', '137 驳回-退回占位的订单仍可以激活', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('656', '16187', 'Critical', 'Medium', '137 定价策略设置弹窗策略格式显示错位', '王子正', 'Closed', '高丽娟', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('657', '16186', 'Major', 'Medium', '137 系统设置-账号管理修改页面中，上传头像控件选择框...', '王子正', 'Closed', '王子正', '不需要修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('658', '16185', 'Critical', 'Medium', '137批发商管理页面-点击上传按钮两次，弹出错误提示...', '王子正', 'Closed', '王洋', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('659', '16184', 'Critical', 'Urgent', '137 批发商管理页面中 经过一些列操作后，按钮项失效', '王子正', 'Closed', '王洋', '不需要修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('660', '16183', 'Major', '', '137环境，批发商管理下载图片后，图片打不开', '姚翠娟', 'Closed', '王洋', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('661', '16182', 'Major', 'High', '152 批发商认证详情有字体大小不一致', '唐浩然', 'Closed', '霍常瑛', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('662', '16181', 'Major', 'High', '137，联系供应商下单座机号码换行样式错误', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('663', '16180', 'Major', '', '137环境，T1批发商认证详情页面线路取取值错误', '姚翠娟', 'Closed', '张潮', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('664', '16179', 'Critical', 'High', '137，火狐批发商详情页面样式错误', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('665', '16178', 'Critical', 'Urgent', '137-siruichuangtu-广西新干线-批发商认证详情-许可...', '杨纯', 'Closed', '张潮', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('666', '16177', 'Critical', 'Urgent', '137-账号管理-出错', '杨纯', 'Closed', '谷展羽', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('667', '16175', 'Major', '', '137环境，账号管理输入框文字重叠', '姚翠娟', 'Closed', '霍常瑛', '不需要修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('668', '16173', 'Major', '', '137环境，批发商管理点击提交，页面显示支付宝账户页签', '姚翠娟', 'Closed', '王洋', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('669', '16172', 'Major', '', '137环境，批发商管理文件上传弹框出现两个滚动条', '姚翠娟', 'Closed', '霍常瑛', '已修复', '2016-10-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('670', '16171', 'Critical', 'Urgent', '【谷歌】137-siruichuangtu-名片处-没有滚动条', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('671', '16170', 'Critical', 'Urgent', '137-siruichuangtu-认证详情悬浮框失效', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('672', '16168', 'Major', 'Medium', '152 T1 联系供应商下单弹出框 销售背景色不改变', '王子正', 'Closed', '严明夏', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('673', '16167', 'Critical', 'Urgent', '152 T1 订单追踪 顶部样式问题', '王子正', 'Closed', '严明夏', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('674', '16166', 'Major', 'Low', '152 t1 订单追踪 面板 样式存在空缺', '王子正', 'Closed', '严明夏', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('675', '16165', 'Critical', 'High', '152 T1 订单追踪面板 滚轮功能错乱', '王子正', 'Closed', '严明夏', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('676', '16164', 'Critical', 'Urgent', '152，chrome批发商上传资料上传excel后无法操作', '张瑞琦', 'Closed', '王洋', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('677', '16163', 'Major', 'High', '152，订单追踪订单筛选标签交互样式问题', '张瑞琦', 'Closed', '严明夏', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('678', '16160', 'Major', '', '152 T1，500异常', '王一朋', 'Closed', '张潮', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('679', '16157', 'Major', '', '152环境，T1筛选条件显示不全', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('680', '16154', 'Critical', 'Medium', '152 T2 订单追踪面板 loading动画不居中', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('681', '16152', 'Major', '', '152 T1，批发商认证页面和批发商认证详情页面点击修...', '王一朋', 'Closed', '刘涛', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('682', '16151', 'Critical', 'High', '152，T1点击产品详情报错', '张瑞琦', 'Closed', '徐玉东', '无法重现', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('683', '16150', 'Major', '', '152 T1批发商认证详情页面copyright应该垂直居中', '王一朋', 'Closed', '霍常瑛', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('684', '16149', 'Critical', 'Urgent', '【IE8】152-siruichuangtu-名片处批发商LOGO展示不正确', '杨纯', 'Closed', '严明夏', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('685', '16148', 'Major', '', '152 T1批发商认证详情页面Title错误', '王一朋', 'Closed', '张潮', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('686', '16147', 'Major', '', '152 T1批发商认证详情页面缩略图要按比例缩放', '王一朋', 'Closed', '张潮', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('687', '16146', 'Critical', 'Urgent', '152-meiguang-T1订单跟踪-缺少“正在加载，请等待”...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('688', '16145', 'Critical', 'Urgent', '【火狐】152-meiguang-批发商认证页面-显示错位', '杨纯', 'Closed', '张潮', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('689', '16144', 'Major', '', '152 T1订单管理页面和订单详情页面菜单存在问题', '王一朋', 'Closed', '杜枷玮', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('690', '16143', 'Critical', 'Urgent', '152，角色勾掉报名权限后仍然存在该角色的名片', '张瑞琦', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('691', '16142', 'Critical', 'High', '152 t1 认证详情页面中的网址应折行显示', '王子正', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('692', '16141', 'Major', 'Urgent', '152 T1 360 ie8 浏览器 订单追踪失效', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('693', '16140', 'Critical', 'High', '152，批发商修改页面简介修改后保存无效', '张瑞琦', 'Closed', '王洋', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('694', '16139', 'Critical', 'High', '152，批发商修改页面简介缺少字符限制', '张瑞琦', 'Closed', '王洋', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('695', '16137', 'Critical', 'Urgent', '152 只上传合作协议，批发商认证查看详情按钮被置灰', '唐浩然', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('696', '16136', 'Critical', 'High', 't1 搜索产品名称。在翻页控件的输入框中出现搜索的产品...', '王子正', 'Closed', '宗战奎', '无法重现', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('697', '16135', 'Critical', 'Urgent', '152 批发商验证线路取值错误', '唐浩然', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('698', '16134', 'Critical', '', '152环境，订单跟踪页面不显示询单记录', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('699', '16133', 'Critical', 'High', '152，IE9 T1认证详情页面图片无法旋转', '张瑞琦', 'Closed', '严明夏', '重复问题', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('700', '16132', 'Critical', 'High', '152 t1中上传的名片等照片信息在放大显示时名称显示...', '王子正', 'Closed', '徐玉东', '重复问题', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('701', '16131', 'Critical', 'High', '152，认证详情图片名称显示错误', '张瑞琦', 'Closed', '张潮', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('702', '16130', 'Critical', 'Medium', '验证T1产品详情中联系供应商下单弹框的展示', '王子正', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('703', '16129', 'Critical', 'Urgent', '152 账号电话过长，样式出错', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('704', '16128', 'Critical', '', '142 团期类产品不添加团期直接提交发布，异常null', '王一朋', 'Closed', '肖凯', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('705', '16127', 'Minor', 'Urgent', '152 T1 上传为gif的资质和营业执照等照片，不显示动...', '王子正', 'Closed', '严明夏', '不需要修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('706', '16126', 'Critical', 'High', '152，IE9 t1首页分页控件显示错误', '张瑞琦', 'Closed', '谷展羽', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('707', '16125', 'Critical', 'High', '152，ie9 T1首页翻页控件显示错误', '张瑞琦', 'Closed', '谷展羽', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('708', '16124', 'Critical', '', '验证T1产品详情中标识可用', '郭庭昊', 'Closed', '王洋', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('709', '16123', 'Major', 'High', '152 认证详情有下划线', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('710', '16122', 'Major', 'High', '152 系统管理，账号管理页面上传名称存在两个滚动条...', '王子正', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('711', '16121', 'Critical', 'Urgent', '152-siruichuangtu-名片处-网址过长没折行', '杨纯', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('712', '16120', 'Critical', 'Urgent', '152 上传控件（允许图片格式上传） 上传别的文件成功后...', '王子正', 'Closed', '王洋', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('713', '16118', 'Critical', '', '验证批发商管理添加项中可输入', '郭庭昊', 'Closed', '严明夏', '不需要修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('714', '16117', 'Critical', '', '152 IE8不能上传文件', '郭庭昊', 'Closed', '霍常瑛', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('715', '16116', 'Critical', 'Urgent', '【火狐】152-siruichuangtu-T1-联系批发商下单-名片...', '杨纯', 'Closed', '杨纯', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('716', '16115', 'Critical', 'Urgent', '152-siruichuangtu-名片处样式存在问题', '杨纯', 'Closed', '严明夏', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('717', '16114', 'Major', 'High', '152 上传名片双滚动条', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('718', '16113', 'Critical', 'High', '152-siruichuangtu-批发商认证-广西新干线-删除业务...', '杨纯', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('719', '16112', 'Critical', 'Urgent', '152-siruichuangtu-批发商认证页面-缺少线路字段', '杨纯', 'Closed', '张潮', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('720', '16111', 'Major', 'High', '152 批发商认证页面分页控件显示未对齐', '唐浩然', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('721', '16110', 'Critical', 'Urgent', '152-siruichuangtu-批发商认证-广西新干线-简介显示...', '杨纯', 'Closed', '张潮', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('722', '16109', 'Major', '', 'T1平台“批发商认证”标识过大', '姚翠娟', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('723', '16108', 'Critical', 'Urgent', '152-siruichuangtu-名片处职位取值错误', '杨纯', 'Closed', '徐玉东', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('724', '16107', 'Critical', '', '152--TI中，订单追踪点击刷新数据，页面退出', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-30', 'Closed');
INSERT INTO `t_buginfo` VALUES ('725', '16106', 'Critical', '', '152--TI中，订单追踪中没有数据', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('726', '16105', 'Major', '', '点击T1产品详情中“认证详情”按钮无效', '姚翠娟', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('727', '16103', 'Major', 'High', '152 T1在网址为空时不显示网址字段', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('728', '16102', 'Major', '', 'T1产品详情中服务电话与照片重叠', '姚翠娟', 'Closed', '严明夏', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('729', '16101', 'Critical', '', '152 展开产品详情之后，单击鼠标滚轴', '郭庭昊', 'Closed', '严明夏', '不需要修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('730', '16100', 'Critical', 'High', '152 T1产品详情，销售详情样式有误', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('731', '16099', 'Critical', '', '152 联系供应商下单不存在下拉滚轴', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('732', '16098', 'Critical', '', '152 产品详情存在红色的1', '郭庭昊', 'Closed', '徐玉东', '不需要修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('733', '16097', 'Critical', '', '验证T1产品详情中增加“网址、投诉电话”展示', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('734', '16096', 'Critical', 'High', '152 T1产品详情，点击认证详情无效', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('735', '16095', 'Major', '', 'T1平台批发商认证详情页面logo错误', '姚翠娟', 'Closed', '张潮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('736', '16094', 'Major', 'High', '152 T1营业执照图片不能旋转', '唐浩然', 'Closed', '王利军', '已修复', '2016-10-10', 'Closed');
INSERT INTO `t_buginfo` VALUES ('737', '16093', 'Critical', '', '152-订单追踪没有亮灯显示', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('738', '16092', 'Major', '', '152--不同批发商，订单追踪面板颜色不对', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('739', '16091', 'Major', '', '152--订单追踪排版错乱', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('740', '16090', 'Critical', 'Urgent', '152-禁用批发商后-T1上【订单管理】中对应订单消失（不...', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('741', '16089', 'Major', '', '152--订单追踪中，选择已下单，再次进来后，依然是已下...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('742', '16088', 'Critical', 'High', 'IE9-152-批发商添加出错', '杨纯', 'Closed', '童乐雯', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('743', '16087', 'Critical', 'High', '152 上传名片后没有下载按钮', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('744', '16086', 'Critical', 'Urgent', '152-门市名录-IE9样式错误', '杨纯', 'Closed', '杨纯', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('745', '16085', 'Major', '', '152---订单追踪位置错位', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('746', '16084', 'Critical', '', '152---点击订单追踪后，页面无表头项', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('747', '16083', 'Critical', 'Urgent', '152 分页控件无效', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('748', '16082', 'Critical', '', '152---点击订单追踪后，页面长时间无数据', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('749', '16081', 'Critical', '', '152---T1无订单追踪功能', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('750', '16080', 'Critical', '', '验证账号管理添加上传按钮', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('751', '16079', 'Critical', 'Urgent', '152 营业执照等可上传非图片类的格式', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('752', '16078', 'Major', '', '152-T1翻页组件错误', '王佳', 'Closed', '宗战奎', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('753', '16077', 'Major', 'High', '152 上传控件双滚动条', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('754', '16076', 'Major', '', '152--订单追踪位置处于退出按钮之后', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('755', '16075', 'Major', '', '152环境，IE9浏览器设置策略弹框显示错误', '姚翠娟', 'Closed', '李鑫', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('756', '16074', 'Critical', '', '验证批发商管理添加项中可上传', '郭庭昊', 'Closed', '王洋', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('757', '16073', 'Critical', '', '验证批发商管理添加项中可输入', '郭庭昊', 'Closed', '王洋', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('758', '16072', 'Critical', 'Urgent', '152,T1订单管理报500', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('759', '16071', 'Major', '', '137 代收服务费收款中的操作菜单做成可配置', '王一朋', 'Closed', '徐玉东', '已修复', '2016-09-29', 'Closed');
INSERT INTO `t_buginfo` VALUES ('760', '16070', 'Critical', '', '验证批发商管理添加项正确', '郭庭昊', 'Closed', '王洋', '已修复', '2016-09-28', 'Closed');
INSERT INTO `t_buginfo` VALUES ('761', '16069', 'Major', 'Medium', '137 新门市名录 鼠标交互样式和弹出框样式优化', '王子正', 'Closed', '李鑫', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('762', '16068', 'Critical', 'Urgent', '137，团类产品没有设置成人同行价，下订单后订单详情...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('763', '16067', 'Critical', 'High', '137 签证报名页面 保存并支付按钮字段更改', '王子正', 'Closed', '徐玉东', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('764', '16066', 'Critical', 'Urgent', '137，游轮面板样式错误', '张瑞琦', 'Closed', '严明夏', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('765', '16064', 'Critical', 'Urgent', '137 批量设置定价策略 无法输入策略', '王子正', 'Closed', '王子正', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('766', '16063', 'Major', '', '137 散拼产品修改的时候，第一步不保存，可以直接点...', '王一朋', '王一朋', '侯涛', '推迟', '2016-09-27', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('767', '16061', 'Major', '', '137 T1平台订单管理和账户管理页面的header不一样高...', '王一朋', 'Closed', '严明夏', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('768', '16057', 'Critical', 'High', '137，设定定价策略页面出现“NaN”', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('769', '16055', 'Critical', 'Urgent', '137，天马订单转团后新生成的订单，财务不存在代收服务...', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('770', '16054', 'Critical', '', '137--参团签证订单，订单收款时，显示支付失败', '王佳', 'Closed', '张潮', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('771', '16052', 'Critical', '', '137--系统管理员发布的签证产品，销售报名时，无法找到...', '王佳', 'Closed', '白亚昆', '不需要修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('772', '16051', 'Critical', 'Urgent', '137 机票订单改价页面。改后应收价输入框输入光标位...', '王子正', '白亚昆', '白亚昆', '推迟', '2016-09-26', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('773', '16050', 'Critical', '', '137 507进行订单少选之后下载团控单值能下载本条订单的...', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('774', '16048', 'Critical', 'Urgent', '137-guanliyuan-地接社类型存在问题', '杨纯', 'Closed', '张潮', '不需要修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('775', '16047', 'Critical', 'Urgent', '137，修改改签后新生成的机票订单时报错', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('776', '16046', 'Critical', '', '137 骡子假期新发的产品不能报名', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('777', '16044', 'Critical', 'Urgent', '137 门市名录 该总社下只有一个不同名称的门店时，取值...', '王子正', 'Closed', '李鑫', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('778', '16043', 'Major', '', '137环境，勾选部门可见后，同部门销售看不到彼此订单', '姚翠娟', 'Closed', '白亚昆', '不需要修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('779', '16041', 'Major', '', '137 有横滚动条了', '王一朋', 'Closed', '严明夏', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('780', '16039', 'Critical', '', '137 门市名录 修改品牌', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('781', '16038', 'Critical', 'Urgent', '137 新版门市名录多音字定位还是存在问题', '王子正', 'Closed', '李鑫', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('782', '16037', 'Major', '', '137 订单追踪没有屏蔽完全', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('783', '16036', '优化类', '', '【角色配置】-勾选（新门市名录）-（门市信息）-（门市...', '郭庭昊', 'Closed', '李鑫', '不需要修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('784', '16035', 'Critical', '', '152-地接计调报价记录，机票计调报价记录，计调主管...', '王佳', 'Closed', '谷展羽', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('785', '16033', 'Critical', 'Urgent', '137 新版门市名录', '王子正', 'Closed', '严明夏', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('786', '16032', 'Critical', 'Urgent', '152 新版门市名录 门市信息弹出框 总社名门店名显示...', '王子正', 'Closed', '李鑫', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('787', '16031', 'Critical', 'High', '152，通讯录字母定位', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('788', '16030', 'Critical', 'Urgent', '152，散拼产品列表页和详情页策略和供应价不一致', '张瑞琦', 'Closed', '杜枷玮', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('789', '16029', 'Major', '', '152环境，散拼修改页面点击修改后，quauq渠道策略不...', '姚翠娟', 'Closed', '肖凯', '重复问题', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('790', '16028', 'Major', '', '152环境，未上架产品在报名模块显示供应价，可以用qu...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('791', '16027', 'Major', 'Medium', '152 散拼产品列表展示页面', '王子正', 'Closed', '杜枷玮', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('792', '16026', 'Critical', 'Urgent', '152 设置QUAUQ策略后，散拼产品修改页，QUAUQ渠道策...', '唐浩然', 'Closed', '肖凯', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('793', '16025', 'Critical', '', '152 散拼产品修改的过程中，点击修改团期以后，可以...', '王一朋', 'Closed', '肖凯', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('794', '16024', 'Critical', 'High', '152，游轮产品门市名录按钮位置重叠', '张瑞琦', 'Closed', '严明夏', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('795', '16023', 'Major', '', '152环境，散拼修改页面点击“提交保存”按钮，页面没有...', '姚翠娟', 'Closed', '肖凯', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('796', '16022', 'Major', '', '152 散拼产品发布样式存在问题', '王一朋', 'Closed', '肖凯', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('797', '16020', 'Critical', 'High', '152，通讯录渠道名称取值错误', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('798', '16019', 'Critical', 'High', '【新版门市名录】页面中显示的字段更改', '王子正', 'Closed', '王子正', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('799', '16017', 'Critical', '', '152--骡子假期，报名时，选择出行人数2人，只添加一...', '王佳', 'Closed', '谷展羽', '重复问题', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('800', '16016', 'Critical', 'Urgent', '【字母定位】功能有效性测试-搜索后排序展示', '王子正', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('801', '16015', 'Critical', 'High', '【字母定位】功能有效性测试', '王子正', 'Closed', '李鑫', '重复问题', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('802', '16014', 'Critical', '', '152--骡子假期中，销售权限中未勾选下载游客资料权限，...', '王佳', 'Closed', '谷展羽', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('803', '16013', 'Critical', '', '152，【数据刷新】通讯录数据刷新测试', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('804', '16012', 'Critical', '', '152，【数据刷新】通讯录数据刷新测试', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('805', '16011', 'Critical', 'High', '152，不勾选（门市信息）其他全勾选，门市状态全部变为...', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('806', '16010', 'Critical', 'Urgent', '152-guangxixinganxian-新门市名录-搜索“c”无法搜...', '杨纯', 'Closed', '杨纯', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('807', '16009', 'Critical', 'Urgent', '152-guangxixinganxian-新门市名录-地址填写过多字母时...', '杨纯', 'Closed', '李鑫', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('808', '16008', 'Major', '', '152--下载的团控单中，金额展示居中', '王佳', 'Closed', '谷展羽', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('809', '16007', 'Major', 'High', '152，通讯录下门店名称颜色显示不统一', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('810', '16005', 'Critical', '', '152--骡子假期，订单无游客信息时，不可以下载团控表', '王佳', 'Closed', '谷展羽', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('811', '16004', 'Critical', 'Urgent', '152-guangxixinganxian-新版门市名录看不见滚动条', '杨纯', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('812', '16002', 'Critical', 'Urgent', '【提示灯】功能有效性测试', '王子正', 'Closed', '王子正', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('813', '16001', 'Critical', '', '152 骡子假期 付全款的时候仍显示在定金列中', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('814', '16000', 'Critical', '', '152 骡子假期 团控单添加2个游客不添加游客信息只显...', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-27', 'Closed');
INSERT INTO `t_buginfo` VALUES ('815', '15999', 'Critical', '', '152 骡子假期 团控单中多比订单销售合并单元格', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('816', '15997', 'Major', 'High', '152 门市名录页未对齐；新版门市名录遮挡了退出按钮', '唐浩然', 'Closed', '唐浩然', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('817', '15996', 'Critical', 'Urgent', '152,所有账号登不上，密码错误', '张瑞琦', 'Closed', '张瑞琦', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('818', '15993', 'Critical', 'Urgent', '152 代收服务费付款打印支出凭单，点击下载报500', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('819', '15992', 'Critical', 'Urgent', '【联系人信息长度限定】渠道账号添加、修改页面', '王子正', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('820', '15991', 'Critical', 'High', '152，门店列表排序混乱', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('821', '15990', 'Critical', 'Medium', '通讯录 门市信息展示弹窗缺少指向箭头', '王子正', 'Closed', '李鑫', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('822', '15989', 'Critical', 'Medium', '通讯录 字母定位 存在误差', '王子正', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('823', '15988', 'Critical', 'High', '通讯录 数据排序出现问题', '王子正', 'Closed', '李鑫', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('824', '15987', 'Critical', '', '【散拼】验证转团、退团之后团控单取值', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('825', '15986', 'Major', 'High', '152 在显示门店数据的小面板上滑动滚轮，通讯录面板...', '唐浩然', 'Closed', '高丽娟', '推迟', '2016-09-26', 'Closed');
INSERT INTO `t_buginfo` VALUES ('826', '15985', 'Critical', 'Urgent', '152 同一个渠道品牌有多个门店，只显示一个', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('827', '15984', 'Critical', '', '【散拼】验证达账之后团控单取值', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('828', '15982', 'Critical', '', '【散拼】验证支付定金不填写游客信息团控单取值', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('829', '15981', 'Critical', '', '【散拼】验证支付全款填写游客信息团控单取值', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('830', '15980', 'Critical', 'Urgent', '152 quauq后台 渠道账户号列表 渠道联系人信息输入限制', '王子正', 'Closed', '李鑫', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('831', '15979', 'Critical', 'Urgent', '【联系人信息长度限定】渠道账号添加、修改页面', '王子正', 'Closed', '李鑫', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('832', '15978', 'Critical', '', '【散拼】验证支付定金不填写游客信息团控单取值', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('833', '15977', 'Critical', 'High', '【版本共存】版本共存展示情况测试', '王子正', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('834', '15976', 'Critical', 'Urgent', '152，渠道类型和上级关系对通讯录展示影响测试', '张瑞琦', 'Closed', '张瑞琦', '重复问题', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('835', '15975', 'Critical', 'Urgent', '【面板信息展示】数据边界测试', '王子正', 'Closed', '李鑫', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('836', '15974', 'Critical', '', '152--需要修改通讯录字段，且覆盖了退出按钮', '王佳', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('837', '15973', 'Critical', 'Urgent', '152 新版门市名录中门店名称显示错误', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('838', '15972', 'Major', '', '152--角色配置中，通讯录需要修改成新版门市名录', '王佳', 'Closed', '李鑫', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('839', '15971', 'Critical', 'High', '通讯录 展开样式存在问题', '王子正', 'Closed', '李鑫', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('840', '15970', 'Critical', '', '【散拼】团控单按钮存在', '郭庭昊', 'Closed', '谷展羽', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('841', '15967', 'Critical', 'Urgent', '152 报名【预定】按钮失效', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('842', '15966', 'Critical', 'Low', '152订单退款页面 退款款项增加按钮显示问题', '王子正', 'Closed', '刘涛', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('843', '15959', 'Critical', 'Medium', '152 报名模块维护渠道联系人信息 需优化提示样式', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('844', '15956', 'Critical', 'High', '152 机票产品发布，价格输入过多位数，提交发布后报...', '王子正', 'Closed', '肖凯', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('845', '15954', 'Major', 'High', '152，鼎鸿假期代收服务费角标显示错误', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('846', '15953', 'Critical', 'High', '152 不勾选单团订单互相可见，勾选其他某个订单可见...', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('847', '15952', 'Critical', 'Medium', '152 起航假期 机票产品订金占位 天数无限制', '王子正', 'Closed', '肖凯', '不需要修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('848', '15949', 'Major', 'Medium', '152 基础信息维护，新增机场信息页样式错误', '唐浩然', 'Closed', '刘涛', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('849', '15948', 'Major', '', '152环境，散拼产品修改页面点击提交保存，页面应跳转到...', '姚翠娟', 'Closed', '肖凯', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('850', '15947', 'Major', '', '152环境，散拼产品修改页面点击批量上架平台按钮无反应', '姚翠娟', 'Closed', '肖凯', '无法重现', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('851', '15946', 'Major', '', '152环境，散拼产品修改页面，全选、反选格式没对齐', '姚翠娟', 'Closed', '高丽娟', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('852', '15945', 'Critical', 'High', '152 起航假期-多次收款后页面出现样式错误', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('853', '15943', 'Critical', 'Urgent', '152-guangxixinganxian-批量上架按钮出错', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-09-21', 'Closed');
INSERT INTO `t_buginfo` VALUES ('854', '15942', 'Major', '', '152环境，散拼产品修改成功后提示框中按钮未统一', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('855', '15940', 'Major', '', '152---天马运通，团期中复选项勾选规则有问题', '王佳', 'Closed', '杜枷玮', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('856', '15939', 'Critical', 'Urgent', '152-guangxixinganxian-散拼产品-设置定价策略-点击...', '杨纯', 'Closed', '杨纯', '推迟', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('857', '15938', 'Major', '', '152环境，散拼修改页面，修改产品成功后点击提示框德尔...', '姚翠娟', 'Closed', '肖凯', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('858', '15937', 'Critical', '', '152--天马运通，团期列表修改页面，团期没有供应价，可...', '王佳', 'Closed', '杜枷玮', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('859', '15936', 'Critical', '', '152-天马运通，团期无价格信息时，点击列表中的保存...', '王佳', 'Closed', '杜枷玮', '无法重现', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('860', '15935', 'Critical', '', '152-天马运通，产品无供应价，修改时，提示重新设置...', '王佳', 'Closed', '王佳', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('861', '15934', 'Critical', 'Urgent', '152-guangxixinganxian-散拼产品列表-【平台上架】功能...', '杨纯', 'Closed', '杜枷玮', '不需要修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('862', '15928', 'Major', '', '152环境，散拼发布新产品填写备注信息后，在上传资料页...', '姚翠娟', 'Closed', '杜枷玮', '不需要修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('863', '15927', 'Critical', 'Urgent', '152-guangxixinganxian-财务-代收服务费付款【结算方】...', '杨纯', 'Closed', '徐玉东', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('864', '15926', 'Critical', 'Urgent', '152-test-admin-散拼产品-【操作】鼠标悬浮失效', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('865', '15925', 'Major', '', '152--散拼产品&报名模块，搜索框内字段居中显示', '王佳', 'Closed', '高丽娟', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('866', '15924', 'Major', '', '137--散拼产品模块，搜索框内字段与输入内容重叠', '王佳', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('867', '15923', 'Major', '', '152环境，代收服务费的支出凭单不显示摘要信息', '姚翠娟', 'Closed', '王洋', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('868', '15922', 'Major', 'High', '152-guanliyuan-财务-代收服务费付款-筛选项【出纳确认...', '杨纯', 'Closed', '徐玉东', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('869', '15921', 'Major', 'High', '152，申请返佣后成本录入页返佣金额合计错误', '张瑞琦', 'Closed', '张潮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('870', '15920', 'Critical', 'Medium', '152 签证产品详情页面中备注信息排版存在问题', '王子正', 'Closed', '霍常瑛', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('871', '15919', 'Critical', 'Urgent', '152，拉美途团期类报名报错', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('872', '15918', 'Critical', 'Urgent', '152,拉美途散拼报名无法保存收款', '张瑞琦', 'Closed', '白亚昆', '无法重现', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('873', '15917', 'Critical', 'Urgent', '152转款页面中不填写任何信息点击提交页面跳转并且新页...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('874', '15916', 'Critical', 'Urgent', '142环境，拉美途，单团订单转团成功后申请转款，系统报...', '董道静', 'Closed', '白亚昆', '已修复', '2016-10-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('875', '15915', 'Critical', 'Urgent', '142环境，拉美途，散拼订单无法申请改价', '董道静', 'Closed', '张潮', '已修复', '2016-09-23', 'Closed');
INSERT INTO `t_buginfo` VALUES ('876', '15914', 'Major', '', '152环境，散拼产品设定定价策略弹框没有产品名称', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('877', '15913', 'Major', '', '152环境，散拼产品设定定价策略金额显示错误', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-20', 'Closed');
INSERT INTO `t_buginfo` VALUES ('878', '15912', 'Major', '', '152环境，散拼产品修改直客价金额小数点可保留多位', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('879', '15911', 'Major', 'High', '152 代收服务费付款页面显示时，标签显示为收款确认...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('880', '15909', 'Critical', 'Urgent', '152-test-admin-散拼产品列表/修改页面中“酒店房型...', '杨纯', 'Closed', '肖凯', '不需要修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('881', '15907', 'Critical', 'Urgent', '152 quauq后台- 渠道账号列表-导出价格策略设置-页面报...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('882', '15906', 'Critical', 'Urgent', '152 代收服务费付款页，未付款数据支出凭单为空', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('883', '15904', 'Major', '', '152环境，不勾选“设定定价策略”，散拼产品操作项显示...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('884', '15902', 'Critical', 'Urgent', '152-guangxixinganxian-未设置定价策略不应出现已下...', '杨纯', 'Closed', '肖凯', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('885', '15901', 'Major', '', '152环境，散拼产品点击修改后，操作项不应有平台上架按...', '姚翠娟', 'Closed', '姚翠娟', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('886', '15900', 'Major', 'High', '152 付款页面，支付记录-查看，支付凭证下载按钮显示为...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('887', '15899', 'Critical', 'High', '152 代收服务费付款页显示服务费为0的数据', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('888', '15898', 'Critical', '', '152 将渠道费率修改之后再进行订单修改，服务费会变...', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('889', '15897', 'Major', '', '152环境，产品模块其他产品线操作项没有修改按钮', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('890', '15896', 'Critical', 'Urgent', '152-test-admin-散拼产品-修改同行价/直客价后，没有重...', '杨纯', 'Closed', '肖凯', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('891', '15895', 'Major', '', 'quauq策略和供应价为空时，展示错误', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('892', '15894', 'Major', '', '152-环球行---代收服务费付款，出纳确认时间筛选项不可...', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('893', '15893', 'Critical', 'Urgent', '152 申请改价审批通过；再次点击操作-改价，报500', '唐浩然', 'Closed', '宗战奎', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('894', '15892', 'Major', '', '152-环球行--代收服务费付款，打印状态&付款状态，下拉...', '王佳', 'Closed', '徐玉东', '不需要修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('895', '15891', 'Major', '', '散拼产品操作项没有“展看备注、展开价格方案”按钮', '姚翠娟', 'Closed', '杜枷玮', '不需要修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('896', '15890', 'Major', '', '152-环球行--代收服务费付款，销售下拉数据取值错误', '王佳', 'Closed', '毛宇昇', '不需要修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('897', '15889', 'Critical', 'Urgent', '152-test-admin-散拼产品-修改出团日期出错', '杨纯', 'Closed', '肖凯', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('898', '15888', 'Major', '', '152--环球行--财务付款，团队类型中下拉数据取值和排版...', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('899', '15887', 'Major', 'High', '152-test-admin-产品-散拼产品-团期列表修改-团号无...', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('900', '15886', 'Major', '', '152--环球行---财务付款--代收服务费付款--展开筛选...', '王佳', 'Closed', '毛宇昇', '不需要修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('901', '15885', 'Critical', '', '152--环球行--财务付款--代收服务费付款中，结算方下拉...', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('902', '15884', 'Major', '', '152--环球行中财务付款---代收服务费付款展开筛选中...', '王佳', 'Closed', '徐玉东', '不需要修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('903', '15883', 'Major', '', '批发商禁用后，产品团号列的标识没有变化', '姚翠娟', 'Closed', '白亚昆', '不需要修复', '2016-09-22', 'Closed');
INSERT INTO `t_buginfo` VALUES ('904', '15882', 'Major', 'High', '152-test-admin-产品-散拼产品-字段错误', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('905', '15881', 'Critical', '', '152-财务付款列表中，只存在一个QUAUQ结算方，缺少渠道...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('906', '15880', 'Critical', 'Urgent', '152-test-admin-发布散拼产品-团期列表中数据缺失', '杨纯', 'Closed', '肖凯', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('907', '15878', 'Major', '', '散拼产品没有设定定价策略的团期不应显示已下架标识', '姚翠娟', 'Closed', '杜枷玮', '不需要修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('908', '15877', 'Critical', 'Urgent', '152-testadmin1-散拼产品修改-系统错误', '杨纯', 'Closed', '肖凯', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('909', '15874', 'Critical', 'High', '152，支付记录撤销付款后仍存在已收金额', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('910', '15873', 'Major', '', '152环境，订单退团后，财务-代收服务费付款列表依然...', '姚翠娟', 'Closed', '徐玉东', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('911', '15872', 'Critical', 'Urgent', '142环境，迈途国旅，已过保留时限系统取消的订单，点击...', '董道静', 'Closed', '白亚昆', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('912', '15871', 'Critical', 'Urgent', '152，借款审批报错', '张瑞琦', 'Closed', '王洋', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('913', '15870', 'Major', '', '152环境，应收金额为负数，申请退团时填写负数，页面一...', '姚翠娟', 'Closed', '刘涛', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('914', '15869', 'Major', 'High', '152，销售询价列表指定计调显示省略号字符限制过短', '张瑞琦', 'Closed', '白亚昆', '不需要修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('915', '15868', 'Critical', 'High', '152，支付记录撤销付款后打印按钮应取消', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('916', '15867', 'Major', 'High', '152，订单生成后代收交易服务费没有提醒', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('917', '15866', 'Major', '', '152环境，代收服务费付款中输入团号搜索，搜索不到数据', '姚翠娟', 'Closed', '徐玉东', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('918', '15865', 'Critical', 'High', '152，付款确认后下载的支付确认单没有确认日期', '张瑞琦', 'Closed', '王洋', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('919', '15864', 'Critical', 'Urgent', '152-quauqadmin-费率设置为空时没有保存成功', '杨纯', 'Closed', '张潮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('920', '15862', 'Critical', 'Urgent', '152，服务费付款后，跳转到付款列表报错', '张瑞琦', 'Closed', '张潮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('921', '15861', 'Critical', 'High', '152 订单取消后，成本录入-代收服务费-合计金额仍然...', '唐浩然', 'Closed', '张潮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('922', '15860', 'Critical', 'Urgent', '152-guangxixinganxian-产品-详情报500', '杨纯', 'Closed', '杜枷玮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('923', '15859', 'Critical', '', '152环境，账号管理中勾选quauq渠道权限保存后页面报...', '姚翠娟', 'Closed', '白亚昆', '重复问题', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('924', '15858', 'Critical', 'Urgent', '152 费率均为0生成订单后，成本录入-代收服务费展示...', '唐浩然', 'Closed', '张潮', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('925', '15857', 'Critical', 'Urgent', '152-运控-成本录入-代收服务费为0时不应显示', '杨纯', 'Closed', '张潮', '重复问题', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('926', '15856', 'Major', '', '152环境，散拼产品点击已下架页签没有高亮，且下架产品...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('927', '15855', 'Critical', 'Urgent', '137 代收服务费付款页，付款后，操作-支付记录为空', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('928', '15854', 'Critical', 'Urgent', '152-结算单/预报单报500', '杨纯', 'Closed', '张潮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('929', '15853', 'Critical', '', '152--散拼报名页面，报500', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('930', '15852', 'Critical', '', '152-散拼产品中找不到已经发布的产品', '王佳', 'Closed', '杜枷玮', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('931', '15851', 'Critical', 'Urgent', '152 代收服务费付款页，打印，支出凭单为空', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('932', '15850', 'Critical', 'High', '152 代收服务费付款，支付记录中支付类型与状态错误', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('933', '15849', 'Major', 'Medium', '152 代收服务费付款页“未打印”“已打印”字体为黑...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('934', '15848', 'Critical', '', '152-散拼产品点击报错', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('935', '15847', 'Critical', '', '152-登录报错', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('936', '15845', 'Critical', '', '152-报名时，单价显示错误', '王佳', 'Closed', '白亚昆', '不需要修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('937', '15844', 'Critical', 'Urgent', '152-testadmin1 -订单/询价【搜索框中提示信息错位】', '杨纯', 'Closed', '谷展羽', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('938', '15843', 'Critical', '', '验证【维护QUAUQ渠道费率】代收服务费数据展示', '郭庭昊', 'Closed', '张潮', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('939', '15842', 'Critical', 'Urgent', '152 代收服务费付款页面没有数据', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-13', 'Closed');
INSERT INTO `t_buginfo` VALUES ('940', '15841', 'Critical', 'Urgent', '不勾选【添加其他费用】功能--报名、订单功能有效性...', '王子正', 'Closed', '李鑫', '已修复', '2016-09-13', 'Closed');
INSERT INTO `t_buginfo` VALUES ('941', '15840', 'Critical', '', '152-运控--成本录入--预报单，结算单页面报500', '王佳', 'Closed', '张潮', '已修复', '2016-09-13', 'Closed');
INSERT INTO `t_buginfo` VALUES ('942', '15839', 'Critical', '', '142 订单修改后的价格没有写到申请改价页面', '王一朋', 'Closed', '宗战奎', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('943', '15838', 'Critical', 'Medium', '152 报名页面 报名页面中上下进行滚轮操作 页面开始...', '王子正', '王子正', '王子正', '推迟', '2016-09-14', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('944', '15836', 'Critical', '', '152-系统设置--账号管理，修改账号时，页面报500', '王佳', 'Closed', '杜枷玮', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('945', '15835', 'Critical', 'Urgent', '152 报名添加游客保存失效', '王子正', 'Closed', '李鑫', '已修复', '2016-09-13', 'Closed');
INSERT INTO `t_buginfo` VALUES ('946', '15834', 'Critical', '', '152-渠道账号列表中，渠道无登录名', '王佳', 'Closed', '王洋', '已修复', '2016-09-18', 'Closed');
INSERT INTO `t_buginfo` VALUES ('947', '15833', 'Major', 'High', '152 新增交易服务费付款页面，字段错误', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-13', 'Closed');
INSERT INTO `t_buginfo` VALUES ('948', '15831', 'Critical', '', '增加完其他费用在改价当前应收价中不反写', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-14', 'Closed');
INSERT INTO `t_buginfo` VALUES ('949', '15830', 'Critical', '', '报名添加500英镑的其他费用，将其修改成人民币订单金额...', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-19', 'Closed');
INSERT INTO `t_buginfo` VALUES ('950', '15821', 'Critical', '', '137 单团转团后，订单详情和订单修改里的价格不一样', '王一朋', 'Closed', '白亚昆', '已修复', '2016-09-13', 'Closed');
INSERT INTO `t_buginfo` VALUES ('951', '15817', 'Critical', '', '137--起航假期，配置了交易服务费统计，但导出的exce...', '王佳', 'Closed', '刘涛', '已修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('952', '15816', 'Major', '', '137环境，已下架产品列表中显示删除按钮', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('953', '15808', 'Critical', 'Urgent', '137 签证订单改价后，应收金额不变', '唐浩然', 'Closed', '宗战奎', '已修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('954', '15802', 'Critical', '', '137-散拼申请改价后，再次修改添加其他费用，保存后...', '王佳', 'Closed', '白亚昆', '不需要修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('955', '15801', 'Critical', '', '137 环球行 申请改价之后原始应收价出现多于币种', '郭庭昊', 'Closed', '白亚昆', '无法重现', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('956', '15799', 'Critical', '', '137 环球行，签证改价审批，查看订单详情500', '王一朋', 'Closed', '宗战奎', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('957', '15798', 'Critical', '', '137 环球行 改价暂不支付订单在进行支付，价格错误', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('958', '15796', 'Major', '', '137环境，转入团订单总额显示错误', '姚翠娟', 'Closed', '白亚昆', '不需要修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('959', '15795', 'Critical', 'Urgent', '137-guangxixinganxian-结算单/预报单【服务费不正确】', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('960', '15792', 'Critical', '', '137 环球行 quauq和渠道服务费取值错误', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-12', 'Closed');
INSERT INTO `t_buginfo` VALUES ('961', '15788', 'Critical', 'Urgent', '137 订单改价 输入不同币种的过长改价金额 系统报错...', '王子正', 'Closed', '宗战奎', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('962', '15783', 'Critical', '', '137 环球行 改价审批，无改价差额', '郭庭昊', 'Closed', '宗战奎', '无法重现', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('963', '15782', 'Critical', '', '137 环球行订单总额显示错误', '郭庭昊', 'Closed', '白亚昆', '无法重现', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('964', '15781', 'Major', '', '137环境，散拼改价审批通过后，再次点击申请改价游客价...', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('965', '15779', 'Critical', 'Urgent', '137,订单修改删除游客改价后的其他费用无效', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('966', '15777', 'Major', 'High', '137 财务-订单收款，订单列表中未收金额&累计达帐金...', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('967', '15776', 'Critical', 'Urgent', '137-guanliyuan-报名无法填写非签约渠道名称', '杨纯', 'Closed', '白亚昆', '不需要修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('968', '15775', 'Critical', 'Urgent', '137 公版（拉美图）订单修改页面 渠道修改后 服务费...', '王子正', '白亚昆', '白亚昆', '推迟', '2016-09-26', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('969', '15774', 'Critical', 'High', '137，日信观光定价策略出发城市页面筛选条件样式错误', '张瑞琦', 'Closed', '李鑫', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('970', '15773', 'Critical', 'High', '137 机票订单已退票游客显示在订单列表中', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('971', '15772', 'Critical', '', '137-骡子假期，点击运控--成本录入后，页面无数据', '王佳', 'Closed', '张潮', '不需要修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('972', '15771', 'Critical', 'Urgent', '137 报名单团生成订单，渠道联系人不显示', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('973', '15770', 'Critical', 'Urgent', '137 订单转团后，在转入团列表下吗，转团数据的已收...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('974', '15769', 'Critical', '', '验证【渠道费率为0时】代收服务费数据展示', '郭庭昊', 'Closed', '张潮', '不需要修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('975', '15768', 'Critical', 'Urgent', '137-guangxixinganxian-转团后生成的新订单结算价不...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('976', '15767', 'Critical', 'Urgent', '137 服务费统计页面，供应商搜索框获取焦点后，按下E...', '唐浩然', 'Closed', '刘涛', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('977', '15766', 'Critical', '', '137 返佣审批页面显示错位', '郭庭昊', 'Closed', '张潮', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('978', '15765', 'Critical', 'Urgent', '137日信观光 -机票产品线-修改团号可以输入超过50个...', '王子正', 'Closed', '宗战奎', '已修复', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('979', '15764', 'Critical', '', '137-订单总结算价和订单总额取值错误', '王佳', 'Closed', '宗战奎', '重复问题', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('980', '15763', 'Critical', 'Urgent', '137,散拼产品列表页不存在供应价和定价策略', '张瑞琦', 'Closed', '张瑞琦', '重复问题', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('981', '15762', 'Critical', 'Urgent', '137日信观光 财务-订单收款-查看详情页面-订单团号排版...', '王子正', 'Closed', '张潮', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('982', '15761', 'Critical', '', '137-渠道账号列表，账号有问题', '王佳', 'Closed', '王洋', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('983', '15760', 'Critical', 'High', '137 日新观光 手输团号可修改 团号输入框进行修改时...', '王子正', 'Closed', '宗战奎', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('984', '15759', 'Critical', 'Urgent', '（单团）验证产品信息修改页面团号规则', '王子正', 'Closed', '宗战奎', '不需要修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('985', '15758', 'Critical', 'High', '137 客户类型中的集团公司显示为集团客户', '唐浩然', 'Closed', '王洋', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('986', '15757', 'Critical', 'Urgent', '137 渠道姓名变更 对订单的渠道姓名取值影响', '王子正', 'Closed', '白亚昆', '待产品确认', '2016-09-09', 'Closed');
INSERT INTO `t_buginfo` VALUES ('987', '15756', 'Major', '', '137 交易服务费统计页面，缴费状态改变，但是缴费总...', '王一朋', 'Closed', '刘涛', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('988', '15755', 'Critical', 'Urgent', '137-guangxixinganxian-改价后其他费用反写到订单中...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('989', '15754', 'Critical', 'Urgent', '137 转团后，转入团的预报单&结算单没有代收服务费', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('990', '15753', 'Major', '', '散拼订单转入团的结算价显示错误', '姚翠娟', 'Closed', '白亚昆', '不需要修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('991', '15752', 'Major', '', '137-服务费统计页面，搜索供应商--QUAUQ内部测试批发商...', '王佳', 'Closed', '刘涛', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('992', '15751', 'Critical', '', '137-服务费统计页面，合计排版错误', '王佳', 'Closed', '刘涛', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('993', '15750', 'Critical', '', '137-服务费统计页面，未结清总额计算错误', '王佳', 'Closed', '刘涛', '不需要修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('994', '15749', 'Critical', 'Medium', '137 日信观光账号', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('995', '15748', 'Critical', '', '137-交易服务费统计页面，合计---未缴费计算错误', '王佳', 'Closed', '刘涛', '不需要修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('996', '15747', 'Critical', 'Urgent', '137 改价后，对应的结算价没有改变', '唐浩然', 'Closed', '宗战奎', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('997', '15746', 'Minor', '', '散拼订单-订单列表-财务-收款记录列表显示不全', '姚翠娟', 'Closed', '白亚昆', '重复问题', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('998', '15745', 'Critical', 'High', '137 订单支付页面 来款单位提醒 【English】？', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('999', '15744', 'Critical', 'High', '137，下属门店弹窗样式', '张瑞琦', 'Closed', '张潮', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1000', '15743', 'Critical', 'Urgent', '152-testadmin1-单团订单-改价-申请改价-添加项目后-改...', '杨纯', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1001', '15742', 'Critical', 'Urgent', '137 订单转团后，代收服务费数据错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1002', '15741', 'Critical', '', '报名页面报错', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1003', '15740', 'Critical', 'High', '137-testadmin1-审批-改价审批页面数据不正确', '杨纯', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1004', '15739', 'Major', '', '一个产品多个团期，点击其中一个团期上架，其他没有...', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1005', '15738', 'Major', 'High', '137 删除其他费用，结算价不清空展示为0', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1006', '15737', 'Major', '', '产品修改页面供应价不显示小数点后两位', '姚翠娟', 'Closed', '杜枷玮', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1007', '15736', 'Major', '', '137，批发商设置默认费率弹窗样式不统一', '张瑞琦', 'Closed', '徐玉东', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1008', '15735', 'Major', 'Medium', '137-testadmin-改价添加悬浮框-单价输入问题', '杨纯', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1009', '15734', 'Major', 'Medium', '137-testadmin1-添加其它费用悬浮框存在问题', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-08', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1010', '15733', 'Major', 'Medium', '137-testadmin-改价添加悬浮框显示问题', '杨纯', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1011', '15732', 'Critical', '', '152-申请退团成功后，金额全部为0，预报单，结算单依然...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1012', '15731', 'Critical', 'Urgent', '152-guangxixinganxian-订单-申请退团-锁定结算单-退团...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1013', '15730', 'Critical', 'High', '152，提交改价申请后没有申请记录，审批页面没有应收和...', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1014', '15729', 'Critical', '', '152-订单修改添加游客后，预报单和结算单中，未收款...', '王佳', 'Closed', '刘世军', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1015', '15728', 'Critical', '', '152-订单修改添加游客后，预报单和结算单中，代收服...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1016', '15727', 'Critical', 'Urgent', '152，T1产品结算价取值错误', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1017', '15726', 'Major', '', '152-结算单中，境内支出中折行', '王佳', 'Closed', '刘世军', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1018', '15725', 'Critical', 'Urgent', '152 转团审批不能通过', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1019', '15724', 'Critical', 'High', '152，未经过审批的改价金额直接加到了订单总额里', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1020', '15723', 'Major', '', '费率为0时，T1中产品详情供应价显示错误', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1021', '15722', 'Major', '', '费率为0时，产品供应价显示错误', '姚翠娟', 'Closed', '姚翠娟', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1022', '15721', 'Critical', '', '152-散拼产品无法报名', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1023', '15720', 'Critical', 'Urgent', '152 转团详情页面，点击产品详情，进入产品详情页，...', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1024', '15719', 'Critical', 'Urgent', '152 转团申请页面，单价展示错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1025', '15718', 'Critical', '', '152-结算单中数据空了', '王佳', 'Closed', '刘世军', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1026', '15717', 'Critical', '', '152-预报单中，代收服务费计算错误', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1027', '15716', 'Critical', '', '152-订单详情页面，儿童单价展示和游客结算价展示不...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1028', '15715', 'Major', '', '改价审批未完成时，点击申请改价，改后应收价不显示...', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1029', '15713', 'Critical', 'Urgent', 'quaua后台批发商费率管理下属门店按钮失效', '王子正', 'Closed', '张潮', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1030', '15712', 'Critical', '', '验证无所属关系的门店，按照自己的费率报名', '郭庭昊', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1031', '15711', 'Critical', 'Urgent', '152 申请改价通过后，改价详情页信息与列表展示信息...', '唐浩然', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1032', '15710', 'Critical', '', '152-渠道费率均为0时，预报单中有数据', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1033', '15709', 'Critical', 'Urgent', '152 【自有渠道】订单，改价列表信息展示错误', '唐浩然', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1034', '15708', 'Major', '', '152-设置费率页面，下拉框展示错误', '王佳', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1035', '15707', 'Major', '', '改价审批页面点击审批通过后页面无反应', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1036', '15706', 'Major', '', '散拼订单申请改价页面中原始应收价和当前应收价显示...', '姚翠娟', 'Closed', '宗战奎', '已修复', '2016-09-07', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1037', '15705', 'Critical', '', '152-报名时，单价显示错误', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1038', '15704', 'Critical', 'Urgent', '152-guangxixinganxian-产品币种非人民币时，渠道代...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1039', '15703', 'Critical', '', '152 批发商费率设置和产品对门市设置费率页面翻页插...', '郭庭昊', 'Closed', '童乐雯', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1040', '15702', 'Critical', 'Urgent', '152 【自有渠道】订单，改价页面价格展示错误', '唐浩然', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1041', '15701', 'Critical', 'Urgent', '152-guangxixinganxian-报名-添加其它费用-渠道服务...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1042', '15700', 'Critical', 'Urgent', '152-guangxixinganxian-报名-散拼-单价不正确', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1043', '15699', 'Critical', 'Urgent', '142环境，金旅牛途，定价策略设置框显示错位。', '李瑞雪', 'Closed', '高丽娟', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1044', '15698', 'Critical', '', '验证对团期批量设置费率&对渠道批量填写费率', '郭庭昊', 'Closed', '李鑫', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1045', '15697', 'Critical', 'Urgent', '转团操作对订单结算价的影响', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1046', '15696', 'Critical', '', '验证设置费率页面筛选项取值', '郭庭昊', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1047', '15695', 'Major', '', '152 设置费率页面逐一点击下属门店，弹出层不会消失', '王一朋', 'Closed', '张潮', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1048', '15694', 'Critical', '', '验证费率管理页面筛选项取值', '郭庭昊', 'Closed', '李鑫', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1049', '15693', 'Critical', '', '152 设置默认费率字段可删除及滚动条', '郭庭昊', '郭庭昊', '徐玉东', '推迟', '2016-09-06', 'Resolved');
INSERT INTO `t_buginfo` VALUES ('1050', '15692', 'Critical', '', '验证QUAUQ产品费率设置规则', '郭庭昊', 'Closed', '徐玉东', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1051', '15691', 'Critical', '', '验证渠道策略列表搜索有效&页面排版', '郭庭昊', 'Closed', '徐玉东', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1052', '15690', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-渠道代收服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1053', '15689', 'Major', '', '152 费率设置页面样式存在问题', '王一朋', 'Closed', '张潮', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1054', '15688', 'Critical', 'High', '152，总社费率设置为金额时，多币种其他费用应将金额按...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1055', '15687', 'Major', 'Medium', '152，,费率重设后订单详情页单价金额显示错误', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1056', '15686', 'Critical', '', '152，散拼报名其他费用为美元时结算价计算错误', '张瑞琦', 'Closed', '张瑞琦', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1057', '15685', 'Critical', 'Urgent', '152 批量设置渠道相关费率，点击批量填写无效', '唐浩然', 'Closed', '李鑫', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1058', '15684', 'Critical', 'Urgent', '152-guangxixinganxian-报名-添加其它费用-服务费错...', '杨纯', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1059', '15683', 'Major', '', '152 销售机票订单借款页面样式混乱', '王一朋', 'Closed', '刘涛', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1060', '15682', 'Major', 'High', '152 渠道设置费率，可用右键粘贴输入特殊字符；输入2...', '唐浩然', 'Closed', '李鑫', '无法重现', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1061', '15681', 'Critical', '', '152-自由行订单，申请发票和申请收据，页面报500', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1062', '15680', 'Critical', 'Urgent', '137-test-admin-报名-报错', '杨纯', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1063', '15679', 'Major', 'High', '152，订单-【改价】页面改后应收总计显示错误', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1064', '15678', 'Critical', '', 'T2-订单【quauq渠道】-收据申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1065', '15677', 'Critical', '', 'T2-订单【quauq渠道】-发票申请金额取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1066', '15676', 'Critical', '', 'T2-订单【quauq渠道】-退团、退款页面中结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1067', '15675', 'Critical', 'High', '152，申请改价后改价费用没有计入结算价', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1068', '15674', 'Major', '', '152-机票产品申请切位上传收款凭证后，在切位订单详...', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1069', '15673', 'Critical', '', 'T2-订单【quauq渠道】-转团、转款操做后结算价取值', '郭庭昊', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1070', '15672', 'Critical', 'Urgent', '152-guangxixinganxian-运控-预报单-缺少渠道服务费...', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1071', '15671', 'Critical', 'High', '152，T2-散拼订单【改价】页面数据取值错误', '张瑞琦', 'Closed', '宗战奎', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1072', '15670', 'Critical', 'Urgent', '152 费率管理页面，出发城市、目的地、抵达城市排序...', '唐浩然', 'Closed', '李鑫', '不需要修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1073', '15669', 'Major', '', '137环境，预报单锁定后，人数列为空', '姚翠娟', 'Closed', '刘世军', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1074', '15668', 'Critical', '', 'T2-订单-【quauq渠道】结算价查看-详情页面', '郭庭昊', 'Closed', '白亚昆', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1075', '15667', 'Critical', '', '152-改价记录详情页面，订单团号和销售显示为空', '王佳', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1076', '15666', 'Critical', 'High', '152，改价未经过审批，改价数据也出现在其他费用中', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1077', '15665', 'Critical', 'Urgent', '152，改价审批提示信息错误，无法审批', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1078', '15664', 'Critical', 'Urgent', '152 产品QUAUQ费率，输入文本框不允许输入的数据，可用...', '唐浩然', 'Closed', '徐玉东', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1079', '15663', 'Critical', '', '152 ie 进行改价，添加金额之后不能保存', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1080', '15662', 'Critical', 'High', '152，,订单-【改价】功能修改-添加弹出框编辑框字符...', '张瑞琦', 'Closed', '宗战奎', '不需要修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1081', '15661', 'Critical', '', '152 改价当前应收价错误', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1082', '15660', 'Critical', '', '152-无法报名', '王佳', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1083', '15659', 'Critical', '', '152环境，报名散拼产品显示保存失败', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1084', '15658', 'Critical', 'Urgent', '152 QUAUQ渠道散拼订单改价页，单价币种展示错误', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1085', '15657', 'Critical', 'Urgent', '152-testadmin1-运控-预报单-无法锁定', '杨纯', 'Closed', '刘世军', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1086', '15656', 'Critical', 'Urgent', '152 申请改价通过后，订单总额不变', '唐浩然', 'Closed', '白亚昆', '已修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1087', '15655', 'Critical', '', '改价详情中取值仍不正确', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1088', '15654', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】结算价查看-转团页面、转款页...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1089', '15653', 'Critical', 'Urgent', '152，设置渠道费率后，预定单价仍然按照批发商默认费率...', '张瑞琦', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1090', '15652', 'Critical', '', '152 改价添加多币种', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-02', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1091', '15651', 'Critical', '', '152-批发商费率修改失败', '王佳', 'Closed', '徐玉东', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1092', '15650', 'Major', '', '设置渠道费率后生成订单，预报单/结算单中不显示代收服...', '姚翠娟', 'Closed', '刘世军', '不需要修复', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1093', '15649', 'Critical', '', '152-团期费率管理中，找不相应数据', '王佳', 'Closed', '李鑫', '不需要修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1094', '15648', 'Major', '', '152环境，添加其他费用后，预报单/结算单中代收服务...', '姚翠娟', 'Closed', '白亚昆', '已修复', '2016-09-05', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1095', '15647', 'Major', 'High', '152，交易服务费统计已缴费为0时，显示错误', '张瑞琦', 'Closed', '刘涛', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1096', '15646', 'Critical', 'High', '152，服务费统计页面交易服务费取值错误', '张瑞琦', 'Closed', '白亚昆', '待产品确认', '2016-09-06', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1097', '15645', 'Critical', '', '改价总计那里需要与原型一致', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1098', '15644', 'Critical', 'Urgent', 'T2-订单【quauq渠道】-结算价取值 其他费用为负值时...', '王子正', 'Closed', '白亚昆', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1099', '15643', 'Critical', '', '152 改价 改后应收价的价格明细悬浮框消失', '郭庭昊', 'Closed', '宗战奎', '已修复', '2016-09-01', 'Closed');
INSERT INTO `t_buginfo` VALUES ('1100', '15642', 'Critical', 'Urgent', 'T2-订单-【quauq渠道】修改订单后结算价取值', '王子正', 'Closed', '白亚昆', '不需要修复', '2016-09-01', 'Closed');

-- ----------------------------
-- Table structure for `t_case`
-- ----------------------------
DROP TABLE IF EXISTS `t_case`;
CREATE TABLE `t_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL COMMENT '相当于case文件夹',
  `userId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `insertTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case
-- ----------------------------
INSERT INTO `t_case` VALUES ('1', '课程添加', '课程添加', '4', '1', '1', null, '2017-03-31 09:33:10', '2017-03-31 09:33:10');
INSERT INTO `t_case` VALUES ('3', 'test', 'test', '4', null, '1', null, null, null);

-- ----------------------------
-- Table structure for `t_casedata`
-- ----------------------------
DROP TABLE IF EXISTS `t_casedata`;
CREATE TABLE `t_casedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataValue` varchar(255) DEFAULT NULL,
  `dataMapId` int(11) DEFAULT NULL,
  `caseScriptId` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_casedata
-- ----------------------------

-- ----------------------------
-- Table structure for `t_casescript`
-- ----------------------------
DROP TABLE IF EXISTS `t_casescript`;
CREATE TABLE `t_casescript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `scriptId` int(11) DEFAULT NULL,
  `baseCaseId` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_casescript
-- ----------------------------
INSERT INTO `t_casescript` VALUES ('1', '后台登录', '后台登录', '1', '1', '1', '104');
INSERT INTO `t_casescript` VALUES ('2', '培训资源菜单', '培训资源菜单', '4', '1', '2', '104');
INSERT INTO `t_casescript` VALUES ('3', '课程添加', '课程添加', '5', '1', '4', '104');
INSERT INTO `t_casescript` VALUES ('4', '组织机构选择', '组织机构选择', '6', '1', '3', '104');
INSERT INTO `t_casescript` VALUES ('5', '后台退出', '后台退出', '7', '1', '5', '104');
INSERT INTO `t_casescript` VALUES ('6', '后台登录', '后台登录', '1', '2', '1', '104');
INSERT INTO `t_casescript` VALUES ('7', '培训资源菜单', '培训资源菜单', '4', '2', '2', '104');
INSERT INTO `t_casescript` VALUES ('8', '组织机构选择', '组织机构选择', '6', '2', '3', '104');
INSERT INTO `t_casescript` VALUES ('9', 'test', 'test', '3', '10', '2', null);

-- ----------------------------
-- Table structure for `t_computer`
-- ----------------------------
DROP TABLE IF EXISTS `t_computer`;
CREATE TABLE `t_computer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_computer
-- ----------------------------
INSERT INTO `t_computer` VALUES ('1', 'test', '192.168.189.136', 'ubuntu', '123456', null, '1');

-- ----------------------------
-- Table structure for `t_datamap`
-- ----------------------------
DROP TABLE IF EXISTS `t_datamap`;
CREATE TABLE `t_datamap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dataMapKey` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `scriptId` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_datamap
-- ----------------------------
INSERT INTO `t_datamap` VALUES ('1', 'test', 'test', '1', '2', '0');
INSERT INTO `t_datamap` VALUES ('2', 'a', null, '1', '2', '0');
INSERT INTO `t_datamap` VALUES ('3', 'test', 'test', '1', '2', '0');
INSERT INTO `t_datamap` VALUES ('4', 'a', 'a', '1', '3', '1');
INSERT INTO `t_datamap` VALUES ('5', 'b', 'b', '1', '3', '2');
INSERT INTO `t_datamap` VALUES ('6', 'c', 'c', '1', '3', '3');

-- ----------------------------
-- Table structure for `t_group`
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `parentGroupId` int(11) DEFAULT NULL,
  `insertUser` int(11) DEFAULT NULL,
  `updateUser` int(11) DEFAULT NULL,
  `insertTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('1', '产品', 'CP', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('2', '报名', 'BM', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('3', '共通', 'GT', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('4', '单团产品', 'DTCP', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('5', '散拼产品', 'SPCP', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('6', '运控', 'YK', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('7', '财务', 'CW', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('8', '审批', 'AP', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('9', '订单', 'OR', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('10', '单团订单', 'DTDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('11', 'Menu', 'Menu', '1', '3', null, null, null, null);
INSERT INTO `t_group` VALUES ('12', '登入登出', 'DL', '1', '3', null, null, null, null);
INSERT INTO `t_group` VALUES ('13', '游学产品', 'YXCP', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('14', '单团报名', 'DTBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('15', '支付', 'ZF', '1', '3', null, null, null, null);
INSERT INTO `t_group` VALUES ('16', '散拼报名', 'SPBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('17', '库存切位散拼', null, '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('18', '散拼订单', 'SPDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('19', '散拼切位订单', null, '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('20', '渠道', null, '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('21', '价格策略', null, '1', '20', null, null, null, null);
INSERT INTO `t_group` VALUES ('24', '游轮产品', 'YL', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('29', '大客户产品', 'DKH', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('30', '自由行产品', 'ZYX', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('31', '机票产品', 'JP', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('32', '测试', 'CS', '5', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('33', '练习', 'LX', '5', '32', null, null, null, null);
INSERT INTO `t_group` VALUES ('34', '团期类', 'TQ', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('35', '签证类', 'QZ', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('36', '订单', 'Order', '2', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('37', '订单列表', 'OrderList', '2', '36', null, null, null, null);
INSERT INTO `t_group` VALUES ('39', '共通', 'HRGT', '2', '38', null, null, null, null);
INSERT INTO `t_group` VALUES ('40', '签证产品', 'QZCP', '1', '1', null, null, null, null);
INSERT INTO `t_group` VALUES ('41', '游轮报名', 'YLBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('42', '游学报名', 'YXBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('43', '大客户报名', 'DKHBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('44', '自由行报名', 'ZYXBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('45', '产品', 'HQCP', '6', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('46', '单团产品', 'HQDTCP', '6', '45', null, null, null, null);
INSERT INTO `t_group` VALUES ('47', '游学订单', 'YXDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('48', '自由行订单', 'ZYXDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('49', '游轮订单', 'YLDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('50', '游学产品', 'HQXYXCP', '6', '45', null, null, null, null);
INSERT INTO `t_group` VALUES ('51', '产品', 'YYJQCP', '9', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('52', '报名', 'YYJQBM', '9', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('53', '共通', 'YYJQGT', '9', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('54', '大客户订单', 'DKHDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('55', '单团产品', 'YYJQDYCP', '9', '51', null, null, null, null);
INSERT INTO `t_group` VALUES ('56', '单团报名', 'YYJQDTBM', '9', '52', null, null, null, null);
INSERT INTO `t_group` VALUES ('57', '签证订单', 'QZDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('58', 'Common', 'CO', '1', '3', null, null, null, null);
INSERT INTO `t_group` VALUES ('59', '签证报名', 'QZBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('60', '单团成本录入', 'DTCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('61', '团期类运控', 'TQLCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('62', '游学成本录入', 'YXCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('63', '自由行成本录入', 'ZYXCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('64', '大客户成本录入', 'DKHCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('65', '游轮成本录入', 'YLCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('66', '散拼成本录入', 'SPCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('67', '机票成本录入', 'JPCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('68', '签证成本录入', 'QZCBLR', '1', '6', null, null, null, null);
INSERT INTO `t_group` VALUES ('69', '改价审批', 'GJSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('70', '退团审批', 'TTSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('71', '返佣审批', 'FYSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('72', '实际成本审批', 'SJCBSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('73', '成本付款审批', 'CBFKSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('75', '退款审批', 'TKSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('76', '转团审批', 'ZTSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('77', '借款审批', 'JKSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('78', '机票报名', 'JPBM', '1', '2', null, null, null, null);
INSERT INTO `t_group` VALUES ('79', '销售机票订单', 'XSJPDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('80', '计调机票订单', 'JDJPDD', '1', '9', null, null, null, null);
INSERT INTO `t_group` VALUES ('81', '返佣付款', 'FYFK', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('82', '借款付款', 'JKFK', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('83', '预算成本审批', 'YSCBSP', '1', '8', null, null, null, null);
INSERT INTO `t_group` VALUES ('86', '团队管理', 'TDGL', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('87', '结算管理', 'JSGL', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('88', '交易查询', 'JYCX', '1', '7', null, null, null, null);
INSERT INTO `t_group` VALUES ('93', 'QUAUQ后台', 'QUAUQBACK', '1', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('94', '交易明细', 'JYMX', '1', '93', null, null, null, null);
INSERT INTO `t_group` VALUES ('95', 'test', 'test', '2', '36', null, null, null, null);
INSERT INTO `t_group` VALUES ('97', '登入登出', 'LoginInOut', '4', '96', null, null, null, null);
INSERT INTO `t_group` VALUES ('98', '培训资源', 'PXZY', '4', '-1', null, null, null, null);
INSERT INTO `t_group` VALUES ('99', '课程管理', 'KCGL', '4', '98', null, null, null, null);
INSERT INTO `t_group` VALUES ('100', '菜单', 'MENU', '4', '96', null, null, null, null);
INSERT INTO `t_group` VALUES ('101', '组织机构选择', 'ZZJGXZ', '4', '96', null, null, null, null);
INSERT INTO `t_group` VALUES ('102', '试卷管理', 'SJGL', '4', '98', null, null, null, null);
INSERT INTO `t_group` VALUES ('103', '试题管理', 'STGL', '4', '98', null, null, null, null);

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(32) DEFAULT NULL COMMENT '权限名',
  `sign` varchar(128) DEFAULT NULL COMMENT '权限标识,程序中判断使用,如"user:create"',
  `description` varchar(256) DEFAULT NULL COMMENT '权限描述,UI界面显示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '用户新增', 'user:create', null);

-- ----------------------------
-- Table structure for `t_project`
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insertUser` int(11) DEFAULT NULL,
  `updateUser` int(11) DEFAULT NULL,
  `insertTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('4', '体彩项目', 'TCXM', '1', '1', '2017-03-30 14:47:27', '2017-03-30 14:47:27');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(32) DEFAULT NULL COMMENT '角色名',
  `sign` varchar(128) DEFAULT NULL COMMENT '角色标识,程序中判断使用,如"admin"',
  `description` varchar(256) DEFAULT NULL COMMENT '角色描述,UI界面显示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', 'admin', '管理员');
INSERT INTO `t_role` VALUES ('2', '超级管理员', 'super_admin', '超级管理员');
INSERT INTO `t_role` VALUES ('3', '值班人', 'watcher', '每周管理人员');
INSERT INTO `t_role` VALUES ('4', '普通人', 'worker', '工作人员');

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `roleId` bigint(20) unsigned DEFAULT NULL COMMENT '角色id',
  `permissionId` bigint(20) unsigned DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='角色与权限关联表';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `t_script`
-- ----------------------------
DROP TABLE IF EXISTS `t_script`;
CREATE TABLE `t_script` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `selfCategory` int(11) DEFAULT NULL COMMENT '接口和数据库各自的类型',
  `returnCategory` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `insertUser` int(11) DEFAULT NULL,
  `updateUser` int(11) DEFAULT NULL,
  `insertTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_script
-- ----------------------------
INSERT INTO `t_script` VALUES ('3', 'test', 'test', 'test', '1', '1', null, '99', '4', null, null, null, null);
INSERT INTO `t_script` VALUES ('4', 'test', 'test', 'test', '1', '1', null, '99', '4', null, null, null, null);

-- ----------------------------
-- Table structure for `t_task`
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES ('1', '值班人', '每周公务员');
INSERT INTO `t_task` VALUES ('2', '发版人', '正常发版');
INSERT INTO `t_task` VALUES ('3', '紧急代发人', '可代替发版人发版');

-- ----------------------------
-- Table structure for `t_task_day`
-- ----------------------------
DROP TABLE IF EXISTS `t_task_day`;
CREATE TABLE `t_task_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_task_day
-- ----------------------------
INSERT INTO `t_task_day` VALUES ('1', '周一', '1.与上周值班人交接相关事情');
INSERT INTO `t_task_day` VALUES ('2', '周一', '2.明确本周部门内相关人对应职责');
INSERT INTO `t_task_day` VALUES ('3', '周一', '3.查看Bugfree中本轮次Bug是否修复完毕');
INSERT INTO `t_task_day` VALUES ('4', '周一', '4.在Bug修复完毕后，发送需求验收邮件');
INSERT INTO `t_task_day` VALUES ('5', '周一', '5.督促各部门验收，以验收完毕邮件为准');
INSERT INTO `t_task_day` VALUES ('6', '周一', '6.安排下轮需求用例外审');
INSERT INTO `t_task_day` VALUES ('7', '周一', '7.跟进本轮次需求上线工作');
INSERT INTO `t_task_day` VALUES ('8', '周一', '8.发送冒烟测试用例邮件');
INSERT INTO `t_task_day` VALUES ('9', '周一', '9.若是142出现Bug，明确原因，开发解决后，需跟进测试');
INSERT INTO `t_task_day` VALUES ('25', '周二', '1.查看开发是否已进行冒烟测试');
INSERT INTO `t_task_day` VALUES ('26', '周二', '2.查看本轮次上线需求是否可以开始测试，如不可以，时刻追踪');
INSERT INTO `t_task_day` VALUES ('27', '周二', '3.安排本轮次上线需求A轮测试');
INSERT INTO `t_task_day` VALUES ('28', '周二', '4.跟进需求测试进度');
INSERT INTO `t_task_day` VALUES ('29', '周二', '5.关注需求Bug处理程度，督促开发尽快解决');
INSERT INTO `t_task_day` VALUES ('30', '周二', '6.若是142出现Bug，明确原因，督促开发解决，确定Bug上线时间');
INSERT INTO `t_task_day` VALUES ('31', '周二', '7.根据需求影响范围和深度，可适当安排随机测试');
INSERT INTO `t_task_day` VALUES ('32', '周三', '1.确认Bug处理情况，督促处理');
INSERT INTO `t_task_day` VALUES ('33', '周三', '2.无阻断性Bug后，安排本轮次上线需求B轮测试');
INSERT INTO `t_task_day` VALUES ('34', '周三', '3.跟进需求测试进度');
INSERT INTO `t_task_day` VALUES ('35', '周三', '4.关注需求Bug处理程度，督促开发尽快解决');
INSERT INTO `t_task_day` VALUES ('36', '周三', '5.提醒开发进行137倒库');
INSERT INTO `t_task_day` VALUES ('37', '周三', '6.查看下轮上线需求，安排需求用例撰写');
INSERT INTO `t_task_day` VALUES ('38', '周三', '7.若是142出现Bug，明确原因，督促开发解决，确定Bug上线时间');
INSERT INTO `t_task_day` VALUES ('39', '周三', '8.根据需求影响范围和深度，可适当安排随机测试');
INSERT INTO `t_task_day` VALUES ('40', '周四', '1.确认152Bug全部处理，时刻督促开发');
INSERT INTO `t_task_day` VALUES ('41', '周四', '2.安排本轮次上线需求C轮测试');
INSERT INTO `t_task_day` VALUES ('42', '周四', '3.跟进需求测试进度');
INSERT INTO `t_task_day` VALUES ('43', '周四', '4.关注需求Bug处理程度，督促开发尽快解决');
INSERT INTO `t_task_day` VALUES ('44', '周四', '5.向开发追问是否有新增下轮上线需求，跟进需求用例撰写情况');
INSERT INTO `t_task_day` VALUES ('45', '周四', '6.若是142出现Bug，明确原因，督促开发解决，确定Bug上线时间');
INSERT INTO `t_task_day` VALUES ('46', '周四', '7.根据需求影响范围和深度，可适当安排随机测试');
INSERT INTO `t_task_day` VALUES ('47', '周五', '1.跟进Bug处理情况，时刻督促');
INSERT INTO `t_task_day` VALUES ('48', '周五', '2.安排本轮次137随机测试');
INSERT INTO `t_task_day` VALUES ('49', '周五', '3.关注需求Bug处理程度，督促开发尽快解决');
INSERT INTO `t_task_day` VALUES ('50', '周五', '4.向开发追问是否有新增下轮上线需求，跟进需求用例撰写情况');
INSERT INTO `t_task_day` VALUES ('51', '周五', '5.若是142出现Bug，明确原因，督促开发解决，确定Bug上线时间');
INSERT INTO `t_task_day` VALUES ('52', '周五', '6.根据需求影响范围和深度，可适当安排随机测试');
INSERT INTO `t_task_day` VALUES ('53', '周五', '7.安排测试部周例会');
INSERT INTO `t_task_day` VALUES ('54', '周五', '8.安排需求用例内审');
INSERT INTO `t_task_day` VALUES ('55', null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `realName` varchar(50) DEFAULT 'jack',
  `password` char(64) DEFAULT NULL COMMENT '密码',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `OnDuty` tinyint(1) DEFAULT NULL,
  `Emergency` tinyint(1) DEFAULT NULL,
  `Release` tinyint(1) DEFAULT NULL,
  `AttendTheMeeting` tinyint(1) DEFAULT NULL,
  `MeetingTheRecorder` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', null, '123456', null, '2014-07-17 12:59:08', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('2', 'super_admin', 'jack', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', null, '2016-11-09 18:30:27', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('3', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('4', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('5', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('6', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('7', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('8', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('9', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('10', 'wangyp', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('11', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('12', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('13', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('14', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('15', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('16', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('17', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('18', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('19', 'admin1', 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('20', 'wangzzh', 'wzz', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', null, '2016-11-10 16:10:59', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('21', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('22', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('23', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('24', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('25', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('26', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('27', null, 'jack', null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('28', 'q', 'jack', 'b', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `userId` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  `roleId` bigint(20) unsigned DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户与角色关联表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
