rem 使用するDBユーザ、パスワード、接続文字列を変更する場合は、
rem 下記記述書式を参考にしてください。
rem 【記述書式】
rem psql -h <DBサーバIP> -U <使用するDBユーザ> -d <使用するDB> -f terasoluna_functionsample_thin.sql


set path=C:\Program Files\PostgreSQL\8.1\bin\;%path%
psql -h 127.0.0.1 -U postgres -d functionsampledb -f terasoluna_functionsample_thin.sql

pause