# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table tbbusinesses (
  id                            integer identity(1,1) not null,
  company_name                  varchar(255),
  company_category              varchar(255),
  company_subcategory           varchar(255),
  email_1                       varchar(255),
  email_2                       varchar(255),
  phone_1                       varchar(255),
  phone_2                       varchar(255),
  website                       varchar(255),
  county                        varchar(255),
  town                          varchar(255),
  street_name                   varchar(255),
  building                      varchar(255),
  map_latitude                  varchar(255),
  map_longitude                 varchar(255),
  company_branch                varchar(255),
  services                      varchar(255),
  status                        varchar(255),
  comments                      varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  selected                      integer default 0 not null,
  ceated_by                     varchar(255),
  constraint pk_tbbusinesses primary key (id)
);

create table tbcharges (
  id                            integer identity(1,1) not null,
  branch_code                   varchar(255),
  transaction_code              varchar(255),
  from_amount                   varchar(255),
  to_amount                     varchar(255),
  is_transaction_fee            integer default 0 not null,
  transaction_fee               varchar(255),
  commission_fee                varchar(255),
  trans_glcode                  varchar(255),
  is_commission_fee             integer default 0 not null,
  commission_glcode             varchar(255),
  channel                       varchar(255),
  create_date                   varchar(255),
  created_by                    varchar(255),
  active                        integer default 0 not null,
  approved                      integer default 0 not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  constraint pk_tbcharges primary key (id)
);

create table tbcorporateemails (
  id                            integer identity(1,1) not null,
  email                         varchar(255),
  description                   varchar(255),
  comments                      varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  selected                      integer default 0 not null,
  constraint pk_tbcorporateemails primary key (id)
);

create table t_docs (
  id                            integer identity(1,1) not null,
  business_type                 varchar(255),
  appln_form                    integer default 0 not null,
  director_id                   integer default 0 not null,
  kra_pin                       integer default 0 not null,
  council_permit                integer default 0 not null,
  business_reg_cert             integer default 0 not null,
  utility_bill                  integer default 0 not null,
  business_photo                integer default 0 not null,
  bank_letter                   integer default 0 not null,
  cancelled_cheque              integer default 0 not null,
  board_resolution              integer default 0 not null,
  cr12                          integer default 0 not null,
  regulatory_authority_letter   integer default 0 not null,
  last_audited_accounts         integer default 0 not null,
  created_by                    varchar(255),
  create_date                   varchar(255),
  edited_by                     varchar(255),
  edit_date                     varchar(255),
  constraint pk_t_docs primary key (id)
);

create table tbemaildeliveryreports (
  id                            integer identity(1,1) not null,
  email_from                    varchar(255),
  email_to                      varchar(255),
  delivered                     integer default 0 not null,
  sent_by                       varchar(255),
  date_sent                     varchar(255),
  constraint pk_tbemaildeliveryreports primary key (id)
);

create table tbglaccounts (
  id                            integer identity(1,1) not null,
  gl_name                       varchar(255),
  gl_code                       varchar(255),
  is_sacco                      integer default 0 not null,
  branch_code                   varchar(255),
  constraint pk_tbglaccounts primary key (id)
);

create table tbperson (
  id                            integer identity(1,1) not null,
  company                       varchar(255),
  full_names                    varchar(255),
  email_1                       varchar(255),
  email_2                       varchar(255),
  phone_1                       varchar(255),
  phone_2                       varchar(255),
  position                      varchar(255),
  side_hustle                   varchar(255),
  sex                           varchar(255),
  status                        varchar(255),
  comments                      varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  selected                      integer default 0 not null,
  constraint pk_tbperson primary key (id)
);

create table tbindividualemails (
  email_id                      integer identity(1,1) not null,
  individual_email              varchar(255),
  individual_description        varchar(255),
  individual_comments           varchar(255),
  individual_created_by         varchar(255),
  individual_date_created       varchar(255),
  individual_selected           integer default 0 not null,
  constraint pk_tbindividualemails primary key (email_id)
);

create table tbphones (
  id                            integer identity(1,1) not null,
  individual_phone              varchar(255),
  individual_phone_status       varchar(255),
  individual_phone_comments     varchar(255),
  individual_phone_created_by   varchar(255),
  individual_phone_date_created varchar(255),
  individual_phone_selected     integer default 0 not null,
  constraint pk_tbphones primary key (id)
);

create table tbleaders (
  id                            integer identity(1,1) not null,
  full_names                    varchar(255),
  position                      varchar(255),
  status                        varchar(255),
  leader_county                 varchar(255),
  leader_constituency           varchar(255),
  leader_ward                   varchar(255),
  leader_comments               varchar(255),
  leader_created_by             varchar(255),
  leader_date_created           varchar(255),
  selected_leader               integer default 0 not null,
  constraint pk_tbleaders primary key (id)
);

create table tbmerchanttransactions (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  middle_name                   varchar(255),
  last_name                     varchar(255),
  settlement_ac                 varchar(255),
  msisdn                        varchar(255),
  transaction_type              varchar(255),
  trans_id                      varchar(255),
  trans_time                    varchar(255),
  trans_amount                  varchar(255),
  business_short_code           varchar(255),
  bill_ref_number               varchar(255),
  invoice_number                varchar(255),
  org_account_balance           varchar(255),
  third_party_trans_id          varchar(255),
  constraint pk_tbmerchanttransactions primary key (id)
);

create table tbmerchants (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  mid_name                      varchar(255),
  last_name                     varchar(255),
  phone_number                  varchar(255),
  email_address                 varchar(255),
  pay_bill_number               varchar(255),
  settlement_ac                 varchar(255),
  branch                        varchar(255),
  create_date                   varchar(255),
  created_by                    varchar(255),
  is_approved                   integer default 0 not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  username                      varchar(255),
  password                      varchar(255),
  is_enabled                    integer default 0 not null,
  enabled_by                    varchar(255),
  enabled_date                  varchar(255),
  is_deleted                    integer default 0 not null,
  delete_date                   varchar(255),
  delete_by                     varchar(255),
  is_disabled                   integer default 0 not null,
  disabled_date                 varchar(255),
  disabled_by                   varchar(255),
  is_first_login                integer default 0 not null,
  login_tries                   varchar(255),
  constraint pk_tbmerchants primary key (id)
);

create table tbmessage (
  subject                       varchar(255),
  message                       varchar(255)
);

create table tbpersonsbyregion (
  id                            integer identity(1,1) not null,
  person_phone                  varchar(255),
  person_surname                varchar(255),
  person_othernames             varchar(255),
  person_county_name            varchar(255),
  person_constituency_name      varchar(255),
  person_ward_name              varchar(255),
  person_polling_name           varchar(255),
  person_email_address          varchar(255),
  person_gender                 varchar(255),
  person_comment                varchar(255),
  person_create_date            varchar(255),
  person_created_by             varchar(255),
  person_selected               integer default 0 not null,
  constraint pk_tbpersonsbyregion primary key (id)
);

create table tbbusinesscategory (
  id                            integer identity(1,1) not null,
  individual_phone              varchar(255),
  individual_phone_status       varchar(255),
  individual_phone_comments     varchar(255),
  create_date                   varchar(255),
  created_by                    varchar(255),
  constraint pk_tbbusinesscategory primary key (id)
);

create table tbproducts (
  id                            integer identity(1,1) not null,
  product_id                    varchar(255),
  description                   varchar(255),
  product_class                 varchar(255),
  product_code                  varchar(255),
  is_approved                   integer default 0 not null,
  approve_date                  varchar(255),
  approved_by                   varchar(255),
  is_delete                     integer default 0 not null,
  delete_date                   varchar(255),
  delete_by                     varchar(255),
  constraint pk_tbproducts primary key (id)
);

create table tbprofiles (
  id                            integer identity(1,1) not null,
  profile_name                  varchar(255),
  remarks                       varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  approved                      integer default 0 not null,
  edit                          integer default 0 not null,
  edit_date                     varchar(255),
  edit_approved                 integer default 0 not null,
  deleted                       integer default 0 not null,
  delete_date                   varchar(255),
  delete_approved               integer default 0 not null,
  constraint pk_tbprofiles primary key (id)
);

create table tbsmsdeliveryreports (
  id                            integer identity(1,1) not null,
  sender_id                     varchar(255),
  sms_to                        varchar(255),
  delivered                     integer default 0 not null,
  sent_by                       varchar(255),
  date_sent                     varchar(255),
  constraint pk_tbsmsdeliveryreports primary key (id)
);

create table tbaccount (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  middle_name                   varchar(255),
  last_name                     varchar(255),
  idnumber                      varchar(255),
  account_number                varchar(255),
  product_code                  varchar(255),
  balance                       varchar(255),
  created_on                    varchar(255),
  created_by                    varchar(255),
  is_approved                   integer default 0 not null,
  approve_date                  varchar(255),
  approve_by                    varchar(255),
  is_disabled                   integer default 0 not null,
  disable_date                  varchar(255),
  disabled_by                   varchar(255),
  constraint pk_tbaccount primary key (id)
);

create table tbclient (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  middle_name                   varchar(255),
  last_name                     varchar(255),
  phone_number                  varchar(255),
  monthly_income                varchar(255),
  email                         varchar(255),
  location                      varchar(255),
  identification_number         varchar(255),
  idtype                        varchar(255),
  face_image                    varchar(255),
  idimage                       varchar(255),
  fingerprint                   varchar(255),
  dob                           varchar(255),
  is_sacco                      integer default 0 not null,
  client_id                     varchar(255),
  constraint pk_tbclient primary key (id)
);

create table tbcustomer (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  middle_name                   varchar(255),
  last_name                     varchar(255),
  phone_number                  varchar(255),
  location                      varchar(255),
  gender                        varchar(255),
  dob                           varchar(255),
  idnumber                      varchar(255),
  idtype                        varchar(255),
  face_image                    varchar(255),
  idimage                       varchar(255),
  fingerprint                   varchar(255),
  created_by                    varchar(255),
  create_date                   varchar(255),
  is_approved                   integer default 0 not null,
  approved_by                   varchar(255),
  approve_date                  varchar(255),
  constraint pk_tbcustomer primary key (id)
);

create table tbfloat (
  id                            integer identity(1,1) not null,
  branch_id                     varchar(255),
  agent_account                 varchar(255),
  trans_type                    varchar(255),
  trans_date                    varchar(255),
  approved                      integer default 0 not null,
  approved_by                   varchar(255),
  approve_date                  varchar(255),
  constraint pk_tbfloat primary key (id)
);

create table tbloanproduct (
  id                            integer identity(1,1) not null,
  description                   varchar(255),
  product_code                  varchar(255),
  max_amount                    varchar(255),
  min_amount                    varchar(255),
  interest                      varchar(255),
  loan_limit                    varchar(255),
  repayment_type                varchar(255),
  max_value                     varchar(255),
  max_period                    varchar(255),
  penalty_rate                  varchar(255),
  is_approved                   integer default 0 not null,
  approve_date                  varchar(255),
  approve_by                    varchar(255),
  is_deleted                    integer default 0 not null,
  delete_date                   varchar(255),
  deleted_by                    varchar(255),
  constraint pk_tbloanproduct primary key (id)
);

create table tbloans (
  id                            integer identity(1,1) not null,
  loan_account                  varchar(255),
  loan_amount                   varchar(255),
  application_date              varchar(255),
  last_payment_date             varchar(255),
  due_date                      varchar(255),
  last_payment_amount           varchar(255),
  balance                       varchar(255),
  interest_balance              varchar(255),
  customer_phoner               varchar(255),
  loan_status                   varchar(255),
  is_active                     integer default 0 not null,
  loan_disbursed                varchar(255),
  interest                      varchar(255),
  disbursed                     integer default 0 not null,
  disburse_date                 varchar(255),
  account_number                varchar(255),
  is_reversed                   integer default 0 not null,
  reverse_date                  varchar(255),
  reverse_by                    varchar(255),
  constraint pk_tbloans primary key (id)
);

create table tbsacco (
  id                            integer identity(1,1) not null,
  sacco_code                    varchar(255),
  sacco_name                    varchar(255),
  brand_name                    varchar(255),
  location                      varchar(255),
  mobile                        varchar(255),
  email                         varchar(255),
  contact_person                varchar(255),
  create_date                   varchar(255),
  remarks                       varchar(255),
  created_by                    varchar(255),
  create_approved               integer default 0 not null,
  create_approved_date          varchar(255),
  create_approved_by            varchar(255),
  updated                       varchar(255),
  updated_by                    varchar(255),
  update_approved               varchar(255),
  update_approved_date          varchar(255),
  deleted                       varchar(255),
  deleted_by                    varchar(255),
  delete_date                   varchar(255),
  constraint pk_tbsacco primary key (id)
);

create table tbtransactions (
  id                            integer identity(1,1) not null,
  account_number                varchar(255),
  drcr                          varchar(255),
  transaction_code              varchar(255),
  amount                        varchar(255),
  trx_date                      varchar(255),
  financial_year                varchar(255),
  financial_period              varchar(255),
  narration                     varchar(255),
  constraint pk_tbtransactions primary key (id)
);

create table tbtranscodes (
  id                            integer identity(1,1) not null,
  trancode                      varchar(255),
  trans_name                    varchar(255),
  is_approved                   integer default 0 not null,
  approve_date                  varchar(255),
  approve_by                    varchar(255),
  is_deleted                    integer default 0 not null,
  delete_date                   varchar(255),
  delete_by                     varchar(255),
  constraint pk_tbtranscodes primary key (id)
);

create table tbusers (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  mid_name                      varchar(255),
  last_name                     varchar(255),
  department                    varchar(255),
  mobile_number                 varchar(255),
  email                         varchar(255),
  role_name                     varchar(255),
  branch_name                   varchar(255),
  user_name                     varchar(255),
  password                      varchar(255),
  login_tries                   varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  remarks                       varchar(255),
  create_approved               integer default 0 not null,
  create_approved_by            varchar(255),
  create_approved_date          varchar(255),
  create_approved_remarks       varchar(255),
  rejected                      integer default 0 not null,
  rejected_by                   varchar(255),
  date_rejected                 varchar(255),
  updated                       integer default 0 not null,
  updated_by                    varchar(255),
  date_updated                  varchar(255),
  reset_pass                    integer default 0 not null,
  pass_reset_by                 varchar(255),
  pass_reset_date               datetime2,
  disabled                      integer default 0 not null,
  disabled_by                   varchar(255),
  disabled_date                 datetime2,
  deleted                       integer default 0 not null,
  deleted_by                    varchar(255),
  delete_date                   varchar(255),
  branch_id                     integer,
  profile_id                    integer,
  constraint pk_tbusers primary key (id)
);

create table tbroles (
  id                            integer identity(1,1) not null,
  role_name                     varchar(255),
  remarks                       varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  approved                      integer default 0 not null,
  edit                          integer default 0 not null,
  edit_date                     varchar(255),
  edit_approved                 integer default 0 not null,
  deleted                       integer default 0 not null,
  delete_date                   varchar(255),
  delete_approved               integer default 0 not null,
  constraint pk_tbroles primary key (id)
);

create table tbusersmanagement (
  id                            integer identity(1,1) not null,
  first_name                    varchar(255),
  mid_name                      varchar(255),
  last_name                     varchar(255),
  mobile_number                 varchar(255),
  email                         varchar(255),
  user_name                     varchar(255),
  password                      varchar(255),
  id_number                     varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  remarks                       varchar(255),
  reset_pass                    integer default 0 not null,
  pass_reset_by                 varchar(255),
  pass_reset_date               datetime2,
  disabled                      integer default 0 not null,
  disabled_by                   varchar(255),
  disabled_date                 datetime2,
  constraint pk_tbusersmanagement primary key (id)
);

create table t_tills (
  id                            integer identity(1,1) not null,
  order_number                  varchar(255),
  till_type                     varchar(255),
  store_number                  varchar(255),
  till_number                   varchar(255),
  createdby                     varchar(255),
  order_date                    varchar(255),
  is_approved                   integer default 0 not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  is_deleted                    integer default 0 not null,
  deleted_by                    varchar(255),
  is_delete_approved            integer default 0 not null,
  delete_approved_by            varchar(255),
  delete_approved_date          varchar(255),
  constraint pk_t_tills primary key (id)
);

create table t_tills_application (
  id                            integer identity(1,1) not null,
  order_number                  varchar(255),
  till_type                     varchar(255),
  createdby                     varchar(255),
  order_date                    varchar(255),
  is_approved                   integer default 0 not null,
  is_confirmed                  integer default 0 not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  is_deleted                    integer default 0 not null,
  deleted_by                    varchar(255),
  is_delete_approved            integer default 0 not null,
  delete_approved_by            varchar(255),
  delete_approved_date          varchar(255),
  constraint pk_t_tills_application primary key (id)
);

create table tbuserpermissions (
  id                            integer identity(1,1) not null,
  permission_value              varchar(255),
  constraint pk_tbuserpermissions primary key (id)
);

create table tbuserrole (
  id                            integer identity(1,1) not null,
  role_name                     varchar(255),
  constraint pk_tbuserrole primary key (id)
);

create table tbuserauthorization (
  id                            integer identity(1,1) not null,
  role                          varchar(255),
  permissions                   varchar(4000),
  constraint pk_tbuserauthorization primary key (id)
);


# --- !Downs

IF OBJECT_ID('tbbusinesses', 'U') IS NOT NULL drop table tbbusinesses;

IF OBJECT_ID('tbcharges', 'U') IS NOT NULL drop table tbcharges;

IF OBJECT_ID('tbcorporateemails', 'U') IS NOT NULL drop table tbcorporateemails;

IF OBJECT_ID('t_docs', 'U') IS NOT NULL drop table t_docs;

IF OBJECT_ID('tbemaildeliveryreports', 'U') IS NOT NULL drop table tbemaildeliveryreports;

IF OBJECT_ID('tbglaccounts', 'U') IS NOT NULL drop table tbglaccounts;

IF OBJECT_ID('tbperson', 'U') IS NOT NULL drop table tbperson;

IF OBJECT_ID('tbindividualemails', 'U') IS NOT NULL drop table tbindividualemails;

IF OBJECT_ID('tbphones', 'U') IS NOT NULL drop table tbphones;

IF OBJECT_ID('tbleaders', 'U') IS NOT NULL drop table tbleaders;

IF OBJECT_ID('tbmerchanttransactions', 'U') IS NOT NULL drop table tbmerchanttransactions;

IF OBJECT_ID('tbmerchants', 'U') IS NOT NULL drop table tbmerchants;

IF OBJECT_ID('tbmessage', 'U') IS NOT NULL drop table tbmessage;

IF OBJECT_ID('tbpersonsbyregion', 'U') IS NOT NULL drop table tbpersonsbyregion;

IF OBJECT_ID('tbbusinesscategory', 'U') IS NOT NULL drop table tbbusinesscategory;

IF OBJECT_ID('tbproducts', 'U') IS NOT NULL drop table tbproducts;

IF OBJECT_ID('tbprofiles', 'U') IS NOT NULL drop table tbprofiles;

IF OBJECT_ID('tbsmsdeliveryreports', 'U') IS NOT NULL drop table tbsmsdeliveryreports;

IF OBJECT_ID('tbaccount', 'U') IS NOT NULL drop table tbaccount;

IF OBJECT_ID('tbclient', 'U') IS NOT NULL drop table tbclient;

IF OBJECT_ID('tbcustomer', 'U') IS NOT NULL drop table tbcustomer;

IF OBJECT_ID('tbfloat', 'U') IS NOT NULL drop table tbfloat;

IF OBJECT_ID('tbloanproduct', 'U') IS NOT NULL drop table tbloanproduct;

IF OBJECT_ID('tbloans', 'U') IS NOT NULL drop table tbloans;

IF OBJECT_ID('tbsacco', 'U') IS NOT NULL drop table tbsacco;

IF OBJECT_ID('tbtransactions', 'U') IS NOT NULL drop table tbtransactions;

IF OBJECT_ID('tbtranscodes', 'U') IS NOT NULL drop table tbtranscodes;

IF OBJECT_ID('tbusers', 'U') IS NOT NULL drop table tbusers;

IF OBJECT_ID('tbroles', 'U') IS NOT NULL drop table tbroles;

IF OBJECT_ID('tbusersmanagement', 'U') IS NOT NULL drop table tbusersmanagement;

IF OBJECT_ID('t_tills', 'U') IS NOT NULL drop table t_tills;

IF OBJECT_ID('t_tills_application', 'U') IS NOT NULL drop table t_tills_application;

IF OBJECT_ID('tbuserpermissions', 'U') IS NOT NULL drop table tbuserpermissions;

IF OBJECT_ID('tbuserrole', 'U') IS NOT NULL drop table tbuserrole;

IF OBJECT_ID('tbuserauthorization', 'U') IS NOT NULL drop table tbuserauthorization;

