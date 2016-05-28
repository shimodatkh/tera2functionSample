<%--
  - $Id: sc2401.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java"
	pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="ファイルアップロード" />
<bean:define id="titleScreenName" scope="page" value="ファイルアップロードメニュー" />
<bean:define id="screenName" scope="page" value="ファイルアップロードメニュー" />
<bean:define id="screenID" scope="page" value="3701" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>アップロード</h4>
  アップロードボタンをクリックすると、ファイルアップロードします。<br>
<br>
<ts:form action="/registDBUpLoad" method="POST"
	enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td>単ファイルアップロード</td>
		</tr>
		<tr>
			<td><html:file name="_upLoadForm" property="fileup" accept="text/html"
				size="40" maxlength="255" /></td>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr>
			<td>複数ファイルアップロード</td>
		</tr>
		<% for(int i =0;i<3;i++) {%>
		<tr>
			<td><input type="file" name='<%= "listFile[" + i + "]" %>' accept="text/html"
				size="40" maxlength="255" /></td>
		</tr>
		<% } %>
		<tr>
			<td><input type="submit" value="アップロード" /></td>
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

<%@ include file="../sc0004.jspf"%>

</html:html>
