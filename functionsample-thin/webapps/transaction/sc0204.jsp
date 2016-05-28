<%--
  - $Id: sc0204.jsp 11581 2006-04-25 11:54:01Z bs-chob $
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
<bean:define id="titleScreenName" scope="page" value="バッチと一般DBアクセス両方使用したトランザクション処理"/>
<bean:define id="screenName" scope="page" value="バッチと一般DBアクセス両方使用したトランザクション処理"/>
<bean:define id="screenID" scope="page" value="SC0204"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>住所登録</h4>
  <ts:form action="insertedAddressDispatch.do" onsubmit="return true;">
    <table border="1">
      <tr>
        <td colspan="2">
          住所入力1
        <td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客コード</b></td>
        <td>
          <html:text property="customerCode1" maxlength="8" tabindex="1" size="40" value="00001005"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客氏名</b></td>
        <td>
          <html:text property="customerName1" maxlength="30" tabindex="2" size="40" value="林"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>郵便番号</b></td>
        <td>
        <html:text property="postCode1" maxlength="8" tabindex="3" size="40" value="111-1234"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>住所</b></td>
        <td>
          <html:text property="customerAddress1" maxlength="50" tabindex="4" size="40" value="東京都中央区"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>電話番号</b></td>
        <td>
          <html:text property="customerTel1" maxlength="13" tabindex="5" size="40" value="080-1541-1541"/>
        </td>
      </tr>
    </table>
    <br/>
    <table border="1">
      <tr>
        <td colspan="2">
          住所入力2
        <td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客コード</b></td>
        <td>
          <html:text property="customerCode2" maxlength="8" tabindex="6" size="40" value="00001006"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客氏名</b></td>
        <td>
          <html:text property="customerName2" maxlength="30" tabindex="7" size="40" value="小林"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>郵便番号</b></td>
        <td>
        <html:text property="postCode2" maxlength="8" tabindex="8" size="40" value="111-1234"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>住所</b></td>
        <td>
          <html:text property="customerAddress2" maxlength="50" tabindex="9" size="40" value="東京都中央区"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>電話番号</b></td>
        <td>
          <html:text property="customerTel2" maxlength="13" tabindex="10" size="40" value="080-1123-1123"/>
        </td>
      </tr>
    </table>
    <br/>
    <table border="1">
      <tr>
        <td colspan="2">
          住所入力3
        <td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客コード</b></td>
        <td>
          <html:text property="customerCode3" maxlength="8" tabindex="6" size="40" value="00001007"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>顧客氏名</b></td>
        <td>
          <html:text property="customerName3" maxlength="30" tabindex="7" size="40" value="前田"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>郵便番号</b></td>
        <td>
        <html:text property="postCode3" maxlength="8" tabindex="8" size="40" value="111-1234"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>住所</b></td>
        <td>
          <html:text property="customerAddress3" maxlength="50" tabindex="9" size="40" value="東京都中央区"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>電話番号</b></td>
        <td>
          <html:text property="customerTel3" maxlength="13" tabindex="10" size="40" value="080-9999-9999"/>
        </td>
      </tr>
    </table>    
    <br />
    <table>
      <tr>
        <td>
          <ts:submit property="forward_insertAddress1" value="一般後、パッチ登録" /> 
        </td>
        <td>
          <ts:submit property="forward_insertAddress2" value="パッチ後、一般登録" /> 
        </td>
      </tr>
    </table>
  <br>
  </ts:form>
    
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