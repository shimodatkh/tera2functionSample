<%--
  - $Id: sc0001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="共通"/>
<bean:define id="titleScreenName" scope="page" value="メニュー"/>
<bean:define id="screenName" scope="page" value="メニュー"/>
<bean:define id="screenID" scope="page" value="SC0001"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="sc0003.jspf" %>
<!-- begin body-->
  <h4>TERASOLUNA Server Framework for Java(Web版)機能網羅サンプルアプリケーションメニュー</h4>
  <table border="0" cellspacing="5" cellpadding="5">
    <tr>
      <td align="left" valign="top">
        <html:link href="transaction/transactionForward.do">CA-01 トランザクション管理機能</html:link><br>
        <html:link href="database/listAddress.do">CB-01 データベースアクセス機能</html:link><br>
        <html:link href="database/arrayListAddress.do">CB-02 データベースアクセス機能（ArrayList版）</html:link><br>
        <html:link href="jndi/listJndi.do">CC-01 JNDIアクセス</html:link><br>
        <br>
        
        <html:link href="authentication/authenticationForward.do">WA-01 ログオン済みチェック機能</html:link><br>
        <html:link href="authorization/authorizationForward.do">WA-02 アクセス権限チェック機能</html:link><br>
        <html:link href="serverblockage/serverBlockageForward.do">WA-03 サーバ閉塞チェック機能</html:link><br>
        <html:link href="blockage/listBlockage.do">WA-04 業務閉塞チェック機能</html:link><br>
        <html:link href="extension/extensionForward.do">WA-05 拡張子直接アクセス禁止機能</html:link><br>
        <br>
        
        <html:link href="uvo/uvoForward.do">WB-01 ユーザ情報表示機能</html:link><br>
        <html:link href="formex/formexForward.do">WB-02 アクションフォーム拡張機能</html:link><br>
        <html:link href="formtrans/formtransForward.do">WB-03 アクションフォーム切り替え</html:link><br>
        <html:link href="reset/resetMenuForward.do">WB-04 フォームプロパティリセット機能</html:link><br>
        <html:link href="codelist/codeList.do">WB-05 コードリスト機能</html:link><br>
        <br>
        
        <html:link href="exception/exceptionForward.do">WC-01 例外ハンドリング機能</html:link><br>
        <br>
        
        <html:link href="sessiondir/sessionDirForward.do">WD-01 セッションディレクトリ機能</html:link><br>
        <html:link href="upload/uploadForward.do">WD-02 ファイルアップロード機能</html:link><br>
        <html:link href="download/downloadMenu.do">WD-03 ファイルダウンロード機能</html:link><br>
        <html:link href="downloadblogic/downloadblogicMenu.do">WD-04 ファイルダウンロード機能（BLogicDownloadAction版）</html:link><br>
        <br>
        
        <html:link href="actionex/actionexForward.do">WE-01 アクション拡張機能</html:link><br>
        <html:link href="dispatch/dispatchForward.do">WE-02 標準ディスパッチャ機能</html:link><br>
        <html:link href="forward/forwardForward.do">WE-03 フォワード機能</html:link><br>
        <html:link href="codelist/codeList.do">WE-04 コードリスト再読み込み機能</html:link><br>
        <html:link href="sessiondir/sessionDirForward.do">WE-05 セッションディレクトリ作成機能</html:link><br>
        <html:link href="clearsession/clearsessionInitialize.do">WE-06 セッションクリア機能</html:link><br>
        <html:link href="logoff.do">WE-07 ログオフ機能</html:link><br>
        <br>
        
        <html:link href="validation/validationForward.do">WF-01 入力チェック拡張機能</html:link><br>
        <br>
        
        <html:link href="messageex/messageexForward.do">WG-01 拡張メッセージリソース機能</html:link><br>
        <br>
        
        <html:link href="blogic/blogicForward.do">WH-01 ビジネスロジック実行機能</html:link><br>
        <html:link href="blogicio/blogicioForward.do">WH-02 ビジネスロジック入出力機能</html:link><br>
      </td>
      
      <td align="left" valign="top">
        <html:link href="pagelink/pagelinkForward.do">WI-01 一覧表示機能</html:link><br>
        <br>
        
        <html:link href="authorization/authorizationForward.do">WJ-01 アクセス権限チェック機能</html:link><br>
        <html:link href="serverblockage/serverBlockageForward.do">WJ-02 サーバ閉塞チェック機能</html:link><br>
        <html:link href="calendar/calendarForward.do">WJ-03 カレンダー入力機能</html:link><br>
        <html:link href="write/writeForward.do">WJ-04 文字列表示機能</html:link><br>
        <html:link href="date/dateForward.do">WJ-05 日付変換機能</html:link><br>
        <html:link href="wareki/warekiForward.do">WJ-06 和暦日付変換機能</html:link><br>
        <html:link href="decimal/decimalForward.do">WJ-07 Decimal表示機能</html:link><br>
        <html:link href="trim/trimForward.do">WJ-08 トリム機能</html:link><br>
        <html:link href="left/leftForward.do">WJ-09 文字列切り取り機能</html:link><br>
        <html:link href="codelist/codeList.do">WJ-10 コードリスト定義機能</html:link><br>
        <html:link href="codelist/codeList.do">WJ-11 コードリスト件数出力機能</html:link><br>
        <html:link href="codelist/codeList.do">WJ-12 指定コードリスト値表示機能</html:link><br>
        <br>
        <html:link href="styleclass/styleclassForward.do">WK-01 スタイルクラス切り替え機能</html:link><br>
        <html:link href="message/messageForward.do">WK-02 メッセージ表示機能</html:link><br>
        <html:link href="nocache/nocacheForward.do">WK-03 キャッシュ避けformタグ機能</html:link><br>
        <html:link href="nocache/nocacheForward.do">WK-04 キャッシュ避けリンク機能</html:link><br>
        <html:link href="nocache/nocacheForward.do">WK-05 フォームターゲット指定機能</html:link><br>
        <html:link href="popup/popupForward.do">WK-06 メッセージポップアップ機能</html:link><br>
        <html:link href="message/messageForward.do">WK-07 エラーメッセージチェック機能</html:link><br>
        <html:link href="clientvalidation/clientvalidationForward.do">WK-08 クライアントチェック拡張機能</html:link><br>
        <html:link href="pagelink/pagelinkForward.do">WK-09 一覧表示関連機能</html:link><br>
        <br>
      </td>
    </tr>
  </table>
  <br>
  <br>
<!-- end body-->
<%@ include file="sc0004.jspf" %>
</html:html>