--
--作成者      :bs-ymizuno
--作成日      :2006/06/05 (月) 11:57:00
--対象DBMS    :PostgreSQL 8.1.4
--
set client_encoding to 'SJIS';

-- テーブル生成
\i create_all_tables.sql

-- プロシージャ生成
\i create_all_procedures.sql

-- データ挿入
\i insert_tuser.sql

\i insert_address.sql

\i insert_member_data.sql

\i insert_messages.sql

\i insert_codelist.sql

\i insert_mlcodelist.sql

\i insert_dbmessages.sql

\i insert_tupdownload.sql

COMMIT;
