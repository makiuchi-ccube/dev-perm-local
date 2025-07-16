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
-- Data for Name: m_road_judge_label; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_road_judge_label (label_id, replace_identify, index_value, index_text, min_value, max_value, replace_text) FROM stdin;
1	{split_line_result_area}	0		\N	\N	※両方向とも区割り線が取得できなかったため、両方向の最も近い区割り線取得結果による案内です。
2	{split_line_result_area}	1		\N	\N	※片方向の区割り線取得結果による案内です。
3	{split_line_result_area}	2		\N	\N	※両方向の区割り線取得結果による案内です。
4	{split_line_result_area}	-1		\N	\N	※区割り線が取得できませんでした。
5	{walkway_result_area}	0		\N	\N	※隣接歩道はありません。
6	{walkway_result_area}	1		\N	\N	※隣接歩道があります。（<span style="color:purple;">紫色</span>）
7	{display_by_width_area}	0		0	4	幅員が4.0ｍ未満です。
8	{display_by_width_area}	1		4	8	幅員が4m以上8m未満です。
9	{display_by_width_area}	2		8	\N	幅員が8m以上です。
10	{width_text_area}	0		\N	\N	接する道路の幅員は以下の通りになります。
11	{width_text_area}	9999		\N	\N	接する道路の幅員は以下の通りになります。\nシステムにて判読ができない幅員表示箇所がございます（<span style="color:green;">緑線</span>）。\n画面左下「申請」ボタンを押下することで、職員より幅員値の回答が来ますので「申請」ボタンをクリックし、職員への問い合わせをお願いします。
12	{max_width_text_area}	0		\N	\N	■最大幅員（<span style="color:red;">赤線</span>）\n道路部幅員：{road_max_width}m、車道幅員：{roadway_max_width}m
13	{min_width_text_area}	0		\N	\N	■最小幅員（<span style="color:blue;">青線</span>）\n道路部幅員：{road_min_width}m、車道幅員：{roadway_min_width}m
14	{road_type_result_area}	\N	1	\N	\N	道路種別：国道（高速自動車道）
15	{road_type_result_area}	\N	2	\N	\N	道路種別：国道（一般道）
16	{road_type_result_area}	\N	3	\N	\N	道路種別：県道
17	{road_type_result_area}	\N	21	\N	\N	道路種別：市町村道
18	{road_type_result_area}	\N	22	\N	\N	道路種別：市町村道
19	{road_type_result_area}	\N	23	\N	\N	道路種別：市町村道
20	{road_type_result_area}	\N	9020	\N	\N	道路種別：不明
\.


--
-- PostgreSQL database dump complete
--

