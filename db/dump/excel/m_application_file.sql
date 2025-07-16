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
-- Data for Name: m_application_file; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_application_file (application_file_id, judgement_item_id, require_flag, upload_file_name, extension) FROM stdin;
5003	3003	0	意見書（自然保護）	pdf,tiff,tif,jpg,png,dxf,dwg
5004	3004	0	意見書（文化財）	pdf,tiff,tif,jpg,png,dxf,dwg
5005	3004	0	建築計画書	pdf,tiff,tif,jpg,png,dxf,dwg
5006	3005	0	設計説明書	pdf,tiff,tif,jpg,png,dxf,dwg
5006	3006	0	設計説明書	pdf,tiff,tif,jpg,png,dxf,dwg
5006	3007	0	意見書	pdf,tiff,tif,jpg,png,dxf,dwg
5007	3001	0	土地利用計画図	pdf,tiff,tif,jpg,png,dxf,dwg
5007	3002	0	土地利用計画図	pdf,tiff,tif,jpg,png,dxf,dwg
5007	3005	0	土地利用計画図	pdf,tiff,tif,jpg,png,dxf,dwg
5007	3006	0	土地利用計画図	pdf,tiff,tif,jpg,png,dxf,dwg
5008	3009	0	意見書（防災）	pdf,tiff,tif,jpg,png,dxf,dwg
9999	3001	1	概況診断結果レポート	xlsx
9999	3002	1	概況診断結果レポート	xlsx
9999	3003	1	概況診断結果レポート	xlsx
9999	3004	1	概況診断結果レポート	xlsx
9999	3005	1	概況診断結果レポート	xlsx
9999	3006	1	概況診断結果レポート	xlsx
9999	3007	1	概況診断結果レポート	xlsx
9999	3008	1	概況診断結果レポート	xlsx
9999	3009	1	概況診断結果レポート	xlsx
9999	3010	1	概況診断結果レポート	xlsx
\.


--
-- PostgreSQL database dump complete
--

