
/*==============================================================*/
/* Table: oauth_client_details                                  */
/*==============================================================*/
drop table oauth_client_details cascade constraints;
create table oauth_client_details 
(
    client_id                varchar2(255) not null,
    resource_ids             varchar2(255) default null,
    client_secret            varchar2(255) default null,
    scope                    varchar2(255) default null,
    authorized_grant_types   varchar2(255) default null,
    web_server_redirect_uri  varchar2(255) default null,
    authorities              varchar2(255) default null,
    access_token_validity    integer default null,
    refresh_token_validity   integer default null,
    additional_information   varchar2(4000) default null,
    autoapprove              varchar2(4000) default null,
    constraint pk_oauth_client_details primary key (client_id)
);

/*==============================================================*/
/* Table: oauth_client_token                                    */
/*==============================================================*/
drop table oauth_client_token cascade constraints;
create table oauth_client_token 
(
   token_id                 varchar2(255) default null,
   token                    blob,
   authentication_id        varchar2(255) default null,
   user_name                varchar2(255) default null,
   client_id                varchar2(255) default null
);

/*==============================================================*/
/* Table: oauth_access_token                                    */
/*==============================================================*/
drop table oauth_access_token cascade constraints;
create table oauth_access_token 
(
   authentication_id        varchar2(255) not null,
   token_id                 varchar2(255) default null,
   token                    blob,
   user_name                varchar2(255) default null,
   client_id                varchar2(255) default null,
   authentication           blob,
   refresh_token            varchar2(255) default null,
   constraint pk_oauth_access_token primary key (authentication_id)
);

/*==============================================================*/
/* Table: oauth_refresh_token                                   */
/*==============================================================*/
drop table oauth_refresh_token cascade constraints;
create table oauth_refresh_token 
(
    token_id                 varchar2(255) DEFAULT NULL,
    token                    blob,
    authentication           blob
);


/*==============================================================*/
/* Table: oauth_code                                            */
/*==============================================================*/
drop table oauth_code cascade constraints;
create table oauth_code 
(
    code                     varchar2(255) default null
);

/*==============================================================*/
/* Table: oauth_approvals                                       */
/*==============================================================*/
drop table oauth_approvals cascade constraints;
create table oauth_approvals 
(
    userId                    varchar2(255) default null,
    clientId                  varchar2(255) default null,
    scope                     varchar2(255) default null,
    status                    varchar2(255) default null,
    expiresAt                 date,
    lastModifiedAt            date
);
