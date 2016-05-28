<%--
  - $Id: sc1105.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="アクションフォーム切り替え"/>
<bean:define id="titleScreenName" scope="page" value="フォーム切り替え結果"/>
<bean:define id="screenName" scope="page" value="フォーム切り替え結果"/>
<bean:define id="screenID" scope="page" value="SC1105"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->

<h4>アクションフォーム切り替え</h4>
<br>
フォーム切り替え結果
<br>
<br>
<logic:empty name="_formtrans1Form">
  <span id='formtransMessage'>_formtrans1Formはアクションフォーム切り替え機能により_formtrans2Formに切り替わりました。</span><br>
  <%-- アクションフォーム --%>
  <bean:define id="formID2" scope="session" toScope="page" name="_formtrans2Form" />
  フォームオブジェクトのハッシュコード：<span id='FormID2'><%=formID2.hashCode()%></span>
  <br>
  <ul>
    <li><span id='ParamValue4'>param4：<bean:write name="_formtrans2Form" property="param4" /></span></li>
    <li><span id='ParamValue5'>param5：<bean:write name="_formtrans2Form" property="param5" /></span></li>
    <li><span id='ParamValue6'>param6：<bean:write name="_formtrans2Form" property="param6" /></span></li>
  </ul>
</logic:empty>

<logic:notEmpty name="_formtrans1Form">
  <%-- アクションフォーム --%>
  <bean:define id="formID1" scope="session" toScope="page" name="_formtrans1Form" />
  フォームオブジェクトのハッシュコード：<span id='FormID1'><%=formID1.hashCode()%></span>
  <br>
  <ul>
    <li><span id='ParamValue1'>param1：<bean:write name="_formtrans1Form" property="param1" /></span></li>
    <li><span id='ParamValue2'>param2：<bean:write name="_formtrans1Form" property="param2" /></span></li>
    <li><span id='ParamValue3'>param3：<bean:write name="_formtrans1Form" property="param3" /></span></li>
  </ul>
</logic:notEmpty>
<br>
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