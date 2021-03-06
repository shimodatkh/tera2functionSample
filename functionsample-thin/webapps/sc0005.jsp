<%--
  - $Id: sc0005.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="共通"/>
<bean:define id="titleScreenName" scope="page" value="エラー"/>
<bean:define id="screenName" scope="page" value="エラー"/>
<bean:define id="screenID" scope="page" value="SC0005"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="sc0003.jspf" %>

<!-- begin body-->

  <h5>エラー画面（ログオン状態）</h5>
  <p>
  メッセージ：<span id="errorMessage"><ts:errors /></span>
  
  <br>
  <br>
  <hr>
  
  <html:button property="menuForward" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
  <br>
<!-- end body-->

<%@ include file="sc0004.jspf" %>
</html:html>