/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/10/8 20:44:10                           */
/*==============================================================*/


drop table if exists appoint_dr_patient;

drop table if exists appoint_store_insp;

drop table if exists bd_area_region;

drop table if exists bd_banner;

drop table if exists bd_business_region;

drop table if exists bd_company_dept;

drop table if exists bd_company_logistics;

drop table if exists bd_dict_type;

drop table if exists bd_dict_value;

drop table if exists bd_health_calendar;

drop table if exists bd_hospital_dept;

drop table if exists bd_org;

drop table if exists bd_service_activity;

drop table if exists bd_service_config;

drop table if exists bd_service_price;

drop table if exists bd_supplier;

drop table if exists coupon_activated;

drop table if exists coupon_activity;

drop table if exists coupon_info;

drop table if exists coupon_limit;

drop table if exists coupon_pkg;

drop table if exists coupon_pkg_d;

drop table if exists coupon_pkg_extract;

drop table if exists coupon_sales_channel;

drop table if exists coupon_user_r;

drop table if exists doctor_audit_info;

drop table if exists doctor_info;

drop table if exists doctor_quick_reply;

drop table if exists doctor_service_config;

drop table if exists doctor_store_config;

drop table if exists drug_associate;

drop table if exists drug_lv1info;

drop table if exists drug_lv2info;

drop table if exists drug_picture;

drop table if exists drug_repertory;

drop table if exists drug_temp_info;

drop table if exists drug_update;

drop table if exists extension_doc_r;

drop table if exists extension_info;

drop table if exists inspect_dept;

drop table if exists inspect_item;

drop table if exists inspect_pkg;

drop table if exists inspect_pkg_item_r;

drop table if exists inspect_public_item;

drop table if exists medical_info_article;

drop table if exists medical_info_notice;

drop table if exists notice_msg;

drop table if exists order_consignee;

drop table if exists order_consultation_detail;

drop table if exists order_coupon;

drop table if exists order_drug_detail;

drop table if exists order_info;

drop table if exists order_inspect;

drop table if exists order_inspect_detail;

drop table if exists order_invoice;

drop table if exists order_logistics_details;

drop table if exists order_logistics_r;

drop table if exists order_other_detail;

drop table if exists order_pay;

drop table if exists order_refund_record;

drop table if exists order_vedio_detail;

drop table if exists patient_consignee;

drop table if exists patient_health_records;

drop table if exists patient_hr_attachment;

drop table if exists patient_hr_result;

drop table if exists patient_info;

drop table if exists patient_invoice;

drop table if exists patient_relation;

drop table if exists scheduling_dr;

drop table if exists scheduling_store;

drop table if exists store_info;

drop table if exists store_insp_pkg;

drop table if exists store_inspect_activity;

drop table if exists store_inspect_activity_d;

drop table if exists store_inspect_material;

drop table if exists store_inspect_pkg_g;

drop table if exists store_inspect_pkg_g_d;

drop table if exists store_inspect_spec_pkg;

drop table if exists store_inspect_spec_pkg_d;

drop table if exists store_inspect_spec_pkg_r;

drop table if exists store_rvt;

drop table if exists sys_file;

drop table if exists sys_user_action_log;

drop table if exists sys_user_status;

drop table if exists t_application;

drop table if exists t_organization;

drop table if exists t_permission;

drop table if exists t_role;

drop table if exists t_role_permission;

drop table if exists t_user;

drop table if exists t_user_application;

drop table if exists t_user_data;

drop table if exists t_user_permission;

drop table if exists t_user_role;

drop table if exists visit_consultation_queue;

drop table if exists visit_r_elect_cases;

drop table if exists visit_r_elect_inspect;

drop table if exists visit_r_elect_prescrip;

drop table if exists visit_r_elect_prescrip_d;

drop table if exists visit_record;

drop table if exists visit_video_queue;

/*==============================================================*/
/* Table: appoint_dr_patient                                    */
/*==============================================================*/
create table appoint_dr_patient
(
   id                   varchar(32) not null,
   userCode             varchar(32) comment '登录帐号',
   userName             varchar(50) comment '用户姓名',
   doctorSchedulingCode varchar(32) comment '医生排期信息表编码',
   serviceType          varchar(32) comment '服务类型',
   serviceCode          varchar(32) comment '服务编码',
   orderStatus          varchar(10) comment '订单状态',
   appointStartTime     varchar(16) comment '预约开始时间点',
   appointEndTime       varchar(16) comment '预约结束时间点',
   patientExpectTime    datetime comment '就诊时间',
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(255) comment '门店名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(255) comment '科室名称',
   status               varchar(10) comment '预约状态',
   appointOrderTime     varchar(32) comment '预约起始时间',
   isModification       varchar(10) comment '是否为改约',
   preAppointId         varchar(32) comment '原预约ID',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   version              varchar(20),
   primary key (id)
);

alter table appoint_dr_patient comment '患者预约表';

/*==============================================================*/
/* Table: appoint_store_insp                                    */
/*==============================================================*/
create table appoint_store_insp
(
   id                   varchar(32) not null comment 'id',
   code                 varchar(32) comment '专项检查预约编码',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   patientCode          varchar(32) comment '就诊人编码',
   patientName          varchar(50) comment '就诊人姓名',
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   inspectName          varchar(50) comment '专项检查名称',
   inspectCode          varchar(32) comment '专项检查编码',
   userDate1            date comment '预约日期1',
   userTime1            varchar(10) comment '预约时间段1',
   userDate2            date comment '预约日期2',
   userTime2            varchar(10) comment '预约时间段2',
   inspectTime          datetime comment '确认日期',
   appointTime          varchar(10) comment '确认时间段',
   isUpPresentation     char(1) comment '是否上传报告',
   orderCode            varchar(32) comment '订单编码',
   orderStatus          varchar(32) comment '订单状态',
   version              varchar(20),
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   primary key (id)
);

alter table appoint_store_insp comment '患者专项检查预约';

/*==============================================================*/
/* Table: bd_area_region                                        */
/*==============================================================*/
create table bd_area_region
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '编码',
   provinceCode         varchar(32) comment '省编码',
   provinceName         varchar(50) comment '省名称',
   cityCode             varchar(32) comment '市编码',
   cityName             varchar(50) comment '市名称',
   countyCode           varchar(32) comment '区县编码',
   countyName           varchar(50) comment '区县名称',
   level                int comment '层级',
   layerInfo            varchar(32) comment '层级信息',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table bd_area_region comment '地区区域信息管理';

/*==============================================================*/
/* Table: bd_banner                                             */
/*==============================================================*/
create table bd_banner
(
   id                   varchar(32) not null,
   bannerType           varchar(10) comment '类别',
   fileId               varchar(32) comment '文件ID',
   orderNumber          int comment '排序字段',
   fileType             varchar(10) comment '文件类型',
   remark               varchar(255) comment '备注',
   linkAddress          varchar(255) comment '链接地址',
   picAddress           varchar(255) comment '图片地址',
   isOpenLink           varchar(10) comment '链接开启状态 0否 1是',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_banner comment 'banner';

/*==============================================================*/
/* Table: bd_business_region                                    */
/*==============================================================*/
create table bd_business_region
(
   id                   varchar(32) not null,
   level                int comment '当前层级',
   lv1Code              varchar(32) comment '一级区域编码',
   lv1Name              varchar(50) comment '一级区域名称',
   lv2Code              varchar(32) comment '二级区域编码',
   lv2Name              varchar(50) comment '二级区域名称',
   layerLevel           varchar(32) comment '层级信息',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: bd_company_dept                                       */
/*==============================================================*/
create table bd_company_dept
(
   id                   varchar(32) not null,
   name                 varchar(50) comment '部门名称',
   code                 varchar(32) comment '部门编码',
   companyCode          varchar(32) comment '公司编码',
   deptEmail            varchar(32) comment '部门邮箱',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_company_dept comment '部门信息表';

/*==============================================================*/
/* Table: bd_company_logistics                                  */
/*==============================================================*/
create table bd_company_logistics
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '物流公司编码',
   name                 varchar(50) comment '公司名称',
   remark               varchar(255) comment '备注',
   description          varchar(255) comment '描述',
   address              varchar(255) comment '地址',
   phoneNumber          varchar(16) comment '联系电话',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_company_logistics comment '物流公司信息表';

/*==============================================================*/
/* Table: bd_dict_type                                          */
/*==============================================================*/
create table bd_dict_type
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '编码',
   name                 varchar(50) comment '名称',
   description          varchar(255) comment '描述',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_dict_type comment '数据字典类型表';

/*==============================================================*/
/* Table: bd_dict_value                                         */
/*==============================================================*/
create table bd_dict_value
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '编码',
   name                 varchar(50) comment '名称',
   typeCode             varchar(32) comment '类型编码',
   value                varchar(255) comment '值',
   parentCode           varchar(32) comment '父级编码',
   description          varchar(255) comment '描述',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_dict_value comment '数据字典表';

/*==============================================================*/
/* Table: bd_health_calendar                                    */
/*==============================================================*/
create table bd_health_calendar
(
   id                   varchar(32) not null comment 'id',
   coverPicId           varchar(32) comment '封面图片ID',
   contentPicId         varchar(32) comment '内容图片ID',
   publishTime          datetime comment '发布时间',
   createTime           datetime comment '创建时间',
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_health_calendar comment '大象健康日历';

/*==============================================================*/
/* Table: bd_hospital_dept                                      */
/*==============================================================*/
create table bd_hospital_dept
(
   id                   varchar(32) not null,
   level                int comment '当前层级',
   lv1Code              varchar(32) comment '一级科室编码',
   lv1Name              varchar(50) comment '一级科室名称',
   lv2Code              varchar(32) comment '二级科室编码',
   lv2Name              varchar(50) comment '二级科室名称',
   lv3Code              varchar(32) comment '三级科室编码',
   lv3Name              varchar(50) comment '三级科室名称',
   regulatoryCode       varchar(64) comment '监管编码',
   remark               varchar(255) comment '备注',
   layerLevel           varchar(32) comment '层级信息',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_hospital_dept comment '医疗科室表';

/*==============================================================*/
/* Table: bd_org                                                */
/*==============================================================*/
create table bd_org
(
   id                   varchar(32) not null,
   name                 varchar(255) comment '名称',
   code                 varchar(32) comment '编码',
   orgNature            varchar(10) comment '机构性质 1医院  2公司  3机构',
   orgCategory          varchar(10) comment '机构类别:3:(1.诊疗机构 2体检检查)',
   provinceCode         varchar(32) comment '省编码',
   provinceName         varchar(255) comment '省名称',
   cityCode             varchar(32) comment '市编码',
   cityName             varchar(255) comment '市名称',
   hospitalLevel        varchar(32) comment '医院等级编码',
   detailedAddress      varchar(255) comment '详细地址',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

/*==============================================================*/
/* Table: bd_service_activity                                   */
/*==============================================================*/
create table bd_service_activity
(
   id                   varchar(32) not null,
   serviceCategoryName  varchar(50) comment '服务类别名称(一级)',
   serviceCategoryCode  varchar(32) comment '服务类别编码(一级)',
   serviceName          varchar(50) comment '服务类型名称(二级)',
   serviceCode          varchar(32) comment '服务类型编码(二级)',
   startTime            datetime comment '生效日期',
   endTime              datetime comment '生效结束日期',
   price                decimal(10,2) comment '价格',
   takeEffectCount      varchar(10) comment '生效标识',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_service_activity comment '服务活动记录';

/*==============================================================*/
/* Table: bd_service_config                                     */
/*==============================================================*/
create table bd_service_config
(
   id                   varchar(32) not null,
   serviceCategoryCode  varchar(32) comment '服务类别编码(一级)',
   serviceCategoryName  varchar(50) comment '服务类别名称(一级)',
   serviceCode          varchar(32) comment '服务类型编码(二级)',
   serviceName          varchar(50) comment '服务类型名称(二级)',
   isDocCanConfig       varchar(10) comment '医生服务配置标识',
   serviceNoticeDesc    varchar(255) comment '用户服务须知',
   docReplyLimitCount   int comment '医生回复限制(条)',
   docSerTimeLength     varchar(10) comment '服务时长限制(小时)',
   isPrescription       varchar(10) comment '开处方标识',
   isInspect            varchar(10) comment '开检查标识',
   frequencyLimitCount  int comment '次数限制(次)',
   isCostMandatory      varchar(10) comment '费用必选标识',
   urgentCost1          decimal(10,2) comment '加急费用1',
   urgentCost2          decimal(10,2) comment '加急费用2',
   urgentCost3          decimal(10,2) comment '加急费用3',
   isDocApCanConfig     varchar(10) comment '医生服务配置标识2',
   isApCanConfig        varchar(10) comment '预约服务配置标识',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_service_config comment '医疗服务配置表';

/*==============================================================*/
/* Table: bd_service_price                                      */
/*==============================================================*/
create table bd_service_price
(
   id                   varchar(32) not null,
   serviceCategoryCode  varchar(32) comment '服务类别编码(一级)',
   serviceCategoryName  varchar(50) comment '服务类别名称(一级)',
   serviceCode          varchar(32) comment '服务类型编码(二级)',
   serviceName          varchar(50) comment '服务类型名称(二级)',
   platformUnifiedPrice decimal(10,2) comment '平台统一定价',
   activityPrice        decimal(10,2) comment '活动价格',
   platformPriceMin     decimal(10,2) comment '平台自主定价min',
   platformPriceMax     decimal(10,2) comment '平台自主价格max',
   platformFloatNumber  varchar(10) comment '平台上浮比例(%)',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_service_price comment '服务定价表';

/*==============================================================*/
/* Table: bd_supplier                                           */
/*==============================================================*/
create table bd_supplier
(
   id                   char(32) not null,
   name                 varchar(50) comment '供应商名称',
   code                 varchar(32) comment '供应商编码',
   typeCode             varchar(32) comment '供应商类型编码-字典',
   phoneNumber          varchar(16) comment '联系电话',
   address              varchar(255) comment '地址',
   providerUserCode     varchar(32) comment '供应商登录帐号',
   isAllowSplitOrder    varchar(10) comment '是否允许拆单 1是 2 否',
   weightType           varchar(10) comment '权重规则 1手动设置 2自动计算',
   weightSetupValue     int comment '手动权重值',
   weightAutoValue      int comment '自动权重值',
   weightUpdateFreq     int comment '更新频率,单位天',
   unifiedInterestRate  decimal(10,2) comment '统一利率',
   freightPrice         decimal(10,2) comment '运费价格',
   freeShippingPrice    decimal(10,2) comment '包邮价格',
   storageRangeStr      varchar(512) comment '仓储覆盖,省编码,逗号分隔字符串',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table bd_supplier comment '供应商信息表';

/*==============================================================*/
/* Table: coupon_activated                                      */
/*==============================================================*/
create table coupon_activated
(
   id                   varchar(32) not null,
   couponCardNum        varchar(32) comment '优惠券卡号',
   couponCardPwd        varchar(32) comment '优惠券卡密',
   pkgCode              varchar(32) comment '券码包编码',
   pkgName              varchar(50) comment '券码包名称',
   extractType          varchar(10) comment '提取类型(活动/提取)',
   extractBatchNum      varchar(32) comment '提取批次号',
   receiverIdCardNum    varchar(32) comment '接收人身份证',
   receiverName         varchar(50) comment '接收人姓名',
   receiverPhoneNum     varchar(16) comment '接收人手机号',
   activTime            datetime comment '激活时间',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table coupon_activated comment '优惠券券码激活表';

/*==============================================================*/
/* Table: coupon_activity                                       */
/*==============================================================*/
create table coupon_activity
(
   id                   varchar(32) not null,
   activityName         varchar(50) comment '活动名称',
   activityCode         varchar(32) comment '活动编码',
   pkgName              varchar(50) comment '券码包名称',
   pkgCode              varchar(32) comment '券码包编码',
   remark               varchar(255) comment '活动备注',
   channelCode          varchar(32) comment '营销渠道编码',
   channelName          varchar(50) comment '营销渠道名称',
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   totalCount           int comment '发放数量',
   receiveCount         int comment '已领取数量',
   registerCount        int comment '注册账号数量',
   qrCode               varchar(255) comment '二维码内容',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_activity comment '优惠券发放活动表';

/*==============================================================*/
/* Table: coupon_info                                           */
/*==============================================================*/
create table coupon_info
(
   id                   varchar(32) not null,
   couponType           varchar(10) comment '优惠券类型',
   couponCode           varchar(32) comment '优惠券编码',
   couponName           varchar(50) comment '优惠券名称',
   couponRule           varchar(255) comment '优惠券规则',
   remark               varchar(255) comment '优惠券备注',
   discount             decimal(10,2) comment '折扣',
   minUseAmounts        decimal(10,2) comment '最少使用金额',
   maxUseAmounts        decimal(10,2) comment '封顶使用金额',
   dailyFrequency       int comment '每天核销次数',
   costPrice            decimal(10,2) comment '优惠券成本',
   couponPic            varchar(32) comment '优惠券样式图片',
   usePathCode          varchar(32) comment '使用路径配置编码',
   usePathName          varchar(50) comment '使用路径配置名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_info comment '优惠券管理表';

/*==============================================================*/
/* Table: coupon_limit                                          */
/*==============================================================*/
create table coupon_limit
(
   id                   varchar(32) not null,
   couponCode           varchar(32) comment '优惠券编码',
   serviceCategoryCode  varchar(32) comment '限制服务类别编码',
   serviceCategoryName  varchar(50) comment '限制服务类别名称',
   serviceCode          varchar(32) comment '限制服务类型编码',
   serviceName          varchar(50) comment '限制服务类型名称',
   stores               longtext comment '限制门店',
   drugs                longtext comment '限制药品',
   inspects             longtext comment '限制专项检查',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_limit comment '优惠券限制信息表';

/*==============================================================*/
/* Table: coupon_pkg                                            */
/*==============================================================*/
create table coupon_pkg
(
   id                   varchar(32) not null,
   pkgName              varchar(50) comment '券码包名称',
   pkgCode              varchar(32) comment '券码包编码',
   batchNumber          varchar(32) comment '投放批次号',
   remark               varchar(255) comment '券码包备注',
   startTime            datetime comment '有效开始时间',
   endTime              datetime comment '有效结束时间',
   pkgCost              decimal(10,2) comment '券码包成本',
   totalCount           int comment '批次总数量',
   surplusCount         int comment '批次剩余量',
   usedCount            int comment '批次已使用量',
   picId                varchar(32) comment '图片',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_pkg comment '优惠券券包';

/*==============================================================*/
/* Table: coupon_pkg_d                                          */
/*==============================================================*/
create table coupon_pkg_d
(
   id                   varchar(32) not null,
   okgCode              varchar(32) comment '券包编码',
   couponCode           varchar(32) comment '优惠券编码',
   couponName           varchar(50) comment '优惠券名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_pkg_d comment '优惠券券包明细表';

/*==============================================================*/
/* Table: coupon_pkg_extract                                    */
/*==============================================================*/
create table coupon_pkg_extract
(
   id                   varchar(32) not null,
   pkgCode              varchar(32) comment '券码包编码',
   pkgName              varchar(50) comment '券码包名称',
   extractType          varchar(10) comment '提取类型',
   extractNumber        varchar(32) comment '提取批次号',
   extractCount         int comment '提取数量',
   extractTime          datetime comment '提取时间',
   channelCode          varchar(32) comment '渠道编码',
   channelName          varchar(50) comment '渠道名称',
   salesmanCode         varchar(32) comment '销售人员编码',
   salesmanName         varchar(50) comment '销售人员名称',
   receivePhoneNumber   varchar(16) comment '接收手机号码',
   isBindingPhone       varchar(10) comment '绑定激活手机标识',
   receiveEmail         varchar(128) comment '接收邮箱',
   extractContent       varchar(255) comment '提取内容',
   receiveUserCode      varchar(32) comment '接收用户编码',
   costPrice            decimal(10,2) comment '成本',
   sellingPrice         decimal(10,2) comment '销售价格',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_pkg_extract comment '券包销售提取记录表';

/*==============================================================*/
/* Table: coupon_sales_channel                                  */
/*==============================================================*/
create table coupon_sales_channel
(
   id                   varchar(32) not null,
   channelCode          varchar(32) comment '渠道编码',
   channelName          varchar(50) comment '渠道名称',
   companyCode          varchar(32) comment '公司编码',
   companyName          varchar(50) comment '公司名称',
   deptCode             varchar(32) comment '部门编码',
   deptName             varchar(50) comment '部门名称',
   email                varchar(128) comment '邮箱',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_sales_channel comment '优惠券券码营销渠道';

/*==============================================================*/
/* Table: coupon_user_r                                         */
/*==============================================================*/
create table coupon_user_r
(
   id                   varchar(32) not null,
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   pkgName              varchar(32) comment '券码包名称',
   pkgCode              varchar(32) comment '券码包编码',
   releaseBatchCode     varchar(32) comment '投放批次号',
   extractBatchCode     varchar(32) comment '提取批次号',
   userCouponCode       varchar(32) comment '用户优惠券编码',
   couponCardCode       varchar(32) comment '券码卡号',
   discount             decimal(10,2) comment '优惠折扣',
   activId              char(32) comment '优惠券激活记录ID',
   couponName           varchar(50) comment '优惠券明细名称',
   couponCode           varchar(32) comment '优惠券明细编码',
   couponTypeCode       varchar(32) comment '优惠券类型编码',
   couponTypeName       varchar(50) comment '优惠券类型名称',
   orderCode            varchar(32) comment '订单号',
   orderPrice           decimal(10,2) comment '订单金额',
   discountMoney        decimal(10,2) comment '优惠金额',
   orderTime            datetime comment '订单日期',
   createUserCode       varchar(32),
   createTime           datetime,
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table coupon_user_r comment '用户的优惠券表';

/*==============================================================*/
/* Table: doctor_audit_info                                     */
/*==============================================================*/
create table doctor_audit_info
(
   id                   varchar(32) not null comment 'id',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   idcdPosFileId        varchar(32) comment '身份证正面',
   idcdBackFileId       varchar(32) comment '身份证反面',
   lpc12Id              varchar(32) comment '执业医师证1-2页',
   lpc34Id              varchar(32) comment '执业医师证3-4页',
   pqc12Id              varchar(32) comment '医师资格证1-2页',
   pqc34Id              varchar(32) comment '医师资格证3-4页',
   ptc12Id              varchar(32) comment '职称资格证1-2页',
   ptc34Id              varchar(32) comment '职称资格证3-4页',
   mprfId               varchar(32) comment '多点执业备案表',
   signatureFileId      varchar(32) comment '电子签章',
   practitionerCode     varchar(32) comment '执业医生号',
   practitionerTime     datetime comment '执业医生号发证时间',
   pqcCode              varchar(32) comment '医师资格证号',
   pqcTime              datetime comment '医师资格证发证时间',
   docTitleCode         varchar(32) comment '医师职称证号',
   docTitleTime         datetime comment '医师职称证时间',
   institutionCode      varchar(32) comment '任职机构编号',
   institutionName      varchar(32) comment '任职机构名称',
   doctorNumber         varchar(32) comment '医生编号',
   commitTime           datetime comment '提交认证时间',
   auditCode            varchar(32) comment '审核人编码',
   auditName            varchar(50) comment '审核人姓名',
   auditResult          varchar(10) comment '认证审核结果',
   auditTime            datetime comment '认证审核时间',
   auditNpReason        varchar(255) comment '审核不通过原因',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table doctor_audit_info comment '医生审核信息记录';

/*==============================================================*/
/* Table: doctor_info                                           */
/*==============================================================*/
create table doctor_info
(
   id                   varchar(32) not null comment 'id',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   portraitFileId       varchar(32) comment '头像文件ID',
   sex                  varchar(10) comment '性别: 0.女 1.男 2.未知',
   registerTime         datetime comment '注册时间',
   registerSourceCode   varchar(32) comment '注册来源',
   idCardCode           varchar(32) comment '身份证号',
   orgCode              varchar(32) comment '医院机构编码',
   deptCode             varchar(32) comment '科室编码',
   doctorTitleCode      varchar(50) comment '职称',
   provinceCode         varchar(32) comment '省编码',
   cityCode             varchar(32) comment '市编码',
   countyCode           varchar(32) comment '县编码',
   detailedAddress      varchar(255) comment '详细地址',
   briefIntroduction    varchar(255) comment '简介',
   goodAt               varchar(255) comment '擅长',
   remark               varchar(255) comment '备注',
   bankName             varchar(255) comment '银行卡开户行,字符串',
   bankCardCode         varchar(32) comment '银行账号',
   backProvinceCode     varchar(32) comment '开户行省编码',
   bankCityCode         varchar(32) comment '开户行城市编码',
   recommendUserId      varchar(32) comment '推荐人ID',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table doctor_info comment '医生信息表';

/*==============================================================*/
/* Table: doctor_quick_reply                                    */
/*==============================================================*/
create table doctor_quick_reply
(
   id                   varchar(32) not null,
   doctorCode           varchar(32) comment '医生编码',
   content              varchar(255) comment '内容',
   remark               varchar(255) comment '备注',
   serviceCode          varchar(32) comment '服务编码',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table doctor_quick_reply comment '医生快捷回复语';

/*==============================================================*/
/* Table: doctor_service_config                                 */
/*==============================================================*/
create table doctor_service_config
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '记录编码',
   doctorCode           varchar(32) comment '医生编码',
   serviceCategoryName  varchar(50) comment '服务类别名称(一级)',
   serviceCategoryCode  varchar(32) comment '服务类别编码(一级)',
   serviceName          varchar(50) comment '服务类型名称(二级)',
   serviceCode          varchar(32) comment '服务类型编码(二级)',
   weightNumber         int comment '排序权重',
   priceModel           varchar(10) comment '定价模式',
   price                decimal(10,2) comment '价格',
   averageTimeCode      varchar(32) comment '接诊一位患者所需时长编码',
   averageTimeName      varchar(50) comment '接诊一位患者所需时长名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table doctor_service_config comment '医生服务配置';

/*==============================================================*/
/* Table: doctor_store_config                                   */
/*==============================================================*/
create table doctor_store_config
(
   id                   varchar(32) not null,
   doctorCode           varchar(32) comment '医生编码',
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   storeChargeName      varchar(50) comment '门店负责人',
   storeTelNumber       varchar(16) comment '门店固定电话',
   storeAddress         varchar(255) comment '门店地址',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table doctor_store_config comment '医生视频服务未关联门店列表';

/*==============================================================*/
/* Table: drug_associate                                        */
/*==============================================================*/
create table drug_associate
(
   id                   varchar(32) not null,
   approvalNumber       varchar(32) comment '批准文号',
   drugName             varchar(50) comment '药品名称',
   packingSpCode        varchar(50) comment '包装规格',
   merchantCode         varchar(32) comment '商户编码',
   merchantName         varchar(50) comment '商户名称',
   updateTime           datetime comment '更新时间',
   mDrugCode            varchar(32) comment '商户药品编码',
   createTime           datetime comment '创建时间',
   packingSpName        varchar(50) comment '包装规格名称',
   primary key (id)
);

/*==============================================================*/
/* Table: drug_lv1info                                          */
/*==============================================================*/
create table drug_lv1info
(
   id                   varchar(32) not null,
   oneDrugCode          varchar(50) comment '1级药品编码',
   genericName          varchar(50) comment '通用名称',
   dosageName           varchar(50) comment '剂型名称',
   packageSpecifications varchar(50) comment '包装规格',
   recipeType           varchar(32) comment '是否允许处方',
   createUserCode       varchar(32) comment '创建人编码',
   createUserName       varchar(50) comment '创建人姓名',
   createTime           datetime comment '创建时间',
   updateTime           datetime comment '更新时间',
   updateUserCode       varchar(32) comment '更新者编码',
   updateUserName       varchar(50) comment '更新者姓名',
   version              varchar(50) comment '版本',
   status               varchar(50) comment '状态',
   primary key (id)
);

alter table drug_lv1info comment '药品基本信息1级表';

/*==============================================================*/
/* Table: drug_lv2info                                          */
/*==============================================================*/
create table drug_lv2info
(
   id                   varchar(32) not null,
   approvalNumber       varchar(50) comment '批准文号',
   hierarchy            varchar(10) comment '层级1级/2级',
   oneDrugCode          varchar(32) comment '1级药品编码',
   twoDrugCode          varchar(32) comment '2级药品编码',
   brandeName           varchar(50) comment '品牌名称',
   dosage               varchar(32) comment '剂型编码',
   tradeName            varchar(50) comment '商品名称',
   factoryCode          varchar(50) comment '厂家名称',
   isPreDrug            varchar(32) comment '是否为处方药',
   referencePrice       decimal(10,2) comment '参考价格',
   drugCategory1        varchar(30) comment '药品分类1',
   drugCategory2        varchar(30) comment '药品分类2',
   drugCategory3        varchar(30) comment '药品分类3',
   daCode1              varchar(32) comment '药监编码1',
   daCode2              varchar(32) comment '药监编码2',
   daCode3              varchar(32) comment '药监编码3',
   drugName             varchar(50) comment '药品名称',
   refePrice            decimal(10,2) comment '参考价',
   productionArea       varchar(255) comment '产地',
   drugPictureId        varchar(255) comment '药品图片文件id',
   antibacteriaType     varchar(20) comment '是否抗菌药1',
   drugLabel1           varchar(50) comment '药品标签1',
   drugLabel2           varchar(50) comment '药品标签2',
   drugLabel3           varchar(50) comment '药品标签3',
   restrictionType      varchar(50) comment '限制类型',
   packingUnitCode      varchar(32) comment '包装单位编码',
   packkingUnitName     varchar(50) comment '包装单位名称',
   usageCode            varchar(32) comment '用法编码',
   useageName           varchar(50) comment '用法名称',
   useDrugFreCode       varchar(32) comment '用药频率编码',
   userDrugFreName      varchar(50) comment '用药频率名称',
   everyTimeDosage      varchar(20) comment '单次剂量编码',
   everyTimeDosageUnit  varchar(50) comment '单次剂量名称',
   doseUnitCode         varchar(20) comment '剂量单位编码',
   doseUnitName         varchar(50) comment '剂量单位名称',
   useDrugSum           varchar(32) comment '用药总量',
   totalUnitCode        varchar(20) comment '总量单位编码',
   totalUnitName        varchar(50) comment '总量单位名称',
   characterDesc        varchar(50) comment '性状',
   storageCondition     varchar(60) comment '储藏条件',
   dosageForm           varchar(50) comment '剂型',
   expiryDate           varchar(10) comment '有效期限',
   spec                 varchar(50) comment '规格',
   barCode              varchar(20) comment '条形码',
   ingredient           varchar(255) comment '药品成分',
   adverseReaction      varchar(255) comment '不良反应',
   effectCategory       varchar(50) comment '作用类别',
   taboo                varchar(255) comment '禁忌',
   indication           varchar(255) comment '适应症',
   precaution           varchar(255) comment '注意事项',
   genericFirstPinyin   varchar(20) comment '名称拼音首字母',
   genericPinyin        varchar(20) comment '名称拼音',
   genericMiniPinyin    varchar(20) comment '名称汉字拼音首字母',
   tradeNamePinyin      varchar(60) comment '商品名全拼',
   tradeNameMiniPinyin  varchar(20) comment '商品名拼音首字母',
   drugInteractions     varchar(60) comment '药物相互作用',
   functionIndication   varchar(255) comment '功能主治',
   pharmacologicalAction varchar(255) comment '药理作用',
   usageDosage          varchar(50) comment '用法用量',
   interaction          varchar(50) comment '相互作用',
   merchantDrugCode     varchar(50) comment '对应药品商户编码',
   waitUpdateTime       datetime comment '药品更新时间',
   downUpStatus         varchar(10) comment '上架,下架状态',
   createUserCode       varchar(32) comment '创建人编码',
   createUserName       varchar(50) comment '创建人姓名',
   createTime           datetime,
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table drug_lv2info comment '存储西药库中二级药品的数据
';

/*==============================================================*/
/* Table: drug_picture                                          */
/*==============================================================*/
create table drug_picture
(
   id                   varchar(32) not null,
   drugCode             varchar(32) comment '药品编码',
   fileType             varchar(32) comment '图片文件ID',
   createTime           datetime comment '创建时间',
   createUserCode       varchar(32) comment '创建者编码',
   createUserName       varchar(50) comment '创建者姓名',
   updateTime           datetime comment '更新时间',
   updateUserCode       varchar(32) comment '更新者编码',
   updateUserName       varchar(50) comment '更新者姓名',
   version              varchar(20) comment '版本',
   status               varchar(10) comment '状态',
   primary key (id)
);

alter table drug_picture comment '药品材料信息补充表';

/*==============================================================*/
/* Table: drug_repertory                                        */
/*==============================================================*/
create table drug_repertory
(
   id                   varchar(32) not null,
   drugCode             varchar(32) comment '药品编码',
   drugName             varchar(50) comment '药品名称',
   repertoryCount       int comment '库存数量',
   retailPrice          decimal(10,2) comment '零售价格',
   purchasePrice        decimal(10,2) comment '供货价格',
   providerCode         varchar(32) comment '商户编码',
   createUserName       varchar(50) comment '创建者姓名',
   createUserCode       varchar(32) comment '创建者编码',
   createTime           datetime comment '创建时间',
   updateTime           datetime comment '更新时间',
   updateUserCode       varchar(32) comment '更新者编码',
   updateUserName       varchar(50) comment '更新者姓名',
   version              varchar(10) comment '版本',
   status               varchar(10) comment '状态',
   remarks              varchar(50) comment '备注',
   primary key (id)
);

alter table drug_repertory comment '药品库库存信息表';

/*==============================================================*/
/* Table: drug_temp_info                                        */
/*==============================================================*/
create table drug_temp_info
(
   id                   varchar(32) not null,
   drugCode             varchar(32) comment '药品编码',
   approvalNumber       varchar(32) comment '批准文号',
   drugName             varchar(50) comment '药品名称',
   currencyName         varchar(50) comment '通用名',
   shopName             varchar(50) comment '商品名',
   brandName            varchar(50) comment '品牌名称',
   specifications       varchar(50) comment '规格',
   prescription         varchar(10) comment '是否处方',
   venderName           varchar(50) comment '厂家名称',
   adminDrugCode        varchar(32) comment '药监编码',
   barcode              varchar(32) comment '条形码',
   adminDrugClassify    varchar(50) comment '药监分类',
   dosageForm           varchar(50) comment '剂型',
   termOfValidity       varchar(10) comment '有效期',
   usageDosageCode      varchar(32) comment '用法用量编码',
   usageDosageName      varchar(50) comment '用法用量名称',
   indication           varchar(50) comment '适应症',
   drugComponent        varchar(50) comment '药品成分',
   characterDesc        varchar(50) comment '性状',
   adverseReactions     varchar(50) comment '不良反应',
   contraindication     varchar(255) comment '禁忌',
   mutualEffect         varchar(50) comment '相互作用',
   carefulMatter        varchar(255) comment '注意事项',
   muCoding             varchar(32) comment '计量单位编码',
   muName               varchar(50) comment '剂量单位名称',
   categoryAction       varchar(50) comment '作用类别',
   functions            varchar(50) comment '功能主治',
   pcAction             varchar(50) comment '药理作用',
   storeCondition       varchar(50) comment '储藏条件',
   packingSpCode        varchar(32) comment '包装规格编码',
   packingSpName        varchar(50) comment '包装规格名称',
   placeOrigin          varchar(50) comment '产地',
   merchantCode         varchar(32) comment '录入人所属商户编码',
   merchantName         varchar(50) comment '录入人所属商户名称',
   drugAuditStatus      varchar(50) comment '药品审核状态',
   auditorCode          varchar(32) comment '审核人编码',
   auditorName          varchar(50) comment '审核人名称',
   auditorOpinion       varchar(50) comment '审核人意见',
   auditorTime          datetime comment '审核时间',
   createTime           datetime comment '创建时间',
   createUserName       varchar(50) comment '创建者姓名',
   createUserCode       varchar(32) comment '创建者编码',
   updateTime           datetime comment '更新时间',
   updateUserName       varchar(50) comment '更新者姓名',
   updateUserCode       varchar(32) comment '更新者编码',
   status               varchar(10) comment '状态',
   version              varchar(20) comment '版本',
   primary key (id)
);

alter table drug_temp_info comment '商户药品信息录入表';

/*==============================================================*/
/* Table: drug_update                                           */
/*==============================================================*/
create table drug_update
(
   id                   varchar(32) not null,
   drugCode             varchar(32) comment '我方药品编码',
   approvalNumber       varchar(32) comment '批准文号',
   drugName             varchar(32) comment '药品名称',
   packingSpCode        varchar(32) comment '包装规格',
   vName                varchar(50) comment '供应商名称',
   mDrugName            varchar(32) comment '对方药品编码',
   mDrugTime            datetime comment '对方药品更新时间',
   vCode                varchar(32) comment '商户编码',
   createTime           datetime comment '创建时间',
   createUserName       varchar(32) comment '创建者姓名',
   createUserCode       varchar(32) comment '创建者编码',
   updateTime           datetime comment '更新时间',
   updateUserCode       varchar(32) comment '更新者编码',
   primary key (id)
);

/*==============================================================*/
/* Table: extension_doc_r                                       */
/*==============================================================*/
create table extension_doc_r
(
   id                   varchar(32) not null,
   extensionId          varchar(32) comment '代理商ID',
   extensionName        varchar(50) comment '代理商名称',
   doctorCode           varchar(32) comment '医生编码',
   createTime           datetime,
   status               varchar(10),
   primary key (id)
);

alter table extension_doc_r comment '推广人与注册医生账号关联表';

/*==============================================================*/
/* Table: extension_info                                        */
/*==============================================================*/
create table extension_info
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '代理商自定义ID',
   name                 varchar(50) comment '代理商名称',
   lv1RegionCode        varchar(32) comment '一级区域编码',
   lv1RegionName        varchar(50) comment '一级区域名称',
   lv2RegionCode        varchar(32) comment '二级区域编码',
   lv2RegionName        varchar(50) comment '二级区域名称',
   qrcodeContent        varchar(255) comment '二维码地址',
   totalRegistCount     int comment '累计注册数量',
   auditPassCount       int comment '审核通过数量',
   auditWaitCount       int comment '待审核数量',
   auditRefuseCount     int comment '未通过数量',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table extension_info comment '医生注册代理者信息';

/*==============================================================*/
/* Table: inspect_dept                                          */
/*==============================================================*/
create table inspect_dept
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '科室编码',
   name                 varchar(50) comment '科室名称',
   categoryCode         varchar(32) comment '品类编码',
   categoryName         varchar(50) comment '品类名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table inspect_dept comment '检查检验科室表';

/*==============================================================*/
/* Table: inspect_item                                          */
/*==============================================================*/
create table inspect_item
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '项目编码',
   name                 varchar(50) comment '项目名称',
   categoryCode         varchar(32) comment '品类编码',
   categoryName         varchar(50) comment '品类名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table inspect_item comment '检验检查项明细表';

/*==============================================================*/
/* Table: inspect_pkg                                           */
/*==============================================================*/
create table inspect_pkg
(
   id                   varchar(32) not null,
   name                 varchar(50) comment '组套名称',
   code                 varchar(32) comment '组套编码',
   categoryCode         varchar(32) comment '品类编码',
   categoryName         varchar(50) comment '品类名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   clinicalSignificance varchar(255) comment '临床意义',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table inspect_pkg comment '检验检查组套项目基本信息表';

/*==============================================================*/
/* Table: inspect_pkg_item_r                                    */
/*==============================================================*/
create table inspect_pkg_item_r
(
   id                   varchar(32) not null,
   pkgCode              varchar(32) comment '组套项目编码',
   publicSubItemCode    varchar(32) comment '公共子项编码',
   inspectItemCode      varchar(32) comment '明细项目编码',
   itemType             varchar(10) comment '项目类型',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table inspect_pkg_item_r comment '组套检查组套明细表';

/*==============================================================*/
/* Table: inspect_public_item                                   */
/*==============================================================*/
create table inspect_public_item
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '公共子项目编码',
   name                 varchar(50) comment '公共子项目名称',
   categoryCode         varchar(32) comment '品类编码',
   categoryName         varchar(50) comment '品类名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table inspect_public_item comment '检验检查公共子项表';

/*==============================================================*/
/* Table: medical_info_article                                  */
/*==============================================================*/
create table medical_info_article
(
   id                   varchar(32) not null,
   title                varchar(255) comment '标题',
   summary              varchar(255) comment '摘要',
   typeCode             varchar(32) comment '医疗信息类型名称',
   typeName             varchar(50) comment '医疗信息类型编码',
   fileTypeCode         varchar(32) comment '文件格式编码',
   fileTypeName         varchar(50) comment '文件格式名称',
   publishDept          varchar(50) comment '发布单位',
   publicTime           datetime comment '发布时间',
   content              longtext comment '文本内容',
   fileId               varchar(32) comment '文件ID',
   fileName             varchar(255) comment '文件名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table medical_info_article comment '医疗信息发布';

/*==============================================================*/
/* Table: medical_info_notice                                   */
/*==============================================================*/
create table medical_info_notice
(
   id                   varchar(32) not null,
   title                varchar(255) comment '标题',
   publishTime          datetime comment '发布时间',
   publishObjectCode    varchar(32) comment '发布对象编码',
   publishObjectName    varchar(50) comment '发布对象名称',
   content              longtext comment '内容',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table medical_info_notice comment '医疗公告发布
';

/*==============================================================*/
/* Table: notice_msg                                            */
/*==============================================================*/
create table notice_msg
(
   id                   varchar(32) not null comment 'id',
   msgTypeCode          varchar(32) comment '消息类型编码',
   msgTypeName          varchar(50) comment '消息类型名称',
   msgTime              datetime comment '消息时间',
   sendObjectType       varchar(10) comment '发送对象',
   pushTerminalCode     varchar(32) comment '推送端编码',
   pushTerminalName     varchar(50) comment '推送端名称',
   type                 varchar(10) comment '形式',
   content              varchar(255) comment '内容',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table notice_msg comment '消息通知管理';

/*==============================================================*/
/* Table: order_consignee                                       */
/*==============================================================*/
create table order_consignee
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   addresName           varchar(32) comment '收件人姓名',
   addresPhone          varchar(32) comment '收件人电话',
   addresTel            varchar(32) comment '收件人固话',
   provinceCode         varchar(32) comment '省，直辖市',
   cityCode             varchar(32) comment '市',
   countyCode           varchar(32) comment '县，区',
   detailAddres         varchar(32) comment '收件人详细地址',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_consignee comment '订单收货人信息表';

/*==============================================================*/
/* Table: order_consultation_detail                             */
/*==============================================================*/
create table order_consultation_detail
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   conditionDes         varchar(32) comment '病情描述',
   fileTabId            varchar(32) comment '文件表id',
   visitName            varchar(50) comment '就诊人',
   visitCode            varchar(50) comment '就诊人编码',
   sex                  varchar(32) comment '性别',
   age                  varchar(32) comment '年龄',
   cellPhone            varchar(32) comment '手机号',
   IdNumber             varchar(32) comment '身份证号',
   useDrug              varchar(32) comment '用药需求',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_consultation_detail comment '咨询订单信息表';

/*==============================================================*/
/* Table: order_coupon                                          */
/*==============================================================*/
create table order_coupon
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   couponCate           varchar(32) comment '优惠券类别',
   couponCode           varchar(32) comment '优惠券编码',
   couponName           varchar(50) comment '优惠券名称',
   couponAmount         decimal(10,2) comment '优惠券金额',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_coupon comment '订单优惠券码关联表';

/*==============================================================*/
/* Table: order_drug_detail                                     */
/*==============================================================*/
create table order_drug_detail
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编码',
   preNumber            varchar(32) comment '处方编号',
   drugName             varchar(50) comment '药品名称',
   drugCode             varchar(32) comment '药品编码',
   vName                varchar(50) comment '供应商名称',
   vCode                varchar(32) comment '供应商编码',
   spec                 varchar(32) comment '规格',
   mnumber              varchar(32) comment '数量',
   eachdose             varchar(32) comment '每次剂量',
   druguse              varchar(32) comment '药品用法',
   takingDay            varchar(32) comment '服用天数',
   remarks              varchar(32) comment '备注',
   drugAmount           decimal(10,2) comment '药品价格',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_drug_detail comment '药品订单信息表';

/*==============================================================*/
/* Table: order_info                                            */
/*==============================================================*/
create table order_info
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   serviceNumber        varchar(32) comment '服务编号',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   paymentAmount        decimal(10,2) comment '实付金额',
   store                varchar(32) comment '门店编码',
   preState             varchar(10) comment '处方状态',
   orderState           varchar(10) comment '订单状态',
   twoLevelState        varchar(10) comment '二级状态',
   remarks              varchar(255) comment '备注(100字以内)',
   ordergenraTime       datetime comment '订单生成时间',
   orderType            varchar(32) comment '订单类型：药品，咨询，检查，问诊',
   orderTypeCode        varchar(32) comment '订单类型编码',
   auditorCode          varchar(32) comment '审核人编码',
   auditorName          varchar(50) comment '审核人姓名',
   auditorState         varchar(10) comment '审核状态',
   auditStateTime       datetime comment '审核状态时间',
   checksName           varchar(50) comment '核对人姓名',
   checksCode           varchar(32) comment '核对人编码',
   amount               decimal(10,2) comment '总额',
   resetion             varchar(50) comment '科室名称',
   preAmount            decimal(10,2) comment '优惠金额',
   doctorName           varchar(50) comment '医生姓名',
   doctorCode           varchar(32) comment '医生编码',
   status               varchar(10) comment '状态',
   storeName            varchar(50) comment '门店名称',
   orderAmount          decimal(10,2) comment '订单金额',
   freight              decimal(10,2) comment '运费',
   sectionCode          varchar(32) comment '科室编码',
   serviceCode          varchar(32) comment '服务类型编码',
   serviceType          varchar(50) comment '服务类型名称',
   serviceId            varchar(32) comment '服务记录id',
   signature            varchar(32) comment '医生签章',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   primary key (id)
);

alter table order_info comment '订单信息表';

/*==============================================================*/
/* Table: order_inspect                                         */
/*==============================================================*/
create table order_inspect
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   checkNumber          varchar(32) comment '检查编号',
   checkTime            datetime comment '检查日期',
   checkName            varchar(50) comment '检查人姓名',
   checkCode            varchar(32) comment '检查人编号',
   dianotes1            varchar(255) comment '诊断说明1',
   dianotes2            varchar(255) comment '诊断说明2',
   dianotes3            varchar(255) comment '诊断说明3',
   reserStore           varchar(50) comment '预约门店',
   checkAge             varchar(32) comment '检查人年龄',
   checkSex             varchar(32) comment '检查人性别',
   checkCell            varchar(32) comment '检查人手机号',
   userCheckDate1       datetime comment '用户检查日期1',
   userCheckDate2       datetime comment '用户检查日期2',
   dianotes1Code        varchar(32) comment '诊断说明编码1',
   dianotes2Code        varchar(32) comment '诊断说明编码2',
   dianotes3Code        varchar(32) comment '诊断说明编码3',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_inspect comment '检查订单信息表';

/*==============================================================*/
/* Table: order_inspect_detail                                  */
/*==============================================================*/
create table order_inspect_detail
(
   id                   varchar(32) not null,
   checkType            varchar(32) comment '检查项类型',
   checkName            varchar(50) comment '检查项名称',
   checkCode            varchar(32) comment '检查项编码',
   checkMoney           decimal(10,2) comment '检查项目单价',
   checkCount           varchar(10) comment '检查项目数量',
   checkNumber          varchar(32) comment '检查编号',
   state                varchar(32) comment '备注',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(32),
   primary key (id)
);

alter table order_inspect_detail comment '订单详情检查项项目明细表';

/*==============================================================*/
/* Table: order_invoice                                         */
/*==============================================================*/
create table order_invoice
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   invoiceType          varchar(32) comment '发票类型:个人，企业',
   inName               varchar(50) comment '姓名',
   companyHead          varchar(32) comment '公司抬头',
   recoNumber           varchar(32) comment '纳税人识别号',
   isOpen               varchar(32) comment '是否开具',
   invoiceAmount        decimal(10,2) comment '发票金额',
   version              varchar(20),
   status               varchar(10),
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   primary key (id)
);

alter table order_invoice comment '订单发票信息表';

/*==============================================================*/
/* Table: order_logistics_details                               */
/*==============================================================*/
create table order_logistics_details
(
   id                   varchar(32) not null,
   courierNumber        varchar(32) comment '快递单号',
   currentTime          datetime comment '时间',
   details              varchar(255) comment '进度详情',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_logistics_details comment '用户通过问诊操作生成的订单详细数据';

/*==============================================================*/
/* Table: order_logistics_r                                     */
/*==============================================================*/
create table order_logistics_r
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   vName                varchar(50) comment '供应商名称',
   vCode                varchar(32) comment '供应商编码',
   logisticsName        varchar(50) comment '物流公司名称',
   logisticsCode        varchar(32) comment '物流公司编码',
   courierNumber        varchar(32) comment '快递单号',
   drugCode             varchar(32) comment '药品编码',
   drugName             varchar(50) comment '药品名称',
   dnumber              varchar(32) comment '数量',
   mstate               varchar(32),
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

/*==============================================================*/
/* Table: order_other_detail                                    */
/*==============================================================*/
create table order_other_detail
(
   id                   varchar(32) not null,
   orderNumber          varchar(32),
   pushNumber           varchar(32),
   pushId               varchar(32),
   tradeName            varchar(32),
   tradeCode            varchar(32),
   tradeAmount          decimal(10,2),
   freight              decimal(10,2),
   pushUser             varchar(32),
   orderState           varchar(32),
   reamarks             varchar(32),
   pushTime             datetime,
   unitPrice            decimal(10,2),
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_other_detail comment '其它类型订单信息表';

/*==============================================================*/
/* Table: order_pay                                             */
/*==============================================================*/
create table order_pay
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   paymentMethid        varchar(32) comment '支付方式',
   paymentAccount       varchar(32) comment '支付账号',
   paymentState         varchar(10) comment '支付状态',
   payAmount            decimal(10,2) comment '实付金额',
   payTime              datetime comment '支付时间',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_pay comment '订单支付信息表';

/*==============================================================*/
/* Table: order_refund_record                                   */
/*==============================================================*/
create table order_refund_record
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   refunds              varchar(32) comment '退款原因',
   orderAmount          decimal(10,2) comment '订单总额',
   payAmount            decimal(10,2) comment '实付金额',
   notAmount            decimal(10,2) comment '不退金额',
   refundAmount         decimal(10,2) comment '退款金额',
   refundState          varchar(10) comment '退款状态',
   refundUserCode       varchar(32) comment '退款申请人编码',
   refundUserName       varchar(32) comment '退款申请人姓名',
   refuseReason         varchar(32) comment '拒绝原因',
   refundAppTIme        datetime comment '退款申请时间',
   refundAuditTime      datetime comment '退款审核时间',
   orderType            varchar(32) comment '订单类型',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(32) comment '用户姓名',
   payCode              varchar(32) comment '支付方式',
   refundAuditCode      varchar(32) comment '退款审核人编码',
   refundAuditCodeName  varchar(32) comment '退款审核人姓名',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_refund_record comment '退款记录信息表';

/*==============================================================*/
/* Table: order_vedio_detail                                    */
/*==============================================================*/
create table order_vedio_detail
(
   id                   varchar(32) not null,
   orderNumber          varchar(32) comment '订单编号',
   patiNumber           varchar(32) comment '患者身份证号',
   patiName             varchar(50) comment '患者姓名',
   reservStore          varchar(32) comment '预约门店',
   resersection         varchar(32) comment '预约科室',
   serviceType          varchar(50) comment '服务类型名称',
   serviceTypeCode      varchar(32) comment '服务类型编码',
   appointRecId         varchar(32) comment '预约记录表id',
   reserDoctor          varchar(50) comment '预约医生',
   reserTime            datetime comment '预约就诊时间',
   reserAmount          decimal(10,2) comment '预约金额',
   thanksMoney          decimal(10,2) comment '感谢金',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table order_vedio_detail comment '问诊订单信息表';

/*==============================================================*/
/* Table: patient_consignee                                     */
/*==============================================================*/
create table patient_consignee
(
   id                   varchar(32) not null,
   addresName           varchar(32) comment '收件人姓名',
   addresPhone          varchar(32) comment '收件人电话',
   addresTel            varchar(32) comment '收件人固话',
   provinceCode         varchar(32) comment '省直辖市',
   cityCode             varchar(32) comment '市',
   countyCode           varchar(32) comment '县区',
   detailAddres         varchar(32) comment '收件人详细地址',
   isDef                varchar(10) comment '是否为默认',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_consignee comment '用户收货人信息表';

/*==============================================================*/
/* Table: patient_health_records                                */
/*==============================================================*/
create table patient_health_records
(
   id                   varchar(32) not null,
   recordCode           varchar(32) comment '档案编号',
   recordTypeCode       varchar(32) comment '健康档案类型',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   doctorTitleCode      varchar(32) comment '医生职称编码',
   doctorTitleName      varchar(50) comment '医生职称名称',
   hospitalCode         varchar(32) comment '医院编码',
   hospitalName         varchar(50) comment '医院名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   descriptioin         varchar(255) comment '描述',
   recordCreateType     varchar(10) comment '档案产生方式',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_health_records comment '健康档案记录表';

/*==============================================================*/
/* Table: patient_hr_attachment                                 */
/*==============================================================*/
create table patient_hr_attachment
(
   id                   varchar(32) not null,
   healthRecordId       varchar(32) comment '档案记录ID',
   fileId               varchar(32) comment '文件ID',
   fileName             varchar(255) comment '文件名',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_hr_attachment comment '健康档案附件表';

/*==============================================================*/
/* Table: patient_hr_result                                     */
/*==============================================================*/
create table patient_hr_result
(
   id                   varchar(32) not null comment 'id',
   healthReocrdId       varchar(32) comment '健康档案记录ID',
   diagnosisRecType     varchar(10) comment '诊断结果类型名称',
   diagnosisRecCode     varchar(32) comment '诊断结果记录编码',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_hr_result comment '健康档案诊断结果表';

/*==============================================================*/
/* Table: patient_info                                          */
/*==============================================================*/
create table patient_info
(
   id                   varchar(32) not null,
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   sex                  varchar(10) comment '性别: 0.女 1.男 2.未知',
   birthDate            date comment '出生日期',
   phoneNumber          varchar(15) comment '手机号',
   provinceCode         varchar(32) comment '省编码',
   cityCode             varchar(32) comment '县编码',
   countyCode           varchar(32) comment '县编码',
   detailedAddress      varchar(255) comment '详细地址',
   portraitFileId       varchar(32) comment '头像文件ID',
   registerSource       varchar(32) comment '注册来源',
   storeCode            varchar(32) comment '所属门店',
   registerTime         datetime comment '注册时间',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_info comment '患者基本信息表';

/*==============================================================*/
/* Table: patient_invoice                                       */
/*==============================================================*/
create table patient_invoice
(
   id                   varchar(32) not null,
   invoiceType          varchar(32) comment '发票类型',
   invoiceName          varchar(50) comment '发票名称',
   invoiceCode          varchar(32) comment '发票编码',
   invoiceContext       varchar(255) comment '发票内容',
   comHead              varchar(32) comment '公司抬头',
   taxpayer             varchar(32) comment '纳税人识别号',
   isInvoice            varchar(10) comment '是否需要发票',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_invoice comment '用户发票模板信息表';

/*==============================================================*/
/* Table: patient_relation                                      */
/*==============================================================*/
create table patient_relation
(
   id                   varchar(32) not null,
   userCode             varchar(32) comment '用户编码',
   recordCode           varchar(32) comment '档案编号',
   name                 varchar(50) comment '就诊人姓名',
   idCardNumber         varchar(32) comment '身份证号',
   relationshipCode     varchar(32) comment '与用户的关系',
   sex                  varchar(10) comment '性别: 0.女 1.男 2.未知',
   birthDate            date comment '出生日期',
   phoneNumber          varchar(16) comment '手机号码',
   isRealName           varchar(10) comment '是否实名制',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table patient_relation comment '患者就诊人列表';

/*==============================================================*/
/* Table: scheduling_dr                                         */
/*==============================================================*/
create table scheduling_dr
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '排期编码',
   serviceCode          varchar(32) comment '排期的服务类型编码(专普特)',
   serviceName          varchar(32) comment '排期的服务类型名称',
   status               varchar(10) comment '排期状态',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   schedulingDate       date comment '排期日期',
   startTime            varchar(16) comment '开始时间点',
   endTime              varchar(16) comment '结束时间点',
   cancelTime           datetime comment '取消排期时间',
   cacelUserCode        varchar(32) comment '取消排期操作人编码',
   cacelUserName        varchar(50) comment '取消排期操作人姓名',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   version              varchar(20),
   primary key (id)
);

alter table scheduling_dr comment '医生排期表';

/*==============================================================*/
/* Table: scheduling_store                                      */
/*==============================================================*/
create table scheduling_store
(
   id                   varchar(32) not null,
   storeCode            varchar(32) comment '门店编码',
   scheduleType         varchar(10) comment '档期添加类型(休息日,动态档期)',
   serviceCode          varchar(32) comment '休息日服务类型编码(检查,视频)',
   serviceName          varchar(50) comment '休息日服务类型名称(检查,视频)',
   startDate            date comment '档期开始时间',
   endDate              date comment '档期结束时间',
   appointMax           int comment '检查检验预约人数',
   description          varchar(255) comment '说明',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table scheduling_store comment '门店排期表';

/*==============================================================*/
/* Table: store_info                                            */
/*==============================================================*/
create table store_info
(
   id                   varchar(32) not null comment 'id',
   name                 varchar(50) comment '门店名称',
   code                 varchar(32) comment '门店编码',
   orgCode              varchar(32) comment '所属机构编码',
   orgName              varchar(50) comment '所属机构名称',
   orgTypeCode          varchar(32) comment '所属机构类型编码',
   orgTypeName          varchar(50) comment '所属机构类型名称',
   storeAttrCode        varchar(32) comment '门店属性编码',
   storeAttrName        varchar(50) comment '门店属性名称',
   chargePersonName     varchar(50) comment '负责人姓名',
   phoneNumber          varchar(16) comment '手机号码',
   detailedAddress      varchar(255) comment '门店详细地址',
   geographyLongitude   decimal(17,10) comment '门店地址经度',
   geographyLatitude    decimal(17,10) comment '门面地址纬度',
   storeUserCode        varchar(32) comment '门店账号',
   storeUserPassword    varchar(32) comment '门店密码',
   telAreaCode          varchar(16) comment '电话区号',
   telNumber            varchar(32) comment '电话号码',
   provinceCode         varchar(32) comment '门店地址省编码',
   cityCode             varchar(32) comment '门店地址市编码',
   buzArea1Code         varchar(32) comment '业务区域一级编码',
   buzArea2Code         varchar(32) comment '业务区域二级编码',
   inspectDiscount      varchar(16) comment '检查项结算折扣率',
   maxCountOfDay        int comment '检查项工作日最大预约人数',
   banner               varchar(32) comment '门店banner',
   pic1                 varchar(32) comment '门店照片1',
   pic2                 varchar(32) comment '门店照片2',
   pic3                 varchar(32) comment '门店照片3',
   pic4                 varchar(32) comment '门店照片4',
   medicalNoticeDesc    longtext comment '体检须知',
   workDays             varchar(255) comment '工作日,逗号分隔符',
   startTime1           varchar(16) comment '开始时间1',
   endTime1             varchar(16) comment '结束时间1',
   startTime2           varchar(16) comment '开始时间2',
   endTime2             varchar(16) comment '结束时间2',
   patientRegisterCode  varchar(255) comment '患者注册链接地址',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_info comment '门店store信息表';

/*==============================================================*/
/* Table: store_insp_pkg                                        */
/*==============================================================*/
create table store_insp_pkg
(
   id                   varchar(32) not null comment 'id',
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   categoryCode         varchar(32) comment '品类编码',
   categoryName         varchar(50) comment '品类名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   pkgType              varchar(10) comment '组套类型',
   itemCode             varchar(32) comment '检查检验项目类型-区分公共和明细表,公共项',
   itemName             varchar(50) comment '项目名称',
   storeItemCode        varchar(32) comment '门店项目编码',
   storeItemName        varchar(50) comment '门店项目名称',
   price                decimal(10,2) comment '门店项目价格',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_insp_pkg comment '门店组套表';

/*==============================================================*/
/* Table: store_inspect_activity                                */
/*==============================================================*/
create table store_inspect_activity
(
   id                   varchar(32) not null,
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   activityCode         varchar(32) comment '检查活动编码',
   activityName         varchar(50) comment '检查活动名称',
   activityStartTime    datetime comment '活动开始时间',
   activityEndTime      datetime comment '活动结束时间',
   discount             double(10,2) comment '折扣',
   auditCode1           varchar(32) comment '审核人编码1',
   auditName1           varchar(50) comment '审核人姓名1',
   auditStatus1         varchar(10) comment '审核状态1',
   auditDesc1           varchar(255) comment '审核意见1',
   auditTime1           datetime comment '审核时间1',
   auditTime2           datetime comment '审核时间2',
   auditDesc2           varchar(255) comment '审核意见2',
   auditStatus2         varchar(10) comment '审核状态2',
   auditCode2           varchar(32) comment '审核人编码2',
   auditName2           varchar(50) comment '审核人姓名2',
   useageStatus         varchar(10) comment '可用状态',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_activity comment '门店检查活动表';

/*==============================================================*/
/* Table: store_inspect_activity_d                              */
/*==============================================================*/
create table store_inspect_activity_d
(
   id                   varchar(32) not null,
   activityCode         varchar(32) comment '门店活动编码',
   categoryName         varchar(50) comment '项目类别名称',
   categoryCode         varchar(32) comment '项目类别编码',
   typeCode             varchar(10) comment '项目类型',
   itemName             varchar(50) comment '项目名称',
   itemCode             varchar(32) comment '项目编码',
   storeItemCode        varchar(32) comment '门店项目编码',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_activity_d comment '门店检查活动明细表';

/*==============================================================*/
/* Table: store_inspect_material                                */
/*==============================================================*/
create table store_inspect_material
(
   id                   varchar(32) not null,
   appointCode          varchar(32) comment '专项检查预约编码',
   fileId               varchar(32) comment '附件ID',
   fileName             varchar(50) comment '附件名称',
   fileType             varchar(10) comment '附件类型',
   status               varchar(10),
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   updateTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   createTime           datetime,
   version              varchar(20),
   primary key (id)
);

alter table store_inspect_material comment '专项检查报告表';

/*==============================================================*/
/* Table: store_inspect_pkg_g                                   */
/*==============================================================*/
create table store_inspect_pkg_g
(
   id                   varchar(32) not null,
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   name                 varchar(50) comment '组套包名称',
   code                 varchar(32) comment '组套包编码',
   lv1AuditUserName     varchar(50) comment '一级审核人姓名',
   lv1AuditUserCode     varchar(32) comment '一级审核人编码',
   lv1AuditDesc         varchar(255) comment '一级审核意见',
   lv1AuditStatus       varchar(10) comment '一级审核状态',
   lv1AuditTime         datetime comment '一级审核时间',
   lv2AuditUserName     varchar(50) comment '二级审核人姓名',
   lv2AuditUserCode     varchar(32) comment '二级审核人编码',
   lv2AuditDesc         varchar(255) comment '二级审核意见',
   lv2AuditStatus       varchar(10) comment '二级审核状态',
   lv2AuditTime         datetime comment '二级审核时间',
   submissionTime       datetime comment '提交申请时间',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_pkg_g comment '门店组套包';

/*==============================================================*/
/* Table: store_inspect_pkg_g_d                                 */
/*==============================================================*/
create table store_inspect_pkg_g_d
(
   id                   varchar(32) not null,
   pkgGroupCode         varchar(32) comment '门店组套包编码',
   pkgCode              varchar(32) comment '组套编码',
   defItemCode          varchar(50) comment '组套名称',
   storePkgCode         varchar(32) comment '门店组套编码',
   storePkgPrice        decimal(10,2) comment '门店组套价格',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_pkg_g_d comment '门店组套包明细';

/*==============================================================*/
/* Table: store_inspect_spec_pkg                                */
/*==============================================================*/
create table store_inspect_spec_pkg
(
   id                   varchar(32) not null,
   name                 varchar(50) comment '专项检查包名称',
   code                 varchar(32) comment '专项检查包编码',
   miniPicId            varchar(32) comment '缩略图',
   description          varchar(32) comment '项目简介',
   medicalNotice        varchar(32) comment '体检须知',
   pkgCount             varchar(32) comment '绑定组套数量',
   storeCount           varchar(32) comment '绑定门店数量',
   isOpen               varchar(32) comment '开启标识',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_spec_pkg comment '门店专项检查包';

/*==============================================================*/
/* Table: store_inspect_spec_pkg_d                              */
/*==============================================================*/
create table store_inspect_spec_pkg_d
(
   id                   varchar(32) not null,
   specialPkgCode       varchar(32) comment '专项检查包编码',
   pkgCode              varchar(32) comment '组套编码',
   pkgName              varchar(50) comment '组套名称',
   categoryCode         varchar(32) comment '品类编码',
   categoryName         varchar(50) comment '品类名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_spec_pkg_d comment '专门店项检查详情表';

/*==============================================================*/
/* Table: store_inspect_spec_pkg_r                              */
/*==============================================================*/
create table store_inspect_spec_pkg_r
(
   id                   varchar(32) not null,
   specialPkgCode       varchar(32) comment '专项检查包编码',
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   sellDiscount         double(3,2) comment '售价折扣',
   storeDiscountDesc    varchar(32) comment '门店折扣简述',
   description          varchar(255) comment '描述',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_inspect_spec_pkg_r comment '门店专项检查绑定表';

/*==============================================================*/
/* Table: store_rvt                                             */
/*==============================================================*/
create table store_rvt
(
   id                   varchar(32) not null,
   storeCode            varchar(32) comment '门店编码',
   storeName            varchar(50) comment '门店名称',
   recordTime           datetime comment '记录日期',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   userPhoneNo          varchar(16) comment '用户电话',
   diseaseCondition     varchar(255) comment '病症状况',
   yinYangCode          varchar(32) comment '阴性重阳编码',
   yinYangName          varchar(50) comment '阴性重阳名称',
   visitSituationCode   varchar(32) comment '到诊状况编码',
   visitSituationName   varchar(50) comment '到诊状况名称',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   visitDoctorCode      varchar(32) comment '就诊医生编码',
   visitDoctorName      varchar(50) comment '就诊医生名称',
   inspectDesc          varchar(255) comment '就诊描述',
   prescriptionDesc     varchar(255) comment '处方',
   pointView            varchar(255) comment '点诊',
   greenChannel         varchar(255) comment '绿通',
   inspectPrice         decimal(10,2) comment '检查金额',
   drugPrice            decimal(10,2) comment '处方药品金额',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table store_rvt comment '门店回访统计';

/*==============================================================*/
/* Table: sys_file                                              */
/*==============================================================*/
create table sys_file
(
   id                   varchar(32) not null,
   fileName             varchar(255) comment '上传文件名称',
   fileSuffix           varchar(255) comment '上传文件后缀',
   fileSize             bigint comment '文件大小',
   md5                  varchar(36) comment 'md5值',
   filePath             varchar(255) comment '文件地址',
   fileSourceType       varchar(10) comment '文件来源',
   modularType          varchar(10) comment '模块',
   status               varchar(10),
   createTime           datetime,
   createUserCode       varchar(32),
   createUserName       varchar(50),
   updateTime           datetime,
   updateUserCode       varchar(32),
   updateUserName       varchar(50),
   version              varchar(20),
   primary key (id)
);

alter table sys_file comment '文件记录';

/*==============================================================*/
/* Table: sys_user_action_log                                   */
/*==============================================================*/
create table sys_user_action_log
(
   id                   varchar(32) not null,
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   requestUrl           varchar(255) comment '请求路径',
   requestParam         varchar(255) comment '请求参数',
   requestMethodName    varchar(50) comment '请求方法',
   requestMethodParam   varchar(255) comment '方法参数',
   responseMsg          varchar(512) comment '响应信息',
   remark               varchar(255) comment '备注',
   createTime           datetime,
   status               varchar(10),
   primary key (id)
);

alter table sys_user_action_log comment '用户操作日志表';

/*==============================================================*/
/* Table: sys_user_status                                       */
/*==============================================================*/
create table sys_user_status
(
   id                   varchar(32) not null,
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   terminalType         varchar(32) comment '登录终端类型',
   loginTime            datetime comment '登录时间',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   version              varchar(20),
   status               varchar(10),
   primary key (id)
);

alter table sys_user_status comment '在线用户表';

/*==============================================================*/
/* Table: t_application                                         */
/*==============================================================*/
create table t_application
(
   id                   bigint not null,
   a_name               varchar(50),
   a_code               varchar(32),
   primary key (id)
);

alter table t_application comment '系统应用列表';

/*==============================================================*/
/* Table: t_organization                                        */
/*==============================================================*/
create table t_organization
(
   id                   bigint not null,
   o_name               varchar(50),
   o_identifier         varchar(32),
   o_parent_id          bigint,
   o_full_name          varchar(50),
   o_short_name         varchar(50),
   o_curr_name          varchar(50),
   o_type               varchar(32),
   o_location           varchar(50),
   o_remarks            varchar(255),
   primary key (id)
);

alter table t_organization comment 't_organization';

/*==============================================================*/
/* Table: t_permission                                          */
/*==============================================================*/
create table t_permission
(
   id                   bigint not null,
   p_name               varchar(50),
   p_code               varchar(32),
   p_app_id             bigint,
   p_parent_id          bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role
(
   id                   bigint not null,
   r_name               varchar(50),
   r_code               varchar(32),
   r_app_id             bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_role_permission                                     */
/*==============================================================*/
create table t_role_permission
(
   id                   bigint not null,
   rp_role_id           bigint,
   rp_permission_id     bigint,
   primary key (id)
);

alter table t_role_permission comment 't_role_permission';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   bigint not null,
   u_name               varchar(50),
   u_password           varchar(128),
   u_email              varchar(128),
   u_mobile             varchar(16),
   u_org_id             bigint,
   u_status             varchar(10),
   u_tokenlogin         tinyint,
   u_full_name          varchar(50),
   register_source_code varchar(32),
   u_type               varchar(10),
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_application                                    */
/*==============================================================*/
create table t_user_application
(
   id                   bigint not null,
   ua_user_id           bigint,
   ua_app_id            bigint,
   primary key (id)
);

alter table t_user_application comment 't_user_application';

/*==============================================================*/
/* Table: t_user_data                                           */
/*==============================================================*/
create table t_user_data
(
   id                   bigint not null,
   ud_user_id           bigint,
   ud_org_id            bigint,
   ud_app_id            bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_permission                                     */
/*==============================================================*/
create table t_user_permission
(
   id                   bigint not null,
   up_user_id           bigint,
   up_permission_id     bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_role                                           */
/*==============================================================*/
create table t_user_role
(
   id                   bigint not null,
   ur_user_id           bigint,
   ur_role_id           bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: visit_consultation_queue                              */
/*==============================================================*/
create table visit_consultation_queue
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '咨询编码',
   name                 varchar(10) comment '咨询类型名称',
   typeCode             varchar(32) comment '咨询类型编码',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   phoneNumber          varchar(16) comment '手机号',
   sex                  varchar(10) comment '性别',
   birthDate            datetime comment '生日',
   patientName          varchar(50) comment '就诊人姓名',
   patientCode          varchar(32) comment '就诊人编码',
   demandDesc           varchar(255) comment '需求描述',
   fileId11             varchar(32) comment '附件ID1_1',
   fileId12             varchar(32) comment '附件ID1_2',
   fileId13             varchar(32) comment '附件ID1_3',
   fileId14             varchar(32) comment '附件ID1_4',
   fileId21             varchar(32) comment '附件ID2_1',
   fileId22             varchar(32) comment '附件ID2_2',
   fileId23             varchar(32) comment '附件ID2_3',
   fileId24             varchar(32) comment '附件ID2_4',
   orderStatus          varchar(10) comment '订单状态',
   visitStatus          varchar(10) comment '接诊状态',
   visitStartTime       datetime comment '接诊开始时间',
   visitEndTime         datetime comment '接诊结束时间',
   endType              varchar(10) comment '接诊结束类型',
   diagnosisName3       varchar(50) comment '诊断名称3',
   diagnosisCode3       varchar(32) comment '诊断编码3',
   diagnosisName2       varchar(50) comment '诊断名称2',
   diagnosisCode2       varchar(32) comment '诊断编码2',
   diagnosisName1       varchar(50) comment '诊断名称1',
   diagnosisCode1       varchar(32) comment '诊断编码1',
   storeCode            varchar(32) comment '用户所选门店编码',
   storeName            varchar(50) comment '用户所选门店名称',
   isPrescriptioned     varchar(10) comment '是否产生处方',
   isInspected          varchar(10) comment '是否产生检查',
   isPrescriptionOrdered varchar(10) comment '是否处方下单',
   isInspectOrdered     varchar(10) comment '是否检查下单',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table visit_consultation_queue comment '图文咨询就诊服务表';

/*==============================================================*/
/* Table: visit_r_elect_cases                                   */
/*==============================================================*/
create table visit_r_elect_cases
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '病历编号',
   writeTime            datetime comment '病历书写时间',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   sercieCode           varchar(32) comment '服务类型编码',
   serviceName          varchar(50) comment '服务类型名称',
   vsitCode             varchar(32) comment '就诊记录编码',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   userSex              varchar(10) comment '用户性别',
   userBirthDate        date comment '用户生日',
   patientChiefComplaint varchar(512) comment '主诉',
   patientCurrentHis    varchar(512) comment '现病史',
   patientPastHis       varchar(512) comment '过往史',
   anaphylaxis          varchar(512) comment '过敏史',
   temperature          varchar(16) comment '体温(摄氏度)',
   heartRate            varchar(16) comment '心率(次分)',
   bloodPressure        varchar(16) comment '血压(mmHg)',
   bodyWeight           varchar(16) comment '体重(kg)',
   bloodOxygen          varchar(16) comment '血氧(百分比)',
   bloodSugar           varchar(16) comment '血糖(mmol H)',
   diagnosisCode1       varchar(32) comment '诊断编码1',
   diagnosisName1       varchar(50) comment '诊断名称1',
   diagnosisCode2       varchar(32) comment '诊断编码2',
   diagnosisName2       varchar(50) comment '诊断名称2',
   diagnosisCode3       varchar(32) comment '诊断编码3',
   diagnosisName3       varchar(50) comment '诊断名称3',
   doctorAdvance        varchar(512) comment '医生建议',
   doctorSignature      varchar(32) comment '医生签章',
   preId                varchar(32) comment '原病例ID',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   updateDesc           varchar(512),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table visit_r_elect_cases comment '电子病例';

/*==============================================================*/
/* Table: visit_r_elect_inspect                                 */
/*==============================================================*/
create table visit_r_elect_inspect
(
   id                   varchar(32) not null,
   visitId              varchar(32) comment '就诊记录表编码',
   visitTyoe            varchar(32) comment '就诊记录类型',
   inspectItemCode      varchar(32) comment '检验项目组编码',
   categoryCode         varchar(32) comment '项目品类编码',
   categoryName         varchar(50) comment '项目品类名称',
   typeCode             varchar(32) comment '项目类型编码',
   typeName             varchar(50) comment '项目类型名称',
   itemCode             varchar(32) comment '项目编码',
   itemName             varchar(50) comment '项目名称',
   countNumber          int comment '数量',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table visit_r_elect_inspect comment '就诊项目明细表';

/*==============================================================*/
/* Table: visit_r_elect_prescrip                                */
/*==============================================================*/
create table visit_r_elect_prescrip
(
   id                   varchar(32) not null,
   code                 varchar(32) comment '处方编码',
   prescriptionTime     datetime comment '开方时间',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(50) comment '用户姓名',
   userSex              varchar(10) comment '用户性别',
   userBirthDate        date comment '用户生日',
   deptCode             varchar(32) comment '科室编码',
   deptName             varchar(50) comment '科室名称',
   serviceName          varchar(50) comment '服务类型名称',
   serviceCode          varchar(32) comment '服务类型编码',
   visitCode            varchar(32) comment '就诊记录编码',
   diagnosisCode1       varchar(32) comment '诊断编码1',
   diagnosisName1       varchar(50) comment '诊断名称1',
   diagnosisCode2       varchar(32) comment '诊断编码2',
   diagnosisName2       varchar(50) comment '诊断名称2',
   diagnosisCode3       varchar(32) comment '诊断编码3',
   diagnosisName3       varchar(50) comment '诊断名称3',
   availableDay         int comment '有效期(天)',
   skinTestCode         varchar(32) comment '皮试',
   skinTestName         varchar(50) comment '皮试名称',
   orderStatus          varchar(10) comment '订单状态',
   doctorAdvance        varchar(255) comment '医嘱信息',
   auditCode            varchar(32) comment '审核人编码',
   auditName            varchar(50) comment '审核人姓名',
   auditTime            datetime comment '审核时间',
   auditStatus          varchar(10) comment '审核状态',
   preCode              varchar(32) comment '原处方编码',
   auditDesc            varchar(255) comment '审核人意见',
   returnReasonCode     varchar(32) comment '退回原因编码',
   returnReasonName     varchar(50) comment '退回原因名称',
   returnReasonDesc     varchar(255) comment '退回描述',
   doctorSignature      varchar(32) comment '医生签章',
   auditSignature       varchar(32) comment '审核人签章',
   checkName            varchar(50) comment '核对人姓名',
   checkCode            varchar(32) comment '核对人编码',
   checkTime            datetime comment '核对时间',
   checkSignature       varchar(32) comment '核对签章',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table visit_r_elect_prescrip comment '电子处方';

/*==============================================================*/
/* Table: visit_r_elect_prescrip_d                              */
/*==============================================================*/
create table visit_r_elect_prescrip_d
(
   id                   varchar(32) not null,
   prescritionCode      varchar(32) comment '处方编码',
   drugCode             varchar(32) comment '药品编码',
   drugName             varchar(50) comment '药品名称',
   eachDose             varchar(32) comment '每次剂量',
   eachDoseUnitCode     varchar(32) comment '每次剂量单位编码',
   eachDoseUnitName     varchar(50) comment '每次剂量单位名称',
   usageDesc            varchar(32) comment '用法',
   usageUnitCode        varchar(32) comment '用法单位编码',
   usageUnitName        varchar(50) comment '用法单位名称',
   drugTotal            int comment '总量',
   drugTotalUnitCode    varchar(32) comment '总量单位编码',
   drugTotalUnitName    varchar(50) comment '总量单位名称',
   days                 int comment '服用天数',
   description          varchar(255) comment '备注',
   drugDesc             varchar(255) comment '药品描述',
   antibioticsIndication varchar(255) comment '抗菌药指证',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table visit_r_elect_prescrip_d comment '电子处方药品表';

/*==============================================================*/
/* Table: visit_record                                          */
/*==============================================================*/
create table visit_record
(
   id                   varchar(32) not null,
   appiontCode          varchar(32) comment '预约表起始时间编码',
   code                 varchar(32) comment '编码',
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   userCode             varchar(32) comment '用户账号',
   userName             varchar(50) comment '用户姓名',
   vistStartTime        datetime comment '就诊开始时间',
   vistEndTime          datetime comment '就诊结束时间',
   vistStatus           varchar(10) comment '就诊状态',
   diagnosisName3       varchar(50) comment '诊断名称3',
   diagnosisCode3       varchar(32) comment '诊断编码3',
   diagnosisName2       varchar(50) comment '诊断名称2',
   diagnosisCode2       varchar(32) comment '诊断编码2',
   diagnosisName1       varchar(50) comment '诊断名称1',
   diagnosisCode1       varchar(32) comment '诊断编码1',
   isPrescriptioned     varchar(10) comment '开处方标识',
   isDrugsed            varchar(10) comment '购药标识',
   isInspected          varchar(10) comment '开检查标识',
   isPrescriptionOrdered varchar(10) comment '开处方下单标识',
   isDrugOrdered        varchar(10) comment '开药下单标识',
   isInspectOrdered     varchar(10) comment '开检查下单标识',
   orderdTime           datetime comment '下单时间',
   remark               varchar(255) comment '补充信息',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   status               varchar(10),
   version              varchar(20),
   primary key (id)
);

alter table visit_record comment '排期就诊记录表';

/*==============================================================*/
/* Table: visit_video_queue                                     */
/*==============================================================*/
create table visit_video_queue
(
   id                   varchar(32) not null,
   doctorCode           varchar(32) comment '医生编码',
   doctorName           varchar(50) comment '医生姓名',
   doctorStatus         varchar(10) comment '医生状态',
   userCode             varchar(32) comment '用户编码',
   userName             varchar(255) comment '用户姓名',
   userStatus           varchar(10) comment '用户状态',
   visitStatus          varchar(10) comment '诊室状态',
   appointId            varchar(32) comment '预约表ID',
   appointStartTime     datetime comment '预约开始时间',
   serviceType          varchar(255) comment '服务类型',
   appointTimeStr       varchar(16) comment '预约时间段',
   createTime           datetime,
   createUserName       varchar(50),
   createUserCode       varchar(32),
   updateTime           datetime,
   updateUserName       varchar(50),
   updateUserCode       varchar(32),
   version              varchar(20),
   primary key (id)
);

alter table visit_video_queue comment '排期就诊队列表';

