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
           '�����s������',
           '000-1234-1234');
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000002', 
           '�c��',
           '222-1234',
           '�����s������',
           '111-4567-8901');
          
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000003', 
           '���',
           '333-1234',
           '�����s������',
           '123-4567-1234');

     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000004',
           '����',
           '444-1234',
           '��t�����c�s',
           '111-4567-8901');
           
     INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
       VALUES(  '00000005', 
           '���r',
           '555-1234',
           '�����s������',
           '123-4567-1234');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000006', 
           '���',
           '666-1234',
           '�����s������',
           '000-1234-1234');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000007', 
           '����',
           '777-1234',
           '�����s�����s',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000008', 
           '��',
           '888-1234',
           '�����s�a�J��',
           '123-4567-1234');
 
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000009', 
           '�R�{',
           '999-1234',
           '�����s�����',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000010', 
           '�R��',
           '000-1234',
           '�����s�O��s',
           '123-4567-1234');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000011', 
           '�R_�{',
           '999-1234',
           '�����s�����',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000012', 
           '�R%�{',
           '999-1234',
           '�����s�����',
           '111-4567-8901');
           
INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000013', 
           '�R�Q�{',
           '999-1234',
           '�����s�����',
           '111-4567-8901');

INSERT INTO ADDRESS ( CUSTOMER_CODE, CUSTOMER_NAME, 
                      POST_CODE    , CUSTOMER_ADDRESS, 
                      CUSTOMER_TEL ) 
  VALUES(  '00000014', 
           '�R���{',
           '999-1234',
           '�����s�����',
           '111-4567-8901');

           
           
END;
$$ LANGUAGE plpgsql;
COMMIT;

CREATE OR REPLACE FUNCTION INITIALDB() RETURNS void AS $$
DECLARE
BEGIN
     PERFORM INITTABLE();
     DELETE FROM CODELIST;
     insert into CODELIST values ( '1','DATABASE�R�[�h���X�g�P');
     insert into CODELIST values ( '2','DATABASE�R�[�h���X�g�Q');
     insert into CODELIST values ( '3','DATABASE�R�[�h���X�g�R');
     insert into CODELIST values ( '4','DATABASE�R�[�h���X�g�S');
     insert into CODELIST values ( '5','DATABASE�R�[�h���X�g�T');
     DELETE FROM TUSER;
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000001', 'terasoluna', 'password', '0');
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000002', 'admin', 'password', '0');
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000003', 'maeda', 'password', '1');
     INSERT INTO TUSER (USER_CODE, USER_NAME, USER_PASSWORD, USER_DIVISION) VALUES ('00000004', 'kimura', 'password', '1');
     
END;
$$ LANGUAGE plpgsql;
COMMIT;
