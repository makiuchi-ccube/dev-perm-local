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
-- Data for Name: m_application_category; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_application_category (category_id, view_id, "order", label_name) FROM stdin;
2001	1001	1	建築物：自己：業務
2002	1001	2	建築物：自己：居住
2003	1001	3	建築物：非自己
2004	1001	4	第1種特定工作物：自己
2005	1001	5	第1種特定工作物：非自己
2006	1001	6	第2種特定工作物：自己
2007	1001	7	第2種特定工作物：非自己
2008	1002	1	~999㎡
2009	1002	4	3,000㎡～
2010	1002	5	4,000㎡～
2011	1002	6	5,000㎡～
2012	1002	7	6,000㎡～
2013	1002	8	7,000㎡～
2014	1002	9	8,000㎡～
2015	1002	10	9,000㎡～
2016	1002	11	10,000㎡～
2017	1002	12	50,000㎡～
2018	1002	13	200,000㎡～
2019	1003	1	1工区
2020	1003	2	2工区以上
2021	1004	2	販売または賃貸を目的とした開発
2022	1004	12	索道
2023	1004	10	スキー
2024	1004	11	ゴルフ場
2025	1004	9	別荘地（ディベロッパー等が行う開発）
2026	1004	13	運動競技場
2027	1004	7	ホテル旅館
2028	1004	5	工場
2029	1004	4	事業所
2030	1004	6	製造業
2031	1004	8	電気・ガス・熱供給業者
2032	1004	3	店舗
2033	1005	3	盛り土・切り土
2034	1005	4	掘削
2035	1005	8	埋め立て
2036	1005	9	干拓
2037	1005	5	井戸掘削
2038	1005	2	下水道接続
2039	1005	6	伐採
2040	1006	3	太陽光発電設備
2041	1006	4	その他発電設備
2042	1006	5	浄化槽
2043	1006	6	屋外広告物
2044	1006	2	道路・通路
2045	1006	1	上水道の利用
2046	1007	1	農地
2047	1002	14	400,000㎡～
2048	1007	2	農地以外
2049	1002	2	1,000㎡～
2050	1002	3	2,000㎡～
2051	1004	1	該当なし（自己の居住用など）
2052	1005	1	該当なし
2053	1005	7	採掘
2054	1006	1	該当なし
\.


--
-- PostgreSQL database dump complete
--

