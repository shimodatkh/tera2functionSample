<%--
  - $Id: sc1403.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@ page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J" %>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>
<%@ page import="org.apache.struts.Globals" %>

<bean:define id="titleUsecaseName" scope="page" value="例外ハンドリング機能"/>
<bean:define id="titleScreenName" scope="page" value="例外ハンドリング確認"/>
<bean:define id="screenName" scope="page" value="例外ハンドリング確認"/>
<bean:define id="screenID" scope="page" value="SC1403"/>

<%
  java.lang.Exception exception = 
  (java.lang.Exception) request.getAttribute(Globals.EXCEPTION_KEY);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>例外ハンドリング確認</h4>

  <br>

  <table cellspacing="5" cellpadding="5">
    <tr>
      <td align="left">
        <b>・TERASOLUNAのエラーメッセージ：</b>
        <br>
        <font color="#FF0000">
          <span id="errorMessage"><ts:errors/></span>
        </font>
      </td>
    </tr>
    <tr>
      <td align="left">
        <b>・エラー：</b>
        <br>
        <span id="error"><%=exception.toString() %></span>
      </td>
    </tr>
    <tr>
      <td align="left">
        <b>・エラーメッセージ：</b>
        <br>
        <span id="message"><%=exception.getMessage() %></span>
        <br>
      </td>
    </tr>
    <tr>
      <td align="left">
        <b>・スタックトレース：</b>
        <br>
        <span id="stackTrace"><%exception.printStackTrace(new java.io.PrintWriter(out)); %></span>
        <br>
      </td>
    </tr>
  </table>
  <br>
  
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <html:button property="exceptionForward" value="例外ハンドリング処理画面に戻る"
  onclick="location.href='./exceptionForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->

<%@ include file="../sc0004.jspf" %>
</html:html>