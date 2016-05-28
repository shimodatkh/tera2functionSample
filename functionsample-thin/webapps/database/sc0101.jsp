<%--
  - $Id: sc0101.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="住所録一覧"/>
<bean:define id="screenName" scope="page" value="住所録一覧"/>
<bean:define id="screenID" scope="page" value="SC0101"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  
  <head></head>
  <body>
  <script language="JavaScript">
    <!--
    function setCustomerCode( argFlag ) {
      document.getElementById('customerCode').value = argFlag;
      return true;
    }
    //-->
  </script>
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>住所録一覧</h4>
  
  <ts:form action="listAddressDispatch.do" onsubmit="return true;">
    <table border="1" frame="box" id="addressTable">
      <tr>
        <td width="80" align="center"><b>顧客コード</b></td>
        <td width="80" align="center"><b>顧客氏名</b></td>
        <td width="200" align="center"><b>住所</b></td>
        <td width="80" align="center"><b>変更・削除</b></td>
      </tr>
      <html:hidden property="customerCode" styleId="customerCode" />
      
      <logic:iterate id="listAddress" name="listAddress" scope="request">
      
      <tr>
        <td align="center">
          <bean:write name="listAddress" property="customerCode"/>
        </td>
        <td align="center">
          <bean:write name="listAddress" property="customerName"/>
        </td>
        <td align="center">
          <bean:write name="listAddress" property="customerAddress"/>
        </td>
        <td align="center">
          <input type="submit"
                 name="forward_update" value="更新"
                 onclick="return setCustomerCode('<t:trim name="listAddress" 
                 property="customerCode"/>');">
		  /
		  <input type="submit"
                 name="forward_delete" value="削除"
                 onclick="return setCustomerCode('<t:trim name="listAddress" 
                 property="customerCode"/>');">
        </td>
      </tr>
      
      </logic:iterate>
    </table>
    <br />
    <table >
      <tr>
        <td>
          <ts:submit property="forward_insert"
              value="新規登録" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_procedure"
              value="初期化" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_batch"
              value="一括登録" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_csvdownload"
              value="CSVダウンロード" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_search"
              value="検索" styleClass="com-normal-button" /> 
        </td>
      </tr>
     </table>
   </ts:form>
   <br>
   <br>
   <hr>
   <html:button property="menuForward" value="メニュー画面に戻る" 
                onclick="location.href='../menuForward.do'" />
   <br>
   <br>
<%@ include file="../sc0004.jspf" %>
</html:html>