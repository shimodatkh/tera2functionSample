rem �g�p����DB���[�U�A�p�X���[�h�A�ڑ��������ύX����ꍇ�́A
rem ���L�L�q�������Q�l�ɂ��Ă��������B
rem �y�L�q�����z
rem psql -h <DB�T�[�oIP> -U <�g�p����DB���[�U> -d <�g�p����DB> -f terasoluna_functionsample_thin.sql


set path=C:\Program Files\PostgreSQL\8.1\bin\;%path%
psql -h 127.0.0.1 -U postgres -d functionsampledb -f terasoluna_functionsample_thin.sql

pause