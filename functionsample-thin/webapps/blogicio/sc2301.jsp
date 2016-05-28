<%--
  - $Id: sc2301.jsp 11582 2006-04-26 01:54:20Z bs-chob $
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

<bean:define id="titleUsecaseName" scope="page" value="ビジネスロジック入出力機能"/>
<bean:define id="titleScreenName" scope="page" value="ビジネスロジック入出力処理メニュー"/>
<bean:define id="screenName" scope="page" value="ビジネスロジック入出力処理メニュー"/>
<bean:define id="screenID" scope="page" value="SC2301"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>ビジネスロジック入出力</h4>
  下のメニューを選択して下さい<br/>
  <br>
  
  <html:link href="formBlogicioInputForward.do">ビジネスロジック入出力画面「form」</html:link><br><br>
  <html:link href="requestBlogicio.do?requestData=requestData">ビジネスロジック入出力画面「request」</html:link><br><br>
  <html:link href="sessionBlogicio.do?sessionData=sessionData">ビジネスロジック入出力画面「session」</html:link><br><br>
  <html:link href="applicationBlogicio.do?applicationData=applicationData">ビジネスロジック入出力画面「application」</html:link><br><br>
  <html:link href="nullBlogicio.do">ビジネスロジック入出力画面「入出力null」</html:link><br>

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