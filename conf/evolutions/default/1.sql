# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table tbbusinesses (
  id                            integer auto_increment not null,
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
  selected                      boolean default false not null,
  ceated_by                     varchar(255),
  constraint pk_tbbusinesses primary key (id)
);

create table tbcharges (
  id                            integer auto_increment not null,
  branch_code                   varchar(255),
  transaction_code              varchar(255),
  from_amount                   varchar(255),
  to_amount                     varchar(255),
  is_transaction_fee            boolean default false not null,
  transaction_fee               varchar(255),
  commission_fee                varchar(255),
  trans_glcode                  varchar(255),
  is_commission_fee             boolean default false not null,
  commission_glcode             varchar(255),
  channel                       varchar(255),
  create_date                   varchar(255),
  created_by                    varchar(255),
  active                        boolean default false not null,
  approved                      boolean default false not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  constraint pk_tbcharges primary key (id)
);

create table tbcorporateemails (
  id                            integer auto_increment not null,
  email                         varchar(255),
  description                   varchar(255),
  comments                      varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  selected                      boolean default false not null,
  constraint pk_tbcorporateemails primary key (id)
);

create table t_docs (
  id                            integer auto_increment not null,
  business_type                 varchar(255),
  appln_form                    boolean default false not null,
  director_id                   boolean default false not null,
  kra_pin                       boolean default false not null,
  council_permit                boolean default false not null,
  business_reg_cert             boolean default false not null,
  utility_bill                  boolean default false not null,
  business_photo                boolean default false not null,
  bank_letter                   boolean default false not null,
  cancelled_cheque              boolean default false not null,
  board_resolution              boolean default false not null,
  cr12                          boolean default false not null,
  regulatory_authority_letter   boolean default false not null,
  last_audited_accounts         boolean default false not null,
  created_by                    varchar(255),
  create_date                   varchar(255),
  edited_by                     varchar(255),
  edit_date                     varchar(255),
  constraint pk_t_docs primary key (id)
);

create table tbemaildeliveryreports (
  id                            integer auto_increment not null,
  email_from                    varchar(255),
  email_to                      varchar(255),
  delivered                     boolean default false not null,
  sent_by                       varchar(255),
  date_sent                     varchar(255),
  constraint pk_tbemaildeliveryreports primary key (id)
);

create table tbglaccounts (
  id                            integer auto_increment not null,
  gl_name                       varchar(255),
  gl_code                       varchar(255),
  is_sacco                      boolean default false not null,
  branch_code                   varchar(255),
  constraint pk_tbglaccounts primary key (id)
);

create table tbperson (
  id                            integer auto_increment not null,
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
  selected                      boolean default false not null,
  constraint pk_tbperson primary key (id)
);

create table tbindividualemails (
  email_id                      integer auto_increment not null,
  individual_email              varchar(255),
  individual_description        varchar(255),
  individual_comments           varchar(255),
  individual_created_by         varchar(255),
  individual_date_created       varchar(255),
  individual_selected           boolean default false not null,
  constraint pk_tbindividualemails primary key (email_id)
);

create table tbphones (
  id                            integer auto_increment not null,
  individual_phone              varchar(255),
  individual_phone_status       varchar(255),
  individual_phone_comments     varchar(255),
  individual_phone_created_by   varchar(255),
  individual_phone_date_created varchar(255),
  individual_phone_selected     boolean default false not null,
  constraint pk_tbphones primary key (id)
);

create table tbleaders (
  id                            integer auto_increment not null,
  full_names                    varchar(255),
  position                      varchar(255),
  status                        varchar(255),
  leader_county                 varchar(255),
  leader_constituency           varchar(255),
  leader_ward                   varchar(255),
  leader_comments               varchar(255),
  leader_created_by             varchar(255),
  leader_date_created           varchar(255),
  selected_leader               boolean default false not null,
  constraint pk_tbleaders primary key (id)
);

create table tbmerchanttransactions (
  id                            integer auto_increment not null,
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
  id                            integer auto_increment not null,
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
  is_approved                   boolean default false not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  username                      varchar(255),
  password                      varchar(255),
  is_enabled                    boolean default false not null,
  enabled_by                    varchar(255),
  enabled_date                  varchar(255),
  is_deleted                    boolean default false not null,
  delete_date                   varchar(255),
  delete_by                     varchar(255),
  is_disabled                   boolean default false not null,
  disabled_date                 varchar(255),
  disabled_by                   varchar(255),
  is_first_login                boolean default false not null,
  login_tries                   varchar(255),
  constraint pk_tbmerchants primary key (id)
);

create table tbmessage (
  subject                       varchar(255),
  message                       varchar(255)
);

create table tbpersonsbyregion (
  id                            integer auto_increment not null,
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
  person_selected               boolean default false not null,
  constraint pk_tbpersonsbyregion primary key (id)
);

create table tbbusinesscategory (
  id                            integer auto_increment not null,
  individual_phone              varchar(255),
  individual_phone_status       varchar(255),
  individual_phone_comments     varchar(255),
  create_date                   varchar(255),
  created_by                    varchar(255),
  constraint pk_tbbusinesscategory primary key (id)
);

create table tbproducts (
  id                            integer auto_increment not null,
  product_id                    varchar(255),
  description                   varchar(255),
  product_class                 varchar(255),
  product_code                  varchar(255),
  is_approved                   boolean default false not null,
  approve_date                  varchar(255),
  approved_by                   varchar(255),
  is_delete                     boolean default false not null,
  delete_date                   varchar(255),
  delete_by                     varchar(255),
  constraint pk_tbproducts primary key (id)
);

create table tbprofiles (
  id                            integer auto_increment not null,
  profile_name                  varchar(255),
  remarks                       varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  approved                      boolean default false not null,
  edit                          boolean default false not null,
  edit_date                     varchar(255),
  edit_approved                 boolean default false not null,
  deleted                       boolean default false not null,
  delete_date                   varchar(255),
  delete_approved               boolean default false not null,
  constraint pk_tbprofiles primary key (id)
);

create table tbsmsdeliveryreports (
  id                            integer auto_increment not null,
  sender_id                     varchar(255),
  sms_to                        varchar(255),
  delivered                     boolean default false not null,
  sent_by                       varchar(255),
  date_sent                     varchar(255),
  constraint pk_tbsmsdeliveryreports primary key (id)
);

create table tbaccount (
  id                            integer auto_increment not null,
  first_name                    varchar(255),
  middle_name                   varchar(255),
  last_name                     varchar(255),
  idnumber                      varchar(255),
  account_number                varchar(255),
  product_code                  varchar(255),
  balance                       varchar(255),
  created_on                    varchar(255),
  created_by                    varchar(255),
  is_approved                   boolean default false not null,
  approve_date                  varchar(255),
  approve_by                    varchar(255),
  is_disabled                   boolean default false not null,
  disable_date                  varchar(255),
  disabled_by                   varchar(255),
  constraint pk_tbaccount primary key (id)
);

create table tbclient (
  id                            integer auto_increment not null,
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
  is_sacco                      boolean default false not null,
  client_id                     varchar(255),
  constraint pk_tbclient primary key (id)
);

create table tbcustomer (
  id                            integer auto_increment not null,
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
  is_approved                   boolean default false not null,
  approved_by                   varchar(255),
  approve_date                  varchar(255),
  constraint pk_tbcustomer primary key (id)
);

create table tbfloat (
  id                            integer auto_increment not null,
  branch_id                     varchar(255),
  agent_account                 varchar(255),
  trans_type                    varchar(255),
  trans_date                    varchar(255),
  approved                      boolean default false not null,
  approved_by                   varchar(255),
  approve_date                  varchar(255),
  constraint pk_tbfloat primary key (id)
);

create table tbloanproduct (
  id                            integer auto_increment not null,
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
  is_approved                   boolean default false not null,
  approve_date                  varchar(255),
  approve_by                    varchar(255),
  is_deleted                    boolean default false not null,
  delete_date                   varchar(255),
  deleted_by                    varchar(255),
  constraint pk_tbloanproduct primary key (id)
);

create table tbloans (
  id                            integer auto_increment not null,
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
  is_active                     boolean default false not null,
  loan_disbursed                varchar(255),
  interest                      varchar(255),
  disbursed                     boolean default false not null,
  disburse_date                 varchar(255),
  account_number                varchar(255),
  is_reversed                   boolean default false not null,
  reverse_date                  varchar(255),
  reverse_by                    varchar(255),
  constraint pk_tbloans primary key (id)
);

create table tbsacco (
  id                            integer auto_increment not null,
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
  create_approved               boolean default false not null,
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
  id                            integer auto_increment not null,
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
  id                            integer auto_increment not null,
  trancode                      varchar(255),
  trans_name                    varchar(255),
  is_approved                   boolean default false not null,
  approve_date                  varchar(255),
  approve_by                    varchar(255),
  is_deleted                    boolean default false not null,
  delete_date                   varchar(255),
  delete_by                     varchar(255),
  constraint pk_tbtranscodes primary key (id)
);

create table tbusers (
  id                            integer auto_increment not null,
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
  create_approved               boolean default false not null,
  create_approved_by            varchar(255),
  create_approved_date          varchar(255),
  create_approved_remarks       varchar(255),
  rejected                      boolean default false not null,
  rejected_by                   varchar(255),
  date_rejected                 varchar(255),
  updated                       boolean default false not null,
  updated_by                    varchar(255),
  date_updated                  varchar(255),
  reset_pass                    boolean default false not null,
  pass_reset_by                 varchar(255),
  pass_reset_date               timestamp,
  disabled                      boolean default false not null,
  disabled_by                   varchar(255),
  disabled_date                 timestamp,
  deleted                       boolean default false not null,
  deleted_by                    varchar(255),
  delete_date                   varchar(255),
  branch_id                     integer,
  profile_id                    integer,
  constraint pk_tbusers primary key (id)
);

create table tbroles (
  id                            integer auto_increment not null,
  role_name                     varchar(255),
  remarks                       varchar(255),
  created_by                    varchar(255),
  date_created                  varchar(255),
  approved                      boolean default false not null,
  edit                          boolean default false not null,
  edit_date                     varchar(255),
  edit_approved                 boolean default false not null,
  deleted                       boolean default false not null,
  delete_date                   varchar(255),
  delete_approved               boolean default false not null,
  constraint pk_tbroles primary key (id)
);

create table tbusersmanagement (
  id                            integer auto_increment not null,
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
  reset_pass                    boolean default false not null,
  pass_reset_by                 varchar(255),
  pass_reset_date               timestamp,
  disabled                      boolean default false not null,
  disabled_by                   varchar(255),
  disabled_date                 timestamp,
  constraint pk_tbusersmanagement primary key (id)
);

create table t_tills (
  id                            integer auto_increment not null,
  order_number                  varchar(255),
  till_type                     varchar(255),
  store_number                  varchar(255),
  till_number                   varchar(255),
  createdby                     varchar(255),
  order_date                    varchar(255),
  is_approved                   boolean default false not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  is_deleted                    boolean default false not null,
  deleted_by                    varchar(255),
  is_delete_approved            boolean default false not null,
  delete_approved_by            varchar(255),
  delete_approved_date          varchar(255),
  constraint pk_t_tills primary key (id)
);

create table t_tills_application (
  id                            integer auto_increment not null,
  order_number                  varchar(255),
  till_type                     varchar(255),
  createdby                     varchar(255),
  order_date                    varchar(255),
  is_approved                   boolean default false not null,
  is_confirmed                  boolean default false not null,
  approved_date                 varchar(255),
  approved_by                   varchar(255),
  is_deleted                    boolean default false not null,
  deleted_by                    varchar(255),
  is_delete_approved            boolean default false not null,
  delete_approved_by            varchar(255),
  delete_approved_date          varchar(255),
  constraint pk_t_tills_application primary key (id)
);

create table tbuserpermissions (
  id                            integer auto_increment not null,
  permission_value              varchar(255),
  constraint pk_tbuserpermissions primary key (id)
);

create table tbuserrole (
  id                            integer auto_increment not null,
  role_name                     varchar(255),
  constraint pk_tbuserrole primary key (id)
);

create table tbuserauthorization (
  id                            integer auto_increment not null,
  role                          varchar(255),
  permissions                   varchar(4000),
  constraint pk_tbuserauthorization primary key (id)
);


# --- !Downs

drop table if exists tbbusinesses;

drop table if exists tbcharges;

drop table if exists tbcorporateemails;

drop table if exists t_docs;

drop table if exists tbemaildeliveryreports;

drop table if exists tbglaccounts;

drop table if exists tbperson;

drop table if exists tbindividualemails;

drop table if exists tbphones;

drop table if exists tbleaders;

drop table if exists tbmerchanttransactions;

drop table if exists tbmerchants;

drop table if exists tbmessage;

drop table if exists tbpersonsbyregion;

drop table if exists tbbusinesscategory;

drop table if exists tbproducts;

drop table if exists tbprofiles;

drop table if exists tbsmsdeliveryreports;

drop table if exists tbaccount;

drop table if exists tbclient;

drop table if exists tbcustomer;

drop table if exists tbfloat;

drop table if exists tbloanproduct;

drop table if exists tbloans;

drop table if exists tbsacco;

drop table if exists tbtransactions;

drop table if exists tbtranscodes;

drop table if exists tbusers;

drop table if exists tbroles;

drop table if exists tbusersmanagement;

drop table if exists t_tills;

drop table if exists t_tills_application;

drop table if exists tbuserpermissions;

drop table if exists tbuserrole;

drop table if exists tbuserauthorization;

