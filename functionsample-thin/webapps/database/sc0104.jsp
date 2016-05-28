<%--
  - $Id: sc0104.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="住所録一括登録"/>
<bean:define id="screenName" scope="page" value="住所録一括登録"/>
<bean:define id="screenID" scope="page" value="SC0104"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>住所録一括登録</h4>
  <ts:form action="resultBatchAddressDispatch.do" onsubmit="return true;">

	  <table border="1" frame="box">
	    <tr>
	      <td colspan="2">
	        住所入力1
	      <td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>顧客コード</b></td>
	      <td>
	        <html:text property="customerCode1" value="00000100" maxlength="8" size="40" />
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>顧客氏名</b></td>
	      <td>
	        <html:text property="customerName1" value="山田 太郎" maxlength="30" size="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>郵便番号</b></td>
	      <td>
	      <html:text property="postCode1" value="000-0000" maxlength="8" size="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>住所</b></td>
	      <td>
	        <html:text property="customerAddress1" value="東京都杉並区" maxlength="50" size="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>電話番号</b></td>
	      <td>
	        <html:text property="customerTel1" value="000-000-0000" maxlength="13" size="40"/>
	      </td>
	    </tr>
	  </table>
	
	
	  <br>
	  <br>
	  <table border="1" frame="box">
	    <tr>
	      <td colspan="2">
	        住所入力2
	      <td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>顧客コード</b></td>
	      <td>
	        <html:text property="customerCode2" value="00000101" maxlength="8" size="40" />
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>顧客氏名</b></td>
	      <td>
	        <html:text property="customerName2" value="鈴木 太郎" maxlength="30" size="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>郵便番号</b></td>
	      <td>
	      <html:text property="postCode2" value="111-1111" maxlength="8" size="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>住所</b></td>
	      <td>
	        <html:text property="customerAddress2" value="千葉県九十九里村" maxlength="50" size="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td width="80" align="center"><b>電話番号</b></td>
	      <td>
	        <html:text property="customerTel2" value="111-111-1111" maxlength="13" size="40"/>
	      </td>
	    </tr>
	  </table>

    <br>
    <table>
      <tr>
        <td>
          <ts:submit property="forward_batch"
              value="一括登録" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_returnList"
              value="住所一覧に戻る" styleClass="com-normal-button" /> 
        </td>
      </tr>
    </table>
  <br>
  </ts:form>
  <br>
  <br>

  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>