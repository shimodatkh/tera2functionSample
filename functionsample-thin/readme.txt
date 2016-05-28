*******************************************************************************
      TERASOLUNA Server Framework for Java（Web版）
      機能網羅サンプルアプリケーション 導入手順

      Copyright 2007-2009 NTT DATA Corporation.
*******************************************************************************


■  概要：

  このreadmeはTERASOLUNA Server Framework for Java (Web版) 
  の機能網羅サンプルアプリケーションを導入する手順書です。
  下記手順に従うことで、機能網羅サンプルアプリケーションの実行環境を準備すること
  ができます。 
  
  
  
■  前提条件：

  導入環境には、あらかじめ下記のものが用意されている必要があります。 

  ・Java 2 Runtime Environment Standard Edition 1.5.0
  ・Eclipse SDK 3.2.2 + WTP 1.5.5
  ・WebAPサーバ：Apache Tomcat 5.5.23
  ・Apache Ant 1.6.5 (EclipseのAntプラグインのみでも可)
  ・PostgreSQL Database Server 8.2またはOracle10g
  
  併記されているバージョンを元に動作確認を行っていますが、このバージョン以外の環
  境での動作を制限するものではありません。
  また、これらのインストール及び設定の手順については、別途Web上の利用ガイド等を
  参照してください。 
  


■  Antタスク一覧：

  プロジェクトの「\ant」フォルダには、antタスクが記述された「build.xml」が存在し
  ます。以下がantタスクの一覧です。 

  ・clean
      作成したwarファイル、コンパイルされたクラスファイルの削除を行う。
  ・compile
      コンパイルを行う。
  ・native2ascii
      native2asciiにてプロパティファイルのコード変換を行う。
  ・deploy
      プロジェクトのデプロイを行う。
  ・createJavaDoc
      JavaDocの生成を行う。
  ・testcase
      機能テスト実行用のアプリケーションをデプロイする。
  ・native2ascii_testcase
      機能テスト用にプロパティファイルのコード変換を行う。
  ・compile_testcase
      機能テスト用にコンパイルを行う。



■  サーバーの追加（WTP環境）：

  EclipseにWTPプラグインが導入されている場合、以下の手順でサーバーを追加します。 

  1.Eclipse画面にて「ウィンドウ」＞「ビューの表示」＞「その他」を実行し、「サー
    バー」を選択し「OK」をクリックします。 
  2.サーバービューで右クリック「新規」＞「サーバー」を実行します。 
  3.「Apache」＞「Tomcat v5.5 サーバー」を選択し、「次へ」をクリックします。 
  4.「Tomcat」を選択し、「次へ」をクリックします。 
  5.自端末の環境に合った「Tomcat インストール･ディレクトリー」を選択します。
  6.「終了」をクリックします。 



■  プロジェクトの実行（共通）：

  機能網羅アプリケーションをEclipseにインポートします。また、データベースの設定
  を行います。 

  ①ZIPファイルの展開
  
    terasoluna-server4jweb-funcsample_(バージョン番号).zipを任意のフォルダに展開します。 

    展開されたterasoluna-server4jweb-funcsample_(バージョン番号).zipのフォルダ名が
    「functionsample-thin」であることを確認します。
    展開ツールや展開のしかたによっては、フォルダ名が
    「terasoluna-server4jweb-funcsample_(バージョン番号)」となる場合がありますが、
    フォルダ名を手動で「functionsample-thin」に変更してください。 

  ②Eclipseへのインポート
  
    1.Eclipse画面にて「ファイル」＞「インポート」を選択します。
    2.「既存プロジェクトをワークスペースへ」を選択し「次へ」をクリックします。
    3.「ルート・ディレクトリーの選択」にチェックが入った状態で「参照」をクリック
      し、ブランクプロジェクトを展開した親フォルダを指定します。 
    4.「functionsample-thin」にチェックが入っていることを確認し、「終了」をクリ
      ックします。 

    エラーが出る場合は「■備考」を参照し、設定を変更してください。 

  ③JDBCドライバの配置
  
    Tomcatがデータベースに接続できるようにJDBCドライバを「<TOMCAT_HOME>/common/
    lib」にコピーします。JDBCドライバは付属されていないので、利用者各自でで別途
    入手する必要があります。 
    ・Oracle … http://otn.oracle.co.jp/software/tech/java/jdbc/index.html
    ・PostgreSQL … http://jdbc.postgresql.org/download.html 
    
    ※バージョンが合っていれば、クライアント等をインストールした際に付属している
      JDBCドライバをご利用いただけます。 

  ④データベース環境の設定

    ◇Oracleの場合
    1.前提条件(環境により変更可能)
        インスタンス名･･･functionsampledb
        DBユーザー名/パスワード･･･sample/sample
        ネットサービス名･･･SAMPLEDB

    2.「setup_for_Oracle.bat」の編集
        「/sql/oracle/setup_for_Oracle.bat」を自端末の環境に合った値に書き換え
        ます。
        詳細は「/sql/oracle/setup_for_Oracle.bat」を参照してください。

    3.テーブル、サンプルデータの作成
      「/sql/oracle/setup_for_Oracle.bat」を実行します。(eclipseから実行不可)
      「SQL> 」が表示されたら exitと入力して終了します。
      ※実行時パスの整合性をとるため、必ず当該ファイルが存在するフォルダで実行
        してください。 

   ◇PostgreSQLの場合
    1.前提条件(環境により変更可能)
        pgAdminを起動し、新しいデータベースを作成します。 
        名前･･･functionsampledb
        オーナー･･･postgres
        エンコーディング･･･UTF8
        Template･･･（なし）
        テーブル空間･･･pg_default

    2.「setup_for_PostgreSQL.bat」の編集
        「/sql/postgresql/setup_for_PostgreSQL.bat」を自端末の環境に合った値に
        書き換えます。
        詳細は「/sql/postgresql/setup_for_PostgreSQL.bat」を参照してください。

    3.テーブル、サンプルデータの作成
      「/sql/postgresql/setup_for_PostgreSQL.bat」を実行します。(eclipseから実行
      不可)
      ※実行時パスの整合性をとるため、必ず当該ファイルが存在するフォルダで実行
        してください。 

  ⑤設定ファイルの編集（データソース）
  
    1.「context.xml」の編集
        「/webapps/META-INF/context.xml」を自端末の環境に合った値に書き換えます。
        詳細は「context.xml」を参照してください。
    2.「web.xml」の編集 
        Tomcatがタグのインスタンスをプールすることによって発生する不具合を防ぐ
        ため、「<TOMCAT_HOME>/conf/web.xml」のJspServletのinit-paramに、enablePo
        olingという変数名でfalseを設定します。



■  プロジェクトの実行（WTP環境）：

  WTPプラグインを利用する場合、以下の手順でプロジェクトを実行します。 

  ⑥サーバーへの追加
  
    サーバービューで「functionsample-thin」のプロジェクトをサーバに追加します。 

    
  ⑦Tomcatの起動および、実行確認
    
    1.サーバーを始動します。 
      ・サーバー始動時にエラーダイアログが表示される場合は、「■備考」を参照し、
        設定を変更してください。 
    2.http://localhost:8080/functionsample-thinにアクセスします。
    3.「ユーザID」、「パスワード」の入力フィールドが存在するログオン画面が表示さ
      れれば成功です。
      ・ ユーザID: 00000001、パスワード: passwordを入力でログインできます。
  
■  プロジェクトの実行（非WTP環境）：

  ⑥antタスクの実行
  
    1.プロジェクトの「/ant/build.properties」を自端末の環境に合った値に書き換え
      ます。
      ・詳細はbuild.propertiesを参照してください。特にパス関連に関しては十分確認
        してください。 
    2.「build.properties」の修正後、「/ant/build.xml」を右クリックしantタスクの
      「deploy」を選択して実行します。 

  ⑦Tomcatの起動および、実行確認
  
     1.デプロイ先のTomcatを起動します。 
    2.http://localhost:8080/<context.name>/にアクセスします。 
      ・「<context.name>」は、build.properties内に記述した値であり、デフォルトは
        functionsample-thinとなっています。    
    3.「ユーザID」、「パスワード」の入力フィールドが存在するログオン画面が表示さ
      れれば成功です。
      ・ ユーザID: 00000001、パスワード: passwordを入力でログインできます。



■  備考：

  インポート後にエラーが出る場合
  ・「インポートされた ～～ は見つかりません。」
    ⇒WEB-INF/libフォルダ以下にあるWebアプリケーションライブラリーが認識されて
      ない状態です。Eclipseを再起動することで解決します。 
      
  ・「～～ を解決できません。」
    ⇒JSPのスクリプト変数を認識できてないために出ているエラーです。
      Eclipse画面にて「ウィンドウ」＞「設定」＞「検証」を選択し、「プロジェクト
      でこれらの設定を上書きを可能にする」にチェックを入れ「OK」を押します。
      その後プロジェクトを「右クリック」＞「プロパティ」＞「検証」を選択肢、
      「検証の設定の上書き」にチェックを入れ、「選択されたバリデーターはXxxx
      （プロジェクト名）が検証の際に実行されます:」の、「JSP構文バリデーター」の
      チェックをはずします。その後、Eclipseを再起動すると解決します。
    
  サーバー始動後にエラーが出る場合
  ・「リソース ～～はファイル・システムと同期がとれていません。」
    ⇒Eclipse上のキャッシュと実ファイルの同期が取れていない状態です。該当のプロ
      ジェクトを「右クリック」＞「更新」すると解決します。

  ・「context.xml」の変更が反映されない場合（非WTP環境）
    ⇒非WTP環境で「context.xml」を修正しても 変更が反映されない場合は、「＜TOMC
      ATホーム＞/conf/Catalina/localhost/functionsample-thin.xml」を削除後に
      Tomcatを起動してください。 


-------------------------------------------------------------------------------
Copyright 2007-2009 NTT DATA Corporation.
