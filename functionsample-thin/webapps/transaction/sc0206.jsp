<%--
  - $Id: sc0206.jsp 11563 2006-04-24 08:26:45Z bs-eunsu $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@ page contentType="text/html; charset=Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<%@ taglib uri="/struts-bean" prefix="bean" %>
<%@ taglib uri="/struts-logic" prefix="logic" %>
<%@ taglib uri="/terasoluna-struts" prefix="ts" %>
<%@ taglib uri="/terasoluna" prefix="t" %>

<bean:define id="titleUsecaseName" scope="page" value="トランザクション"/>
<bean:define id="titleScreenName" scope="page" value="トランザクションエラー"/>
<bean:define id="screenName" scope="page" value="トランザクションエラー"/>
<bean:define id="screenID" scope="page" value="SC0206"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->

  <h4>トランザクションエラー</h4>
  <p>
  <span id="message">メッセージ：<ts:errors /></span>
  </p>
  <p>
  ※ロールバックの確認は｢データベースアクセス機能｣で行って下さい。
  </p>
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

