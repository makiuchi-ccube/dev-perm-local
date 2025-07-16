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
-- Data for Name: m_layer; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_layer (layer_id, layer_type, layer_name, table_name, layer_code, layer_query, query_require_flag) FROM stdin;
1001	1	用途地域	use_districts	devps:use_districts	ogc_fid:@2	1
1006	0	道路判定結果(LOD2)	f_road_lod2	devps:道路判定結果(LOD2)	{roadLod2}object_id:{value}\t	1
1007	0	該当区割り線	f_split_line	devps:該当区割り線	{splitLine}object_id:{value};max_object_id:{maxWidth};min_object_id:{minWidth}	1
1008	0	隣接歩道	f_road_lod2	devps:隣接歩道	{sideWalk}side_walks:{side_walk};lot_numbers:{lot_number}	1
1009	0	幅員値	f_split_line	devps:幅員値	@wfs{widthText}object_id:{value}	1
1002	1	埋蔵文化財包蔵地域	buried_cultural_property	devps:buried_cultural_property	\N	0
1003	1	農用地区域	agricultural_land	devps:agricultural_land	\N	0
1004	1	都市計画区域	city_planning	devps:city_planning	\N	0
1005	1	浸水想定区域	flood_assumption	devps:flood_assumption	\N	0
\.


--
-- PostgreSQL database dump complete
--

