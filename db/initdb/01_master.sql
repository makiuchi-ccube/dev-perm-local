-- -------------------------------------------------------------
-- TablePlus 6.6.8(632)
--
-- https://tableplus.com/
--
-- Database: devps_db
-- Generation Time: 2025-08-09 10:59:23.0670
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."m_road_judge_label";
-- Table Definition
CREATE TABLE "public"."m_road_judge_label" (
    "label_id" int4 NOT NULL,
    "replace_identify" text,
    "index_value" int4,
    "index_text" text,
    "min_value" float8,
    "max_value" float8,
    "replace_text" text,
    PRIMARY KEY ("label_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_road_judge_label"."label_id" IS 'ラベルID';
COMMENT ON COLUMN "public"."m_road_judge_label"."replace_identify" IS '置換識別子';
COMMENT ON COLUMN "public"."m_road_judge_label"."index_value" IS 'インデックス値';
COMMENT ON COLUMN "public"."m_road_judge_label"."index_text" IS 'インデックス文字列';
COMMENT ON COLUMN "public"."m_road_judge_label"."min_value" IS '最小値';
COMMENT ON COLUMN "public"."m_road_judge_label"."max_value" IS '最大値';
COMMENT ON COLUMN "public"."m_road_judge_label"."replace_text" IS '置換テキスト';

DROP TABLE IF EXISTS "public"."m_answer_template";
-- Table Definition
CREATE TABLE "public"."m_answer_template" (
    "answer_template_id" int4 NOT NULL,
    "disp_order" int4,
    "answer_template_text" text,
    "judgement_item_id" varchar(10) NOT NULL,
    PRIMARY KEY ("answer_template_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_answer_template"."answer_template_id" IS '回答テンプレートID';
COMMENT ON COLUMN "public"."m_answer_template"."disp_order" IS '表示順';
COMMENT ON COLUMN "public"."m_answer_template"."answer_template_text" IS '回答テンプレートテキスト';
COMMENT ON COLUMN "public"."m_answer_template"."judgement_item_id" IS '判定項目ID';

DROP TABLE IF EXISTS "public"."m_government_user";
-- Table Definition
CREATE TABLE "public"."m_government_user" (
    "user_id" varchar(10) NOT NULL,
    "login_id" varchar(50) NOT NULL,
    "password" varchar(1024),
    "role_code" bpchar(1),
    "department_id" varchar(10) NOT NULL,
    "user_name" varchar(100),
    "admin_flag" bpchar(1),
    PRIMARY KEY ("user_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_government_user"."user_id" IS 'ユーザID';
COMMENT ON COLUMN "public"."m_government_user"."login_id" IS 'ログインID';
COMMENT ON COLUMN "public"."m_government_user"."password" IS 'パスワード';
COMMENT ON COLUMN "public"."m_government_user"."role_code" IS 'ロールコード:1: 事業者 2: 行政';
COMMENT ON COLUMN "public"."m_government_user"."department_id" IS '部署ID';
COMMENT ON COLUMN "public"."m_government_user"."user_name" IS '氏名';
COMMENT ON COLUMN "public"."m_government_user"."admin_flag" IS '管理者フラグ:0:一般ユーザ、1:管理者';

DROP TABLE IF EXISTS "public"."m_application_search_result";
-- Table Definition
CREATE TABLE "public"."m_application_search_result" (
    "application_search_result_id" varchar(10) NOT NULL,
    "reference_type" bpchar(1),
    "display_column_name" varchar(100),
    "display_order" int4,
    "table_name" varchar(100),
    "table_column_name" varchar(100),
    "response_key" varchar(100),
    "table_width" float4,
    PRIMARY KEY ("application_search_result_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_search_result"."application_search_result_id" IS '申請情報検索結果ID';
COMMENT ON COLUMN "public"."m_application_search_result"."reference_type" IS '参照タイプ:0:申請区分 1:申請者情報 2:その他';
COMMENT ON COLUMN "public"."m_application_search_result"."display_column_name" IS '表示カラム名:画面表示するカラム名';
COMMENT ON COLUMN "public"."m_application_search_result"."display_order" IS '表示順';
COMMENT ON COLUMN "public"."m_application_search_result"."table_name" IS 'テーブル名:参照テーブル名';
COMMENT ON COLUMN "public"."m_application_search_result"."table_column_name" IS 'テーブルカラム名:参照カラム名';
COMMENT ON COLUMN "public"."m_application_search_result"."response_key" IS 'レスポンスキー:レスポンスJSONのキー';
COMMENT ON COLUMN "public"."m_application_search_result"."table_width" IS 'テーブル幅';

DROP TABLE IF EXISTS "public"."m_lot_number_search_result_definition";
-- Table Definition
CREATE TABLE "public"."m_lot_number_search_result_definition" (
    "lot_number_search_definition_id" varchar(10) NOT NULL,
    "display_order" int4,
    "table_type" bpchar(1),
    "display_column_name" varchar(50),
    "table_column_name" varchar(100),
    "table_width" float4,
    "response_key" varchar(100)
);

-- Column Comment
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."lot_number_search_definition_id" IS '地番検索結果定義ID';
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."display_order" IS '表示順';
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."table_type" IS 'テーブル種別:1:F_地番テーブル 0:F_大字テーブル';
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."display_column_name" IS '表示カラム名:画面表示するカラム名';
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."table_column_name" IS 'テーブルカラム名:地番検索結果表示カラム名を指定';
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."table_width" IS 'テーブル幅:%指定.データカラムの幅の合計で100%となるように設定.';
COMMENT ON COLUMN "public"."m_lot_number_search_result_definition"."response_key" IS 'レスポンスキー:レスポンスJSONキー';

DROP TABLE IF EXISTS "public"."m_layer";
-- Table Definition
CREATE TABLE "public"."m_layer" (
    "layer_id" varchar(10) NOT NULL,
    "layer_type" bpchar(1),
    "layer_name" varchar(256),
    "table_name" varchar(30),
    "layer_code" varchar(256),
    "layer_query" varchar(256) DEFAULT ''::character varying,
    "query_require_flag" bpchar(1),
    PRIMARY KEY ("layer_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_layer"."layer_id" IS 'レイヤID';
COMMENT ON COLUMN "public"."m_layer"."layer_type" IS 'レイヤ種別:1: 判定対象レイヤ 0: 関連レイヤ';
COMMENT ON COLUMN "public"."m_layer"."layer_name" IS 'レイヤ名:画面に表示するレイヤ名';
COMMENT ON COLUMN "public"."m_layer"."table_name" IS 'テーブル名:フィーチャテーブル格納テーブル名';
COMMENT ON COLUMN "public"."m_layer"."layer_code" IS 'レイヤコード:GeoServer上のレイヤID';
COMMENT ON COLUMN "public"."m_layer"."layer_query" IS 'レイヤクエリ:GeoServerにリクエストを投げる際のクエリ文字列';
COMMENT ON COLUMN "public"."m_layer"."query_require_flag" IS 'クエリ必須フラグ:1: 必須 0:不要';

DROP TABLE IF EXISTS "public"."m_applicant_information_item";
-- Table Definition
CREATE TABLE "public"."m_applicant_information_item" (
    "applicant_information_item_id" varchar(10) NOT NULL,
    "display_order" int4,
    "display_flag" bpchar(1),
    "require_flag" bpchar(1),
    "item_name" varchar(256),
    "regex" varchar(256),
    "mail_address" bpchar(1),
    "search_condition_flag" bpchar(1),
    "item_type" bpchar(1) NOT NULL,
    "application_step" text,
    "add_information_item_flag" bpchar(1),
    "contact_address_flag" bpchar(1),
    PRIMARY KEY ("applicant_information_item_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_applicant_information_item"."applicant_information_item_id" IS '申請者情報項目ID';
COMMENT ON COLUMN "public"."m_applicant_information_item"."display_order" IS '昇順';
COMMENT ON COLUMN "public"."m_applicant_information_item"."display_flag" IS '表示有無';
COMMENT ON COLUMN "public"."m_applicant_information_item"."require_flag" IS '必須有無';
COMMENT ON COLUMN "public"."m_applicant_information_item"."item_name" IS '項目名';
COMMENT ON COLUMN "public"."m_applicant_information_item"."regex" IS '正規表現:空の場合正規表現チェックはしない';
COMMENT ON COLUMN "public"."m_applicant_information_item"."mail_address" IS 'メールアドレス:1=メールアドレス';
COMMENT ON COLUMN "public"."m_applicant_information_item"."search_condition_flag" IS '検索条件表示有無';
COMMENT ON COLUMN "public"."m_applicant_information_item"."item_type" IS '項目型:0:1行のみの入力欄で表示、
1:複数行の入力欄で表示、
2:日付（カレンダー）、
3:数値、
4:ドロップダウン単一選択
5:ドロップダウン複数選択';
COMMENT ON COLUMN "public"."m_applicant_information_item"."application_step" IS '申請段階:申請段階IDはカンマ区切りで保持';
COMMENT ON COLUMN "public"."m_applicant_information_item"."add_information_item_flag" IS '追加情報フラグ:0:申請者情報項目、1:申請追加情報項目';
COMMENT ON COLUMN "public"."m_applicant_information_item"."contact_address_flag" IS '連絡先フラグ:1:連絡先として表示 0:連絡先として表示しない';

DROP TABLE IF EXISTS "public"."m_label";
-- Table Definition
CREATE TABLE "public"."m_label" (
    "view_code" varchar(10) NOT NULL,
    "label_id" varchar(10) NOT NULL,
    "label_key" varchar(50),
    "label_type" bpchar(1),
    "label_text" text,
    "application_step" text NOT NULL,
    PRIMARY KEY ("view_code","label_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_label"."view_code" IS '画面コード';
COMMENT ON COLUMN "public"."m_label"."label_id" IS 'ラベルID';
COMMENT ON COLUMN "public"."m_label"."label_key" IS 'ラベルキー';
COMMENT ON COLUMN "public"."m_label"."label_type" IS '種別:0:事業者行政ともに使用 1:事業者のみ使用 2:行政のみ使用';
COMMENT ON COLUMN "public"."m_label"."label_text" IS 'テキスト';
COMMENT ON COLUMN "public"."m_label"."application_step" IS '申請段階:申請段階IDはカンマ区切りで保持
申請段階IDを問わず、常に表示する場合、「all」で書く';

DROP TABLE IF EXISTS "public"."m_department";
-- Table Definition
CREATE TABLE "public"."m_department" (
    "department_id" varchar(10) NOT NULL,
    "department_name" text,
    "mail_address" text,
    "admin_mail_address" text,
    "answer_authority_flag" bpchar(1),
    PRIMARY KEY ("department_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_department"."department_id" IS '部署ID';
COMMENT ON COLUMN "public"."m_department"."department_name" IS '部署名';
COMMENT ON COLUMN "public"."m_department"."mail_address" IS 'メールアドレス:通知先のメールアドレスをカンマ区切りで保持';
COMMENT ON COLUMN "public"."m_department"."admin_mail_address" IS '管理者メールアドレス:該当部署の管理者の通知先のメールアドレスをカンマ区切りで保持';
COMMENT ON COLUMN "public"."m_department"."answer_authority_flag" IS '回答権限フラグ:1:統括部署';

DROP TABLE IF EXISTS "public"."m_application_file";
-- Table Definition
CREATE TABLE "public"."m_application_file" (
    "application_file_id" varchar(10) NOT NULL,
    "judgement_item_id" varchar(10) NOT NULL,
    "require_flag" bpchar(1),
    "upload_file_name" text,
    "extension" varchar(200),
    "application_file_type" bpchar(1),
    PRIMARY KEY ("application_file_id","judgement_item_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_file"."application_file_id" IS '申請ファイルID';
COMMENT ON COLUMN "public"."m_application_file"."judgement_item_id" IS '判定項目ID';
COMMENT ON COLUMN "public"."m_application_file"."require_flag" IS '必須有無:1:必須 0:任意 2:任意(注意文言あり)';
COMMENT ON COLUMN "public"."m_application_file"."upload_file_name" IS 'アップロードファイル名';
COMMENT ON COLUMN "public"."m_application_file"."extension" IS '拡張子:利用可能な拡張子をカンマ区切り';
COMMENT ON COLUMN "public"."m_application_file"."application_file_type" IS '申請ファイル種別:1:開発登録簿に含める';

DROP TABLE IF EXISTS "public"."m_category_judgement";
-- Table Definition
CREATE TABLE "public"."m_category_judgement" (
    "judgement_item_id" varchar(10) NOT NULL,
    "gis_judgement" bpchar(1),
    "buffer" float8,
    "display_attribute_flag" bpchar(1),
    "judgement_layer" varchar(100),
    "table_name" text,
    "field_name" text,
    "non_applicable_layer_display_flag" bpchar(1),
    "simultaneous_display_layer" text,
    "simultaneous_display_layer_flag" bpchar(1),
    "disp_order" float8,
    PRIMARY KEY ("judgement_item_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_category_judgement"."judgement_item_id" IS '判定項目ID';
COMMENT ON COLUMN "public"."m_category_judgement"."gis_judgement" IS 'GIS判定:0: GIS判定なし 1: 重なり判定 2: 重ならない判定 3: バッファ判定 4: バッファ重ならない判定 5:道路判定';
COMMENT ON COLUMN "public"."m_category_judgement"."buffer" IS 'バッファ:バッファ判定時のバッファ半径 (m)';
COMMENT ON COLUMN "public"."m_category_judgement"."display_attribute_flag" IS '重なり属性表示フラグ:0: 属性表示なし 1: 区切り文字で区切って表示 2:改行表示 3:概況診断結果一覧テーブルで行を分けて表示';
COMMENT ON COLUMN "public"."m_category_judgement"."judgement_layer" IS '判定対象レイヤ:GIS判定で使用するレイヤのレイヤID（カンマ区切り）';
COMMENT ON COLUMN "public"."m_category_judgement"."table_name" IS 'テーブル名:文言のラベルとして使用するテーブル名';
COMMENT ON COLUMN "public"."m_category_judgement"."field_name" IS 'フィールド名:文言のラベルとして使用するフィールド名';
COMMENT ON COLUMN "public"."m_category_judgement"."non_applicable_layer_display_flag" IS '判定レイヤ非該当時表示有無:1:表示 0:非表示';
COMMENT ON COLUMN "public"."m_category_judgement"."simultaneous_display_layer" IS '同時表示レイヤ:該当診断結果画面で同時表示する関連レイヤのレイヤID（カンマ区切り）';
COMMENT ON COLUMN "public"."m_category_judgement"."simultaneous_display_layer_flag" IS '同時表示レイヤ表示有無:1:表示 0: 非表示';
COMMENT ON COLUMN "public"."m_category_judgement"."disp_order" IS '表示順';

DROP TABLE IF EXISTS "public"."m_application_category";
-- Table Definition
CREATE TABLE "public"."m_application_category" (
    "category_id" varchar(10) NOT NULL,
    "view_id" varchar(10) NOT NULL,
    "order" int4,
    "label_name" varchar(256),
    PRIMARY KEY ("category_id","view_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_category"."category_id" IS '申請区分ID';
COMMENT ON COLUMN "public"."m_application_category"."view_id" IS '画面ID';
COMMENT ON COLUMN "public"."m_application_category"."order" IS '昇順';
COMMENT ON COLUMN "public"."m_application_category"."label_name" IS '選択肢名';

DROP TABLE IF EXISTS "public"."m_application_category_selection_view";
-- Table Definition
CREATE TABLE "public"."m_application_category_selection_view" (
    "view_id" varchar(10) NOT NULL,
    "view_flag" bpchar(1),
    "multiple_flag" bpchar(1),
    "require_flag" bpchar(1),
    "title" text,
    "description" text,
    "judgement_type" text,
    PRIMARY KEY ("view_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_category_selection_view"."view_id" IS '画面ID';
COMMENT ON COLUMN "public"."m_application_category_selection_view"."view_flag" IS '表示有無:1=表示, 0=非表示';
COMMENT ON COLUMN "public"."m_application_category_selection_view"."multiple_flag" IS '複数選択有無:1=複数選択なし 0=複数選択あり';
COMMENT ON COLUMN "public"."m_application_category_selection_view"."require_flag" IS '必須有無:1=選択必須 0=選択任意';
COMMENT ON COLUMN "public"."m_application_category_selection_view"."title" IS 'タイトル';
COMMENT ON COLUMN "public"."m_application_category_selection_view"."description" IS '説明文';
COMMENT ON COLUMN "public"."m_application_category_selection_view"."judgement_type" IS '申請種類:1=開発許可, 0=建築確認
カンマ区切りで格納';

DROP TABLE IF EXISTS "public"."m_calendar";
-- Table Definition
CREATE TABLE "public"."m_calendar" (
    "cal_date" date NOT NULL,
    "week_day" int4,
    "biz_day_flag" bpchar(1),
    "comment" varchar(25),
    PRIMARY KEY ("cal_date")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_calendar"."cal_date" IS 'カレンダー日付:日付';
COMMENT ON COLUMN "public"."m_calendar"."week_day" IS '曜日:1:日曜日、2:月曜日、3:火曜日、4:水曜日、5:木曜日、6;金曜日、7:土曜日';
COMMENT ON COLUMN "public"."m_calendar"."biz_day_flag" IS '営業日フラグ:1:営業日、0:非営業日';
COMMENT ON COLUMN "public"."m_calendar"."comment" IS '備考:備考';

DROP TABLE IF EXISTS "public"."m_development_document";
-- Table Definition
CREATE TABLE "public"."m_development_document" (
    "development_document_id" int4 NOT NULL,
    "document_name" text,
    "document_type" bpchar(1),
    PRIMARY KEY ("development_document_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_development_document"."development_document_id" IS '開発登録簿マスタID:1:最終提出書類 2:全提出書類 3:開発登録簿 固定';
COMMENT ON COLUMN "public"."m_development_document"."document_name" IS '書類名';
COMMENT ON COLUMN "public"."m_development_document"."document_type" IS '書類種類:1:開発登録簿（帳票アップロード時に業務データ生成）';

DROP TABLE IF EXISTS "public"."m_ledger_label";
-- Table Definition
CREATE TABLE "public"."m_ledger_label" (
    "ledger_label_id" varchar(10) NOT NULL,
    "ledger_id" varchar(10),
    "replace_identify" text,
    "table_name" text,
    "export_column_name" text,
    "filter_column_name" text,
    "filter_condition" text,
    "item_id_1" text,
    "item_id_2" text,
    "convert_order" text,
    "convert_format" text,
    PRIMARY KEY ("ledger_label_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_ledger_label"."ledger_label_id" IS '帳票ラベルID';
COMMENT ON COLUMN "public"."m_ledger_label"."ledger_id" IS '帳票マスタID';
COMMENT ON COLUMN "public"."m_ledger_label"."replace_identify" IS '置換識別子';
COMMENT ON COLUMN "public"."m_ledger_label"."table_name" IS 'テーブル名:出力に使用するテーブル名';
COMMENT ON COLUMN "public"."m_ledger_label"."export_column_name" IS '出力カラム名:出力に使用するカラム名';
COMMENT ON COLUMN "public"."m_ledger_label"."filter_column_name" IS 'フィルタカラム名';
COMMENT ON COLUMN "public"."m_ledger_label"."filter_condition" IS 'フィルタ条件';
COMMENT ON COLUMN "public"."m_ledger_label"."item_id_1" IS '項目ID1';
COMMENT ON COLUMN "public"."m_ledger_label"."item_id_2" IS '項目ID2';
COMMENT ON COLUMN "public"."m_ledger_label"."convert_order" IS '変換オーダ:変換対象1=変換値,変換対象2=変換値,…のフォーマットで指定 
round=x 丸める桁数
dateformat=yyyy年mm月dd日 日付の出力フォーマット
day=x 加減算する日数
separate=comma 区切り文字（カンマの場合comma）
japanese=true 和暦表示するか否か';
COMMENT ON COLUMN "public"."m_ledger_label"."convert_format" IS '変換フォーマット:変換後の文字列を埋め込むフォーマット %sで埋込文字列を指定';

DROP TABLE IF EXISTS "public"."m_judgement_authority";
-- Table Definition
CREATE TABLE "public"."m_judgement_authority" (
    "judgement_item_id" varchar(10) NOT NULL,
    "department_id" varchar(10) NOT NULL,
    PRIMARY KEY ("judgement_item_id","department_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_judgement_authority"."judgement_item_id" IS '判定項目ID';
COMMENT ON COLUMN "public"."m_judgement_authority"."department_id" IS '部署ID';

DROP TABLE IF EXISTS "public"."m_applicant_information_item_option";
-- Table Definition
CREATE TABLE "public"."m_applicant_information_item_option" (
    "applicant_information_item_option_id" varchar(10) NOT NULL,
    "applicant_information_item_id" varchar(10),
    "display_order" int4,
    "applicant_information_item_option_name" text,
    PRIMARY KEY ("applicant_information_item_option_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_applicant_information_item_option"."applicant_information_item_option_id" IS '申請情報項目選択肢ID';
COMMENT ON COLUMN "public"."m_applicant_information_item_option"."applicant_information_item_id" IS '申請者情報項目ID';
COMMENT ON COLUMN "public"."m_applicant_information_item_option"."display_order" IS '昇順';
COMMENT ON COLUMN "public"."m_applicant_information_item_option"."applicant_information_item_option_name" IS '選択肢名';

DROP TABLE IF EXISTS "public"."m_authority";
-- Table Definition
CREATE TABLE "public"."m_authority" (
    "department_id" varchar(10) NOT NULL,
    "application_step_id" int4 NOT NULL,
    "answer_authority_flag" bpchar(1) DEFAULT 0,
    "notification_authority_flag" bpchar(1) DEFAULT 0,
    PRIMARY KEY ("department_id","application_step_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_authority"."department_id" IS '部署ID';
COMMENT ON COLUMN "public"."m_authority"."application_step_id" IS '申請段階ID';
COMMENT ON COLUMN "public"."m_authority"."answer_authority_flag" IS '回答権限フラグ:0: 権限なし 1: 権限あり（所属部署のみ操作可）、2：権限あり（他部署も操作可）';
COMMENT ON COLUMN "public"."m_authority"."notification_authority_flag" IS '通知権限フラグ:0: 権限なし 1: 権限あり（所属部署のみ操作可）、2：権限あり（他部署も操作可）';

DROP TABLE IF EXISTS "public"."m_ledger";
-- Table Definition
CREATE TABLE "public"."m_ledger" (
    "ledger_id" varchar(10) NOT NULL,
    "application_step_id" int4,
    "ledger_name" text,
    "display_name" text,
    "template_path" text,
    "output_type" bpchar(1),
    "notification_flag" bpchar(1),
    "ledger_type" bpchar(1),
    "update_flag" bpchar(1),
    "notify_flag" bpchar(1),
    "upload_extension" text,
    "information_text" text,
    PRIMARY KEY ("ledger_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_ledger"."ledger_id" IS '帳票マスタID';
COMMENT ON COLUMN "public"."m_ledger"."application_step_id" IS '申請段階ID';
COMMENT ON COLUMN "public"."m_ledger"."ledger_name" IS '帳票名';
COMMENT ON COLUMN "public"."m_ledger"."display_name" IS '画面表示名:出力種類が１の場合、表示名が設定必要';
COMMENT ON COLUMN "public"."m_ledger"."template_path" IS 'テンプレートパス';
COMMENT ON COLUMN "public"."m_ledger"."output_type" IS '出力種類:0:常に出力、1：画面に選択されたレコードがあれば出力';
COMMENT ON COLUMN "public"."m_ledger"."notification_flag" IS '受領時通知要否:事業者側で帳票をダウンロードする時、行政へ通知要否を保持
0:通知不要、1:通知必要';
COMMENT ON COLUMN "public"."m_ledger"."ledger_type" IS '帳票種類:1:開発登録簿に含める帳票';
COMMENT ON COLUMN "public"."m_ledger"."update_flag" IS '更新フラグ:1:更新可能 0:更新不可';
COMMENT ON COLUMN "public"."m_ledger"."notify_flag" IS '通知フラグ:1:通知必要 0:通知不要';
COMMENT ON COLUMN "public"."m_ledger"."upload_extension" IS 'アップロード時拡張子';
COMMENT ON COLUMN "public"."m_ledger"."information_text" IS '案内テキスト';

DROP TABLE IF EXISTS "public"."m_application_step";
-- Table Definition
CREATE TABLE "public"."m_application_step" (
    "application_step_id" int4 NOT NULL,
    "application_step_name" text NOT NULL,
    PRIMARY KEY ("application_step_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_step"."application_step_id" IS '申請段階ID';
COMMENT ON COLUMN "public"."m_application_step"."application_step_name" IS '申請段階名';

DROP TABLE IF EXISTS "public"."m_application_type";
-- Table Definition
CREATE TABLE "public"."m_application_type" (
    "application_type_id" int4 NOT NULL,
    "application_type_name" text NOT NULL,
    "application_step" text NOT NULL,
    PRIMARY KEY ("application_type_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_type"."application_type_id" IS '申請種類ID';
COMMENT ON COLUMN "public"."m_application_type"."application_type_name" IS '申請種類名';
COMMENT ON COLUMN "public"."m_application_type"."application_step" IS '申請段階:申請段階IDは実施順でカンマ区切りで保持
例）開発許可：「1：事前相談」　⇒　「2：事前協議」　⇒　「3：許可判定」
　　「1,2,3」で格納';

DROP TABLE IF EXISTS "public"."m_application_category_judgement";
-- Table Definition
CREATE TABLE "public"."m_application_category_judgement" (
    "judgement_item_id" varchar(10) NOT NULL,
    "view_id" varchar(10) NOT NULL,
    "category_id" varchar(10) NOT NULL,
    PRIMARY KEY ("judgement_item_id","view_id","category_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_application_category_judgement"."judgement_item_id" IS '判定項目ID';
COMMENT ON COLUMN "public"."m_application_category_judgement"."view_id" IS '画面ID';
COMMENT ON COLUMN "public"."m_application_category_judgement"."category_id" IS '申請区分ID';

DROP TABLE IF EXISTS "public"."m_judgement_result";
-- Table Definition
CREATE TABLE "public"."m_judgement_result" (
    "judgement_item_id" varchar(10) NOT NULL,
    "application_type_id" int4 NOT NULL,
    "application_step_id" int4 NOT NULL,
    "department_id" varchar(10) NOT NULL,
    "title" text,
    "applicable_summary" text,
    "applicable_description" text DEFAULT ''::text,
    "non_applicable_display_flag" bpchar(1),
    "non_applicable_summary" text,
    "non_applicable_description" text,
    "answer_require_flag" bpchar(1),
    "default_answer" text,
    "answer_editable_flag" bpchar(1),
    "answer_days" int4,
    PRIMARY KEY ("judgement_item_id","application_type_id","application_step_id","department_id")
);

-- Column Comment
COMMENT ON COLUMN "public"."m_judgement_result"."judgement_item_id" IS '判定項目ID';
COMMENT ON COLUMN "public"."m_judgement_result"."application_type_id" IS '申請種類ID';
COMMENT ON COLUMN "public"."m_judgement_result"."application_step_id" IS '申請段階ID';
COMMENT ON COLUMN "public"."m_judgement_result"."department_id" IS '部署ID:事前協議以外では[-1]';
COMMENT ON COLUMN "public"."m_judgement_result"."title" IS 'タイトル';
COMMENT ON COLUMN "public"."m_judgement_result"."applicable_summary" IS '該当表示概要';
COMMENT ON COLUMN "public"."m_judgement_result"."applicable_description" IS '該当表示文言';
COMMENT ON COLUMN "public"."m_judgement_result"."non_applicable_display_flag" IS '非該当表示有無:1:表示 0:非表示';
COMMENT ON COLUMN "public"."m_judgement_result"."non_applicable_summary" IS '非該当表示概要';
COMMENT ON COLUMN "public"."m_judgement_result"."non_applicable_description" IS '非該当表示文言';
COMMENT ON COLUMN "public"."m_judgement_result"."answer_require_flag" IS '回答必須フラグ:1:回答必須 0:回答任意';
COMMENT ON COLUMN "public"."m_judgement_result"."default_answer" IS 'デフォルト回答:回答任意の項目に登録する初期回答文言';
COMMENT ON COLUMN "public"."m_judgement_result"."answer_editable_flag" IS '編集可能フラグ :1:編集可能 0:編集不可';
COMMENT ON COLUMN "public"."m_judgement_result"."answer_days" IS '回答日数';

INSERT INTO "public"."m_road_judge_label" ("label_id", "replace_identify", "index_value", "index_text", "min_value", "max_value", "replace_text") VALUES
(1, '{split_line_result_area}', 0, '', NULL, NULL, '※両方向とも区割り線が取得できなかったため、両方向の最も近い区割り線取得結果による案内です。'),
(2, '{split_line_result_area}', 1, '', NULL, NULL, '※片方向の区割り線取得結果による案内です。'),
(3, '{split_line_result_area}', 2, '', NULL, NULL, '※両方向の区割り線取得結果による案内です。'),
(4, '{split_line_result_area}', -1, '', NULL, NULL, '※区割り線が取得できませんでした。'),
(5, '{walkway_result_area}', 0, '', NULL, NULL, '※隣接歩道はありません。'),
(6, '{walkway_result_area}', 1, '', NULL, NULL, '※隣接歩道があります。（<span style="color:purple;">紫色</span>）'),
(7, '{display_by_width_area}', 0, '', 0, 4, '幅員が4.0ｍ未満です。'),
(8, '{display_by_width_area}', 1, '', 4, 8, '幅員が4m以上8m未満です。'),
(9, '{display_by_width_area}', 2, '', 8, NULL, '幅員が8m以上です。'),
(10, '{width_text_area}', 0, '', NULL, NULL, '接する道路の幅員は以下の通りになります。'),
(11, '{width_text_area}', 9999, '', NULL, NULL, '接する道路の幅員は以下の通りになります。
システムにて判読ができない幅員表示箇所がございます（<span style="color:green;">緑線</span>）。
画面左下「申請」ボタンを押下することで、職員より幅員値の回答が来ますので「申請」ボタンをクリックし、職員への問い合わせをお願いします。'),
(12, '{max_width_text_area}', 0, '', NULL, NULL, '■最大幅員（<span style="color:red;">赤線</span>）
道路部幅員：{road_max_width}m、車道幅員：{roadway_max_width}m'),
(13, '{min_width_text_area}', 0, '', NULL, NULL, '■最小幅員（<span style="color:blue;">青線</span>）
道路部幅員：{road_min_width}m、車道幅員：{roadway_min_width}m'),
(14, '{road_type_result_area}', NULL, '1', NULL, NULL, '道路種別：国道（高速自動車道）'),
(15, '{road_type_result_area}', NULL, '2', NULL, NULL, '道路種別：国道（一般道）'),
(16, '{road_type_result_area}', NULL, '3', NULL, NULL, '道路種別：県道'),
(17, '{road_type_result_area}', NULL, '21', NULL, NULL, '道路種別：市町村道'),
(18, '{road_type_result_area}', NULL, '22', NULL, NULL, '道路種別：市町村道'),
(19, '{road_type_result_area}', NULL, '23', NULL, NULL, '道路種別：市町村道'),
(20, '{road_type_result_area}', NULL, '9020', NULL, NULL, '道路種別：不明');

INSERT INTO "public"."m_answer_template" ("answer_template_id", "disp_order", "answer_template_text", "judgement_item_id") VALUES
(1, 1, 'xxxxxは●●●です。', '3001'),
(2, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3001'),
(3, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3001'),
(4, 1, 'xxxxxは●●●です。', '3002'),
(5, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3002'),
(6, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3002'),
(7, 1, 'xxxxxは●●●です。', '3003'),
(8, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3003'),
(9, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3003'),
(10, 1, 'xxxxxは●●●です。', '3004'),
(11, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3004'),
(12, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3004'),
(13, 1, 'xxxxxは●●●です。', '3005'),
(14, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3005'),
(15, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3005'),
(16, 1, 'xxxxxは●●●です。', '3006'),
(17, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3006'),
(18, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3006'),
(19, 1, 'xxxxxは●●●です。', '3007'),
(20, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3007'),
(21, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3007'),
(22, 1, 'xxxxxは●●●です。', '3008'),
(23, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3008'),
(24, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3008'),
(25, 1, 'xxxxxは●●●です。', '3009'),
(26, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3009'),
(27, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3009'),
(28, 1, 'xxxxxは●●●です。', '3010'),
(29, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3010'),
(30, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3010'),
(31, 1, 'xxxxxは●●●です。', '3011'),
(32, 2, 'xxxxxはxxxxxxです。
詳細はxxxxxよりご確認ください。', '3011'),
(33, 3, 'xxxxxはxxxxxxですが、○○の場合××です。
詳細はxxxxxよりご確認ください。
Xxxxxxxxxxxxxxxxxx', '3011');

INSERT INTO "public"."m_government_user" ("user_id", "login_id", "password", "role_code", "department_id", "user_name", "admin_flag") VALUES
('1001', 'user1', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1001', '行政担当者1', '0'),
('1002', 'user2', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1002', '行政担当者2', '0'),
('1003', 'user3', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1003', '行政担当者3', '0'),
('1004', 'user4', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1004', '行政担当者4', '0'),
('1005', 'user5', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1005', '行政担当者5', '0'),
('1006', 'user6', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1006', '行政担当者6', '0'),
('1007', 'user7', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1007', '行政担当者7', '0'),
('1008', 'user8', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1008', '行政担当者8', '0'),
('1009', 'user9', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1009', '行政担当者9', '0'),
('1010', 'user10', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1010', '行政担当者10', '0'),
('1011', 'user11', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1011', '行政担当者11', '0'),
('1012', 'admin1', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1001', '行政管理者1', '1'),
('1013', 'admin2', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1002', '行政管理者2', '1'),
('1014', 'admin3', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1003', '行政管理者3', '1'),
('1015', 'admin4', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1004', '行政管理者4', '1'),
('1016', 'admin5', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1005', '行政管理者5', '1'),
('1017', 'admin6', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1006', '行政管理者6', '1'),
('1018', 'admin7', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1007', '行政管理者7', '1'),
('1019', 'admin8', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1008', '行政管理者8', '1'),
('1020', 'admin9', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1009', '行政管理者9', '1'),
('1021', 'admin10', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1010', '行政管理者10', '1'),
('1022', 'admin11', '1bd9a8b777a19491839036767f760783e0b454c9abd80ae61f94e5a4975c9db85240ffbe2d84bd09206e8afeccc636dd07b269376236d1da7c7608f9534146ba', '2', '1011', '行政管理者11', '1');

INSERT INTO "public"."m_application_search_result" ("application_search_result_id", "reference_type", "display_column_name", "display_order", "table_name", "table_column_name", "response_key", "table_width") VALUES
('1', '2', '担当課', 3, 'm_department', 'department_name', 'department_name', 16),
('3', '1', '申請ID', 2, 'o_applicant_information', 'application_id', 'application_id', 7),
('4', '1', '申請者', 4, 'o_applicant_information', 'item_1', 'item_1', 10),
('5', '1', 'アドレス', 5, 'o_applicant_information', 'item_2', 'item_2', 13),
('7', '0', '利用目的', 7, 'm_application_category', '1004', 'item_4', 13),
('8', '0', '開発予定面積', 8, 'm_application_category', '1002', 'label_name', 20),
('9', '2', 'ステータス', 1, 'o_application', 'status', 'status', 13);

INSERT INTO "public"."m_lot_number_search_result_definition" ("lot_number_search_definition_id", "display_order", "table_type", "display_column_name", "table_column_name", "table_width", "response_key") VALUES
('2', 2, '1', '地番', 'result_column1', 25, 'txtcode'),
('1', 1, '0', '大字', 'result_column1', 25, 'district_name');

INSERT INTO "public"."m_layer" ("layer_id", "layer_type", "layer_name", "table_name", "layer_code", "layer_query", "query_require_flag") VALUES
('1001', '1', '用途地域', 'use_districts', 'devps:use_districts', 'ogc_fid:@2', '1'),
('1002', '1', '埋蔵文化財包蔵地域', 'buried_cultural_property', 'devps:buried_cultural_property', '', '0'),
('1003', '1', '農用地区域', 'agricultural_land', 'devps:agricultural_land', '', '0'),
('1004', '1', '都市計画区域', 'city_planning', 'devps:city_planning', '', '0'),
('1005', '1', '浸水想定区域', 'flood_assumption', 'devps:flood_assumption', '', '0'),
('1006', '0', '道路判定結果(LOD2)', 'f_road_lod2', 'devps:道路判定結果(LOD2)', '{roadLod2}object_id:{value}	', '1'),
('1007', '0', '該当区割り線', 'f_split_line', 'devps:該当区割り線', '{splitLine}object_id:{value};max_object_id:{maxWidth};min_object_id:{minWidth}', '1'),
('1008', '0', '隣接歩道', 'f_road_lod2', 'devps:隣接歩道', '{sideWalk}side_walks:{side_walk};lot_numbers:{lot_number}', '1'),
('1009', '0', '幅員値', 'f_split_line', 'devps:幅員値', '@wfs{widthText}object_id:{value}', '1');

INSERT INTO "public"."m_applicant_information_item" ("applicant_information_item_id", "display_order", "display_flag", "require_flag", "item_name", "regex", "mail_address", "search_condition_flag", "item_type", "application_step", "add_information_item_flag", "contact_address_flag") VALUES
('1001', 1, '1', '1', '氏名', '', '0', '1', '0', '', '0', '1'),
('1002', 2, '1', '1', 'メールアドレス', '^[a-zA-Z0-9_.+-]+@([a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]*\.)+[a-zA-Z]{2,}$', '1', '1', '0', '', '0', '1'),
('1003', 3, '1', '0', '電話番号', '', '0', '1', '0', '', '0', '1'),
('1004', 4, '1', '0', '住所', '', '0', '1', '0', '', '0', '1'),
('1005', 5, '1', '0', '相談内容', '', '0', '1', '1', '', '0', '0'),
('2001', 11, '1', '0', '開発区域の面積（実測）㎡', '', '0', '1', '3', '2,3', '1', '0'),
('2002', 12, '1', '0', '開発区域の面積（公簿）㎡', '', '0', '1', '3', '2,3', '1', '0'),
('2003', 13, '1', '0', '建築面積（㎡）', '', '0', '1', '3', '2,3', '1', '0'),
('2004', 14, '1', '0', '延床面積（㎡）', '', '0', '1', '3', '2,3', '1', '0'),
('2005', 15, '1', '0', '構造', '', '0', '1', '1', '2,3', '1', '0'),
('2006', 16, '1', '0', '工事施工者住所', '', '0', '1', '0', '2,3', '1', '0'),
('2007', 17, '1', '0', '工事施工者氏名', '', '0', '1', '0', '2,3', '1', '0'),
('2008', 18, '1', '0', '工事施工者電話番号', '', '0', '1', '0', '2,3', '1', '0'),
('2009', 19, '1', '0', '設計者住所', '', '0', '1', '0', '2,3', '1', '0'),
('2010', 20, '1', '0', '設計者氏名', '', '0', '1', '0', '2,3', '1', '0'),
('2011', 21, '1', '0', '設計者電話番号', '', '0', '1', '0', '2,3', '1', '0'),
('2012', 22, '1', '0', '設計者担当者', '', '0', '1', '0', '2,3', '1', '0'),
('2013', 30, '1', '0', '土地の区画形質の変更の有無', '', '0', '1', '4', '2', '1', '0'),
('2014', 31, '1', '0', '自己用又は非自己用の別　　　　　　　　　　　　　　　　　　　　　　　　　　', '', '0', '1', '4', '2', '1', '0'),
('2015', 32, '1', '0', '申請者事業所名', '', '0', '1', '0', '2', '1', '0'),
('2016', 33, '1', '0', '申請者役職名', '', '0', '1', '0', '2', '1', '0'),
('2020', 8, '1', '0', '棟数', '', '0', '1', '3', '2', '1', '0'),
('2021', 9, '1', '0', '戸数', '', '0', '1', '3', '2', '1', '0'),
('2022', 10, '1', '0', '区域名', '', '0', '1', '0', '2', '1', '0'),
('3001', 1, '1', '0', '工事完了予定年月日', '', '0', '1', '2', '3', '1', '0'),
('3002', 2, '1', '0', '自己の居住の用に供するもの、自己の業務の用に供するもの、   その他のものの別', '', '0', '1', '4', '3', '1', '0'),
('3003', 3, '1', '0', '法第３４条の該当号及び該当する理由', '', '0', '1', '1', '3', '1', '0'),
('3004', 4, '1', '0', 'その他必要な事項', '', '0', '1', '4', '3', '1', '0');

INSERT INTO "public"."m_label" ("view_code", "label_id", "label_key", "label_type", "label_text", "application_step") VALUES
('1000', '1', 'title', '1', '利用者規約', 'all'),
('1000', '2', 'content', '1', '<p style="font-size:16px;margin:4px;">本システムは国土交通省都市局（Project PLATEAU）による実証実験システムです。</p>
<p style="font-size:16px;margin:4px;">正式運用ではない、期間限定の提供であることをご了承いただき、</p>
<p style="font-size:16px;margin:4px;">以下のご利用条件に同意の上、ご利用ください。</p>
<p></p>
<p style="font-size:12px;margin:4px;"></p>
<p style="font-size:12px;margin:4px;">・本システムで利用する地図情報には、位置情報の誤差を含みます。</p>
<p style="font-size:12px;margin:4px;">・地図や画像は、土地の境界または建物等の位置を正確に表示するものではありません。</p>
<p style="font-size:12px;margin:4px;">・一部、実験目的で電子化したものも含みます。</p>
<p style="font-size:12px;margin:4px;">・全ての閲覧者または機器上で正常に動作することを保証するものではありません。</p>
<p style="font-size:12px;margin:4px;">・利用者が求めるサービスの全てを提供することを保証するものではありません。</p>
<p style="font-size:12px;margin:4px;">・直接・間接的な理由を問わず、本サイトを利用したことにより発生した損害・損失について、いかなる場合でも一切の責任を負いません。</p>
<p style="font-size:12px;margin:4px;">・本サイトは、予告なしに内容の追加・変更・削除・利用停止を行うことがあります。</p>
<p style="font-size:12px;margin:4px;">・入力いただいた情報は、本手続き目的以外には使用しません。</p>
<p style="font-size:12px;margin:4px;">　ただし、統計処理・匿名処理の上、国土交通省都市局による事業成果として紹介することがあります。</p>', 'all'),
('1000', '3', 'contentButtonText', '1', '<span style=''font-size:.9em''>上記の手続きを確認し申請手続きを開始する</span>', 'all'),
('1000', '4', 'systemName', '1', '開発許可申請システム', 'all'),
('1000', '5', 'purposeContent', '1', '本システムの利用目的を選択してください。<BR>利用目的を選択していただくと、申請手続きおよび回答確認が行えます。', 'all'),
('1000', '6', 'questionaryContent', '1', '別タブでアンケート画面が開きますので、アンケートへの回答ご協力お願いします。', 'all'),
('1000', '7', 'topButtonText', '1', 'TOPへ戻る', 'all'),
('1001', '1', 'title', '1', '申請完了', 'all'),
('1001', '2', 'content', '1', '申請内容への行政担当者の回答が確認できます。<br>回答は${回答日数}開庁日後を目安に通知されます。', 'all'),
('1001', '3', 'questionaryContent', '1', '別タブでアンケート画面が開きますので、アンケートへの回答ご協力お願いします。', 'all'),
('1002', '1', 'title', '2', '回答完了', 'all'),
('1002', '2', 'content', '2', '回答内容に問題なければ回答通知を行ってください。<br>（現状、回答した旨は申請者へ通知されておりません。）', 'all'),
('1003', '1', 'title', '2', '回答通知完了', 'all'),
('1003', '2', 'content', '2', '申請者のメールアドレスに回答通知を送信しました。<br>（申請内容への行政担当者の回答が確認できます。）', 'all'),
('1003', '3', 'remandedContent', '2', '申請者のメールアドレスに申請差戻通知を送信しました。', '2'),
('1003', '4', 'acceptedContent', '2', '各担当課のメールアドレスに申請内容を通知しました。', '2'),
('1003', '5', 'answerPermissionContent', '2', '統括部署管理者のメールアドレスに回答許可通知を送信しました。', '2'),
('1003', '6', 'governmentConfirmPermissionContent', '2', '統括部署管理者のメールアドレスに行政確定登録許可通知を送信しました。', '2'),
('1004', '1', 'title', '1', '市行政ログイン', 'all'),
('1004', '2', 'questionnaire', '1', 'アンケートはこちらから', 'all'),
('1004', '3', 'questionnaireUrl', '1', 'https://forms.office.com/pages/responsepage.aspx?id=sfo3rLbr80SWX7LIu-PNwUvPkMVtA1BCrPo_6gO6t89UMzNBVEE4VzFLTkFUWTZPMFc5UkVXSktUWS4u&route=shorturl', 'all'),
('1005', '1', 'judgementContent', '1', '概況診断結果の行をクリックすると、診断結果の詳細・関連地図が画面に表示されます。
<BR>・概況診断結果データ出力：出力ボタンクリック
<BR>・市への相談　　　　　　：申請ボタンクリック
<BR>・検索に戻る　　　　　　：閉じるボタンクリック
', 'all'),
('1006', '1', 'content', '1', '下記ファイルの登録をお願いします（1ファイルあたり上限${maxFileSize}Mまで）。<br>※【拡張子】のいずれかのファイル形式のファイルをアップロードしてください。<br>※拡張子は大文字小文字を区別します。', 'all'),
('1006', '2', 'fileInfoMessage', '1', '提出書類が不足しています。そのまま提出してよろしいでしょうか。', 'all'),
('1007', '1', 'content1', '1', '下記に入力してください。', '1'),
('1007', '2', 'content2', '1', '申請者と連絡先が異なる場合以下チェックを外し連絡先を入力してください。', '1'),
('2000', '1', 'startConsult', '1', '相談', 'all');

INSERT INTO "public"."m_department" ("department_id", "department_name", "mail_address", "admin_mail_address", "answer_authority_flag") VALUES
('1001', '環境課', 'sample@example.com', 'sample@example.com', '0'),
('1002', '地域振興局　環境課', 'sample@example.com', 'sample@example.com', '0'),
('1003', '都市計画課', 'sample@example.com', 'sample@example.com', '1'),
('1004', '商工課', 'sample@example.com', 'sample@example.com', '0'),
('1005', '文化財課', 'sample@example.com', 'sample@example.com', '0'),
('1006', '建設課', 'sample@example.com', 'sample@example.com', '0'),
('1007', '建築課', 'sample@example.com', 'sample@example.com', '0'),
('1008', '消防課', 'sample@example.com', 'sample@example.com', '0'),
('1009', '水道課', 'sample@example.com', 'sample@example.com', '0'),
('1010', '防災課', 'sample@example.com', 'sample@example.com', '0'),
('1011', '農林課', 'sample@example.com', 'sample@example.com', '0');

INSERT INTO "public"."m_application_file" ("application_file_id", "judgement_item_id", "require_flag", "upload_file_name", "extension", "application_file_type") VALUES
('5003', '3003', '0', '意見書（自然保護）', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5004', '3004', '0', '意見書（文化財）', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5004', '3006', '0', '意見書（文化財）', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5005', '3004', '0', '建築計画書', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5005', '3006', '0', '建築計画書', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5006', '3005', '0', '設計説明書', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5006', '3006', '0', '設計説明書', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5006', '3007', '0', '設計説明書', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('5007', '3001', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5007', '3002', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5007', '3005', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5007', '3006', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5007', '3008', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5007', '3009', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5007', '3011', '0', '土地利用計画図', 'pdf,tiff,tif,jpg,png,dxf,dwg', '1'),
('5008', '3010', '0', '意見書（防災）', 'pdf,tiff,tif,jpg,png,dxf,dwg', '0'),
('9999', '3001', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3002', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3003', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3004', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3005', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3006', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3007', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3008', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3009', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3010', '1', '概況診断結果レポート', 'xlsx', '0'),
('9999', '3011', '1', '概況診断結果レポート', 'xlsx', '0');

INSERT INTO "public"."m_category_judgement" ("judgement_item_id", "gis_judgement", "buffer", "display_attribute_flag", "judgement_layer", "table_name", "field_name", "non_applicable_layer_display_flag", "simultaneous_display_layer", "simultaneous_display_layer_flag", "disp_order") VALUES
('3001', '0', 0, '0', '0', '', '', '0', '', '0', 1),
('3002', '0', 0, '0', '0', '', '', '0', '', '0', 1.2),
('3003', '0', 0, '0', '0', '', '', '0', '', '0', 2),
('3004', '1', 0, '0', '1003', '', '', '1', '', '0', 3),
('3005', '0', 0, '0', '0', '', '', '0', '', '0', 3.1),
('3006', '1', 0, '0', '1002', '', '', '0', '', '0', 4.1),
('3007', '2', 0, '0', '1002', '', '', '0', '', '0', 4.2),
('3008', '1', 0, '3', '1001', 'use_districts', 'youto,ogc_fid', '0', '', '0', 5),
('3009', '1', 0, '0', '1004', '', '', '0', '', '0', 6),
('3010', '1', 0, '0', '1005', '', '', '1', '', '0', 7),
('3011', '5', 5, '3', '0', '', '', '1', '1006,1007,1008,1009', '1', 8);

INSERT INTO "public"."m_application_category" ("category_id", "view_id", "order", "label_name") VALUES
('2001', '1001', 1, '建築物：自己：業務'),
('2002', '1001', 2, '建築物：自己：居住'),
('2003', '1001', 3, '建築物：非自己'),
('2004', '1001', 4, '第1種特定工作物：自己'),
('2005', '1001', 5, '第1種特定工作物：非自己'),
('2006', '1001', 6, '第2種特定工作物：自己'),
('2007', '1001', 7, '第2種特定工作物：非自己'),
('2008', '1002', 1, '~999㎡'),
('2009', '1002', 4, '3,000㎡～'),
('2010', '1002', 5, '4,000㎡～'),
('2011', '1002', 6, '5,000㎡～'),
('2012', '1002', 7, '6,000㎡～'),
('2013', '1002', 8, '7,000㎡～'),
('2014', '1002', 9, '8,000㎡～'),
('2015', '1002', 10, '9,000㎡～'),
('2016', '1002', 11, '10,000㎡～'),
('2017', '1002', 12, '50,000㎡～'),
('2018', '1002', 13, '200,000㎡～'),
('2019', '1003', 1, '1工区'),
('2020', '1003', 2, '2工区以上'),
('2021', '1004', 2, '販売または賃貸を目的とした開発'),
('2022', '1004', 12, '索道'),
('2023', '1004', 10, 'スキー'),
('2024', '1004', 11, 'ゴルフ場'),
('2025', '1004', 9, '別荘地（ディベロッパー等が行う開発）'),
('2026', '1004', 13, '運動競技場'),
('2027', '1004', 7, 'ホテル旅館'),
('2028', '1004', 5, '工場'),
('2029', '1004', 4, '事業所'),
('2030', '1004', 6, '製造業'),
('2031', '1004', 8, '電気・ガス・熱供給業者'),
('2032', '1004', 3, '店舗'),
('2033', '1005', 3, '盛り土・切り土'),
('2034', '1005', 4, '掘削'),
('2035', '1005', 8, '埋め立て'),
('2036', '1005', 9, '干拓'),
('2037', '1005', 5, '井戸掘削'),
('2038', '1005', 2, '下水道接続'),
('2039', '1005', 6, '伐採'),
('2040', '1006', 3, '太陽光発電設備'),
('2041', '1006', 4, 'その他発電設備'),
('2042', '1006', 5, '浄化槽'),
('2043', '1006', 6, '屋外広告物'),
('2044', '1006', 2, '道路・通路'),
('2045', '1006', 1, '上水道の利用'),
('2046', '1007', 1, '農地'),
('2047', '1002', 14, '400,000㎡～'),
('2048', '1007', 2, '農地以外'),
('2049', '1002', 2, '1,000㎡～'),
('2050', '1002', 3, '2,000㎡～'),
('2051', '1004', 1, '該当なし（自己の居住用など）'),
('2052', '1005', 1, '該当なし'),
('2053', '1005', 7, '採掘'),
('2054', '1006', 1, '該当なし');

INSERT INTO "public"."m_application_category_selection_view" ("view_id", "view_flag", "multiple_flag", "require_flag", "title", "description", "judgement_type") VALUES
('1001', '1', '0', '1', '開発申請区分', '下記より開発申請区分の選択をお願いします。<br>
区分参考（出典：福島県）：<br>
<a href="https://www.pref.fukushima.lg.jp/uploaded/attachment/29781.pdf" target="_brank">https://www.pref.fukushima.lg.jp/uploaded/attachment/29781.pdf</a>', '1'),
('1002', '1', '0', '1', '開発予定面積', '下記より開発予定面積の選択をお願いします。', '0,1'),
('1003', '1', '0', '1', '開発予定工区数', '下記より開発予定工区数の選択をお願いします。<br>
都市計画法の開発許可を要しない場合または工事完了の検査を部分的に受けない場合は、「１工区」になります。<br>
※工区とは、都市計画法第３６条に規定する工事完了の検査を部分的に受けることを目的として、開発区域を複数に分割する場合の分割された各々の部分の区域です。', '1'),
('1004', '1', '1', '1', '開発予定地の利用目的', '下記より開発予定地の利用目的の選択をお願いします。', '0,1'),
('1005', '1', '1', '0', '特殊な開発行為の有無', '開発予定地での特殊な開発行為があれば選択をお願いします（複数可）。', '1'),
('1006', '1', '1', '0', '特定施設の有無', '下記項目の特定施設を設置する予定があれば選択をお願いします（複数可）。', '1'),
('1007', '1', '0', '0', '開発予定地の地目（登記または現況）', '下記より予定地の登記または現況について選択をお願いします。', '0,1'),
('1008', '0', '0', '0', '未設定項目', '未設定項目です。', ''),
('1009', '0', '0', '0', '未設定項目', '未設定項目です。', ''),
('1010', '0', '0', '0', '未設定項目', '未設定項目です。', '');

INSERT INTO "public"."m_calendar" ("cal_date", "week_day", "biz_day_flag", "comment") VALUES
('2024-01-01', 2, '0', '年末年始'),
('2024-01-02', 3, '0', '年末年始'),
('2024-01-03', 4, '0', '年末年始'),
('2024-01-04', 5, '1', ''),
('2024-01-05', 6, '1', ''),
('2024-01-06', 7, '0', '土曜日'),
('2024-01-07', 1, '0', '日曜日'),
('2024-01-08', 2, '0', '成人の日'),
('2024-01-09', 3, '1', ''),
('2024-01-10', 4, '1', ''),
('2024-01-11', 5, '1', ''),
('2024-01-12', 6, '1', ''),
('2024-01-13', 7, '0', '土曜日'),
('2024-01-14', 1, '0', '日曜日'),
('2024-01-15', 2, '1', ''),
('2024-01-16', 3, '1', ''),
('2024-01-17', 4, '1', ''),
('2024-01-18', 5, '1', ''),
('2024-01-19', 6, '1', ''),
('2024-01-20', 7, '0', '土曜日'),
('2024-01-21', 1, '0', '日曜日'),
('2024-01-22', 2, '1', ''),
('2024-01-23', 3, '1', ''),
('2024-01-24', 4, '1', ''),
('2024-01-25', 5, '1', ''),
('2024-01-26', 6, '1', ''),
('2024-01-27', 7, '0', '土曜日'),
('2024-01-28', 1, '0', '日曜日'),
('2024-01-29', 2, '1', ''),
('2024-01-30', 3, '1', ''),
('2024-01-31', 4, '1', ''),
('2024-02-01', 5, '1', ''),
('2024-02-02', 6, '1', ''),
('2024-02-03', 7, '0', '土曜日'),
('2024-02-04', 1, '0', '日曜日'),
('2024-02-05', 2, '1', ''),
('2024-02-06', 3, '1', ''),
('2024-02-07', 4, '1', ''),
('2024-02-08', 5, '1', ''),
('2024-02-09', 6, '1', ''),
('2024-02-10', 7, '0', '土曜日'),
('2024-02-11', 1, '0', '日曜日'),
('2024-02-12', 2, '0', '振替休日'),
('2024-02-13', 3, '1', ''),
('2024-02-14', 4, '1', ''),
('2024-02-15', 5, '1', ''),
('2024-02-16', 6, '1', ''),
('2024-02-17', 7, '0', '土曜日'),
('2024-02-18', 1, '0', '日曜日'),
('2024-02-19', 2, '1', ''),
('2024-02-20', 3, '1', ''),
('2024-02-21', 4, '1', ''),
('2024-02-22', 5, '1', ''),
('2024-02-23', 6, '0', '天皇誕生日'),
('2024-02-24', 7, '0', '土曜日'),
('2024-02-25', 1, '0', '日曜日'),
('2024-02-26', 2, '1', ''),
('2024-02-27', 3, '1', ''),
('2024-02-28', 4, '1', ''),
('2024-02-29', 5, '1', ''),
('2024-03-01', 6, '1', ''),
('2024-03-02', 7, '0', '土曜日'),
('2024-03-03', 1, '0', '日曜日'),
('2024-03-04', 2, '1', ''),
('2024-03-05', 3, '1', ''),
('2024-03-06', 4, '1', ''),
('2024-03-07', 5, '1', ''),
('2024-03-08', 6, '1', ''),
('2024-03-09', 7, '0', '土曜日'),
('2024-03-10', 1, '0', '日曜日'),
('2024-03-11', 2, '1', ''),
('2024-03-12', 3, '1', ''),
('2024-03-13', 4, '1', ''),
('2024-03-14', 5, '1', ''),
('2024-03-15', 6, '1', ''),
('2024-03-16', 7, '0', '土曜日'),
('2024-03-17', 1, '0', '日曜日'),
('2024-03-18', 2, '1', ''),
('2024-03-19', 3, '1', ''),
('2024-03-20', 4, '0', '春分の日'),
('2024-03-21', 5, '1', ''),
('2024-03-22', 6, '1', ''),
('2024-03-23', 7, '0', '土曜日'),
('2024-03-24', 1, '0', '日曜日'),
('2024-03-25', 2, '1', ''),
('2024-03-26', 3, '1', ''),
('2024-03-27', 4, '1', ''),
('2024-03-28', 5, '1', ''),
('2024-03-29', 6, '1', ''),
('2024-03-30', 7, '0', '土曜日'),
('2024-03-31', 1, '0', '日曜日'),
('2024-04-01', 2, '1', ''),
('2024-04-02', 3, '1', ''),
('2024-04-03', 4, '1', ''),
('2024-04-04', 5, '1', ''),
('2024-04-05', 6, '1', ''),
('2024-04-06', 7, '0', '土曜日'),
('2024-04-07', 1, '0', '日曜日'),
('2024-04-08', 2, '1', ''),
('2024-04-09', 3, '1', ''),
('2024-04-10', 4, '1', ''),
('2024-04-11', 5, '1', ''),
('2024-04-12', 6, '1', ''),
('2024-04-13', 7, '0', '土曜日'),
('2024-04-14', 1, '0', '日曜日'),
('2024-04-15', 2, '1', ''),
('2024-04-16', 3, '1', ''),
('2024-04-17', 4, '1', ''),
('2024-04-18', 5, '1', ''),
('2024-04-19', 6, '1', ''),
('2024-04-20', 7, '0', '土曜日'),
('2024-04-21', 1, '0', '日曜日'),
('2024-04-22', 2, '1', ''),
('2024-04-23', 3, '1', ''),
('2024-04-24', 4, '1', ''),
('2024-04-25', 5, '1', ''),
('2024-04-26', 6, '1', ''),
('2024-04-27', 7, '0', '土曜日'),
('2024-04-28', 1, '0', '日曜日'),
('2024-04-29', 2, '0', '昭和の日'),
('2024-04-30', 3, '1', ''),
('2024-05-01', 4, '1', ''),
('2024-05-02', 5, '1', ''),
('2024-05-03', 6, '0', '憲法記念日'),
('2024-05-04', 7, '0', '土曜日'),
('2024-05-05', 1, '0', '日曜日'),
('2024-05-06', 2, '0', '振替休日'),
('2024-05-07', 3, '1', ''),
('2024-05-08', 4, '1', ''),
('2024-05-09', 5, '1', ''),
('2024-05-10', 6, '1', ''),
('2024-05-11', 7, '0', '土曜日'),
('2024-05-12', 1, '0', '日曜日'),
('2024-05-13', 2, '1', ''),
('2024-05-14', 3, '1', ''),
('2024-05-15', 4, '1', ''),
('2024-05-16', 5, '1', ''),
('2024-05-17', 6, '1', ''),
('2024-05-18', 7, '0', '土曜日'),
('2024-05-19', 1, '0', '日曜日'),
('2024-05-20', 2, '1', ''),
('2024-05-21', 3, '1', ''),
('2024-05-22', 4, '1', ''),
('2024-05-23', 5, '1', ''),
('2024-05-24', 6, '1', ''),
('2024-05-25', 7, '0', '土曜日'),
('2024-05-26', 1, '0', '日曜日'),
('2024-05-27', 2, '1', ''),
('2024-05-28', 3, '1', ''),
('2024-05-29', 4, '1', ''),
('2024-05-30', 5, '1', ''),
('2024-05-31', 6, '1', ''),
('2024-06-01', 7, '0', '土曜日'),
('2024-06-02', 1, '0', '日曜日'),
('2024-06-03', 2, '1', ''),
('2024-06-04', 3, '1', ''),
('2024-06-05', 4, '1', ''),
('2024-06-06', 5, '1', ''),
('2024-06-07', 6, '1', ''),
('2024-06-08', 7, '0', '土曜日'),
('2024-06-09', 1, '0', '日曜日'),
('2024-06-10', 2, '1', ''),
('2024-06-11', 3, '1', ''),
('2024-06-12', 4, '1', ''),
('2024-06-13', 5, '1', ''),
('2024-06-14', 6, '1', ''),
('2024-06-15', 7, '0', '土曜日'),
('2024-06-16', 1, '0', '日曜日'),
('2024-06-17', 2, '1', ''),
('2024-06-18', 3, '1', ''),
('2024-06-19', 4, '1', ''),
('2024-06-20', 5, '1', ''),
('2024-06-21', 6, '1', ''),
('2024-06-22', 7, '0', '土曜日'),
('2024-06-23', 1, '0', '日曜日'),
('2024-06-24', 2, '1', ''),
('2024-06-25', 3, '1', ''),
('2024-06-26', 4, '1', ''),
('2024-06-27', 5, '1', ''),
('2024-06-28', 6, '1', ''),
('2024-06-29', 7, '0', '土曜日'),
('2024-06-30', 1, '0', '日曜日'),
('2024-07-01', 2, '1', ''),
('2024-07-02', 3, '1', ''),
('2024-07-03', 4, '1', ''),
('2024-07-04', 5, '1', ''),
('2024-07-05', 6, '1', ''),
('2024-07-06', 7, '0', '土曜日'),
('2024-07-07', 1, '0', '日曜日'),
('2024-07-08', 2, '1', ''),
('2024-07-09', 3, '1', ''),
('2024-07-10', 4, '1', ''),
('2024-07-11', 5, '1', ''),
('2024-07-12', 6, '1', ''),
('2024-07-13', 7, '0', '土曜日'),
('2024-07-14', 1, '0', '日曜日'),
('2024-07-15', 2, '0', '海の日'),
('2024-07-16', 3, '1', ''),
('2024-07-17', 4, '1', ''),
('2024-07-18', 5, '1', ''),
('2024-07-19', 6, '1', ''),
('2024-07-20', 7, '0', '土曜日'),
('2024-07-21', 1, '0', '日曜日'),
('2024-07-22', 2, '1', ''),
('2024-07-23', 3, '1', ''),
('2024-07-24', 4, '1', ''),
('2024-07-25', 5, '1', ''),
('2024-07-26', 6, '1', ''),
('2024-07-27', 7, '0', '土曜日'),
('2024-07-28', 1, '0', '日曜日'),
('2024-07-29', 2, '1', ''),
('2024-07-30', 3, '1', ''),
('2024-07-31', 4, '1', ''),
('2024-08-01', 5, '1', ''),
('2024-08-02', 6, '1', ''),
('2024-08-03', 7, '0', '土曜日'),
('2024-08-04', 1, '0', '日曜日'),
('2024-08-05', 2, '1', ''),
('2024-08-06', 3, '1', ''),
('2024-08-07', 4, '1', ''),
('2024-08-08', 5, '1', ''),
('2024-08-09', 6, '1', ''),
('2024-08-10', 7, '0', '土曜日'),
('2024-08-11', 1, '0', '日曜日'),
('2024-08-12', 2, '0', '振替休日'),
('2024-08-13', 3, '1', ''),
('2024-08-14', 4, '1', ''),
('2024-08-15', 5, '1', ''),
('2024-08-16', 6, '1', ''),
('2024-08-17', 7, '0', '土曜日'),
('2024-08-18', 1, '0', '日曜日'),
('2024-08-19', 2, '1', ''),
('2024-08-20', 3, '1', ''),
('2024-08-21', 4, '1', ''),
('2024-08-22', 5, '1', ''),
('2024-08-23', 6, '1', ''),
('2024-08-24', 7, '0', '土曜日'),
('2024-08-25', 1, '0', '日曜日'),
('2024-08-26', 2, '1', ''),
('2024-08-27', 3, '1', ''),
('2024-08-28', 4, '1', ''),
('2024-08-29', 5, '1', ''),
('2024-08-30', 6, '1', ''),
('2024-08-31', 7, '0', '土曜日'),
('2024-09-01', 1, '0', '日曜日'),
('2024-09-02', 2, '1', ''),
('2024-09-03', 3, '1', ''),
('2024-09-04', 4, '1', ''),
('2024-09-05', 5, '1', ''),
('2024-09-06', 6, '1', ''),
('2024-09-07', 7, '0', '土曜日'),
('2024-09-08', 1, '0', '日曜日'),
('2024-09-09', 2, '1', ''),
('2024-09-10', 3, '1', ''),
('2024-09-11', 4, '1', ''),
('2024-09-12', 5, '1', ''),
('2024-09-13', 6, '1', ''),
('2024-09-14', 7, '0', '土曜日'),
('2024-09-15', 1, '0', '日曜日'),
('2024-09-16', 2, '0', '敬老の日'),
('2024-09-17', 3, '1', ''),
('2024-09-18', 4, '1', ''),
('2024-09-19', 5, '1', ''),
('2024-09-20', 6, '1', ''),
('2024-09-21', 7, '0', '土曜日'),
('2024-09-22', 1, '0', '日曜日'),
('2024-09-23', 2, '0', '振替休日'),
('2024-09-24', 3, '1', ''),
('2024-09-25', 4, '1', ''),
('2024-09-26', 5, '1', ''),
('2024-09-27', 6, '1', ''),
('2024-09-28', 7, '0', '土曜日'),
('2024-09-29', 1, '0', '日曜日'),
('2024-09-30', 2, '1', ''),
('2024-10-01', 3, '1', ''),
('2024-10-02', 4, '1', ''),
('2024-10-03', 5, '1', ''),
('2024-10-04', 6, '1', ''),
('2024-10-05', 7, '0', '土曜日'),
('2024-10-06', 1, '0', '日曜日'),
('2024-10-07', 2, '1', ''),
('2024-10-08', 3, '1', ''),
('2024-10-09', 4, '1', ''),
('2024-10-10', 5, '1', ''),
('2024-10-11', 6, '1', ''),
('2024-10-12', 7, '0', '土曜日'),
('2024-10-13', 1, '0', '日曜日'),
('2024-10-14', 2, '0', 'スポーツの日'),
('2024-10-15', 3, '1', ''),
('2024-10-16', 4, '1', ''),
('2024-10-17', 5, '1', ''),
('2024-10-18', 6, '1', ''),
('2024-10-19', 7, '0', '土曜日'),
('2024-10-20', 1, '0', '日曜日'),
('2024-10-21', 2, '1', ''),
('2024-10-22', 3, '1', ''),
('2024-10-23', 4, '1', ''),
('2024-10-24', 5, '1', ''),
('2024-10-25', 6, '1', ''),
('2024-10-26', 7, '0', '土曜日'),
('2024-10-27', 1, '0', '日曜日'),
('2024-10-28', 2, '1', ''),
('2024-10-29', 3, '1', ''),
('2024-10-30', 4, '1', ''),
('2024-10-31', 5, '1', ''),
('2024-11-01', 6, '1', ''),
('2024-11-02', 7, '0', '土曜日'),
('2024-11-03', 1, '0', '日曜日'),
('2024-11-04', 2, '0', '振替休日'),
('2024-11-05', 3, '1', ''),
('2024-11-06', 4, '1', ''),
('2024-11-07', 5, '1', ''),
('2024-11-08', 6, '1', ''),
('2024-11-09', 7, '0', '土曜日'),
('2024-11-10', 1, '0', '日曜日'),
('2024-11-11', 2, '1', ''),
('2024-11-12', 3, '1', ''),
('2024-11-13', 4, '1', ''),
('2024-11-14', 5, '1', ''),
('2024-11-15', 6, '1', ''),
('2024-11-16', 7, '0', '土曜日'),
('2024-11-17', 1, '0', '日曜日'),
('2024-11-18', 2, '1', ''),
('2024-11-19', 3, '1', ''),
('2024-11-20', 4, '1', ''),
('2024-11-21', 5, '1', ''),
('2024-11-22', 6, '1', ''),
('2024-11-23', 7, '0', '土曜日'),
('2024-11-24', 1, '0', '日曜日'),
('2024-11-25', 2, '1', ''),
('2024-11-26', 3, '1', ''),
('2024-11-27', 4, '1', ''),
('2024-11-28', 5, '1', ''),
('2024-11-29', 6, '1', ''),
('2024-11-30', 7, '0', '土曜日'),
('2024-12-01', 1, '0', '日曜日'),
('2024-12-02', 2, '1', ''),
('2024-12-03', 3, '1', ''),
('2024-12-04', 4, '1', ''),
('2024-12-05', 5, '1', ''),
('2024-12-06', 6, '1', ''),
('2024-12-07', 7, '0', '土曜日'),
('2024-12-08', 1, '0', '日曜日'),
('2024-12-09', 2, '1', ''),
('2024-12-10', 3, '1', ''),
('2024-12-11', 4, '1', ''),
('2024-12-12', 5, '1', ''),
('2024-12-13', 6, '1', ''),
('2024-12-14', 7, '0', '土曜日'),
('2024-12-15', 1, '0', '日曜日'),
('2024-12-16', 2, '1', ''),
('2024-12-17', 3, '1', ''),
('2024-12-18', 4, '1', ''),
('2024-12-19', 5, '1', ''),
('2024-12-20', 6, '1', ''),
('2024-12-21', 7, '0', '土曜日'),
('2024-12-22', 1, '0', '日曜日'),
('2024-12-23', 2, '1', ''),
('2024-12-24', 3, '1', ''),
('2024-12-25', 4, '1', ''),
('2024-12-26', 5, '1', ''),
('2024-12-27', 6, '1', ''),
('2024-12-28', 7, '0', '土曜日'),
('2024-12-29', 1, '0', '日曜日'),
('2024-12-30', 2, '0', '年末年始'),
('2024-12-31', 3, '0', '年末年始'),
('2025-01-01', 4, '0', '年末年始'),
('2025-01-02', 5, '0', '年末年始'),
('2025-01-03', 6, '0', '年末年始'),
('2025-01-04', 7, '0', '土曜日'),
('2025-01-05', 1, '0', '日曜日'),
('2025-01-06', 2, '1', ''),
('2025-01-07', 3, '1', ''),
('2025-01-08', 4, '1', ''),
('2025-01-09', 5, '1', ''),
('2025-01-10', 6, '1', ''),
('2025-01-11', 7, '0', '土曜日'),
('2025-01-12', 1, '0', '日曜日'),
('2025-01-13', 2, '0', '成人の日'),
('2025-01-14', 3, '1', ''),
('2025-01-15', 4, '1', ''),
('2025-01-16', 5, '1', ''),
('2025-01-17', 6, '1', ''),
('2025-01-18', 7, '0', '土曜日'),
('2025-01-19', 1, '0', '日曜日'),
('2025-01-20', 2, '1', ''),
('2025-01-21', 3, '1', ''),
('2025-01-22', 4, '1', ''),
('2025-01-23', 5, '1', ''),
('2025-01-24', 6, '1', ''),
('2025-01-25', 7, '0', '土曜日'),
('2025-01-26', 1, '0', '日曜日'),
('2025-01-27', 2, '1', ''),
('2025-01-28', 3, '1', ''),
('2025-01-29', 4, '1', ''),
('2025-01-30', 5, '1', ''),
('2025-01-31', 6, '1', ''),
('2025-02-01', 7, '0', '土曜日'),
('2025-02-02', 1, '0', '日曜日'),
('2025-02-03', 2, '1', ''),
('2025-02-04', 3, '1', ''),
('2025-02-05', 4, '1', ''),
('2025-02-06', 5, '1', ''),
('2025-02-07', 6, '1', ''),
('2025-02-08', 7, '0', '土曜日'),
('2025-02-09', 1, '0', '日曜日'),
('2025-02-10', 2, '1', ''),
('2025-02-11', 3, '0', '建国記念の日'),
('2025-02-12', 4, '1', ''),
('2025-02-13', 5, '1', ''),
('2025-02-14', 6, '1', ''),
('2025-02-15', 7, '0', '土曜日'),
('2025-02-16', 1, '0', '日曜日'),
('2025-02-17', 2, '1', ''),
('2025-02-18', 3, '1', ''),
('2025-02-19', 4, '1', ''),
('2025-02-20', 5, '1', ''),
('2025-02-21', 6, '1', ''),
('2025-02-22', 7, '0', '土曜日'),
('2025-02-23', 1, '0', '日曜日'),
('2025-02-24', 2, '0', '振替休日'),
('2025-02-25', 3, '1', ''),
('2025-02-26', 4, '1', ''),
('2025-02-27', 5, '1', ''),
('2025-02-28', 6, '1', ''),
('2025-03-01', 7, '0', '土曜日'),
('2025-03-02', 1, '0', '日曜日'),
('2025-03-03', 2, '1', ''),
('2025-03-04', 3, '1', ''),
('2025-03-05', 4, '1', ''),
('2025-03-06', 5, '1', ''),
('2025-03-07', 6, '1', ''),
('2025-03-08', 7, '0', '土曜日'),
('2025-03-09', 1, '0', '日曜日'),
('2025-03-10', 2, '1', ''),
('2025-03-11', 3, '1', ''),
('2025-03-12', 4, '1', ''),
('2025-03-13', 5, '1', ''),
('2025-03-14', 6, '1', ''),
('2025-03-15', 7, '0', '土曜日'),
('2025-03-16', 1, '0', '日曜日'),
('2025-03-17', 2, '1', ''),
('2025-03-18', 3, '1', ''),
('2025-03-19', 4, '1', ''),
('2025-03-20', 5, '0', '春分の日'),
('2025-03-21', 6, '1', ''),
('2025-03-22', 7, '0', '土曜日'),
('2025-03-23', 1, '0', '日曜日'),
('2025-03-24', 2, '1', ''),
('2025-03-25', 3, '1', ''),
('2025-03-26', 4, '1', ''),
('2025-03-27', 5, '1', ''),
('2025-03-28', 6, '1', ''),
('2025-03-29', 7, '0', '土曜日'),
('2025-03-30', 1, '0', '日曜日'),
('2025-03-31', 2, '1', ''),
('2025-04-01', 3, '1', ''),
('2025-04-02', 4, '1', ''),
('2025-04-03', 5, '1', ''),
('2025-04-04', 6, '1', ''),
('2025-04-05', 7, '0', '土曜日'),
('2025-04-06', 1, '0', '日曜日'),
('2025-04-07', 2, '1', ''),
('2025-04-08', 3, '1', ''),
('2025-04-09', 4, '1', ''),
('2025-04-10', 5, '1', ''),
('2025-04-11', 6, '1', ''),
('2025-04-12', 7, '0', '土曜日'),
('2025-04-13', 1, '0', '日曜日'),
('2025-04-14', 2, '1', ''),
('2025-04-15', 3, '1', ''),
('2025-04-16', 4, '1', ''),
('2025-04-17', 5, '1', ''),
('2025-04-18', 6, '1', ''),
('2025-04-19', 7, '0', '土曜日'),
('2025-04-20', 1, '0', '日曜日'),
('2025-04-21', 2, '1', ''),
('2025-04-22', 3, '1', ''),
('2025-04-23', 4, '1', ''),
('2025-04-24', 5, '1', ''),
('2025-04-25', 6, '1', ''),
('2025-04-26', 7, '0', '土曜日'),
('2025-04-27', 1, '0', '日曜日'),
('2025-04-28', 2, '1', ''),
('2025-04-29', 3, '0', '昭和の日'),
('2025-04-30', 4, '1', ''),
('2025-05-01', 5, '1', ''),
('2025-05-02', 6, '1', ''),
('2025-05-03', 7, '0', '土曜日'),
('2025-05-04', 1, '0', '日曜日'),
('2025-05-05', 2, '0', 'こどもの日'),
('2025-05-06', 3, '0', '振替休日'),
('2025-05-07', 4, '1', ''),
('2025-05-08', 5, '1', ''),
('2025-05-09', 6, '1', ''),
('2025-05-10', 7, '0', '土曜日'),
('2025-05-11', 1, '0', '日曜日'),
('2025-05-12', 2, '1', ''),
('2025-05-13', 3, '1', ''),
('2025-05-14', 4, '1', '');

INSERT INTO "public"."m_calendar" ("cal_date", "week_day", "biz_day_flag", "comment") VALUES
('2025-05-15', 5, '1', ''),
('2025-05-16', 6, '1', ''),
('2025-05-17', 7, '0', '土曜日'),
('2025-05-18', 1, '0', '日曜日'),
('2025-05-19', 2, '1', ''),
('2025-05-20', 3, '1', ''),
('2025-05-21', 4, '1', ''),
('2025-05-22', 5, '1', ''),
('2025-05-23', 6, '1', ''),
('2025-05-24', 7, '0', '土曜日'),
('2025-05-25', 1, '0', '日曜日'),
('2025-05-26', 2, '1', ''),
('2025-05-27', 3, '1', ''),
('2025-05-28', 4, '1', ''),
('2025-05-29', 5, '1', ''),
('2025-05-30', 6, '1', ''),
('2025-05-31', 7, '0', '土曜日'),
('2025-06-01', 1, '0', '日曜日'),
('2025-06-02', 2, '1', ''),
('2025-06-03', 3, '1', ''),
('2025-06-04', 4, '1', ''),
('2025-06-05', 5, '1', ''),
('2025-06-06', 6, '1', ''),
('2025-06-07', 7, '0', '土曜日'),
('2025-06-08', 1, '0', '日曜日'),
('2025-06-09', 2, '1', ''),
('2025-06-10', 3, '1', ''),
('2025-06-11', 4, '1', ''),
('2025-06-12', 5, '1', ''),
('2025-06-13', 6, '1', ''),
('2025-06-14', 7, '0', '土曜日'),
('2025-06-15', 1, '0', '日曜日'),
('2025-06-16', 2, '1', ''),
('2025-06-17', 3, '1', ''),
('2025-06-18', 4, '1', ''),
('2025-06-19', 5, '1', ''),
('2025-06-20', 6, '1', ''),
('2025-06-21', 7, '0', '土曜日'),
('2025-06-22', 1, '0', '日曜日'),
('2025-06-23', 2, '1', ''),
('2025-06-24', 3, '1', ''),
('2025-06-25', 4, '1', ''),
('2025-06-26', 5, '1', ''),
('2025-06-27', 6, '1', ''),
('2025-06-28', 7, '0', '土曜日'),
('2025-06-29', 1, '0', '日曜日'),
('2025-06-30', 2, '1', ''),
('2025-07-01', 3, '1', ''),
('2025-07-02', 4, '1', ''),
('2025-07-03', 5, '1', ''),
('2025-07-04', 6, '1', ''),
('2025-07-05', 7, '0', '土曜日'),
('2025-07-06', 1, '0', '日曜日'),
('2025-07-07', 2, '1', ''),
('2025-07-08', 3, '1', ''),
('2025-07-09', 4, '1', ''),
('2025-07-10', 5, '1', ''),
('2025-07-11', 6, '1', ''),
('2025-07-12', 7, '0', '土曜日'),
('2025-07-13', 1, '0', '日曜日'),
('2025-07-14', 2, '1', ''),
('2025-07-15', 3, '1', ''),
('2025-07-16', 4, '1', ''),
('2025-07-17', 5, '1', ''),
('2025-07-18', 6, '1', ''),
('2025-07-19', 7, '0', '土曜日'),
('2025-07-20', 1, '0', '日曜日'),
('2025-07-21', 2, '0', '海の日'),
('2025-07-22', 3, '1', ''),
('2025-07-23', 4, '1', ''),
('2025-07-24', 5, '1', ''),
('2025-07-25', 6, '1', ''),
('2025-07-26', 7, '0', '土曜日'),
('2025-07-27', 1, '0', '日曜日'),
('2025-07-28', 2, '1', ''),
('2025-07-29', 3, '1', ''),
('2025-07-30', 4, '1', ''),
('2025-07-31', 5, '1', ''),
('2025-08-01', 6, '1', ''),
('2025-08-02', 7, '0', '土曜日'),
('2025-08-03', 1, '0', '日曜日'),
('2025-08-04', 2, '1', ''),
('2025-08-05', 3, '1', ''),
('2025-08-06', 4, '1', ''),
('2025-08-07', 5, '1', ''),
('2025-08-08', 6, '1', ''),
('2025-08-09', 7, '0', '土曜日'),
('2025-08-10', 1, '0', '日曜日'),
('2025-08-11', 2, '0', '山の日'),
('2025-08-12', 3, '1', ''),
('2025-08-13', 4, '1', ''),
('2025-08-14', 5, '1', ''),
('2025-08-15', 6, '1', ''),
('2025-08-16', 7, '0', '土曜日'),
('2025-08-17', 1, '0', '日曜日'),
('2025-08-18', 2, '1', ''),
('2025-08-19', 3, '1', ''),
('2025-08-20', 4, '1', ''),
('2025-08-21', 5, '1', ''),
('2025-08-22', 6, '1', ''),
('2025-08-23', 7, '0', '土曜日'),
('2025-08-24', 1, '0', '日曜日'),
('2025-08-25', 2, '1', ''),
('2025-08-26', 3, '1', ''),
('2025-08-27', 4, '1', ''),
('2025-08-28', 5, '1', ''),
('2025-08-29', 6, '1', ''),
('2025-08-30', 7, '0', '土曜日'),
('2025-08-31', 1, '0', '日曜日'),
('2025-09-01', 2, '1', ''),
('2025-09-02', 3, '1', ''),
('2025-09-03', 4, '1', ''),
('2025-09-04', 5, '1', ''),
('2025-09-05', 6, '1', ''),
('2025-09-06', 7, '0', '土曜日'),
('2025-09-07', 1, '0', '日曜日'),
('2025-09-08', 2, '1', ''),
('2025-09-09', 3, '1', ''),
('2025-09-10', 4, '1', ''),
('2025-09-11', 5, '1', ''),
('2025-09-12', 6, '1', ''),
('2025-09-13', 7, '0', '土曜日'),
('2025-09-14', 1, '0', '日曜日'),
('2025-09-15', 2, '0', '敬老の日'),
('2025-09-16', 3, '1', ''),
('2025-09-17', 4, '1', ''),
('2025-09-18', 5, '1', ''),
('2025-09-19', 6, '1', ''),
('2025-09-20', 7, '0', '土曜日'),
('2025-09-21', 1, '0', '日曜日'),
('2025-09-22', 2, '1', ''),
('2025-09-23', 3, '0', '秋分の日'),
('2025-09-24', 4, '1', ''),
('2025-09-25', 5, '1', ''),
('2025-09-26', 6, '1', ''),
('2025-09-27', 7, '0', '土曜日'),
('2025-09-28', 1, '0', '日曜日'),
('2025-09-29', 2, '1', ''),
('2025-09-30', 3, '1', ''),
('2025-10-01', 4, '1', ''),
('2025-10-02', 5, '1', ''),
('2025-10-03', 6, '1', ''),
('2025-10-04', 7, '0', '土曜日'),
('2025-10-05', 1, '0', '日曜日'),
('2025-10-06', 2, '1', ''),
('2025-10-07', 3, '1', ''),
('2025-10-08', 4, '1', ''),
('2025-10-09', 5, '1', ''),
('2025-10-10', 6, '1', ''),
('2025-10-11', 7, '0', '土曜日'),
('2025-10-12', 1, '0', '日曜日'),
('2025-10-13', 2, '0', 'スポーツの日'),
('2025-10-14', 3, '1', ''),
('2025-10-15', 4, '1', ''),
('2025-10-16', 5, '1', ''),
('2025-10-17', 6, '1', ''),
('2025-10-18', 7, '0', '土曜日'),
('2025-10-19', 1, '0', '日曜日'),
('2025-10-20', 2, '1', ''),
('2025-10-21', 3, '1', ''),
('2025-10-22', 4, '1', ''),
('2025-10-23', 5, '1', ''),
('2025-10-24', 6, '1', ''),
('2025-10-25', 7, '0', '土曜日'),
('2025-10-26', 1, '0', '日曜日'),
('2025-10-27', 2, '1', ''),
('2025-10-28', 3, '1', ''),
('2025-10-29', 4, '1', ''),
('2025-10-30', 5, '1', ''),
('2025-10-31', 6, '1', ''),
('2025-11-01', 7, '0', '土曜日'),
('2025-11-02', 1, '0', '日曜日'),
('2025-11-03', 2, '0', '文化の日'),
('2025-11-04', 3, '1', ''),
('2025-11-05', 4, '1', ''),
('2025-11-06', 5, '1', ''),
('2025-11-07', 6, '1', ''),
('2025-11-08', 7, '0', '土曜日'),
('2025-11-09', 1, '0', '日曜日'),
('2025-11-10', 2, '1', ''),
('2025-11-11', 3, '1', ''),
('2025-11-12', 4, '1', ''),
('2025-11-13', 5, '1', ''),
('2025-11-14', 6, '1', ''),
('2025-11-15', 7, '0', '土曜日'),
('2025-11-16', 1, '0', '日曜日'),
('2025-11-17', 2, '1', ''),
('2025-11-18', 3, '1', ''),
('2025-11-19', 4, '1', ''),
('2025-11-20', 5, '1', ''),
('2025-11-21', 6, '1', ''),
('2025-11-22', 7, '0', '土曜日'),
('2025-11-23', 1, '0', '日曜日'),
('2025-11-24', 2, '0', '振替休日'),
('2025-11-25', 3, '1', ''),
('2025-11-26', 4, '1', ''),
('2025-11-27', 5, '1', ''),
('2025-11-28', 6, '1', ''),
('2025-11-29', 7, '0', '土曜日'),
('2025-11-30', 1, '0', '日曜日'),
('2025-12-01', 2, '1', ''),
('2025-12-02', 3, '1', ''),
('2025-12-03', 4, '1', ''),
('2025-12-04', 5, '1', ''),
('2025-12-05', 6, '1', ''),
('2025-12-06', 7, '0', '土曜日'),
('2025-12-07', 1, '0', '日曜日'),
('2025-12-08', 2, '1', ''),
('2025-12-09', 3, '1', ''),
('2025-12-10', 4, '1', ''),
('2025-12-11', 5, '1', ''),
('2025-12-12', 6, '1', ''),
('2025-12-13', 7, '0', '土曜日'),
('2025-12-14', 1, '0', '日曜日'),
('2025-12-15', 2, '1', ''),
('2025-12-16', 3, '1', ''),
('2025-12-17', 4, '1', ''),
('2025-12-18', 5, '1', ''),
('2025-12-19', 6, '1', ''),
('2025-12-20', 7, '0', '土曜日'),
('2025-12-21', 1, '0', '日曜日'),
('2025-12-22', 2, '1', ''),
('2025-12-23', 3, '1', ''),
('2025-12-24', 4, '1', ''),
('2025-12-25', 5, '1', ''),
('2025-12-26', 6, '1', ''),
('2025-12-27', 7, '0', '土曜日'),
('2025-12-28', 1, '0', '日曜日'),
('2025-12-29', 2, '0', '年末年始'),
('2025-12-30', 3, '0', '年末年始'),
('2025-12-31', 4, '0', '年末年始'),
('2026-01-01', 5, '0', '年末年始'),
('2026-01-02', 6, '0', '年末年始'),
('2026-01-03', 7, '0', '土曜日'),
('2026-01-04', 1, '0', '日曜日'),
('2026-01-05', 2, '1', ''),
('2026-01-06', 3, '1', ''),
('2026-01-07', 4, '1', ''),
('2026-01-08', 5, '1', ''),
('2026-01-09', 6, '1', ''),
('2026-01-10', 7, '0', '土曜日'),
('2026-01-11', 1, '0', '日曜日'),
('2026-01-12', 2, '0', '成人の日'),
('2026-01-13', 3, '1', ''),
('2026-01-14', 4, '1', ''),
('2026-01-15', 5, '1', ''),
('2026-01-16', 6, '1', ''),
('2026-01-17', 7, '0', '土曜日'),
('2026-01-18', 1, '0', '日曜日'),
('2026-01-19', 2, '1', ''),
('2026-01-20', 3, '1', ''),
('2026-01-21', 4, '1', ''),
('2026-01-22', 5, '1', ''),
('2026-01-23', 6, '1', ''),
('2026-01-24', 7, '0', '土曜日'),
('2026-01-25', 1, '0', '日曜日'),
('2026-01-26', 2, '1', ''),
('2026-01-27', 3, '1', ''),
('2026-01-28', 4, '1', ''),
('2026-01-29', 5, '1', ''),
('2026-01-30', 6, '1', ''),
('2026-01-31', 7, '0', '土曜日'),
('2026-02-01', 1, '0', '日曜日'),
('2026-02-02', 2, '1', ''),
('2026-02-03', 3, '1', ''),
('2026-02-04', 4, '1', ''),
('2026-02-05', 5, '1', ''),
('2026-02-06', 6, '1', ''),
('2026-02-07', 7, '0', '土曜日'),
('2026-02-08', 1, '0', '日曜日'),
('2026-02-09', 2, '1', ''),
('2026-02-10', 3, '1', ''),
('2026-02-11', 4, '0', '建国記念の日'),
('2026-02-12', 5, '1', ''),
('2026-02-13', 6, '1', ''),
('2026-02-14', 7, '0', '土曜日'),
('2026-02-15', 1, '0', '日曜日'),
('2026-02-16', 2, '1', ''),
('2026-02-17', 3, '1', ''),
('2026-02-18', 4, '1', ''),
('2026-02-19', 5, '1', ''),
('2026-02-20', 6, '1', ''),
('2026-02-21', 7, '0', '土曜日'),
('2026-02-22', 1, '0', '日曜日'),
('2026-02-23', 2, '0', '天皇誕生日'),
('2026-02-24', 3, '1', ''),
('2026-02-25', 4, '1', ''),
('2026-02-26', 5, '1', ''),
('2026-02-27', 6, '1', ''),
('2026-02-28', 7, '0', '土曜日'),
('2026-03-01', 1, '0', '日曜日'),
('2026-03-02', 2, '1', ''),
('2026-03-03', 3, '1', ''),
('2026-03-04', 4, '1', ''),
('2026-03-05', 5, '1', ''),
('2026-03-06', 6, '1', ''),
('2026-03-07', 7, '0', '土曜日'),
('2026-03-08', 1, '0', '日曜日'),
('2026-03-09', 2, '1', ''),
('2026-03-10', 3, '1', ''),
('2026-03-11', 4, '1', ''),
('2026-03-12', 5, '1', ''),
('2026-03-13', 6, '1', ''),
('2026-03-14', 7, '0', '土曜日'),
('2026-03-15', 1, '0', '日曜日'),
('2026-03-16', 2, '1', ''),
('2026-03-17', 3, '1', ''),
('2026-03-18', 4, '1', ''),
('2026-03-19', 5, '1', ''),
('2026-03-20', 6, '0', '春分の日'),
('2026-03-21', 7, '0', '土曜日'),
('2026-03-22', 1, '0', '日曜日'),
('2026-03-23', 2, '1', ''),
('2026-03-24', 3, '1', ''),
('2026-03-25', 4, '1', ''),
('2026-03-26', 5, '1', ''),
('2026-03-27', 6, '1', ''),
('2026-03-28', 7, '0', '土曜日'),
('2026-03-29', 1, '0', '日曜日'),
('2026-03-30', 2, '1', ''),
('2026-03-31', 3, '1', ''),
('2026-04-01', 4, '1', ''),
('2026-04-02', 5, '1', ''),
('2026-04-03', 6, '1', ''),
('2026-04-04', 7, '0', '土曜日'),
('2026-04-05', 1, '0', '日曜日'),
('2026-04-06', 2, '1', ''),
('2026-04-07', 3, '1', ''),
('2026-04-08', 4, '1', ''),
('2026-04-09', 5, '1', ''),
('2026-04-10', 6, '1', ''),
('2026-04-11', 7, '0', '土曜日'),
('2026-04-12', 1, '0', '日曜日'),
('2026-04-13', 2, '1', ''),
('2026-04-14', 3, '1', ''),
('2026-04-15', 4, '1', ''),
('2026-04-16', 5, '1', ''),
('2026-04-17', 6, '1', ''),
('2026-04-18', 7, '0', '土曜日'),
('2026-04-19', 1, '0', '日曜日'),
('2026-04-20', 2, '1', ''),
('2026-04-21', 3, '1', ''),
('2026-04-22', 4, '1', ''),
('2026-04-23', 5, '1', ''),
('2026-04-24', 6, '1', ''),
('2026-04-25', 7, '0', '土曜日'),
('2026-04-26', 1, '0', '日曜日'),
('2026-04-27', 2, '1', ''),
('2026-04-28', 3, '1', ''),
('2026-04-29', 4, '0', '昭和の日'),
('2026-04-30', 5, '1', ''),
('2026-05-01', 6, '1', ''),
('2026-05-02', 7, '0', '土曜日'),
('2026-05-03', 1, '0', '日曜日'),
('2026-05-04', 2, '0', 'みどりの日'),
('2026-05-05', 3, '0', 'こどもの日'),
('2026-05-06', 4, '0', '振替休日'),
('2026-05-07', 5, '1', ''),
('2026-05-08', 6, '1', ''),
('2026-05-09', 7, '0', '土曜日'),
('2026-05-10', 1, '0', '日曜日'),
('2026-05-11', 2, '1', ''),
('2026-05-12', 3, '1', ''),
('2026-05-13', 4, '1', ''),
('2026-05-14', 5, '1', ''),
('2026-05-15', 6, '1', ''),
('2026-05-16', 7, '0', '土曜日'),
('2026-05-17', 1, '0', '日曜日'),
('2026-05-18', 2, '1', ''),
('2026-05-19', 3, '1', ''),
('2026-05-20', 4, '1', ''),
('2026-05-21', 5, '1', ''),
('2026-05-22', 6, '1', ''),
('2026-05-23', 7, '0', '土曜日'),
('2026-05-24', 1, '0', '日曜日'),
('2026-05-25', 2, '1', ''),
('2026-05-26', 3, '1', ''),
('2026-05-27', 4, '1', ''),
('2026-05-28', 5, '1', ''),
('2026-05-29', 6, '1', ''),
('2026-05-30', 7, '0', '土曜日'),
('2026-05-31', 1, '0', '日曜日'),
('2026-06-01', 2, '1', ''),
('2026-06-02', 3, '1', ''),
('2026-06-03', 4, '1', ''),
('2026-06-04', 5, '1', ''),
('2026-06-05', 6, '1', ''),
('2026-06-06', 7, '0', '土曜日'),
('2026-06-07', 1, '0', '日曜日'),
('2026-06-08', 2, '1', ''),
('2026-06-09', 3, '1', ''),
('2026-06-10', 4, '1', ''),
('2026-06-11', 5, '1', ''),
('2026-06-12', 6, '1', ''),
('2026-06-13', 7, '0', '土曜日'),
('2026-06-14', 1, '0', '日曜日'),
('2026-06-15', 2, '1', ''),
('2026-06-16', 3, '1', ''),
('2026-06-17', 4, '1', ''),
('2026-06-18', 5, '1', ''),
('2026-06-19', 6, '1', ''),
('2026-06-20', 7, '0', '土曜日'),
('2026-06-21', 1, '0', '日曜日'),
('2026-06-22', 2, '1', ''),
('2026-06-23', 3, '1', ''),
('2026-06-24', 4, '1', ''),
('2026-06-25', 5, '1', ''),
('2026-06-26', 6, '1', ''),
('2026-06-27', 7, '0', '土曜日'),
('2026-06-28', 1, '0', '日曜日'),
('2026-06-29', 2, '1', ''),
('2026-06-30', 3, '1', ''),
('2026-07-01', 4, '1', ''),
('2026-07-02', 5, '1', ''),
('2026-07-03', 6, '1', ''),
('2026-07-04', 7, '0', '土曜日'),
('2026-07-05', 1, '0', '日曜日'),
('2026-07-06', 2, '1', ''),
('2026-07-07', 3, '1', ''),
('2026-07-08', 4, '1', ''),
('2026-07-09', 5, '1', ''),
('2026-07-10', 6, '1', ''),
('2026-07-11', 7, '0', '土曜日'),
('2026-07-12', 1, '0', '日曜日'),
('2026-07-13', 2, '1', ''),
('2026-07-14', 3, '1', ''),
('2026-07-15', 4, '1', ''),
('2026-07-16', 5, '1', ''),
('2026-07-17', 6, '1', ''),
('2026-07-18', 7, '0', '土曜日'),
('2026-07-19', 1, '0', '日曜日'),
('2026-07-20', 2, '0', '海の日'),
('2026-07-21', 3, '1', ''),
('2026-07-22', 4, '1', ''),
('2026-07-23', 5, '1', ''),
('2026-07-24', 6, '1', ''),
('2026-07-25', 7, '0', '土曜日'),
('2026-07-26', 1, '0', '日曜日'),
('2026-07-27', 2, '1', ''),
('2026-07-28', 3, '1', ''),
('2026-07-29', 4, '1', ''),
('2026-07-30', 5, '1', ''),
('2026-07-31', 6, '1', ''),
('2026-08-01', 7, '0', '土曜日'),
('2026-08-02', 1, '0', '日曜日'),
('2026-08-03', 2, '1', ''),
('2026-08-04', 3, '1', ''),
('2026-08-05', 4, '1', ''),
('2026-08-06', 5, '1', ''),
('2026-08-07', 6, '1', ''),
('2026-08-08', 7, '0', '土曜日'),
('2026-08-09', 1, '0', '日曜日'),
('2026-08-10', 2, '1', ''),
('2026-08-11', 3, '0', '山の日'),
('2026-08-12', 4, '1', ''),
('2026-08-13', 5, '1', ''),
('2026-08-14', 6, '1', ''),
('2026-08-15', 7, '0', '土曜日'),
('2026-08-16', 1, '0', '日曜日'),
('2026-08-17', 2, '1', ''),
('2026-08-18', 3, '1', ''),
('2026-08-19', 4, '1', ''),
('2026-08-20', 5, '1', ''),
('2026-08-21', 6, '1', ''),
('2026-08-22', 7, '0', '土曜日'),
('2026-08-23', 1, '0', '日曜日'),
('2026-08-24', 2, '1', ''),
('2026-08-25', 3, '1', ''),
('2026-08-26', 4, '1', ''),
('2026-08-27', 5, '1', ''),
('2026-08-28', 6, '1', ''),
('2026-08-29', 7, '0', '土曜日'),
('2026-08-30', 1, '0', '日曜日'),
('2026-08-31', 2, '1', ''),
('2026-09-01', 3, '1', ''),
('2026-09-02', 4, '1', ''),
('2026-09-03', 5, '1', ''),
('2026-09-04', 6, '1', ''),
('2026-09-05', 7, '0', '土曜日'),
('2026-09-06', 1, '0', '日曜日'),
('2026-09-07', 2, '1', ''),
('2026-09-08', 3, '1', ''),
('2026-09-09', 4, '1', ''),
('2026-09-10', 5, '1', ''),
('2026-09-11', 6, '1', ''),
('2026-09-12', 7, '0', '土曜日'),
('2026-09-13', 1, '0', '日曜日'),
('2026-09-14', 2, '1', ''),
('2026-09-15', 3, '1', ''),
('2026-09-16', 4, '1', ''),
('2026-09-17', 5, '1', ''),
('2026-09-18', 6, '1', ''),
('2026-09-19', 7, '0', '土曜日'),
('2026-09-20', 1, '0', '日曜日'),
('2026-09-21', 2, '0', '敬老の日'),
('2026-09-22', 3, '0', '国民の休日'),
('2026-09-23', 4, '0', '秋分の日'),
('2026-09-24', 5, '1', ''),
('2026-09-25', 6, '1', ''),
('2026-09-26', 7, '0', '土曜日');

INSERT INTO "public"."m_calendar" ("cal_date", "week_day", "biz_day_flag", "comment") VALUES
('2026-09-27', 1, '0', '日曜日'),
('2026-09-28', 2, '1', ''),
('2026-09-29', 3, '1', ''),
('2026-09-30', 4, '1', ''),
('2026-10-01', 5, '1', ''),
('2026-10-02', 6, '1', ''),
('2026-10-03', 7, '0', '土曜日'),
('2026-10-04', 1, '0', '日曜日'),
('2026-10-05', 2, '1', ''),
('2026-10-06', 3, '1', ''),
('2026-10-07', 4, '1', ''),
('2026-10-08', 5, '1', ''),
('2026-10-09', 6, '1', ''),
('2026-10-10', 7, '0', '土曜日'),
('2026-10-11', 1, '0', '日曜日'),
('2026-10-12', 2, '0', 'スポーツの日'),
('2026-10-13', 3, '1', ''),
('2026-10-14', 4, '1', ''),
('2026-10-15', 5, '1', ''),
('2026-10-16', 6, '1', ''),
('2026-10-17', 7, '0', '土曜日'),
('2026-10-18', 1, '0', '日曜日'),
('2026-10-19', 2, '1', ''),
('2026-10-20', 3, '1', ''),
('2026-10-21', 4, '1', ''),
('2026-10-22', 5, '1', ''),
('2026-10-23', 6, '1', ''),
('2026-10-24', 7, '0', '土曜日'),
('2026-10-25', 1, '0', '日曜日'),
('2026-10-26', 2, '1', ''),
('2026-10-27', 3, '1', ''),
('2026-10-28', 4, '1', ''),
('2026-10-29', 5, '1', ''),
('2026-10-30', 6, '1', ''),
('2026-10-31', 7, '0', '土曜日'),
('2026-11-01', 1, '0', '日曜日'),
('2026-11-02', 2, '1', ''),
('2026-11-03', 3, '0', '文化の日'),
('2026-11-04', 4, '1', ''),
('2026-11-05', 5, '1', ''),
('2026-11-06', 6, '1', ''),
('2026-11-07', 7, '0', '土曜日'),
('2026-11-08', 1, '0', '日曜日'),
('2026-11-09', 2, '1', ''),
('2026-11-10', 3, '1', ''),
('2026-11-11', 4, '1', ''),
('2026-11-12', 5, '1', ''),
('2026-11-13', 6, '1', ''),
('2026-11-14', 7, '0', '土曜日'),
('2026-11-15', 1, '0', '日曜日'),
('2026-11-16', 2, '1', ''),
('2026-11-17', 3, '1', ''),
('2026-11-18', 4, '1', ''),
('2026-11-19', 5, '1', ''),
('2026-11-20', 6, '1', ''),
('2026-11-21', 7, '0', '土曜日'),
('2026-11-22', 1, '0', '日曜日'),
('2026-11-23', 2, '0', '勤労感謝の日'),
('2026-11-24', 3, '1', ''),
('2026-11-25', 4, '1', ''),
('2026-11-26', 5, '1', ''),
('2026-11-27', 6, '1', ''),
('2026-11-28', 7, '0', '土曜日'),
('2026-11-29', 1, '0', '日曜日'),
('2026-11-30', 2, '1', ''),
('2026-12-01', 3, '1', ''),
('2026-12-02', 4, '1', ''),
('2026-12-03', 5, '1', ''),
('2026-12-04', 6, '1', ''),
('2026-12-05', 7, '0', '土曜日'),
('2026-12-06', 1, '0', '日曜日'),
('2026-12-07', 2, '1', ''),
('2026-12-08', 3, '1', ''),
('2026-12-09', 4, '1', ''),
('2026-12-10', 5, '1', ''),
('2026-12-11', 6, '1', ''),
('2026-12-12', 7, '0', '土曜日'),
('2026-12-13', 1, '0', '日曜日'),
('2026-12-14', 2, '1', ''),
('2026-12-15', 3, '1', ''),
('2026-12-16', 4, '1', ''),
('2026-12-17', 5, '1', ''),
('2026-12-18', 6, '1', ''),
('2026-12-19', 7, '0', '土曜日'),
('2026-12-20', 1, '0', '日曜日'),
('2026-12-21', 2, '1', ''),
('2026-12-22', 3, '1', ''),
('2026-12-23', 4, '1', ''),
('2026-12-24', 5, '1', ''),
('2026-12-25', 6, '1', ''),
('2026-12-26', 7, '0', '土曜日'),
('2026-12-27', 1, '0', '日曜日'),
('2026-12-28', 2, '0', '年末年始'),
('2026-12-29', 3, '0', '年末年始'),
('2026-12-30', 4, '0', '年末年始'),
('2026-12-31', 5, '0', '年末年始');

INSERT INTO "public"."m_development_document" ("development_document_id", "document_name", "document_type") VALUES
(1, '最終提出書類', '0'),
(2, '全提出書類', '0'),
(3, '開発登録簿', '1');

INSERT INTO "public"."m_ledger_label" ("ledger_label_id", "ledger_id", "replace_identify", "table_name", "export_column_name", "filter_column_name", "filter_condition", "item_id_1", "item_id_2", "convert_order", "convert_format") VALUES
('1001', '1001', '$app_day', 'o_application', 'register_datetime', '', '', '', '', 'dateformat=Gy年M月d日,japanese=true', '%s'),
('1002', '1001', '$app_address', 'o_applicant_information', '', '', '', '0', '1004', '', '%s'),
('1003', '1001', '$app_name', 'o_applicant_information', '', '', '', '0', '1001', '', '%s'),
('1004', '1001', '$purpose', 'o_application_category', '', '', '', '1005', '', '', '%s'),
('1005', '1001', '$building_count', 'o_applicant_information_add', '', '', '', '2020', '', 'round=0', '%s棟'),
('1006', '1001', '$room_count', 'o_applicant_information_add', '', '', '', '2021', '', 'round=0', '%s戸'),
('1007', '1001', '$lot_numbers', 'f_application_lot_number', 'lot_numbers', '', '', '', '', '', '%s'),
('1008', '1001', '$area_type', 'o_applicant_information_add', '', '', '', '2022', '', '', '%s'),
('1009', '1001', '$area_real', 'o_applicant_information_add', '', '', '', '2001', '', 'round=2', '%s㎡'),
('1010', '1001', '$area_doc', 'o_applicant_information_add', '', '', '', '2002', '', 'round=2', '%s㎡'),
('1011', '1001', '$structure', 'o_applicant_information_add', '', '', '', '2005', '', '', '%s'),
('1012', '1001', '$area_building', 'o_applicant_information_add', '', '', '', '2003', '', 'round=2', '%s㎡'),
('1013', '1001', '$area_floor', 'o_applicant_information_add', '', '', '', '2004', '', 'round=2', '%s㎡'),
('1014', '1001', '$land_change', 'o_applicant_information_add', '', '', '', '2013', '', '', '%s'),
('1015', '1001', '$self', 'o_applicant_information_add', '', '', '', '2014', '', '', '%s'),
('1016', '1001', '$contruct_address', 'o_applicant_information_add', '', '', '', '2006', '', '', '%s'),
('1017', '1001', '$construct_name', 'o_applicant_information_add', '', '', '', '2007', '', '', '%s'),
('1018', '1001', '$construct_phone', 'o_applicant_information_add', '', '', '', '2008', '', '', '%s'),
('1019', '1001', '$design_address', 'o_applicant_information_add', '', '', '', '2009', '', '', '%s'),
('1020', '1001', '$design_name', 'o_applicant_information_add', '', '', '', '2010', '', '', '%s'),
('1021', '1001', '$design_phone', 'o_applicant_information_add', '', '', '', '2011', '', '', '%s'),
('1022', '1001', '$design_contact', 'o_applicant_information_add', '', '', '', '2012', '', '', '%s'),
('2001', '2001', '$complete_date', 'o_application_version_information', 'complete_datetime', '', '', '3', '', 'dateformat=Gy年M月d日,japanese=true,day=0', '%s'),
('2002', '2001', '$app_address', 'o_applicant_information', '', '', '', '0', '1004', '', '%s'),
('2003', '2001', '$app_name', 'o_applicant_information', '', '', '', '0', '1001', '', '%s'),
('2004', '2001', '$lot_numbers', 'f_application_lot_number', 'lot_numbers', '', '', '', '', '', '%s'),
('2005', '2001', '$area_real', 'o_applicant_information_add', '', '', '', '2001', '', 'round=2', '%s㎡'),
('2006', '2001', '$purpose', 'o_application_category', '', '', '', '1005', '', '', '%s'),
('2007', '2001', '$contruct_address', 'o_applicant_information_add', '', '', '', '2006', '', '', '%s'),
('2008', '2001', '$construct_name', 'o_applicant_information_add', '', '', '', '2007', '', '', '%s'),
('2009', '2001', '$construct_start_date', 'o_application_version_information', 'complete_datetime', '', '', '3', '', 'dateformat=Gy年M月d日,japanese=true,day=1', '%s'),
('2010', '2001', '$construct_end_date', 'o_applicant_information_add', '', '', '', '3001', '', 'dateformat=Gy年M月d日,japanese=true', '%s'),
('2011', '2001', '$self', 'o_applicant_information_add', '', '', '', '3002', '', '', '%s'),
('2012', '2001', '$low34', 'o_applicant_information_add', '', '', '', '3003', '', '', '%s'),
('2013', '2001', '$another_item', 'o_applicant_information_add', '', '', '', '3004', '', '', '%s'),
('2201', '2002', '$company_name', 'o_applicant_information_add', '', '', '', '2015', '', '', '%s'),
('2202', '2002', '$job_post', 'o_applicant_information_add', '', '', '', '2016', '', '', '%s'),
('2203', '2002', '$app_name', 'o_applicant_information', '', '', '', '0', '1001', '', '%s'),
('2204', '2002', '$app_address', 'o_applicant_information', '', '', '', '0', '1004', '', '%s'),
('2205', '2002', '$complete_date', 'o_application_version_information', 'complete_datetime', '', '', '2', '', 'dateformat=Gy年M月d日,japanese=true', '%s'),
('2206', '2002', '$lot_numbers', 'f_application_lot_number', 'lot_numbers', '', '', '', '', '', '%s'),
('2501', '2005', '$complete_date', 'o_application_version_information', 'complete_datetime', '', '', '2', '', 'dateformat=Gy年M月d日,japanese=true', '%s'),
('2502', '2005', '$app_address', 'o_applicant_information', '', '', '', '0', '1004', '', '%s'),
('2503', '2005', '$app_name', 'o_applicant_information', '', '', '', '0', '1001', '', '%s'),
('2504', '2005', '$lot_numbers', 'f_application_lot_number', 'lot_numbers', '', '', '', '', '', '%s'),
('2505', '2005', '$_area', 'o_applicant_information_add', '', '', '', '2001', '', 'round=2', '%s'),
('2506', '2005', '$purpose', 'o_application_category', '', '', '', '1005', '', '', '%s'),
('2507', '2005', '$construct_address', 'o_applicant_information_add', '', '', '', '2006', '', '', '%s'),
('2508', '2005', '$construct_name', 'o_applicant_information_add', '', '', '', '2007', '', '', '%s'),
('2509', '2005', '$construct_start_date', 'o_application_version_information', 'complete_datetime', '', '', '3', '', 'dateformat=Gy年M月d日,japanese=true,day=1', '%s'),
('2510', '2005', '$construct_end_date', 'o_applicant_information_add', '', '', '', '3001', '', 'dateformat=Gy年M月d日,japanese=true', '%s'),
('2511', '2005', '$self', 'o_applicant_information_add', '', '', '', '3002', '', '', '%s'),
('2512', '2005', '$low34', 'o_applicant_information_add', '', '', '', '3003', '', '', '%s'),
('2513', '2005', '$another_item', 'o_applicant_information_add', '', '', '', '3004', '', '', '%s'),
('2701', '2007', '$app_name', 'o_applicant_information', '', '', '', '0', '1001', '', '%s'),
('2702', '2007', '$app_address', 'o_applicant_information', '', '', '', '0', '1004', '', '%s'),
('2703', '2007', '$contruct_address', 'o_applicant_information_add', '', '', '', '2006', '', '', '%s'),
('2704', '2007', '$construct_name', 'o_applicant_information_add', '', '', '', '2007', '', '', '%s'),
('2705', '2007', '$lot_numbers', 'f_application_lot_number', 'lot_numbers', '', '', '', '', '', '%s'),
('2706', '2007', '$area', 'o_applicant_information_add', '', '', '', '2001', '', 'round=2', '%s'),
('2707', '2007', '$purpose', 'o_application_category', '', '', '', '1005', '', '', '%s'),
('2708', '2007', '$self', 'o_applicant_information_add', '', '', '', '3002', '', '', '%s'),
('2709', '2007', '$construct_start_date', 'o_application_version_information', 'complete_datetime', '', '', '3', '', 'dateformat=Gy年M月d日,japanese=true,day=1', '%s'),
('2710', '2007', '$construct_end_date', 'o_applicant_information_add', '', '', '', '3001', '', 'dateformat=Gy年M月d日,japanese=true', '%s');

INSERT INTO "public"."m_judgement_authority" ("judgement_item_id", "department_id") VALUES
('3001', '1001'),
('3001', '1002'),
('3002', '1001'),
('3002', '1002'),
('3003', '1002'),
('3004', '1011'),
('3005', '1011'),
('3006', '1005'),
('3007', '1005'),
('3008', '1003'),
('3009', '1003'),
('3010', '1010'),
('3011', '1003');

INSERT INTO "public"."m_applicant_information_item_option" ("applicant_information_item_option_id", "applicant_information_item_id", "display_order", "applicant_information_item_option_name") VALUES
('5001', '2013', 1, '有'),
('5002', '2013', 2, '無'),
('5003', '2014', 1, '自己用'),
('5004', '2014', 2, '非自己用'),
('5005', '3002', 1, '自己の居住の用に供するもの'),
('5006', '3002', 2, '自己の業務の用に供するもの'),
('5007', '3002', 3, 'その他のもの'),
('5008', '3004', 1, 'なし'),
('5009', '3004', 2, '農地法第4条許可'),
('5010', '3004', 3, '農地法第5条許可');

INSERT INTO "public"."m_authority" ("department_id", "application_step_id", "answer_authority_flag", "notification_authority_flag") VALUES
('1001', 1, '1', '0'),
('1001', 2, '1', '1'),
('1001', 3, '0', '0'),
('1002', 1, '1', '0'),
('1002', 2, '1', '1'),
('1002', 3, '0', '0'),
('1003', 1, '2', '2'),
('1003', 2, '1', '2'),
('1003', 3, '2', '2'),
('1004', 1, '1', '0'),
('1004', 2, '1', '1'),
('1004', 3, '0', '0'),
('1005', 1, '1', '0'),
('1005', 2, '1', '1'),
('1005', 3, '0', '0'),
('1006', 1, '1', '0'),
('1006', 2, '1', '1'),
('1006', 3, '0', '0'),
('1007', 1, '1', '0'),
('1007', 2, '1', '1'),
('1007', 3, '0', '0'),
('1008', 1, '1', '0'),
('1008', 2, '1', '1'),
('1008', 3, '0', '0'),
('1009', 1, '1', '0'),
('1009', 2, '1', '1'),
('1009', 3, '0', '0'),
('1010', 1, '1', '0'),
('1010', 2, '1', '1'),
('1010', 3, '0', '0'),
('1011', 1, '1', '0'),
('1011', 2, '1', '1'),
('1011', 3, '0', '0');

INSERT INTO "public"."m_ledger" ("ledger_id", "application_step_id", "ledger_name", "display_name", "template_path", "output_type", "notification_flag", "ledger_type", "update_flag", "notify_flag", "upload_extension", "information_text") VALUES
('1001', 2, '同意通知書', '同意通知書', '/ledger/template/同意通知書.xlsx', '0', '1', '0', '1', '1', 'xlsx,pdf', '同意通知書（ExcelまたはPDF形式）をアップロードしてください。'),
('2001', 3, '許可通知書', '許可通知書', '/ledger/template/開発行為許可通知書.xlsx', '0', '1', '0', '1', '1', 'xlsx,pdf', '許可通知書（ExcelまたはPDF形式）をアップロードしてください。'),
('2002', 2, '32条協議書', '32協議', '/ledger/template/32条協議書.xlsx', '1', '1', '0', '1', '1', 'xlsx,pdf', '32条協議書（ExcelまたはPDF形式）をアップロードしてください。'),
('2005', 3, '開発行為許可申請書', '開発行為許可申請書', '/ledger/template/開発行為許可申請書.xlsx', '0', '1', '0', '1', '1', 'xlsx,pdf', '開発許可行為申請書（ExcelまたはPDF形式）をアップロードしてください。'),
('2007', 3, '調書', '調書', '/ledger/template/調書.xlsx', '0', '1', '1', '1', '1', 'pdf', '調書（PDF形式）をアップロードしてください。開発登録簿に取り込みます。');

INSERT INTO "public"."m_application_step" ("application_step_id", "application_step_name") VALUES
(1, '事前相談'),
(2, '事前協議'),
(3, '許可判定');

INSERT INTO "public"."m_application_type" ("application_type_id", "application_type_name", "application_step") VALUES
(0, '開発許可', '1,2,3'),
(1, '建築確認', '1');

INSERT INTO "public"."m_application_category_judgement" ("judgement_item_id", "view_id", "category_id") VALUES
('3001', '1004', '2021'),
('3002', '1002', '2009'),
('3002', '1002', '2010'),
('3002', '1002', '2011'),
('3002', '1002', '2012'),
('3002', '1002', '2013'),
('3002', '1002', '2014'),
('3002', '1002', '2015'),
('3002', '1002', '2016'),
('3002', '1002', '2017'),
('3002', '1002', '2018'),
('3002', '1002', '2047'),
('3003', '1002', '2016'),
('3003', '1002', '2017'),
('3003', '1002', '2018'),
('3003', '1002', '2047'),
('3005', '1007', '2046');

INSERT INTO "public"."m_judgement_result" ("judgement_item_id", "application_type_id", "application_step_id", "department_id", "title", "applicable_summary", "applicable_description", "non_applicable_display_flag", "non_applicable_summary", "non_applicable_description", "answer_require_flag", "default_answer", "answer_editable_flag", "answer_days") VALUES
('3001', 0, 1, '-1', '宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '利用目的に、「販売または賃貸を目的とした開発」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3001', 0, 2, '1001', '(事前協議)宅地造成・観光開発の規制に関する手続き', '★事前協議必要　環境課（生活環境保全条例）', '利用目的に、「販売または賃貸を目的とした開発」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3001', 0, 2, '1002', '(事前協議)宅地造成・観光開発の規制に関する手続き', '★事前協議必要　地域振興局　環境課（生活環境保全条例）', '利用目的に、「販売または賃貸を目的とした開発」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3001', 0, 3, '-1', '(許可判定)宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '利用目的に、「販売または賃貸を目的とした開発」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3001', 1, 1, '-1', '(建築確認)宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '利用目的に、「販売または賃貸を目的とした開発」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3002', 0, 1, '-1', '宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '特殊な開発行為に、「盛土・切土」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3002', 0, 2, '1001', '(事前協議)宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '特殊な開発行為に、「盛土・切土」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3002', 0, 3, '-1', '(許可判定)宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '特殊な開発行為に、「盛土・切土」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3002', 1, 1, '-1', '(建築確認)宅地造成・観光開発の規制に関する手続き', '★事前相談必要　環境課', '特殊な開発行為に、「盛土・切土」が含まれるため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3003', 0, 1, '-1', '自然保護条例に関する手続き', '★事前相談必要　地域振興局　環境課', '面積が、「10,000㎡」以上のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 1),
('3003', 0, 2, '1002', '(事前協議)自然保護条例に関する手続き', '★事前相談必要　地域振興局　環境課', '面積が、「10,000㎡」以上のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 1),
('3003', 0, 3, '-1', '(許可判定)自然保護条例に関する手続き', '★事前相談必要　地域振興局　環境課', '面積が、「10,000㎡」以上のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 1),
('3003', 1, 1, '-1', '(建築確認)自然保護条例に関する手続き', '★事前相談必要　地域振興局　環境課', '面積が、「10,000㎡」以上のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 1),
('3004', 0, 1, '-1', '農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地が「農用地の区域内」のため担当課に事前相談を実施いただく必要がございます。', '1', '★事前相談不要　農林課', '開発予定地が「農用地の区域外」のため担当課に事前相談を実施いただく必要はございません。', '1', '', '1', 2),
('3004', 0, 2, '1011', '(事前協議)農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地が「農用地の区域内」のため担当課に事前相談を実施いただく必要がございます。', '1', '★事前相談不要　農林課', '開発予定地が「農用地の区域外」のため担当課に事前相談を実施いただく必要はございません。', '1', '', '1', 2),
('3004', 0, 3, '-1', '(許可判定)農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地が「農用地の区域内」のため担当課に事前相談を実施いただく必要がございます。', '1', '★事前相談不要　農林課', '開発予定地が「農用地の区域外」のため担当課に事前相談を実施いただく必要はございません。', '1', '', '1', 2),
('3004', 1, 1, '-1', '(建築確認)農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地が「農用地の区域内」のため担当課に事前相談を実施いただく必要がございます。', '1', '★事前相談不要　農林課', '開発予定地が「農用地の区域外」のため担当課に事前相談を実施いただく必要はございません。', '1', '', '1', 2),
('3005', 0, 1, '-1', '農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地の「登記」又は「現況」が農地の場合は、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3005', 0, 2, '1011', '(事前協議)農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地の「登記」又は「現況」が農地の場合は、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3005', 0, 3, '-1', '(許可判定)農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地の「登記」又は「現況」が農地の場合は、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3005', 1, 1, '-1', '(建築確認)農用地に関する手続きについて', '★事前相談必要　農林課', '開発予定地の「登記」又は「現況」が農地の場合は、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 3),
('3006', 0, 1, '-1', '埋蔵文化財に関する手続き', '★事前相談必要　文化財課', '開発予定地が、「埋蔵文化財包蔵地の区域内」のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 2),
('3006', 0, 2, '1005', '(事前協議)埋蔵文化財に関する手続き', '★事前相談必要　文化財課', '開発予定地が、「埋蔵文化財包蔵地の区域内」のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 2),
('3006', 0, 3, '-1', '(許可判定)埋蔵文化財に関する手続き', '★事前相談必要　文化財課', '開発予定地が、「埋蔵文化財包蔵地の区域内」のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 2),
('3006', 1, 1, '-1', '(建築確認)埋蔵文化財に関する手続き', '★事前相談必要　文化財課', '開発予定地が、「埋蔵文化財包蔵地の区域内」のため、担当課への事前相談を行い、意見書を作成頂く必要がございます。', '0', '', '', '1', '', '1', 2),
('3007', 0, 1, '-1', '埋蔵文化財に関する手続き', '★事前相談不要　文化財課', '開発予定地が「埋蔵文化財包蔵地の区域外」のため、担当課への事前相談は不要です。
{distance}', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3007', 0, 2, '1005', '(事前協議)埋蔵文化財に関する手続き', '★事前相談不要　文化財課', '開発予定地が「埋蔵文化財包蔵地の区域外」のため、担当課への事前相談は不要です。
{distance}', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3007', 0, 3, '-1', '(許可判定)埋蔵文化財に関する手続き', '★事前相談不要　文化財課', '開発予定地が「埋蔵文化財包蔵地の区域外」のため、担当課への事前相談は不要です。
{distance}', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3007', 1, 1, '-1', '(建築確認)埋蔵文化財に関する手続き', '★事前相談不要　文化財課', '開発予定地が「埋蔵文化財包蔵地の区域外」のため、担当課への事前相談は不要です。
{distance}', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3008', 0, 1, '-1', '都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は以下になります。
用途地域：@1
{distance}', '0', '', '', '1', '', '1', 1),
('3008', 0, 2, '1003', '(事前協議)都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は以下になります。
用途地域：@1
{distance}', '0', '', '', '1', '', '1', 1),
('3008', 0, 3, '-1', '(許可判定)都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は以下になります。
用途地域：@1
{distance}', '0', '', '', '1', '', '1', 1),
('3008', 1, 1, '-1', '(建築確認)都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は以下になります。
用途地域：@1
{distance}', '0', '', '', '1', '', '1', 1),
('3009', 0, 1, '-1', '都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は都市計画区域になります。担当課への事前相談は不要です。', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3009', 0, 2, '1003', '(事前協議)都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は都市計画区域になります。担当課への事前相談は不要です。', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3009', 0, 3, '-1', '(許可判定)都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は都市計画区域になります。担当課への事前相談は不要です。', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3009', 1, 1, '-1', '(建築確認)都市計画区域・用途地域について', '★事前相談不要　都市計画課　', '開発予定地は都市計画区域になります。担当課への事前相談は不要です。', '0', '', '', '0', '判定結果の通りです。', '0', 1),
('3010', 0, 1, '-1', '浸水想定区域', '★事前相談必要　防災課', '開発予定地は浸水想定区域になります。担当課に事前相談を行い、意見書を作成頂く必要がございます。', '1', '★事前相談不要　防災課', '開発予定地は、当システムで「浸水想定区域に該当しない」と判定されています。「浸水想定区域に隣接」している可能性がありますので、マップをご確認ください。', '1', '', '1', 2),
('3010', 0, 2, '1010', '浸水想定区域', '★事前相談必要　防災課', '開発予定地は浸水想定区域になります。担当課に事前相談を行い、意見書を作成頂く必要がございます。', '1', '★事前相談不要　防災課', '開発予定地は、当システムで「浸水想定区域に該当しない」と判定されています。「浸水想定区域に隣接」している可能性がありますので、マップをご確認ください。', '1', '', '1', 2),
('3010', 0, 3, '-1', '浸水想定区域', '★事前相談必要　防災課', '開発予定地は浸水想定区域になります。担当課に事前相談を行い、意見書を作成頂く必要がございます。', '1', '★事前相談不要　防災課', '開発予定地は、当システムで「浸水想定区域に該当しない」と判定されています。「浸水想定区域に隣接」している可能性がありますので、マップをご確認ください。', '1', '', '1', 2),
('3010', 1, 1, '-1', '浸水想定区域', '★事前相談必要　防災課', '開発予定地は浸水想定区域になります。担当課に事前相談を行い、意見書を作成頂く必要がございます。', '1', '★事前相談不要　防災課', '開発予定地は、当システムで「浸水想定区域に該当しない」と判定されています。「浸水想定区域に隣接」している可能性がありますので、マップをご確認ください。', '1', '', '1', 2),
('3011', 0, 1, '-1', '周辺道路の幅員について', '★事前相談必要　都市計画課', '<span style="color:red;">サンプルデータで表示される幅員値は、システム検証用の値となります</span>
{road_type_result_area}
{width_text_area}
{max_width_text_area}
{min_width_text_area}
{split_line_result_area}
{walkway_result_area}
{display_by_width_area}', '1', '★事前相談必要　都市計画課', '道路判定非該当です。', '0', '判定結果の通りです。', '1', 2),
('3011', 0, 2, '1003', '(事前協議)周辺道路の幅員について', '★事前相談必要　都市計画課', '<span style="color:red;">サンプルデータで表示される幅員値は、システム検証用の値となります</span>
{road_type_result_area}
{width_text_area}
{max_width_text_area}
{min_width_text_area}
{split_line_result_area}
{walkway_result_area}
{display_by_width_area}', '1', '★事前相談必要　都市計画課', '道路判定非該当です。', '0', '判定結果の通りです。', '1', 2),
('3011', 0, 3, '-1', '(許可判定)周辺道路の幅員について', '★事前相談必要　都市計画課', '<span style="color:red;">サンプルデータで表示される幅員値は、システム検証用の値となります</span>
{road_type_result_area}
{width_text_area}
{max_width_text_area}
{min_width_text_area}
{split_line_result_area}
{walkway_result_area}
{display_by_width_area}', '1', '★事前相談必要　都市計画課', '道路判定非該当です。', '0', '判定結果の通りです。', '1', 2),
('3011', 1, 1, '-1', '(建築確認)周辺道路の幅員について', '★事前相談必要　都市計画課', '<span style="color:red;">サンプルデータで表示される幅員値は、システム検証用の値となります</span>
{road_type_result_area}
{width_text_area}
{max_width_text_area}
{min_width_text_area}
{split_line_result_area}
{walkway_result_area}
{display_by_width_area}', '1', '★事前相談必要　都市計画課', '道路判定非該当です。', '0', '判定結果の通りです。', '1', 2);



-- Comments
COMMENT ON TABLE "public"."m_road_judge_label" IS 'M_道路判定ラベル';


-- Indices
CREATE UNIQUE INDEX m_road_judge_label_pkc ON public.m_road_judge_label USING btree (label_id);


-- Comments
COMMENT ON TABLE "public"."m_answer_template" IS 'M_回答テンプレート';


-- Indices
CREATE UNIQUE INDEX m_answer_template_pkc ON public.m_answer_template USING btree (answer_template_id);
CREATE UNIQUE INDEX idx_answer_template ON public.m_answer_template USING btree (answer_template_id);


-- Comments
COMMENT ON TABLE "public"."m_government_user" IS 'M_行政ユーザ';


-- Indices
CREATE UNIQUE INDEX m_government_user_pkc ON public.m_government_user USING btree (user_id);


-- Comments
COMMENT ON TABLE "public"."m_application_search_result" IS 'M_申請情報検索結果';


-- Indices
CREATE UNIQUE INDEX m_application_search_result_pkc ON public.m_application_search_result USING btree (application_search_result_id);


-- Comments
COMMENT ON TABLE "public"."m_lot_number_search_result_definition" IS 'M_地番検索結果定義';


-- Comments
COMMENT ON TABLE "public"."m_layer" IS 'M_レイヤ';


-- Indices
CREATE UNIQUE INDEX m_layer_pkc ON public.m_layer USING btree (layer_id);
CREATE UNIQUE INDEX idx_m_layer ON public.m_layer USING btree (layer_id);


-- Comments
COMMENT ON TABLE "public"."m_applicant_information_item" IS 'M_申請者情報項目';


-- Indices
CREATE UNIQUE INDEX m_applicant_information_item_pkc ON public.m_applicant_information_item USING btree (applicant_information_item_id);
CREATE UNIQUE INDEX idx_m_applicant_information_item ON public.m_applicant_information_item USING btree (applicant_information_item_id);


-- Comments
COMMENT ON TABLE "public"."m_label" IS 'M_ラベル';


-- Indices
CREATE UNIQUE INDEX m_label_pkc ON public.m_label USING btree (view_code, label_id);
CREATE UNIQUE INDEX idx_m_label ON public.m_label USING btree (view_code, label_id);


-- Comments
COMMENT ON TABLE "public"."m_department" IS 'M_部署';


-- Indices
CREATE UNIQUE INDEX m_department_pkc ON public.m_department USING btree (department_id);
CREATE UNIQUE INDEX idx_m_department ON public.m_department USING btree (department_id);


-- Comments
COMMENT ON TABLE "public"."m_application_file" IS 'M_申請ファイル';


-- Indices
CREATE UNIQUE INDEX m_application_file_pkc ON public.m_application_file USING btree (application_file_id, judgement_item_id);
CREATE UNIQUE INDEX idx_m_application_file ON public.m_application_file USING btree (judgement_item_id, application_file_id);


-- Comments
COMMENT ON TABLE "public"."m_category_judgement" IS 'M_区分判定';


-- Indices
CREATE UNIQUE INDEX m_category_judgement_pkc ON public.m_category_judgement USING btree (judgement_item_id);
CREATE UNIQUE INDEX idx_m_category_judgement ON public.m_category_judgement USING btree (judgement_item_id);


-- Comments
COMMENT ON TABLE "public"."m_application_category" IS 'M_申請区分';


-- Indices
CREATE UNIQUE INDEX m_application_category_pkc ON public.m_application_category USING btree (category_id, view_id);
CREATE UNIQUE INDEX idx_m_application_category ON public.m_application_category USING btree (view_id, category_id);


-- Comments
COMMENT ON TABLE "public"."m_application_category_selection_view" IS 'M_申請区分選択画面';


-- Indices
CREATE UNIQUE INDEX m_application_category_selection_view_pkc ON public.m_application_category_selection_view USING btree (view_id);
CREATE UNIQUE INDEX idx_m_application_category_selection_view ON public.m_application_category_selection_view USING btree (view_id);


-- Comments
COMMENT ON TABLE "public"."m_calendar" IS 'M_カレンダ';


-- Indices
CREATE UNIQUE INDEX m_calendar_pkc ON public.m_calendar USING btree (cal_date);


-- Comments
COMMENT ON TABLE "public"."m_development_document" IS 'M_開発登録簿';


-- Indices
CREATE UNIQUE INDEX m_development_document_pkc ON public.m_development_document USING btree (development_document_id);
CREATE UNIQUE INDEX idx_m_development_document ON public.m_development_document USING btree (development_document_id);


-- Comments
COMMENT ON TABLE "public"."m_ledger_label" IS 'M_帳票ラベル';


-- Indices
CREATE UNIQUE INDEX m_ledger_label_pkc ON public.m_ledger_label USING btree (ledger_label_id);


-- Comments
COMMENT ON TABLE "public"."m_judgement_authority" IS 'M_区分判定_権限';


-- Indices
CREATE UNIQUE INDEX m_judgement_authority_pkc ON public.m_judgement_authority USING btree (judgement_item_id, department_id);
CREATE UNIQUE INDEX idx_m_judgement_authority ON public.m_judgement_authority USING btree (judgement_item_id, department_id);


-- Comments
COMMENT ON TABLE "public"."m_applicant_information_item_option" IS 'M_申請情報項目選択肢';


-- Indices
CREATE UNIQUE INDEX m_applicant_information_item_option_pkc ON public.m_applicant_information_item_option USING btree (applicant_information_item_option_id);
CREATE UNIQUE INDEX idx_m_applicant_information_item_option ON public.m_applicant_information_item_option USING btree (applicant_information_item_option_id);


-- Comments
COMMENT ON TABLE "public"."m_authority" IS 'M_権限';


-- Indices
CREATE UNIQUE INDEX m_authority_pkc ON public.m_authority USING btree (department_id, application_step_id);
CREATE UNIQUE INDEX idx_m_authority ON public.m_authority USING btree (department_id, application_step_id);


-- Comments
COMMENT ON TABLE "public"."m_ledger" IS 'M_帳票';


-- Indices
CREATE UNIQUE INDEX m_ledger_pkc ON public.m_ledger USING btree (ledger_id);
CREATE UNIQUE INDEX idx_m_ledger ON public.m_ledger USING btree (ledger_id);


-- Comments
COMMENT ON TABLE "public"."m_application_step" IS 'M_申請段階';


-- Indices
CREATE UNIQUE INDEX m_application_step_pkc ON public.m_application_step USING btree (application_step_id);
CREATE UNIQUE INDEX idx_m_application_step ON public.m_application_step USING btree (application_step_id);


-- Comments
COMMENT ON TABLE "public"."m_application_type" IS 'M_申請種類';


-- Indices
CREATE UNIQUE INDEX m_application_type_pkc ON public.m_application_type USING btree (application_type_id);
CREATE UNIQUE INDEX idx_m_application_type ON public.m_application_type USING btree (application_type_id);


-- Comments
COMMENT ON TABLE "public"."m_application_category_judgement" IS 'M_申請区分_区分判定';


-- Indices
CREATE UNIQUE INDEX m_application_category_judgement_pkc ON public.m_application_category_judgement USING btree (judgement_item_id, view_id, category_id);


-- Comments
COMMENT ON TABLE "public"."m_judgement_result" IS 'M_判定結果';


-- Indices
CREATE UNIQUE INDEX m_judgement_result_pkc ON public.m_judgement_result USING btree (judgement_item_id, application_type_id, application_step_id, department_id);
CREATE UNIQUE INDEX idx_m_judgement_result ON public.m_judgement_result USING btree (judgement_item_id, application_type_id, application_step_id, department_id);
