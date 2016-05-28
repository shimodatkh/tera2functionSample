<%--
  - $Id: sc1103.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="フォーム切り替えなし（clearForm=true）"/>
<bean:define id="screenName" scope="page" value="フォーム切り替えなし（clearForm=true）"/>
<bean:define id="screenID" scope="page" value="SC1103"/>
<%-- アクションフォーム --%>
<bean:define id="formID" scope="session" toScope="page" name="_formtrans1Form" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->

<h4>アクションフォーム切り替え</h4>
フォーム切り替えなし（clearForm="true"）<br>
<br>
フォームオブジェクトのハッシュコード：<span id='FormID'><%=formID.hashCode()%></span>
<br>
<ul>
  <li><span id='ParamValue1'>param1 : <bean:write name="_formtrans1Form" property="param1" /></span></li>
  <li><span id='ParamValue2'>param2 : <bean:write name="_formtrans1Form" property="param2" /></span></li>
  <li><span id='ParamValue3'>param3 : <bean:write name="_formtrans1Form" property="param3" /></span></li>
</ul>
<br>
<html:link href="formtransClearFormResultForward.do">フォーム切り替えなし（clearForm="true"）</html:link>
<br><br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>