字段名称11111111111111111111 TDH字段类型  DEFAULT NULL COMMENT '字段'
##基础表-主体信息表(entity_info)
CREATE TABLE dsc_bas.entity_info(
    entityCode varchar DEFAULT NULL COMMENT '客户编码',
    entityName varchar DEFAULT NULL COMMENT '客户名称',
    entityShortName varchar DEFAULT NULL COMMENT '客户简称',
    industry varchar DEFAULT NULL COMMENT '所属行业（申万最明细行业）',
    majorBusiness varchar DEFAULT NULL COMMENT '主营业务',
    regAddress varchar DEFAULT NULL COMMENT '注册地',
    entityType varchar DEFAULT NULL COMMENT '主体类型',
    entityType2 varchar DEFAULT NULL COMMENT '客户类型',
    address varchar DEFAULT NULL COMMENT '企业地址',
    cusc varchar DEFAULT NULL COMMENT '统一社会信用代码',
    estDate varchar DEFAULT NULL COMMENT '成立日期',
    representative varchar DEFAULT NULL COMMENT '法人代表',
    regCapital double DEFAULT NULL COMMENT '注册资本金',
    phone varchar DEFAULT NULL COMMENT '公司电话',
    website varchar DEFAULT NULL COMMENT '公司网址',
    controller_e varchar DEFAULT NULL COMMENT '实际控制人（企业）',
    controller_m varchar DEFAULT NULL COMMENT '实际控制人（个人）',
    subCompany varchar DEFAULT NULL COMMENT '子公司',
    modelMaster varchar DEFAULT NULL COMMENT '模型敞口类别',
    rateInitiator varchar DEFAULT NULL COMMENT '评级发起人',
    rateInidate varchar DEFAULT NULL COMMENT '评级发起日期',
    region varchar DEFAULT NULL COMMENT '地区'
)
COMMENT '基础表-主体信息表'

##基础表-债券信息表（bond_info）
CREATE TABLE dsc_bas.bond_info(
bondFullName varchar DEFAULT NULL COMMENT '债券全称',
bondName varchar DEFAULT NULL COMMENT '债券简称',
ibCode varchar DEFAULT NULL COMMENT '债券编码',
bondCode varchar DEFAULT NULL COMMENT '债券代码',
bondType varchar DEFAULT NULL COMMENT '债券类型',
publisher varchar DEFAULT NULL COMMENT '发债主体',
guarantor varchar DEFAULT NULL COMMENT '担保人',
leadUnderwriter varchar DEFAULT NULL COMMENT '主承销商',
pubTotal varchar DEFAULT NULL COMMENT '发行总额（亿元）',
pubPrice double DEFAULT NULL COMMENT '发行价格（元/百元面值）',
faceValue double DEFAULT NULL COMMENT '面值（元）',
pubDate varchar DEFAULT NULL COMMENT '发行日',
recordDate varchar DEFAULT NULL COMMENT '登记日',
circulateDate varchar DEFAULT NULL COMMENT '流通日',
deadline int DEFAULT NULL COMMENT '期限',
endDate varchar DEFAULT NULL COMMENT '到期（兑付）日',
bondRate varchar DEFAULT NULL COMMENT '产品评级',
bondRateOrg varchar DEFAULT NULL COMMENT '产品评级机构',
calInterestMet varchar DEFAULT NULL COMMENT '计息方式',
yearInterRate double DEFAULT NULL COMMENT '票面年利率（%）',
interestFre varchar DEFAULT NULL COMMENT '付息频率',
valueDate varchar DEFAULT NULL COMMENT '起息日',
bondbalance decimal DEFAULT NULL COMMENT '债券余额',
status varchar DEFAULT NULL COMMENT '债券状态（1：正常，2：暂停，3：到期，4：违约，null-不预警）警）',
nextpaydt date DEFAULT NULL COMMENT '下一付息日',
ID int DEFAULT NULL COMMENT 'ID',
entityName varchar DEFAULT NULL COMMENT '主体名称',
relationEntityName varchar DEFAULT NULL COMMENT '关系主体/个人名字',
ratio decimal DEFAULT NULL COMMENT '比例',
relation varchar DEFAULT NULL COMMENT '关系( 1:股东 ,5:担保,7:实际控制人)',
ID int DEFAULT NULL COMMENT 'ID',
NAME varchar DEFAULT NULL COMMENT '名称',
VALUE varchar DEFAULT NULL COMMENT '值',
TYPE varchar DEFAULT NULL COMMENT '类型',
DESCRIPTION varchar DEFAULT NULL COMMENT '描述',
id bigint DEFAULT NULL COMMENT 'ID',
entityCode varchar DEFAULT NULL COMMENT '企业CODE',
gradeDate varchar DEFAULT NULL COMMENT '评级日期',
gradeOrg varchar DEFAULT NULL COMMENT '评级机构',
gradeResultValue varchar DEFAULT NULL COMMENT '评级结果',
type varchar DEFAULT NULL COMMENT '长期信用评级',
gradeForword varchar DEFAULT NULL COMMENT '评级展望',
ID bigint DEFAULT NULL COMMENT 'ID',
MASTER_ID varchar DEFAULT NULL COMMENT '敞口ID',
NAME varchar DEFAULT NULL COMMENT '敞口名称',
DESCRIPTION varchar DEFAULT NULL COMMENT '敞口描述',
ID bigint DEFAULT NULL COMMENT 'ID',
QUAN_ID varchar DEFAULT NULL COMMENT '指标ID',
NAME varchar DEFAULT NULL COMMENT '指标名称',
CODE varchar DEFAULT NULL COMMENT '指标对应CODE',
MODEL_TYPE varchar DEFAULT NULL COMMENT '是否入模（1入模；0非入模）',
DESCRIPTION varchar DEFAULT NULL COMMENT '指标描述',
MODEL_CODE varchar DEFAULT NULL COMMENT '敞口CODE',
ID bigint DEFAULT NULL COMMENT 'ID',
QUAL_ID varchar DEFAULT NULL COMMENT '指标ID',
NAME varchar DEFAULT NULL COMMENT '指标名称',
CODE varchar DEFAULT NULL COMMENT '指标对应CODE',
MODEL_TYPE varchar DEFAULT NULL COMMENT '是否入模（1入模；0非入模）',
DESCRIPTION varchar DEFAULT NULL COMMENT '指标描述',
MODEL_CODE varchar DEFAULT NULL COMMENT '敞口CODE',
ID bigint DEFAULT NULL COMMENT 'ID',
ADJUST_ID varchar DEFAULT NULL COMMENT '调整事项ID',
NAME varchar DEFAULT NULL COMMENT '调整事项',
ADJUST_TYPE varchar DEFAULT NULL COMMENT '调整事项分类',
DESCRIPTION varchar DEFAULT NULL COMMENT '描述',
ID bigint DEFAULT NULL COMMENT 'ID',
CODE varchar DEFAULT NULL COMMENT '科目CODE',
NAME varchar DEFAULT NULL COMMENT '科目名称',
TYPE varchar DEFAULT NULL COMMENT '所属财务报表（查看数据字典）',
FIN_DICT_YEAR varchar DEFAULT NULL COMMENT '当前财务科目的年份',
ID bigint DEFAULT NULL COMMENT 'ID',
ENTITY_CODE varchar DEFAULT NULL COMMENT '企业编码',
QUAN_ID varchar DEFAULT NULL COMMENT '定量指标ID',
QUAN_VALUE double DEFAULT NULL COMMENT '定量指标值',
QUAN_SCORE double DEFAULT NULL COMMENT '定量指标得分',
GRADE_ID varchar DEFAULT NULL COMMENT '对应评级结果ID',
DATA_YEAR varchar DEFAULT NULL COMMENT '数据年份',
ID bigint DEFAULT NULL COMMENT 'ID',
ENTITY_CODE varchar DEFAULT NULL COMMENT '企业编码',
QUAL_ID varchar DEFAULT NULL COMMENT '定性指标ID',
QUAL_VALUE double DEFAULT NULL COMMENT '定性指标档位',
QUAL_SCORE double DEFAULT NULL COMMENT '定性指标得分',
EVIDENCE text DEFAULT NULL COMMENT '定性指标evidence',
GRADE_ID varchar DEFAULT NULL COMMENT '对应评级结果ID',
DATA_YEAR varchar DEFAULT NULL COMMENT '数据年份',
ID bigint DEFAULT NULL COMMENT 'ID',
ENTITY_CODE varchar DEFAULT NULL COMMENT '企业编码',
FIN_DATE varchar DEFAULT NULL COMMENT '财报日期',
FIN_CODE varchar DEFAULT NULL COMMENT '科目代码',
FIN_VALUE varchar DEFAULT NULL COMMENT '科目值',
TIMESTAMP varchar DEFAULT NULL COMMENT '时间戳',
DATA_YEAR varchar DEFAULT NULL COMMENT '数据年份',
ID bigint DEFAULT NULL COMMENT 'ID',
ENTITY_CODE varchar DEFAULT NULL COMMENT '企业编码',
ADJUST_ID varchar DEFAULT NULL COMMENT '调整事项ID',
GRADE_ID varchar DEFAULT NULL COMMENT '对应评级结果ID',
ID bigint DEFAULT NULL COMMENT 'ID',
GRADE_ID varchar DEFAULT NULL COMMENT '评级结果ID',
ENTITY_CODE varchar DEFAULT NULL COMMENT '企业编码',
GRADE_RESULT varchar DEFAULT NULL COMMENT '评级结果（参见数据字典）',
MASTER_ID varchar DEFAULT NULL COMMENT '企业对应敞口ID',
DATE_YEAR varchar DEFAULT NULL COMMENT '评级数据日期',
GRADE_DATE date DEFAULT NULL COMMENT '评级日期',
ID bigint DEFAULT NULL COMMENT 'ID',
govCode varchar DEFAULT NULL COMMENT '政府编码',
pareGovCode varchar DEFAULT NULL COMMENT '上级政府编码',
govName varchar DEFAULT NULL COMMENT '政府名称',
govLevel int DEFAULT NULL COMMENT '政府级别（1：省，2：市；3：县）',
Grade_Result double DEFAULT NULL COMMENT '政府得分',
Date_year varchar DEFAULT NULL COMMENT '评级数据年份',
Grade_date date DEFAULT NULL COMMENT '评级日期',
CREATED date DEFAULT NULL COMMENT '创建时间',
UPDATED date DEFAULT NULL COMMENT '更新时间',
ID bigint DEFAULT NULL COMMENT 'ID',
qual_id varchar DEFAULT NULL COMMENT '指标ID',
name varchar DEFAULT NULL COMMENT '指标名称',
code varchar DEFAULT NULL COMMENT '指标对应code',
Model_type double DEFAULT NULL COMMENT '是否入模（1入模：0非入模）',
description varchar DEFAULT NULL COMMENT '指标描述',
timestamp varchar DEFAULT NULL COMMENT '时间戳',
Model_master varchar DEFAULT NULL COMMENT '政府',
CREATED date DEFAULT NULL COMMENT '创建时间',
UPDATED date DEFAULT NULL COMMENT '更新时间',
ID bigint DEFAULT NULL COMMENT 'ID',
gov_code varchar DEFAULT NULL COMMENT '地方政府编码',
Qual_id varchar DEFAULT NULL COMMENT '定性指标ID',
Qual_value double DEFAULT NULL COMMENT '定性指标值',
Qual_score double DEFAULT NULL COMMENT '定性指标得分',
evidence varchar DEFAULT NULL COMMENT '定性指标证据',
Grade_id varchar DEFAULT NULL COMMENT '对应评级结果ID',
Data_year varchar DEFAULT NULL COMMENT '数据年份',
CREATED date DEFAULT NULL COMMENT '创建时间',
UPDATED date DEFAULT NULL COMMENT '更新时间',
ID bigint DEFAULT NULL COMMENT 'ID',
gov_code varchar DEFAULT NULL COMMENT '地方政府编码',
Entity_code varchar DEFAULT NULL COMMENT '企业编码',
ID bigint DEFAULT NULL COMMENT 'ID',
ibCode varchar DEFAULT NULL COMMENT '债券编码',
warnScore double DEFAULT NULL COMMENT '预警分数',
warnLevel int DEFAULT NULL COMMENT '预警等级（参见数据字典）',
sigScore double DEFAULT NULL COMMENT '信用压力指数',
sigRanking int DEFAULT NULL COMMENT '信用压力指数排名',
sigRankingWeek int DEFAULT NULL COMMENT '一周排名变动',
sigRankingMonth int DEFAULT NULL COMMENT '一月排名变动',
closeingPriceMin double DEFAULT NULL COMMENT '成交价（最低）',
closeingPriceMax double DEFAULT NULL COMMENT '成交价（最高）',
warnDate date DEFAULT NULL COMMENT '预警日期',
ID bigint DEFAULT NULL COMMENT 'ID',
entityCode varchar DEFAULT NULL COMMENT '主体编码',
warnScore double DEFAULT NULL COMMENT '预警分数',
warnLevel int DEFAULT NULL COMMENT '预警等级（参见数据字典）',
sigScore double DEFAULT NULL COMMENT '信用压力指数',
sigRanking int DEFAULT NULL COMMENT '信用压力指数排名',
sigRankingWeek int DEFAULT NULL COMMENT '一周排名变动',
sigRankingMonth int DEFAULT NULL COMMENT '一月排名变动',
isHaveNews int DEFAULT NULL COMMENT '今日是否有负面舆情',
warnDate date DEFAULT NULL COMMENT '预警日期',
isMarketVolatility int DEFAULT NULL COMMENT '今日是否市场波动',
ID bigint DEFAULT NULL COMMENT 'ID',
newsTitle varchar DEFAULT NULL COMMENT '舆情标题',
newsUrl varchar DEFAULT NULL COMMENT '舆情链接',
newsType varchar DEFAULT NULL COMMENT '舆情类别',
newsDate varchar DEFAULT NULL COMMENT '舆情日期',
ID bigint DEFAULT NULL COMMENT 'ID',
newsId bigint DEFAULT NULL COMMENT '舆情ID',
newsContent text DEFAULT NULL COMMENT '舆情正文',
newsFile varchar DEFAULT NULL COMMENT '公告链接（可以内部）',
ID bigint DEFAULT NULL COMMENT 'ID',
newsId bigint DEFAULT NULL COMMENT '舆情ID',
newsTag1 varchar DEFAULT NULL COMMENT '负面舆情类型',
newsTag2 varchar DEFAULT NULL COMMENT '负面舆情表情',
ID bigint DEFAULT NULL COMMENT 'ID',
newsId bigint DEFAULT NULL COMMENT '舆情ID',
entityCode bigint DEFAULT NULL COMMENT '主体编码',
