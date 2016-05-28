<%--
  - $Id: sc3301.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="スタイルクラス切り替え"/>
<bean:define id="titleScreenName" scope="page" value="スタイルクラス切り替え"/>
<bean:define id="screenName" scope="page" value="スタイルクラス切り替え"/>
<bean:define id="screenID" scope="page" value="SC3301"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>スタイルクラス切り替え</h4>
    
changeStyleClassタグ 【name, default, error】<br><br>
  <span id="styleClassError">
  <ts:errors/>
  </span>
  <ts:form action="styleclassCheckForward.do">
    <ul>
      <li>入力しない時、&quot;入力値（必須）：&quot;が赤色に表示される事を確認。<br><br></li>
      <li>changeStyleClassタグの設定<br>
        &nbsp;&nbsp;&lt;td class='&lt;ts:changeStyleClass name=&quot;data&quot; default=&quot;ItemLabel&quot; error=&quot;ErrorItem&quot;/&gt;'&gt;<br>
      </li>
    </ul>
    <table id="styleClassTable" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td class='<ts:changeStyleClass name="data" default="ItemLabel" error="ErrorItem"/>'>
        入力値（必須）：<html:text name="styleclassForm" property="data" maxlength="30" size="30" />
        </td>
      </tr>
      <tr>
        <td align="center"><html:submit value="サブミット"/></td>
      </tr>
    </table>
</ts:form>
    
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