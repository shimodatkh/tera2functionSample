--
--�쐬��      :bs-ymizuno
--�쐬��      :2006/06/05 (��) 11:57:00
--�Ώ�DBMS    :PostgreSQL 8.1.4
--
set client_encoding to 'SJIS';

-- �e�[�u������
\i create_all_tables.sql

-- �v���V�[�W������
\i create_all_procedures.sql

-- �f�[�^�}��
\i insert_tuser.sql

\i insert_address.sql

\i insert_member_data.sql

\i insert_messages.sql

\i insert_codelist.sql

\i insert_mlcodelist.sql

\i insert_dbmessages.sql

\i insert_tupdownload.sql

COMMIT;
