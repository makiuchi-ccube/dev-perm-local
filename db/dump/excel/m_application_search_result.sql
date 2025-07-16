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
-- Data for Name: m_application_search_result; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_application_search_result (application_search_result_id, reference_type, display_column_name, display_order, table_name, table_column_name, response_key, table_width) FROM stdin;
1	2	担当課	2	m_department	department_name	department_name	16
3	1	申請ID	3	o_applicant_information	applicant_id	applicant_id	7
4	1	申請者	4	o_applicant_information	item_1	item_1	10
5	1	アドレス	5	o_applicant_information	item_2	item_2	13
7	0	利用目的	7	m_application_category	1004	item_4	13
8	0	開発予定面積	8	m_application_category	1002	label_name	20
9	2	ステータス	1	o_application	status	status	13
\.


--
-- PostgreSQL database dump complete
--

