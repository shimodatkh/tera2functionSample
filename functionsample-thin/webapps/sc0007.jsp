<%--
  - $Id: sc0007.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="ログオン画面" />
<bean:define id="titleScreenName" scope="page" value="ログオン" />
<bean:define id="screenName" scope="page" value="ログオン" />
<bean:define id="screenID" scope="page" value="SC0007" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="sc0002.jspf" %>

<!-- begin body-->
  <h4 align="center">TERASOLUNA Server Framework for Java(Web版)機能網羅サンプルアプリケーション</h4>
  
  <ts:messages id="msg" message="false">
    <p><span id="logonMsg"><bean:write name="msg" ignore="true"/></span></p>
  </ts:messages>
    
  <ts:form action="logon.do">
    <table id="logon-table" summary="ログオンフォームレイアウト用">
      <tr>
        <td>
          <label for="userid-field">ユーザID:</label>
        </td>
        <td>
          <html:text property="userID" maxlength="8" tabindex="1" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="password-field">パスワード:</label>
        </td>
        <td>
          <html:password property="password" value="" tabindex="2" />
        </td>
      </tr>
      <tr>
        <td colspan="2" id="logon-form-button-area">
          <html:submit value="ログオン" styleClass="com-normal-button" />
        </td>
      </tr>
    </table>
  </ts:form>
  <br>
  <br>
    
<!-- end body-->    
<%@ include file="sc0004.jspf" %>
</html:html>
