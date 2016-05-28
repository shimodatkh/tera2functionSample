<%--
  - $Id: sc0205.jsp 11563 2006-04-24 08:26:45Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="トランザクション管理機能"/>
<bean:define id="titleScreenName" scope="page" value="トランザクション処理結果表示"/>
<bean:define id="screenName" scope="page" value="トランザクション処理結果表示"/>
<bean:define id="screenID" scope="page" value="SC0205"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->

  <h4>住所登録</h4>
    <table border="1" id="transactionResult">
      <tr>
        <td width="100" align="center"><b>顧客コード</b></td>
        <td width="100" align="center"><b>顧客氏名</b></td>
        <td width="100" align="center"><b>郵便番号</b></td>
        <td width="240" align="center"><b>住所</b></td>
        <td width="140" align="center"><b>電話番号</b></td>
      </tr>
      <logic:iterate id="searchResult" name="searchResult" scope="request">
      <tr>
        <td>
          <bean:write name="searchResult" property="customerCode"  />
        </td>
        <td>
          <bean:write name="searchResult" property="customerName"  />
        </td>
        <td>
          <bean:write name="searchResult" property="postCode"  />
        </td>
        <td>
          <bean:write name="searchResult" property="customerAddress"  />
        </td>
        <td>
          <bean:write name="searchResult" property="customerTel"  />
        </td>
      </tr>
      </logic:iterate>      
    </table>
    ※上記データの削除は｢データベースアクセス機能｣で行って下さい。
    
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>