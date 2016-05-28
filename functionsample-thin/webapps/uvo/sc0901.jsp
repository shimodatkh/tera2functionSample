<%--
  - $Id: sc0901.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<%@ page import="jp.terasoluna.thin.functionsample.common.FunctionUVO" %>
<t:defineCodeList id="uvoCodeList"/>

<bean:define id="titleUsecaseName" scope="page" value="ユーザ情報保持機能"/>
<bean:define id="titleScreenName" scope="page" value="ユーザ情報表示"/>
<bean:define id="screenName" scope="page" value="ユーザ情報表示"/>
<bean:define id="screenID" scope="page" value="SC0901"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
  <%
    FunctionUVO uvo = (FunctionUVO)session.getAttribute( "USER_VALUE_OBJECT" );
  %>


  
<!-- begin body-->
    <h4>ユーザ情報保持</h4>
    セッションに格納されているユーザ情報
    <br>
    <br>
    <table border="1" frame="box">
      <tr>
        <td align="center" width="100">
          ユーザID
        </td>
        <td align="center" width="150">
          <span id='uvoUserID'><%= uvo.getUserID() %></span>
        </td>
      </tr>
      <tr>
        <td align="center" width="100">
          ユーザ名
        </td>
        <td align="center" width="150">
          <span id='uvoUserName'><%= uvo.getUserName() %></span>
        </td>
      </tr>
      <tr>
        <td align="center" width="100">
          ユーザ権限
        </td>
        <td align="center" width="150">
          <span id="uvoCodeList"><t:writeCodeValue codeList="uvoCodeList" key="<%= uvo.getAuth() %>" /></span>
        </td>
      </tr>
    </table>
    <br>
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