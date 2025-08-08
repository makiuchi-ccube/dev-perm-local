-- テーブルスペースはDocker環境では扱いにくいため省略（外部ボリュームなどで対応可能）

CREATE ROLE devps WITH
  SUPERUSER
  CREATEDB
  CREATEROLE
  INHERIT
  LOGIN
  REPLICATION
  BYPASSRLS
  ENCRYPTED PASSWORD 'password';

-- 明示的にDB作成（docker-entrypointで自動作成されるが、オプション指定のために記載）
-- CREATE DATABASE devps_db WITH OWNER devps ENCODING 'UTF8' LC_COLLATE='ja_JP.UTF-8' LC_CTYPE='ja_JP.UTF-8';

-- PostGISの有効化（PostgreSQLコンテナ内で実行される）
\c devps_db;
CREATE EXTENSION IF NOT EXISTS postgis;

-- テーブルスペースの作成
CREATE TABLESPACE devps_tbs
    OWNER devps
    LOCATION '/var/lib/postgresql/data/devps_tbs';

COMMENT ON TABLESPACE devps_tbs IS '稼働環境用テーブルスペース';

GRANT CREATE ON TABLESPACE devps_tbs TO devps;


CREATE DATABASE devps_db WITH
OWNER = devps
TEMPLATE template0
ENCODING = 'UTF8'
LC_COLLATE = 'ja_JP.UTF-8'
LC_CTYPE = 'ja_JP.UTF-8'
TABLESPACE = devps_tbs
ALLOW_CONNECTIONS = true
CONNECTION LIMIT = -1;

COMMENT ON DATABASE devps_db IS '稼働環境用データベース';