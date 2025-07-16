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
-- Data for Name: m_answer_template; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_answer_template (answer_template_id, disp_order, answer_template_text, judgement_item_id) FROM stdin;
1	1	xxxxxは●●●です。	3001
2	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3001
3	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3001
4	1	xxxxxは●●●です。	3002
5	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3002
6	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3002
7	1	xxxxxは●●●です。	3003
8	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3003
9	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3003
10	1	xxxxxは●●●です。	3004
11	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3004
12	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3004
13	1	xxxxxは●●●です。	3005
14	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3005
15	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3005
16	1	xxxxxは●●●です。	3006
17	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3006
18	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3006
19	1	xxxxxは●●●です。	3007
20	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3007
21	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3007
22	1	xxxxxは●●●です。	3008
23	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3008
24	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3008
25	1	xxxxxは●●●です。	3009
26	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3009
27	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3009
28	1	xxxxxは●●●です。	3010
29	2	xxxxxはxxxxxxです。\n詳細はxxxxxよりご確認ください。	3010
30	3	xxxxxはxxxxxxですが、○○の場合××です。\n詳細はxxxxxよりご確認ください。\nXxxxxxxxxxxxxxxxxx	3010
\.


--
-- PostgreSQL database dump complete
--

