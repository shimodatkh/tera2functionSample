<%--
  - $Id: sc2101.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="拡張メッセージリソース"/>
<bean:define id="titleScreenName" scope="page" value="拡張メッセージリソース選択"/>
<bean:define id="screenName" scope="page" value="拡張メッセージリソース選択"/>
<bean:define id="screenID" scope="page" value="SC2101"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>拡張メッセージリソース</h4>
  下のメニューを選択して下さい
  <br>
  <br>

  <html:link href="priorityMessageEx.do">優先順位</html:link><br><br>
  <html:link href="../messageex2/propertyMessageResource.do">拡張プロパティメッセージリソース</html:link><br><br>
  <html:link href="../messageex3/springMessageResource.do">拡張メッセージリソース（プロパティのみ）</html:link><br><br>
  <html:link href="../messageex4/springMessageResource.do">拡張メッセージリソース（ＤＢのみ）</html:link><br><br>
  <html:link href="../messageex5/springMessageResource.do">拡張メッセージリソース（プロパティ、ＤＢ）</html:link><br><br>
  <html:link href="../messageex6/springMessageResource.do">拡張メッセージリソース（ＤＢ、プロパティ）</html:link><br><br>
  <html:link href="../messageex7/springMessageResource.do">拡張メッセージリソース（ＤＢ（LANGUAGE指定なし））</html:link><br><br>
  <html:link href="../messageex8/springMessageResource.do">拡張メッセージリソース（ＤＢ（defaultLocale:ja_JP））</html:link><br><br>
  <html:link href="../messageex9/springMessageResource.do">拡張メッセージリソース（ＤＢ（defaultLocale:en_US））</html:link><br><br>

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