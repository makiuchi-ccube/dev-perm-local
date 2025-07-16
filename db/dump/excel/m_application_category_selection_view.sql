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

--
-- Data for Name: m_application_category_selection_view; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_application_category_selection_view (view_id, view_flag, multiple_flag, require_flag, title, description, judgement_type) FROM stdin;
1001	1	0	1	開発申請区分	下記より開発申請区分の選択をお願いします。<br>\n区分参考（出典：福島県）：<br>\n<a href="https://www.pref.fukushima.lg.jp/uploaded/attachment/29781.pdf" target="_brank">https://www.pref.fukushima.lg.jp/uploaded/attachment/29781.pdf</a>	1
1002	1	0	1	開発予定面積	下記より開発予定面積の選択をお願いします。	0,1
1003	1	0	1	開発予定工区数	下記より開発予定工区数の選択をお願いします。<br>\r\n都市計画法の開発許可を要しない場合または工事完了の検査を部分的に受けない場合は、「１工区」になります。<br>\r\n※工区とは、都市計画法第３６条に規定する工事完了の検査を部分的に受けることを目的として、開発区域を複数に分割する場合の分割された各々の部分の区域です。	1
1004	1	1	1	開発予定地の利用目的	下記より開発予定地の利用目的の選択をお願いします。	0,1
1005	1	1	0	特殊な開発行為の有無	開発予定地での特殊な開発行為があれば選択をお願いします（複数可）。	1
1006	1	1	0	特定施設の有無	下記項目の特定施設を設置する予定があれば選択をお願いします（複数可）。	1
1007	1	0	0	開発予定地の地目（登記または現況）	下記より予定地の登記または現況について選択をお願いします。	0,1
1008	0	0	0	未設定項目	未設定項目です。	
1009	0	0	0	未設定項目	未設定項目です。	
1010	0	0	0	未設定項目	未設定項目です。	
\.


--
-- PostgreSQL database dump complete
--

