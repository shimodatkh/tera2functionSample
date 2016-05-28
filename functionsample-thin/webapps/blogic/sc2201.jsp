<%--
  - $Id: sc2201.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="ビジネスロジック実行"/>
<bean:define id="titleScreenName" scope="page" value="ビジネスロジック実行選択"/>
<bean:define id="screenName" scope="page" value="ビジネスロジック実行選択"/>
<bean:define id="screenID" scope="page" value="SC2201"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>ビジネスロジック実行</h4>
  value1とvalue2の入力値を連結します。
  <br><br>
  <ts:form action="blogicDispatch.do">
    value1 : <html:text property="value1" value="" /><br>
    value2 : <html:text property="value2" value="" /><br>
    <br>
    <html:submit property="forward_blogic" value="BLogic使用" />&nbsp;
    <html:submit property="forward_pojo"   value="POJO使用" /><br>
  </ts:form>
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