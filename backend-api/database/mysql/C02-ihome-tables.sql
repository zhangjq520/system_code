SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

drop table if exists eshop_product_relation;

drop table if exists eshop_product_stock;

drop table if exists eshop_product_stock_txn;

drop table if exists eshop_category;

drop table if exists eshop_customer;

drop table if exists eshop_customer_address;

drop table if exists eshop_distribution_log;

drop table if exists eshop_withdrawal;

drop table if exists eshop_distributor;

drop table if exists eshop_order_detail;

drop table if exists eshop_order_master;

drop table if exists eshop_order_detail_cashback;

drop table if exists eshop_payment;

drop table if exists eshop_product;

drop table if exists eshop_product_category;

drop table if exists eshop_product_list;

drop table if exists eshop_review;

drop table if exists eshop_shipment;

drop table if exists eshop_shopping_cart;

drop table if exists eshop_store;

drop table if exists eshop_wishlist;

drop table if exists eshop_wishlist_item;

drop table if exists eshop_product_comment;


/*==============================================================*/
/* Table: eshop_category                                        */
/*==============================================================*/
create table eshop_category
(
   id                   integer not null auto_increment comment '编号',
   store_id             int comment '店铺编号',
   form_repmst_id       int not null default 0 comment 'Form Response Master ID',
   path                 varchar(255) not null comment 'Tree Path',
   position             int not null comment 'Position',
   level                int not null default 0 comment 'Tree Level',
   children_count       int not null comment 'Child Count',
   parent_category_id   int comment '上级目录编号',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_category comment '产品分类';

/*==============================================================*/
/* Table: eshop_customer                                        */
/*==============================================================*/
create table eshop_customer
(
   id                   integer not null auto_increment comment '编号',
   user_id              int comment '登录用户编号',
   personal_profile_id  int comment '个人信息编号',
   wechat_id            varchar(254) comment '微信号',
   store_id             int default 0 comment 'Store Id',
   default_billing_address int default null comment 'Default Billing Address',
   default_shipping_address int default null comment 'Default Shipping Address',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_customer comment '客户';

/*==============================================================*/
/* Table: eshop_customer_address                                */
/*==============================================================*/
create table eshop_customer_address
(
   id                   integer not null comment '编号',
   customer_id          int comment '客户编号',
   address_id           int comment '地址编号',
   is_active            bool not null default 1 comment 'Is Active',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

ALTER TABLE `eshop_customer_address`
MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '编号' FIRST ;

alter table eshop_customer_address comment '客户地址';

/*==============================================================*/
/* Table: eshop_distribution_log                                */
/*==============================================================*/
create table eshop_distribution_log
(
   id                   int not null auto_increment comment '编号',
   distributor_id       int comment '分销商编号',
   product_id           int comment '商品编号',
   shared_date          datetime comment '分销时间',
   shared_code          varchar(255) comment '枚举/UUID',
   push_money           float comment '返点/提成',
   success_count        int comment '分销数',
   total_amount         float comment '总返点',
   VERSION              int not null default 0 comment '版本号',
   CREATED_DTM          datetime not null comment '创建时间',
   CREATED_BY           int comment '创建人ID',
   LAST_MODIFIED_DTM    datetime comment '最近修改时间',
   LAST_MODIFIED_BY     int comment '最近修改人ID',
   DELETED              tinyint not null comment '删除标识',
   primary key (id)
);

/*==============================================================*/
/* Table: eshop_distributor                                     */
/*==============================================================*/
create table eshop_distributor
(
   id                   int not null auto_increment comment '编号',
   customer_id          int comment '客户编号',
   name                 varchar(20) comment '姓名',
   phone_number         varchar(11) comment '手机号',
   security_code        varchar(20) comment '验证码',
   ID_number            varchar(18) comment '身份证',
   profession           varchar(50) comment '职业',
   advantage            varchar(2000) comment '优势',
   commission           float comment '返点/提成',
   expired_date         datetime comment '期限',
   status               varchar(10) comment '状态：审核中、审核通过、审核失败、已过期',
   VERSION              int not null default 0 comment '版本号',
   CREATED_DTM          datetime not null comment '创建时间',
   CREATED_BY           int comment '创建人ID',
   LAST_MODIFIED_DTM    datetime comment '最近修改时间',
   LAST_MODIFIED_BY     int comment '最近修改人ID',
   DELETED              tinyint not null comment '删除标识',
   primary key (id)
);

/*==============================================================*/
/* Table: eshop_withdrawal                                      */
/*==============================================================*/
create table eshop_withdrawal
(
   id                   int not null auto_increment comment '编号',
   distributor_id       int comment '分销商编号',
   real_name            varchar(20) comment '真实姓名',
   contact_info         varchar(20) comment '联系方式',
   withdraw_way         varchar(20) comment '提款到',
   withdraw_accounts    varchar(30) comment '帐号id',
   amount               float comment '提现金额',
   withdraw_date        datetime comment '申请提现时间',
   status               varchar(10) comment '状态：申请中、提现成功、提现失败
            ',
   VERSION              int not null default 0 comment '版本号',
   CREATED_DTM          datetime not null comment '创建时间',
   CREATED_BY           int comment '创建人ID',
   LAST_MODIFIED_DTM    datetime comment '最近修改时间',
   LAST_MODIFIED_BY     int comment '最近修改人ID',
   DELETED              tinyint not null comment '删除标识',
   primary key (id)
);

alter table eshop_distribution_log add constraint FK_ref_distributor_log foreign key (distributor_id)
      references eshop_distributor (id) on delete restrict on update restrict;

alter table eshop_withdrawal add constraint FK_ref_distributor_withdrawal foreign key (distributor_id)
      references eshop_distributor (id) on delete restrict on update restrict;

/*==============================================================*/
/* Table: eshop_order_detail                                    */
/*==============================================================*/
create table eshop_order_detail
(
   id                   integer not null comment '订单详情编号',
   order_master_id      int comment '订单编号',
   product_id           int default null comment 'Product Id',
   sku                  varchar(255) default null comment 'Sku',
   product_atrbt_values text not null comment '所买产品的属性值串',
   store_id             int default null comment 'Store Id',
   is_virtual           bool default null comment 'Is Virtual',
   original_price       decimal(12,4) default null comment 'Original Price',
   price                decimal(12,4) not null default 0.0000 comment 'Price',
   base_original_price  decimal(12,4) default null comment 'Base Original Price',
   base_price           decimal(12,4) not null default 0.0000 comment 'Base Price',
   qty_ordered          decimal(12,4) default 0.0000 comment 'Qty Ordered',
   description          text comment 'Description',
   free_shipping        bool default null,
   discount_percent     decimal(12,4) default 0.0000 comment 'Discount Percent',
   discount_amount      decimal(12,4) default 0.0000 comment 'Discount Amount',
   shared_code          varchar(255) comment '枚举/UUID',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_order_detail comment '订单详情';
ALTER TABLE `eshop_order_detail`
MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情编号' FIRST ;


/*==============================================================*/
/* Table: eshop_order_master                                    */
/*==============================================================*/
create table eshop_order_master
(
   id                   integer not null auto_increment comment '编号',
   customer_id          int default null comment '购买人编号',
   store_id             int comment '店铺编号 ',
   store_name           varchar(100) default null comment '店铺名称',
   status               varchar(10) comment '订单状态',
   is_virtual           bool default null comment 'Is Virtual　(暂不使用)',
   coupon_code          varchar(255) default null comment '优惠券代号',
   discount             decimal(12,4) default null comment '折扣',
   currency_code        varchar(10) default null comment '币种',
   payment_method       varchar(25) default null comment '支付方式',
   weight               int default null comment '订单商品总重量单位：克',
   total_item_count     int not null default 0 comment '购买商品个数',
   billing_province     varchar(50) default null,
   billing_city         varchar(50),
   billing_street       varchar(200),
   billing_zip          varchar(10),
   shipping_province    varchar(32) default null comment '配送省份',
   shipping_city        varchar(50) comment '配送城市',
   shipping_street      varchar(50) comment '配送街道',
   shipping_zip         varchar(10) comment '配送地址邮政编码',
   consignee            varchar(100) comment '收货人',
   shipping_method      varchar(10) default null comment '配送方式(EMS, 圆通，中通，韵达，顺丰)',
   shipping_description varchar(500) default null comment '配送备注',
   shipping_total       decimal(6,2) comment '运费',
   product_total        decimal(12,4) comment '订单中所购买商品总金额',
   grand_total          decimal(12,4) default null comment '订单总金额',
   total_paid           decimal(12,4) default null comment '已付金额',
   total_refunded       decimal(12,4) default null comment 'Total Refunded',
   total_due            decimal(12,4) default null comment 'Total Due',
   customer_note        text comment '买家备注',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_order_master comment '订单主表';

ALTER TABLE `eshop_order_master`
ADD COLUMN `invoice_title`  varchar(255) NULL COMMENT '发票抬头' AFTER `total_item_count`;
ALTER TABLE `eshop_order_master`
ADD COLUMN `deposit_total`  decimal(12,4) NULL COMMENT '定金' AFTER `grand_total`;

/*==============================================================*/
/* Table: eshop_order_detail_cashback                           */
/*==============================================================*/
create table eshop_order_detail_cashback
(
   id                   int(11) not null auto_increment comment '编号',
   order_detail_id      int(11) comment '订单详情编号',
   cashback             decimal(10,2) comment '返现',
   primary key (id)
);

alter table eshop_order_detail_cashback comment '每个订单详情所对应的返点';

/*==============================================================*/
/* Table: eshop_payment                                         */
/*==============================================================*/
create table eshop_payment
(
   id                   integer not null auto_increment comment '编号',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_payment comment '支付记录';

/*==============================================================*/
/* Table: eshop_product                                         */
/*==============================================================*/
create table eshop_product
(
   id                   integer not null auto_increment comment '编号',
   store_id             int comment '店铺编号',
   form_repmst_id       int comment 'Form Response Master ID',
   product_type         varchar(10) not null default 'simple' comment '产品类型(Simple, Configurable, Virtual)',
   sku                  varchar(64) default null comment 'SKU',
   status               varchar(10) comment '产品状态：　未上架，已上架，已下架',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_product comment '产品';

/*==============================================================*/
/* Table: eshop_product_category                                */
/*==============================================================*/
create table eshop_product_category
(
   id                   integer not null auto_increment comment '编号',
   category_id  		int not null comment '产品目录编号',
   product_id           int not null comment '产品编号',
   position             int comment '位置排序',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_product_category comment '产品分类及产品关系';

/*==============================================================*/
/* Table: eshop_product_list                                    */
/*==============================================================*/
CREATE TABLE `eshop_product_list` (
   id                   	integer not null comment '编号',
   product_attribute_value	varchar(4000) COMMENT '产品属性的值',
   name						varchar(100) COMMENT '产品名称',
   cost_price				decimal(10,2) COMMENT '成本价',
   floor_price				decimal(10,2) COMMENT '最低限价',
   market_price				decimal(10,2) COMMENT '市场价',
   platform_price			decimal(10,2) COMMENT '平台价',
   down_payment				decimal(10,2) COMMENT '定金',
   currency					varchar(100) COMMENT '币种',
   qty						int COMMENT '库存',
   displayHomePage          bool not null comment '是否在首页显示' DEFAULT 0,
   isDefault          		bool not null comment '是否为默认产品' DEFAULT 0,
   base_image				int comment ' 基图',
   small_image				int comment '小图',
   thumbnail				int comment '缩略图',
   description				varchar(100) comment '产品描述',
   store_id             	int comment '店铺编号',
   product_type         	varchar(10) not null default 'simple' comment '产品类型(Simple, Configurable, Virtual)',
   sku						varchar(64) comment 'SKU',
   status               	varchar(10) comment '产品状态：　未上架，已上架，已下架',
   version              	int not null default 0 comment '版本号',
   created_dtm          	datetime not null comment '创建时间',
   created_by           	int comment '创建人ID',
   last_modified_dtm    	datetime comment '最近修改时间',
   last_modified_by     	int comment '最近修改人ID',
   deleted              	bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_product_list comment '产品列表';

/*==============================================================*/
/* Index: idx_category_product                                  */
/*==============================================================*/
create unique index idx_category_product on eshop_product_category
(
   category_id,
   product_id
);

/*==============================================================*/
/* Table: eshop_review                                          */
/*==============================================================*/
create table eshop_review
(
   id                   integer not null auto_increment comment '编号',
   nickname             varchar(128) not null comment 'User nickname',
   customer_id          int default null comment 'Customer Id',
   product_id           int comment '产品编号',
   store_id             int default 0 comment 'Store id',
   title                varchar(255) not null comment 'Title',
   detail               text not null comment 'Detail description',
   status               varchar(10) comment '状态: 已提交，审批通过，拒绝',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_review comment '产品评价';

/*==============================================================*/
/* Table: eshop_shipment                                        */
/*==============================================================*/
create table eshop_shipment
(
   id                   integer not null auto_increment comment '编号',
   store_id             int default null comment '店铺编号',
   customer_id          int default null comment 'Customer Id',
   order_master_id      int not null comment '订单编号',
   shipment_status      varchar(10) default null comment '发货单状态',
   total_weight         decimal(12,4) default null comment 'Total Weight',
   total_qty            decimal(12,4) default null comment 'Total Qty',
   shipping_address_id  int default null comment 'Shipping Address Id',
   billing_address_id   int default null comment 'Billing Address Id',
   shipping_label_img   int comment '发货单标签图片编号',
   customer_note        text comment 'Customer Note',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_shipment comment '发货';

/*==============================================================*/
/* Table: eshop_shopping_cart                                   */
/*==============================================================*/
create table eshop_shopping_cart
(
   id                   integer not null auto_increment comment '编号',
   customer_id          int comment '客户编号',
   product_id           int comment '产品编号',
   product_atrbt_values text not null comment '产品属性值串，ｅｇ：1,23,45,34,12',
   store_id             int default null comment 'Store ID',
   added_at             datetime default null comment 'Add date and time',
   description          text comment 'Short description of wish list item',
   qty                  int not null comment '数量',
   shared_code          varchar(255) comment '枚举/UUID',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_shopping_cart comment '购物车';

/*==============================================================*/
/* Table: eshop_store                                           */
/*==============================================================*/
create table eshop_store
(
   id                   integer not null auto_increment comment '编号',
   code                 varchar(32) default null comment 'Code',
   name                 varchar(255) not null comment 'Store Name',
   website_id           int not null default 0 comment 'Website Id',
   sort_order           int not null default 0 comment 'Store Sort Order',
   is_active            bool not null default 0 comment 'Store Activity',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_store comment '店铺';

/*==============================================================*/
/* Table: eshop_wishlist                                        */
/*==============================================================*/
create table eshop_wishlist
(
   id                   integer not null auto_increment comment '编号',
   customer_id          int not null default 0 comment 'Customer ID',
   shared               bool not null default 0 comment 'Sharing flag (0 or 1)',
   sharing_code         varchar(32) default null comment 'Sharing encrypted code',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_wishlist comment '我的收藏';

/*==============================================================*/
/* Table: eshop_wishlist_item                                   */
/*==============================================================*/
create table eshop_wishlist_item
(
   id                   integer not null comment '编号',
   wishlist_id          int not null default 0 comment 'Wishlist ID',
   product_id           int comment '产品编号',
   product_atrbt_values text not null comment '产品属性值串，ｅｇ：1,23,45,34,12',
   store_id             int default null comment 'Store ID',
   added_at             datetime default null comment 'Add date and time',
   description          text comment 'Short description of wish list item',
   qty                  decimal(12,4) not null comment 'Qty',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);
ALTER TABLE `eshop_wishlist_item` MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '编号' FIRST ;
alter table eshop_wishlist_item comment '收藏详情';

/*==============================================================*/
/* Table: eshop_product_relation                                */
/*==============================================================*/
create table eshop_product_relation
(
   parent_product_id    int not null comment '父级产品编号',
   child_product_id     int not null comment '子级产品编号',
   primary key (parent_product_id, child_product_id)
);

alter table eshop_product_relation comment '产品关连';

/*==============================================================*/
/* Table: eshop_product_stock                                   */
/*==============================================================*/
create table eshop_product_stock
(
   id                   integer not null auto_increment comment '编号',
   product_id           int comment '产品编号',
   current_available_qty decimal(12,4) comment '当前可用库存',
   low_stock_warning    bool comment '是否启用最小库存警告',
   min_qty              decimal(12,4) comment '最小库存(低于最小库存时，系统需发出警告)',
   low_stock_date       date comment '最小库存触发日期',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_product_stock comment '产品库存';

/*==============================================================*/
/* Table: eshop_product_stock_txn                               */
/*==============================================================*/
create table eshop_product_stock_txn
(
   id                   int not null auto_increment comment '编号',
   product_id           int comment '产品编号',
   txn_type             varchar(10) comment '交易类型（库存初始化，购买，退货）',
   txn_qty              decimal(10,4) comment '交易数量',
   order_detail_id      int comment '订单详情编号',
   comments             varchar(254) comment '备注',
   status               varchar(10) comment '状态: 进行中，交易完成',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
);

alter table eshop_product_stock_txn comment '产品库存交易';

/*==============================================================*/
/* Table: eshop_product_comment                                 */
/*==============================================================*/
create table eshop_product_comment
(
   id                   int not null auto_increment comment '编号',
   order_master_id      int(11) comment '订单编号',
   order_detail_id      int(11) comment '订单详情编号',
   product_id           int(11) comment '产品编号',
   customer_id          int(11) comment '客户编号',
   comment              text comment '评论内容',
   comment_date         datetime comment '评论时间',
   comment_level        varchar(20) comment '评论星级',
   comment_images       varchar(100) comment '评论图片',
   version              int(11) comment '版本号',
   created_dtm          datetime comment '创建时间',
   created_by           int(11) comment '创建人id',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int(11) comment '最近修改人id',
   deleted              tinyint comment '删除标识',
   primary key (id)
);


alter table eshop_customer_address add constraint fk_ref_customer_address foreign key (customer_id)
      references eshop_customer (id) on delete restrict on update restrict;

alter table eshop_order_detail add constraint fk_ref_order_detail foreign key (order_master_id)
      references eshop_order_master (id) on delete restrict on update restrict;

alter table eshop_product_category add constraint fk_ref_product_category foreign key (category_id)
      references eshop_category (id) on delete restrict on update restrict;

alter table eshop_product_category add constraint fk_ref_category_product foreign key (product_id)
      references eshop_product (id) on delete restrict on update restrict;

alter table eshop_wishlist_item add constraint fk_ref_wishlist_item foreign key (wishlist_id)
      references eshop_wishlist (id) on delete restrict on update restrict;


SET FOREIGN_KEY_CHECKS = 1;