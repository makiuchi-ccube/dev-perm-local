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
-- Data for Name: m_label; Type: TABLE DATA; Schema: public; Owner: devps
--

COPY public.m_label (view_code, label_id, label_key, label_type, label_text) FROM stdin;
1000	1	title	1	利用者規約
1000	2	content	1	<p>・市区町村によっては、条例や指導要領等を設けている場合があり、道路・敷地状況等の事前協議を求めていますので、確認申請等を提出する前に<span style='color:red;'>必ず建築予定地の市町村と管轄する消防機関に事前協議を行ってください。</span></p><p>・建築物の確認申請等には、消防法の審査に必要な図面の提出が必要となります。特に、<span style='color:red;'>窓等の開口部を示す建具表(寸法、厚さを含む)、消防用設備等の図面の添付が必要となります</span>ので、添付漏れが無いよう、ご留意ください。<br>※消防法の審査に必要な図面については、消防機関にお問い合わせください。また、<span style='color:red;'>大規模な建築物については、消防機関から書面による図面の提出を求められることがあります</span>ので、ご了承ください。</p>
1000	3	contentButtonText	1	<span style='font-size:.9em'>上記の手続きを確認し申請手続きを開始する</span>
1000	4	systemName	1	○○市開発許可申請システム
1000	5	purposeContent	1	本システムの利用目的を選択してください。<br>利用目的を選択していただくと、申請手続きおよび回答確認が行えます。
1000	6	questionaryContent	1	別タブでアンケート画面が開きますので、アンケートへの回答ご協力お願いします。
1001	1	title	1	申請完了
1001	2	content	1	申請内容への行政担当者の回答が確認できます。<br>回答は${回答日数}開庁日後を目安に通知されます。
1001	3	questionaryContent	1	別タブでアンケート画面が開きますので、アンケートへの回答ご協力お願いします。
1002	1	title	2	回答完了
1002	2	content	2	回答内容に問題なければ回答通知を行ってください。<br>（現状、回答した旨は申請者へ通知されておりません。）
1003	1	title	2	回答通知完了
1003	2	content	2	申請者のメールアドレスに回答通知を送信しました。<br>（申請内容への行政担当者の回答が確認できます。）
1004	1	title	1	○○市行政ログイン
1006	1	content	1	下記ファイルの登録をお願いします（1ファイルあたり上限${maxFileSize}Mまで、合計${maxRequestFileSize}Mまで）。<br>※【拡張子】のいずれかのファイル形式のファイルをアップロードしてください。<br>※拡張子は大文字小文字を区別します。
1005	1	judgementContent	1	概況診断結果の行をクリックすると、診断結果の詳細・関連地図が画面に表示されます。\n<BR>・概況診断結果データ出力：出力ボタンクリック\n<BR>・市への相談　　　　　　：申請ボタンクリック\n<BR>・検索に戻る　　　　　　：閉じるボタンクリック
\.


--
-- PostgreSQL database dump complete
--

