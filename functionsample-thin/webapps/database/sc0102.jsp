<%--
  - $Id: sc0102.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="データベースアクセス"/>
<bean:define id="titleScreenName" scope="page" value="住所新規登録"/>
<bean:define id="screenName" scope="page" value="住所新規登録"/>
<bean:define id="screenID" scope="page" value="SC0102"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>住所新規登録</h4>
  
  <ts:form action="resultInsertAddressDispatch.do" onsubmit="return true;">
    <table border="1" frame="box">
      <tr>
        <td width="80" align="center"><b>顧客コード</b></td>
        <td>
          <html:text property="customerCode" value="00000100" maxlength="8" size="40" />
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客氏名</b></td>
        <td>
          <html:text property="customerName" value="山田太郎" maxlength="30" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>郵便番号</b></td>
        <td>
          <html:text property="postCode" value="000-0000" maxlength="8" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>住所</b></td>
        <td>
          <html:text property="customerAddress" value="東京都杉並区" maxlength="50" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>電話番号</b></td>
        <td>
          <html:text property="customerTel" value="000-000-0000" maxlength="13" size="40"/>
        </td>
      </tr>
    </table>
    <br />
    <table border="1">
      <tr>
        <td>
          <ts:submit property="forward_insert"
              value="新規登録" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_returnList"
              value="住所一覧に戻る" styleClass="com-normal-button" /> 
        </td>
      </tr>
     </table>
     <br />
  </ts:form>
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>