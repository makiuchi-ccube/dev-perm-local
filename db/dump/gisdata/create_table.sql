-- �J�����\���Ǘ��V�X�e���e�[�u���쐬DDL
-- �������s���e�[�u�����쐬���Ă��������B

-- O_�⍇������
drop table if exists o_inquiry_address cascade;

create table o_inquiry_address (
  inquiry_address_id integer not null
  , message_id integer
  , department_id character varying(10)
  , read_flag character(1)
  , answer_complete_flag character(1)
  , constraint o_inquiry_address_PKC primary key (inquiry_address_id)
) ;

-- M_���H���胉�x��
drop table if exists m_road_judge_label cascade;

create table m_road_judge_label (
  label_id integer not null
  , replace_identify text
  , index_value integer
  , index_text text
  , min_value double precision
  , max_value double precision
  , replace_text text
  , constraint m_road_judge_label_PKC primary key (label_id)
) ;

-- O_�⍇���t�@�C��
drop table if exists o_inquiry_file cascade;

create table o_inquiry_file (
  inquiry_file_id integer not null
  , message_id integer
  , file_name varchar(255)
  , file_path text
  , register_datetime timestamp
  , constraint o_inquiry_file_PKC primary key (inquiry_file_id)
) ;

-- M_�񓚃e���v���[�g
drop table if exists m_answer_template cascade;

create table m_answer_template (
  answer_template_id integer not null
  , disp_order integer
  , answer_template_text text
  , judgement_item_id character varying(10) not null
  , constraint m_answer_template_PKC primary key (answer_template_id)
) ;

create unique index idx_answer_template
  on m_answer_template(answer_template_id);

-- O_�񓚃t�@�C���X�V����
drop table if exists o_answer_file_history cascade;

create table o_answer_file_history (
  answer_file_history_id integer not null
  , answer_file_id integer
  , answer_id integer
  , update_type integer
  , update_user_id character varying(10)
  , update_datetime timestamp
  , notify_flag character(1)
  , constraint o_answer_file_history_PKC primary key (answer_file_history_id)
) ;

create unique index idx_o_answer_file_history
  on o_answer_file_history(answer_id,answer_file_id,answer_file_history_id);

-- O_�񓚗���
drop table if exists o_answer_history cascade;

create table o_answer_history (
  answer_history_id integer not null
  , answer_id integer
  , answer_user_id character varying(10)
  , answer_datetime timestamp
  , answer_text text
  , notify_flag character(1)
  , constraint o_answer_history_PKC primary key (answer_history_id)
) ;

create unique index idx_o_nswer_history
  on o_answer_history(answer_id,answer_user_id,answer_history_id);

-- O_���b�Z�[�W
drop table if exists o_message cascade;

create table o_message (
  message_id integer not null
  , chat_id integer
  , message_type integer
  , sender_id character varying(10)
  , to_department_id character varying(10)
  , message_text text
  , send_datetime timestamp
  , read_flag character(1)
  , answer_complete_flag character(1)
  , constraint o_message_PKC primary key (message_id)
) ;

create unique index idx_o_message
  on o_message(chat_id,message_id);

-- O_�`���b�g
drop table if exists o_chat cascade;

create table o_chat (
  chat_id integer not null
  , answer_id integer
  , government_answer_datetime timestamp
  , establishment_first_post_datetime timestamp
  , last_answerer_id character(10)
  , establishment_post_datetime timestamp
  , constraint o_chat_PKC primary key (chat_id)
) ;

create unique index idx_o_chat
  on o_chat(answer_id);

-- M_�s�����[�U
drop table if exists m_government_user cascade;

create table m_government_user (
  user_id character varying(10) not null
  , login_id character varying(50) not null
  , password character varying(1024)
  , role_code character(1)
  , department_id character varying(10) not null
  , user_name character varying(100)
  , constraint m_government_user_PKC primary key (user_id)
) ;

-- M_�\����񌟍�����
drop table if exists m_application_search_result cascade;

create table m_application_search_result (
  application_search_result_id character varying(10) not null
  , reference_type character(1)
  , display_column_name character varying(100)
  , display_order integer
  , table_name character varying(100)
  , table_column_name character varying(100)
  , response_key character varying(100)
  , table_width real
  , constraint m_application_search_result_PKC primary key (application_search_result_id)
) ;

-- M_�n�Ԍ������ʒ�`
drop table if exists m_lot_number_search_result_definition cascade;

create table m_lot_number_search_result_definition (
  lot_number_search_definition_id character varying(10) not null
  , display_order integer
  , table_type character(1)
  , display_column_name character varying(50)
  , table_column_name character varying(100)
  , table_width real
  , response_key character varying(100)
) ;

-- O_�\���敪
drop table if exists o_application_category cascade;

create table o_application_category (
  application_id integer not null
  , view_id character varying(10) not null
  , category_id character varying(10) not null
  , constraint o_application_category_PKC primary key (application_id,view_id,category_id)
) ;

create unique index idx_o_application_category
  on o_application_category(application_id,view_id,category_id);

-- O_�񓚃t�@�C��
drop table if exists o_answer_file cascade;

create table o_answer_file (
  answer_file_id integer not null
  , answer_id integer not null
  , answer_file_name text
  , file_path text
  , notified_file_path text
  , delete_unnotified_flag character(1)
  , delete_flag character(1)
  , constraint o_answer_file_PKC primary key (answer_file_id)
) ;

alter table o_answer_file add constraint idx_o_answer_file
  unique (answer_id,answer_file_id) ;

-- O_�\���t�@�C��
drop table if exists o_application_file cascade;

create table o_application_file (
  file_id integer not null
  , application_id integer not null
  , application_file_id character varying(10) not null
  , upload_file_name text
  , file_path text
  , extension character varying(10)
  , version_information integer
  , upload_datetime timestamp
  , constraint o_application_file_PKC primary key (file_id)
) ;

create unique index idx_o_application_file
  on o_application_file(application_id,application_file_id,file_id);

-- O_�\���n��
drop table if exists o_application_lot_number cascade;

create table o_application_lot_number (
  lot_number_id integer not null
  , application_id integer not null
  , regeister_datetime timestamp
  , constraint o_application_lot_number_PKC primary key (lot_number_id,application_id)
) ;

create unique index idx_o_application_lot_number
  on o_application_lot_number(application_id,lot_number_id);

-- O_��
drop table if exists o_answer cascade;

create table o_answer (
  answer_id integer not null
  , application_id integer not null
  , judgement_id character varying(10) not null
  , judgement_result text
  , answer_content text
  , notified_text text
  , register_datetime timestamp
  , update_datetime timestamp
  , complete_flag character(1)
  , notified_flag character(1)
  , re_application_flag character(1)
  , business_reapplication_flag character(1)
  , constraint o_answer_PKC primary key (answer_id)
) ;

alter table o_answer add constraint idx_o_answer
  unique (application_id,judgement_id,answer_id) ;

-- M_���C��
drop table if exists m_layer cascade;

create table m_layer (
  layer_id character varying(10) not null
  , layer_type character(1)
  , layer_name character varying(256)
  , table_name character varying(30)
  , layer_code character varying(256)
  , layer_query character varying(256)
  , query_require_flag character(1)
  , constraint m_layer_PKC primary key (layer_id)
) ;

create unique index idx_m_layer
  on m_layer(layer_id);

-- M_�\���ҏ�񍀖�
drop table if exists m_applicant_information_item cascade;

create table m_applicant_information_item (
  applicant_information_item_id character varying(10) not null
  , display_order integer
  , display_flag CHAR(1)
  , require_flag CHAR(1)
  , item_name character varying(256)
  , regex character varying(256)
  , mail_address CHAR(1)
  , search_condition_flag CHAR(1)
  , constraint m_applicant_information_item_PKC primary key (applicant_information_item_id)
) ;

alter table m_applicant_information_item add constraint idx_m_applicant_information_item
  unique (applicant_information_item_id) ;

-- M_���x��
drop table if exists m_label cascade;

create table m_label (
  view_code character varying(10) not null
  , label_id character varying(10) not null
  , label_key character varying(50)
  , label_type char(1)
  , label_text text
  , constraint m_label_PKC primary key (view_code,label_id)
) ;

create unique index idx_m_label
  on m_label(view_code,label_id);

-- O_�\���ҏ��
drop table if exists o_applicant_information cascade;

create table o_applicant_information (
  application_id integer not null
  , applicant_id integer not null
  , item_1 text
  , item_2 text
  , item_3 text
  , item_4 text
  , item_5 text
  , item_6 text
  , item_7 text
  , item_8 text
  , item_9 text
  , item_10 text
  , mail_address character varying(100)
  , collation_id character varying(20)
  , password character varying(1024)
  , constraint o_applicant_information_PKC primary key (applicant_id)
) ;

alter table o_applicant_information add constraint idx_o_applicant_information
  unique (applicant_id) ;

-- M_����
drop table if exists m_department cascade;

create table m_department (
  department_id character varying(10) not null
  , department_name text
  , mail_address text
  , answer_authority_flag char(1)
  , constraint m_department_PKC primary key (department_id)
) ;

create unique index idx_m_department
  on m_department(department_id);

-- O_�\��
drop table if exists o_application cascade;

create table o_application (
  application_id integer not null
  , applicant_id integer
  , status character(1)
  , register_status character(1)
  , collation_text character varying(100)
  , version_information integer
  , register_datetime timestamp
  , update_datetime timestamp
  , constraint o_application_PKC primary key (application_id)
) ;

alter table o_application add constraint idx_o_application
  unique (application_id) ;

-- M_�\���t�@�C��
drop table if exists m_application_file cascade;

create table m_application_file (
  application_file_id character varying(10) not null
  , judgement_item_id character varying(10) not null
  , require_flag char(1)
  , upload_file_name text
  , extension character varying(200)
  , constraint m_application_file_PKC primary key (application_file_id,judgement_item_id)
) ;

create unique index idx_m_application_file
  on m_application_file(judgement_item_id,application_file_id);

-- M_�敪����
drop table if exists m_category_judgement cascade;

create table m_category_judgement (
  judgement_item_id character varying(10) not null
  , department_id character varying(10)
  , category_1 text
  , category_2 text
  , category_3 text
  , category_4 text
  , category_5 text
  , category_6 text
  , category_7 text
  , category_8 text
  , category_9 text
  , category_10 text
  , gis_judgement char(1)
  , buffer double precision
  , display_attribute_flag char(1)
  , judgement_layer character varying(100)
  , title text
  , applicable_summary text
  , applicable_description text
  , non_applicable_display_flag char(1)
  , non_applicable_summary text
  , non_applicable_description text
  , table_name text
  , field_name text
  , non_applicable_layer_display_flag char(1)
  , simultaneous_display_layer text
  , simultaneous_display_layer_flag char(1)
  , disp_order double precision
  , answer_require_flag char(1)
  , default_answer text
  , answer_editable_flag char(1)
  , answer_days integer
  , constraint m_category_judgement_PKC primary key (judgement_item_id)
) ;

create unique index idx_m_category_judgement
  on m_category_judgement(judgement_item_id);

-- M_�\���敪
drop table if exists m_application_category cascade;

create table m_application_category (
  category_id character varying(10) not null
  , view_id character varying(10) not null
  , "order" integer
  , label_name character varying(256)
  , constraint m_application_category_PKC primary key (category_id,view_id)
) ;

create unique index idx_m_application_category
  on m_application_category(view_id,category_id);

-- M_�\���敪�I�����
drop table if exists m_application_category_selection_view cascade;

create table m_application_category_selection_view (
  view_id character varying(10) not null
  , view_flag character(1)
  , multiple_flag character(1)
  , require_flag character(1)
  , title text
  , description text
  , judgement_type text
  , constraint m_application_category_selection_view_PKC primary key (view_id)
) ;

create unique index idx_m_application_category_selection_view
  on m_application_category_selection_view(view_id);

comment on table o_inquiry_address is 'O_�⍇������';
comment on column o_inquiry_address.inquiry_address_id is '�⍇������ID';
comment on column o_inquiry_address.message_id is '���b�Z�[�WID';
comment on column o_inquiry_address.department_id is '����ID';
comment on column o_inquiry_address.read_flag is '���ǃt���O:1:���� 0����';
comment on column o_inquiry_address.answer_complete_flag is '�񓚍ς݃t���O:1: �񓚍ς� 0: ����';

comment on table m_road_judge_label is 'M_���H���胉�x��';
comment on column m_road_judge_label.label_id is '���x��ID';
comment on column m_road_judge_label.replace_identify is '�u�����ʎq';
comment on column m_road_judge_label.index_value is '�C���f�b�N�X�l';
comment on column m_road_judge_label.index_text is '�C���f�b�N�X������';
comment on column m_road_judge_label.min_value is '�ŏ��l';
comment on column m_road_judge_label.max_value is '�ő�l';
comment on column m_road_judge_label.replace_text is '�u���e�L�X�g';

comment on table o_inquiry_file is 'O_�⍇���t�@�C��';
comment on column o_inquiry_file.inquiry_file_id is '�⍇���t�@�C��ID';
comment on column o_inquiry_file.message_id is '���b�Z�[�WID';
comment on column o_inquiry_file.file_name is '�t�@�C����';
comment on column o_inquiry_file.file_path is '�t�@�C���p�X';
comment on column o_inquiry_file.register_datetime is '�o�^����';

comment on table m_answer_template is 'M_�񓚃e���v���[�g';
comment on column m_answer_template.answer_template_id is '�񓚃e���v���[�gID';
comment on column m_answer_template.disp_order is '�\����';
comment on column m_answer_template.answer_template_text is '�񓚃e���v���[�g�e�L�X�g';
comment on column m_answer_template.judgement_item_id is '���荀��ID';

comment on table o_answer_file_history is 'O_�񓚃t�@�C���X�V����';
comment on column o_answer_file_history.answer_file_history_id is '�񓚃t�@�C������ID';
comment on column o_answer_file_history.answer_file_id is '�񓚃t�@�C��ID';
comment on column o_answer_file_history.answer_id is '��ID';
comment on column o_answer_file_history.update_type is '�X�V�^�C�v:1:�ǉ�2:�X�V3:�폜';
comment on column o_answer_file_history.update_user_id is '�X�V��ID';
comment on column o_answer_file_history.update_datetime is '�X�V����';
comment on column o_answer_file_history.notify_flag is '�ʒm�t���O:1:�ʒm�ς� 0:���ʒm';

comment on table o_answer_history is 'O_�񓚗���';
comment on column o_answer_history.answer_history_id is '�񓚗���ID';
comment on column o_answer_history.answer_id is '��ID';
comment on column o_answer_history.answer_user_id is '�񓚎�ID';
comment on column o_answer_history.answer_datetime is '�񓚓���';
comment on column o_answer_history.answer_text is '�񓚕���';
comment on column o_answer_history.notify_flag is '�ʒm�t���O:1:�ʒm�ς� 0:���ʒm';

comment on table o_message is 'O_���b�Z�[�W';
comment on column o_message.message_id is '���b�Z�[�WID';
comment on column o_message.chat_id is '�`���b�gID';
comment on column o_message.message_type is '���b�Z�[�W�^�C�v:1: ���Ǝҁ��s�� 2:�s�������Ǝ� 3:�s�����s��';
comment on column o_message.sender_id is '���M��ID:���M�҂̃��[�UID.���Ǝ҂̏ꍇ-1';
comment on column o_message.to_department_id is '���敔��ID:����̕���ID.���Ǝ҂̏ꍇ-1';
comment on column o_message.message_text is '���b�Z�[�W�{��';
comment on column o_message.send_datetime is '���M����';
comment on column o_message.read_flag is '���ǃt���O:1:���� 0����';
comment on column o_message.answer_complete_flag is '�񓚍ς݃t���O:���Ǝҁ��s���A�s�����s���̃��b�Z�[�W�^�C�v�ŎQ�ƁB
1: �񓚍ς� 0: ����';

comment on table o_chat is 'O_�`���b�g';
comment on column o_chat.chat_id is '�`���b�gID';
comment on column o_chat.answer_id is '��ID';
comment on column o_chat.government_answer_datetime is '�s���񓚓���';
comment on column o_chat.establishment_first_post_datetime is '���Ǝҏ��񓊍e����';
comment on column o_chat.last_answerer_id is '�ŏI�񓚎�ID';
comment on column o_chat.establishment_post_datetime is '���Ǝғ��e����';

comment on table m_government_user is 'M_�s�����[�U';
comment on column m_government_user.user_id is '���[�UID';
comment on column m_government_user.login_id is '���O�C��ID';
comment on column m_government_user.password is '�p�X���[�h';
comment on column m_government_user.role_code is '���[���R�[�h:1: ���Ǝ� 2: �s��';
comment on column m_government_user.department_id is '����ID';
comment on column m_government_user.user_name is '����';

comment on table m_application_search_result is 'M_�\����񌟍�����';
comment on column m_application_search_result.application_search_result_id is '�\����񌟍�����ID';
comment on column m_application_search_result.reference_type is '�Q�ƃ^�C�v:0:�\���敪 1:�\���ҏ��';
comment on column m_application_search_result.display_column_name is '�\���J������:��ʕ\������J������';
comment on column m_application_search_result.display_order is '�\����';
comment on column m_application_search_result.table_name is '�e�[�u����:�Q�ƃe�[�u����';
comment on column m_application_search_result.table_column_name is '�e�[�u���J������:�Q�ƃJ������';
comment on column m_application_search_result.response_key is '���X�|���X�L�[:���X�|���XJSON�̃L�[';
comment on column m_application_search_result.table_width is '�e�[�u����';

comment on table m_lot_number_search_result_definition is 'M_�n�Ԍ������ʒ�`';
comment on column m_lot_number_search_result_definition.lot_number_search_definition_id is '�n�Ԍ������ʒ�`ID';
comment on column m_lot_number_search_result_definition.display_order is '�\����';
comment on column m_lot_number_search_result_definition.table_type is '�e�[�u�����:1:F_�n�ԃe�[�u�� 0:F_�厚�e�[�u��';
comment on column m_lot_number_search_result_definition.display_column_name is '�\���J������:��ʕ\������J������';
comment on column m_lot_number_search_result_definition.table_column_name is '�e�[�u���J������:�n�Ԍ������ʕ\���J���������w��';
comment on column m_lot_number_search_result_definition.table_width is '�e�[�u����:%�w��.�f�[�^�J�����̕��̍��v��100%�ƂȂ�悤�ɐݒ�.';
comment on column m_lot_number_search_result_definition.response_key is '���X�|���X�L�[:���X�|���XJSON�L�[';

comment on table o_application_category is 'O_�\���敪';
comment on column o_application_category.application_id is '�\��ID';
comment on column o_application_category.view_id is '���ID';
comment on column o_application_category.category_id is '�\���敪ID';

comment on table o_answer_file is 'O_�񓚃t�@�C��';
comment on column o_answer_file.answer_file_id is '�񓚃t�@�C��ID:�t�@�C�����Ƃɕt�^������ӂ�ID';
comment on column o_answer_file.answer_id is '��ID';
comment on column o_answer_file.answer_file_name is '�񓚃t�@�C����';
comment on column o_answer_file.file_path is '�t�@�C���p�X';
comment on column o_answer_file.notified_file_path is '�ʒm�ς݃t�@�C���p�X:�ʒm�ς݂̉񓚃t�@�C���p�X';
comment on column o_answer_file.delete_unnotified_flag is '�폜���ʒm�t���O:1:�폜�ς݁E���ʒm';
comment on column o_answer_file.delete_flag is '�폜�t���O:1:�폜�ς�';

comment on table o_application_file is 'O_�\���t�@�C��';
comment on column o_application_file.file_id is '�t�@�C��ID:�t�@�C�����Ƃɕt�^������ӂ�ID';
comment on column o_application_file.application_id is '�\��ID';
comment on column o_application_file.application_file_id is '�\���t�@�C��ID';
comment on column o_application_file.upload_file_name is '�A�b�v���[�h�t�@�C����';
comment on column o_application_file.file_path is '�t�@�C���p�X';
comment on column o_application_file.extension is '�g���q:�A�b�v���[�h���ꂽ�t�@�C���̊g���q';
comment on column o_application_file.version_information is '�ŏ��';
comment on column o_application_file.upload_datetime is '�A�b�v���[�h����';

comment on table o_application_lot_number is 'O_�\���n��';
comment on column o_application_lot_number.lot_number_id is '�n��ID';
comment on column o_application_lot_number.application_id is '�\��ID';
comment on column o_application_lot_number.regeister_datetime is '�o�^����';

comment on table o_answer is 'O_��';
comment on column o_answer.answer_id is '��ID';
comment on column o_answer.application_id is '�\��ID';
comment on column o_answer.judgement_id is '���荀��ID';
comment on column o_answer.judgement_result is '���茋��';
comment on column o_answer.answer_content is '�񓚓��e:�ŐV�̉񓚓��e';
comment on column o_answer.notified_text is '�ʒm�e�L�X�g:�ʒm�ς݂̉񓚓��e';
comment on column o_answer.register_datetime is '�o�^����';
comment on column o_answer.update_datetime is '�X�V����';
comment on column o_answer.complete_flag is '�����t���O:1: ���� 0: ������';
comment on column o_answer.notified_flag is '�ʒm�t���O:1:�ʒm�ς� 0:���ʒm';
comment on column o_answer.re_application_flag is '�Đ\���t���O:1:�Đ\�� 0:����';
comment on column o_answer.business_reapplication_flag is '���ƎҍĐ\���t���O:���Ǝ҂ɒʒm�ς݂̍Đ\���t���O 1:�Đ\�� 0:����';

comment on table m_layer is 'M_���C��';
comment on column m_layer.layer_id is '���C��ID';
comment on column m_layer.layer_type is '���C�����:1: ����Ώۃ��C�� 0: �֘A���C��';
comment on column m_layer.layer_name is '���C����:��ʂɕ\�����郌�C����';
comment on column m_layer.table_name is '�e�[�u����:�t�B�[�`���e�[�u���i�[�e�[�u����';
comment on column m_layer.layer_code is '���C���R�[�h:GeoServer��̃��C��ID';
comment on column m_layer.layer_query is '���C���N�G��:GeoServer�Ƀ��N�G�X�g�𓊂���ۂ̃N�G��������';
comment on column m_layer.query_require_flag is '�N�G���K�{�t���O:1: �K�{ 0:�s�v';

comment on table m_applicant_information_item is 'M_�\���ҏ�񍀖�';
comment on column m_applicant_information_item.applicant_information_item_id is '�\���ҏ�񍀖�ID';
comment on column m_applicant_information_item.display_order is '����';
comment on column m_applicant_information_item.display_flag is '�\���L��';
comment on column m_applicant_information_item.require_flag is '�K�{�L��';
comment on column m_applicant_information_item.item_name is '���ږ�';
comment on column m_applicant_information_item.regex is '���K�\��:��̏ꍇ���K�\���`�F�b�N�͂��Ȃ�';
comment on column m_applicant_information_item.mail_address is '���[���A�h���X:1=���[���A�h���X';
comment on column m_applicant_information_item.search_condition_flag is '���������\���L��';

comment on table m_label is 'M_���x��';
comment on column m_label.view_code is '��ʃR�[�h';
comment on column m_label.label_id is '���x��ID';
comment on column m_label.label_key is '���x���L�[';
comment on column m_label.label_type is '���:0:���Ǝҍs���Ƃ��Ɏg�p 1:���Ǝ҂̂ݎg�p 2:�s���̂ݎg�p';
comment on column m_label.label_text is '�e�L�X�g';

comment on table o_applicant_information is 'O_�\���ҏ��';
comment on column o_applicant_information.application_id is '�\��ID';
comment on column o_applicant_information.applicant_id is '�\���ҏ��ID';
comment on column o_applicant_information.item_1 is '����1:�\���ҏ�񍀖�ID=1001�̓o�^�l���i�[';
comment on column o_applicant_information.item_2 is '����2:�\���ҏ�񍀖�ID=1002�̓o�^�l���i�[';
comment on column o_applicant_information.item_3 is '����3:�\���ҏ�񍀖�ID=1003�̓o�^�l���i�[';
comment on column o_applicant_information.item_4 is '����4:�\���ҏ�񍀖�ID=1004�̓o�^�l���i�[';
comment on column o_applicant_information.item_5 is '����5:�\���ҏ�񍀖�ID=1005�̓o�^�l���i�[';
comment on column o_applicant_information.item_6 is '����6:�\���ҏ�񍀖�ID=1006�̓o�^�l���i�[';
comment on column o_applicant_information.item_7 is '����7:�\���ҏ�񍀖�ID=1007�̓o�^�l���i�[';
comment on column o_applicant_information.item_8 is '����8:�\���ҏ�񍀖�ID=1008�̓o�^�l���i�[';
comment on column o_applicant_information.item_9 is '����9:�\���ҏ�񍀖�ID=1009�̓o�^�l���i�[';
comment on column o_applicant_information.item_10 is '����10:�\���ҏ�񍀖�ID=1010�̓o�^�l���i�[';
comment on column o_applicant_information.mail_address is '���[���A�h���X:�ʒm�Ɏg�p���郁�[���A�h���X';
comment on column o_applicant_information.collation_id is '�ƍ�ID';
comment on column o_applicant_information.password is '�p�X���[�h:�n�b�V�������Ċi�[';

comment on table m_department is 'M_����';
comment on column m_department.department_id is '����ID';
comment on column m_department.department_name is '������';
comment on column m_department.mail_address is '���[���A�h���X:�ʒm��̃��[���A�h���X���J���}��؂�ŕێ�';
comment on column m_department.answer_authority_flag is '�񓚌����t���O';

comment on table o_application is 'O_�\��';
comment on column o_application.application_id is '�\��ID';
comment on column o_application.applicant_id is '�\���ҏ��ID';
comment on column o_application.status is '�X�e�[�^�X:0:�\���� 1:�񓚒��i���񓚉ۂ���j2:�񓚊��� 3:�ʒm�ς݁i�Đ\���s�v�j4:�ʒm�ς݁i�v�Đ\���j';
comment on column o_application.register_status is '�o�^�X�e�[�^�X:0: ���\���� 1: �\���ς�';
comment on column o_application.collation_text is '�ƍ�������:�{�o�^���̏ƍ�������';
comment on column o_application.version_information is '�ŏ��';
comment on column o_application.register_datetime is '�o�^����';
comment on column o_application.update_datetime is '�X�V����';

comment on table m_application_file is 'M_�\���t�@�C��';
comment on column m_application_file.application_file_id is '�\���t�@�C��ID';
comment on column m_application_file.judgement_item_id is '���荀��ID';
comment on column m_application_file.require_flag is '�K�{�L��:1:�K�{ 0:�C��';
comment on column m_application_file.upload_file_name is '�A�b�v���[�h�t�@�C����';
comment on column m_application_file.extension is '�g���q:���p�\�Ȋg���q���J���}��؂�';

comment on table m_category_judgement is 'M_�敪����';
comment on column m_category_judgement.judgement_item_id is '���荀��ID';
comment on column m_category_judgement.department_id is '�S������ID';
comment on column m_category_judgement.category_1 is '�敪1:���ID1001�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_2 is '�敪2:���ID1002�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_3 is '�敪3:���ID1003�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_4 is '�敪4:���ID1004�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_5 is '�敪5:���ID1005�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_6 is '�敪6:���ID1006�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_7 is '�敪7:���ID1007�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_8 is '�敪8:���ID1008�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_9 is '�敪9:���ID1009�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.category_10 is '�敪10:���ID1010�ƑΉ�.
�Ώۂ̐\���敪ID���J���}��؂�Ŋi�[.
����ɗp���Ȃ��ꍇ0���i�[.';
comment on column m_category_judgement.gis_judgement is 'GIS����:0: GIS����Ȃ� 1: �d�Ȃ蔻�� 2: �d�Ȃ�Ȃ����� 3: �o�b�t�@���� 4: �o�b�t�@�d�Ȃ�Ȃ����� 5:���H����';
comment on column m_category_judgement.buffer is '�o�b�t�@:�o�b�t�@���莞�̃o�b�t�@���a (m)';
comment on column m_category_judgement.display_attribute_flag is '�d�Ȃ葮���\���t���O:0: �����\���Ȃ� 1: ��؂蕶���ŋ�؂��ĕ\�� 2:���s�\�� 3:�T���f�f���ʈꗗ�e�[�u���ōs�𕪂��ĕ\��';
comment on column m_category_judgement.judgement_layer is '����Ώۃ��C��:GIS����Ŏg�p���郌�C���̃��C��ID�i�J���}��؂�j';
comment on column m_category_judgement.title is '�^�C�g��';
comment on column m_category_judgement.applicable_summary is '�Y���\���T�v';
comment on column m_category_judgement.applicable_description is '�Y���\������';
comment on column m_category_judgement.non_applicable_display_flag is '��Y���\���L��:1:�\�� 0:��\��';
comment on column m_category_judgement.non_applicable_summary is '��Y���\���T�v';
comment on column m_category_judgement.non_applicable_description is '��Y���\������';
comment on column m_category_judgement.table_name is '�e�[�u����:�����̃��x���Ƃ��Ďg�p����e�[�u����';
comment on column m_category_judgement.field_name is '�t�B�[���h��:�����̃��x���Ƃ��Ďg�p����t�B�[���h��';
comment on column m_category_judgement.non_applicable_layer_display_flag is '���背�C����Y�����\���L��:1:�\�� 0:��\��';
comment on column m_category_judgement.simultaneous_display_layer is '�����\�����C��:�Y���f�f���ʉ�ʂœ����\������֘A���C���̃��C��ID�i�J���}��؂�j';
comment on column m_category_judgement.simultaneous_display_layer_flag is '�����\�����C���\���L��:1:�\�� 0: ��\��';
comment on column m_category_judgement.disp_order is '�\����';
comment on column m_category_judgement.answer_require_flag is '�񓚕K�{�t���O:1:�񓚕K�{ 0:�񓚔C��';
comment on column m_category_judgement.default_answer is '�f�t�H���g��:�񓚔C�ӂ̍��ڂɓo�^���鏉���񓚕���';
comment on column m_category_judgement.answer_editable_flag is '�ҏW�\�t���O :1:�ҏW�\ 0:�ҏW�s��';
comment on column m_category_judgement.answer_days is '�񓚓���';

comment on table m_application_category is 'M_�\���敪';
comment on column m_application_category.category_id is '�\���敪ID';
comment on column m_application_category.view_id is '���ID';
comment on column m_application_category.order is '����';
comment on column m_application_category.label_name is '�I������';

comment on table m_application_category_selection_view is 'M_�\���敪�I�����';
comment on column m_application_category_selection_view.view_id is '���ID';
comment on column m_application_category_selection_view.view_flag is '�\���L��:1=�\��, 0=��\��';
comment on column m_application_category_selection_view.multiple_flag is '�����I��L��:1=�����I���Ȃ� 0=�����I������';
comment on column m_application_category_selection_view.require_flag is '�K�{�L��:1=�I��K�{ 0=�I��C��';
comment on column m_application_category_selection_view.title is '�^�C�g��';
comment on column m_application_category_selection_view.description is '������';
comment on column m_application_category_selection_view.judgement_type is '�T���f�f�^�C�v:�J���}��؂�w��';

