<%--
  - $Id: sc1001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="アクションフォーム拡張"/>
<bean:define id="titleScreenName" scope="page" value="アクションフォーム選択"/>
<bean:define id="screenName" scope="page" value="アクションフォーム選択"/>
<bean:define id="screenID" scope="page" value="SC1001"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>アクションフォーム拡張</h4>
  下のメニューを選択して下さい<br>
  <br>
  
  <html:link href="validatorFormExForward.do">静的アクションフォーム（cancelPouplate = "false"）</html:link><br><br>
  <html:link href="dynaFormExForward.do">動的アクションフォーム（cancelPouplate = "false"）</html:link><br><br>
  <html:link href="dynaFormExCancelForward.do">動的アクションフォーム（cancelPouplate = "true"）</html:link><br><br>
  <html:link href="dynaFormExModifiedForward.do">サービスロジックでアクションフォーム値変更（cancelPouplate = "false"）</html:link><br><br>
  <html:link href="securityForward.do">Strutsの脆弱性(CVE-2014-0114)対策のチェック</html:link><br><br>
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>