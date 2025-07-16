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
-- Data for Name: m_lot_number_search_result_definition; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_lot_number_search_result_definition (lot_number_search_definition_id, display_order, table_type, display_column_name, table_column_name, table_width, response_key) FROM stdin;
2	2	1	地番	result_column1	30	txtcode
1	1	0	大字	result_column1	30	district_name
\.


--
-- PostgreSQL database dump complete
--

