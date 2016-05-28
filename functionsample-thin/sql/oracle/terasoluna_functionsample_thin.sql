--
--作成者      :jeon.eunsu
--作成日      :2006/04/26 (水) 19:06:59
--対象DBMS    :Oracle 10g
--


-- テーブル生成
@create_all_tables.sql

-- プロシージャ生成
@create_all_procedures.sql

-- データ挿入
@insert_tuser.sql

@insert_address.sql

@insert_member_data.sql

@insert_messages.sql

@insert_codelist.sql

@insert_mlcodelist.sql

@insert_dbmessages.sql

@insert_tupdownload.sql

COMMIT;

QUIT;
