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
-- Data for Name: m_applicant_information_item; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_applicant_information_item (applicant_information_item_id, display_order, display_flag, require_flag, item_name, regex, mail_address, search_condition_flag) FROM stdin;
1001	1	1	1	氏名		0	1
1002	2	1	1	メールアドレス	^[a-zA-Z0-9_.+-]+@([a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]*\\.)+[a-zA-Z]{2,}$	1	1
1003	3	1	0	電話番号		0	1
1004	4	1	0	住所		0	1
\.


--
-- PostgreSQL database dump complete
--

