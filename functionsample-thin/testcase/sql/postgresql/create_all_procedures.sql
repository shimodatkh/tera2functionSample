CREATE OR REPLACE FUNCTION INITTABLE() RETURNS void AS $$
DECLARE
BEGIN
     DELETE FROM ADDRESS;
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000001',	
           'terasoluna1',
           '111-1234',
           '東京都中央区',
           '000-1234-1234');
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000002', 
           '田中',
           '222-1234',
           '東京都中央区',
           '111-4567-8901');
          
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000003', 
           '鈴木',
           '333-1234',
           '東京都中央区',
           '123-4567-1234');

     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000004',
           '高橋',
           '444-1234',
           '千葉県成田市',
           '111-4567-8901');
           
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000005', 
           '小池',
           '555-1234',
           '東京都中央区',
           '123-4567-1234');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000006', 
           '鈴木',
           '666-1234',
           '東京都足立区',
           '000-1234-1234');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000007', 
           '佐藤',
           '777-1234',
           '東京都国立市',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000008', 
           '青木',
           '888-1234',
           '東京都渋谷区',
           '123-4567-1234');
 
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000009', 
           '山本',
           '999-1234',
           '東京都中野区',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000010', 
           '山下',
           '000-1234',
           '東京都三鷹市',
           '123-4567-1234');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000011', 
           '山_本',
           '999-1234',
           '東京都中野区',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000012', 
           '山%本',
           '999-1234',
           '東京都中野区',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000013', 
           '山＿本',
           '999-1234',
           '東京都中野区',
           '111-4567-8901');

INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000014', 
           '山％本',
           '999-1234',
           '東京都中野区',
           '111-4567-8901');

           
           
END;
$$ LANGUAGE plpgsql;
COMMIT;

CREATE OR REPLACE FUNCTION INITIALDB() RETURNS void AS $$
DECLARE
BEGIN
     PERFORM INITTABLE();
     DELETE FROM CODELIST;
     insert into CODELIST values ( '1','DATABASEコードリスト１');
     insert into CODELIST values ( '2','DATABASEコードリスト２');
     insert into CODELIST values ( '3','DATABASEコードリスト３');
     insert into CODELIST values ( '4','DATABASEコードリスト４');
     insert into CODELIST values ( '5','DATABASEコードリスト５');
     DELETE FROM TUSER;
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000001', 'terasoluna', 'password', '0');
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000002', 'admin', 'password', '0');
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000003', 'maeda', 'password', '1');
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000004', 'kimura', 'password', '1');
     
END;
$$ LANGUAGE plpgsql;
COMMIT;
