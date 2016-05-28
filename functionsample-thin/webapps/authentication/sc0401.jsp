<%--
  - $Id: sc0401.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<%@ taglib uri="/common" prefix="common"%>

<bean:define id="titleUsecaseName" scope="page" value="ログオン済みチェック"/>
<bean:define id="titleScreenName" scope="page" value="ログオン済みチェック"/>
<bean:define id="screenName" scope="page" value="ログオン済みチェック"/>
<bean:define id="screenID" scope="page" value="SC0401"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>ログオン済みチェック</h4>
  <table>
    <tr>
      <td align="left">
       「ログオン済みチェック」ボタンをクリックすると、ログオン済みチェック結果画面が表示されます。<br>
       「ログオン済みチェックエラーボタン」をクリックすると、ログアウトされた状態でログオン済みチェック結果画面に遷移するため、ログオン済みチェックエラー画面に遷移します。
        <br>
      </td>
    </tr>
  </table>
  
  <br>
  <!-- ログオン：モジュール定義するとメニュー画面でパス問題が発生するため、デフォルトモジュールにて定義する -->
  <html:button property="authentication" value="ログオン済みチェック"
  onclick="location.href='authenticationResultForward.do'" />
  <br>
  <br>
  <html:button property="authenticationError" value="ログオン済みチェックエラー"
  onclick="location.href='authenticationError.do'" />
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>