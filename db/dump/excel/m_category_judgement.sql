--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12
-- Dumped by pg_dump version 14.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: m_category_judgement; Type: TABLE; Schema: public; Owner: devps
--

CREATE TABLE public.m_category_judgement (
    judgement_item_id character varying(10) NOT NULL,
    department_id character varying(10),
    category_1 text,
    category_2 text,
    category_3 text,
    category_4 text,
    category_5 text,
    category_6 text,
    category_7 text,
    category_8 text,
    category_9 text,
    category_10 text,
    gis_judgement character(1),
    buffer double precision,
    display_attribute_flag character(1),
    judgement_layer character varying(100),
    title text,
    applicable_summary text,
    applicable_description text,
    non_applicable_display_flag character(1),
    non_applicable_summary text,
    non_applicable_description text,
    table_name text,
    field_name text,
    non_applicable_layer_display_flag character(1),
    simultaneous_display_layer text,
    simultaneous_display_layer_flag character(1),
    disp_order double precision,
    answer_require_flag character(1),
    default_answer text,
    answer_editable_flag character(1),
    answer_days integer
);


ALTER TABLE public.m_category_judgement OWNER TO devps;

--
-- Name: TABLE m_category_judgement; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON TABLE public.m_category_judgement IS 'M_区分判定';


--
-- Name: COLUMN m_category_judgement.judgement_item_id; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.judgement_item_id IS '判定項目ID';


--
-- Name: COLUMN m_category_judgement.department_id; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.department_id IS '担当部署ID';


--
-- Name: COLUMN m_category_judgement.category_1; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_1 IS '区分1:画面ID1001と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_2; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_2 IS '区分2:画面ID1002と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_3; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_3 IS '区分3:画面ID1003と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_4; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_4 IS '区分4:画面ID1004と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_5; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_5 IS '区分5:画面ID1005と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_6; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_6 IS '区分6:画面ID1006と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_7; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_7 IS '区分7:画面ID1007と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_8; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_8 IS '区分8:画面ID1008と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_9; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_9 IS '区分9:画面ID1009と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.category_10; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.category_10 IS '区分10:画面ID1010と対応.
対象の申請区分IDをカンマ区切りで格納.
判定に用いない場合0を格納.';


--
-- Name: COLUMN m_category_judgement.gis_judgement; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.gis_judgement IS 'GIS判定:0: GIS判定なし 1: 重なり判定 2: 重ならない判定 3: バッファ判定 4: バッファ重ならない判定 5:道路判定';


--
-- Name: COLUMN m_category_judgement.buffer; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.buffer IS 'バッファ:バッファ判定時のバッファ半径 (m)';


--
-- Name: COLUMN m_category_judgement.display_attribute_flag; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.display_attribute_flag IS '重なり属性表示フラグ:0: 属性表示なし 1: 区切り文字で区切って表示 2:改行表示 3:概況診断結果一覧テーブルで行を分けて表示';


--
-- Name: COLUMN m_category_judgement.judgement_layer; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.judgement_layer IS '判定対象レイヤ:GIS判定で使用するレイヤのレイヤID（カンマ区切り）';


--
-- Name: COLUMN m_category_judgement.title; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.title IS 'タイトル';


--
-- Name: COLUMN m_category_judgement.applicable_summary; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.applicable_summary IS '該当表示概要';


--
-- Name: COLUMN m_category_judgement.applicable_description; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.applicable_description IS '該当表示文言';


--
-- Name: COLUMN m_category_judgement.non_applicable_display_flag; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.non_applicable_display_flag IS '非該当表示有無:1:表示 0:非表示';


--
-- Name: COLUMN m_category_judgement.non_applicable_summary; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.non_applicable_summary IS '非該当表示概要';


--
-- Name: COLUMN m_category_judgement.non_applicable_description; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.non_applicable_description IS '非該当表示文言';


--
-- Name: COLUMN m_category_judgement.table_name; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.table_name IS 'テーブル名:文言のラベルとして使用するテーブル名';


--
-- Name: COLUMN m_category_judgement.field_name; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.field_name IS 'フィールド名:文言のラベルとして使用するフィールド名';


--
-- Name: COLUMN m_category_judgement.non_applicable_layer_display_flag; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.non_applicable_layer_display_flag IS '判定レイヤ非該当時表示有無:1:表示 0:非表示';


--
-- Name: COLUMN m_category_judgement.simultaneous_display_layer; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.simultaneous_display_layer IS '同時表示レイヤ:該当診断結果画面で同時表示する関連レイヤのレイヤID（カンマ区切り）';


--
-- Name: COLUMN m_category_judgement.simultaneous_display_layer_flag; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.simultaneous_display_layer_flag IS '同時表示レイヤ表示有無:1:表示 0: 非表示';


--
-- Name: COLUMN m_category_judgement.disp_order; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.disp_order IS '表示順';


--
-- Name: COLUMN m_category_judgement.answer_require_flag; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.answer_require_flag IS '回答必須フラグ:1:回答必須 0:回答任意';


--
-- Name: COLUMN m_category_judgement.default_answer; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.default_answer IS 'デフォルト回答:回答任意の項目に登録する初期回答文言';


--
-- Name: COLUMN m_category_judgement.answer_editable_flag; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.answer_editable_flag IS '編集可能フラグ :1:編集可能 0:編集不可';


--
-- Name: COLUMN m_category_judgement.answer_days; Type: COMMENT; Schema: public; Owner: devps
--

COMMENT ON COLUMN public.m_category_judgement.answer_days IS '回答日数';


--
-- Data for Name: m_category_judgement; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_category_judgement (judgement_item_id, department_id, category_1, category_2, category_3, category_4, category_5, category_6, category_7, category_8, category_9, category_10, gis_judgement, buffer, display_attribute_flag, judgement_layer, title, applicable_summary, applicable_description, non_applicable_display_flag, non_applicable_summary, non_applicable_description, table_name, field_name, non_applicable_layer_display_flag, simultaneous_display_layer, simultaneous_display_layer_flag, disp_order, answer_require_flag, default_answer, answer_editable_flag, answer_days) FROM stdin;
3004	1005	0	0	0	0	2034	0	0	0	0	0	1	0	0	1002	埋蔵文化財に関する手続き	★事前相談必要　文化財課	開発予定地が「埋蔵文化財地域の区域内」のため担当課に事前相談を実施いただく必要がございます。	1	★事前相談不要　文化財課	開発予定地が「埋蔵文化財地域の区域外」のため担当課に事前相談を実施いただく必要はございません。			1		0	2	1		1	2
3005	1011	0	0	0	0	0	0	0	0	0	0	1	0	0	1003	農用地に関する手続き	★事前相談必要　農林課	開発予定地が「農用地」のため担当課に事前相談を実施いただく必要がございます。	0					0		0	3	1		1	2
3006	1011	0	0	0	0	0	0	0	0	0	0	2	0	0	1003	農用地に関する手続き	★事前相談不要　農林課	開発予定地が「農用地」外のため担当課への事前相談は不要です。\n{distance}	0					0		0	3.1	0	判定結果の通りです。	0	1
3007	1003	0	0	0	0	0	0	0	0	0	0	1	0	3	1001	都市計画区域・用途地域について	★事前相談不要　都市計画課　	開発予定地は以下になります。\n用途地域：@1\n{distance}	0			use_districts	youto,ogc_fid	0		0	4	0		1	1
3008	1003	0	0	0	0	0	0	0	0	0	0	1	0	0	1004	都市計画区域・用途地域について	★事前相談不要　都市計画課　	開発予定地は都市計画区域になります。担当課への事前相談は不要です。	0					0		0	5	0	判定結果の通りです。	0	1
3009	1010	0	0	0	0	0	0	0	0	0	0	1	0	0	1005	浸水想定区域	★事前相談必要　防災課	開発予定地は浸水想定区域になります。担当課に事前相談を行い、意見書を作成頂く必要がございます。	0					0		0	6	1		1	1
3010	1003	0	0	0	0	0	0	0	0	0	0	5	5	3	0	周辺道路の幅員について	★事前相談必要　都市計画課	<span style="color:red;">サンプルデータで表示される幅員値は、システム検証用の値となります</span>\n{road_type_result_area}\n{width_text_area}\n{max_width_text_area}\n{min_width_text_area}\n{split_line_result_area}\n{walkway_result_area}\n{display_by_width_area}	0					0	1006,1007,1008,1009	1	7	0	判定結果の通りです。	1	2
\.


--
-- Name: m_category_judgement m_category_judgement_pkc; Type: CONSTRAINT; Schema: public; Owner: devps
--

ALTER TABLE ONLY public.m_category_judgement
    ADD CONSTRAINT m_category_judgement_pkc PRIMARY KEY (judgement_item_id);


--
-- Name: idx_m_category_judgement; Type: INDEX; Schema: public; Owner: devps
--

CREATE UNIQUE INDEX idx_m_category_judgement ON public.m_category_judgement USING btree (judgement_item_id);


--
-- PostgreSQL database dump complete
--

