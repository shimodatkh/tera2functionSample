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

<bean:define id="titleUsecaseName" scope="page" value="�t�@�C���A�b�v���[�h" />
<bean:define id="titleScreenName" scope="page" value="�t�@�C���A�b�v���[�h�m�F���" />
<bean:define id="screenName" scope="page" value="�t�@�C���A�b�v���[�h�m�F���" />
<bean:define id="screenID" scope="page" value="SC3702" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>�A�b�v���[�h����</h4>
	<table border="1" cellspacing="0" cellpadding="1" width="100%"
		frame='box'>
		<tr>
			<td colspan="3" bgcolor="eeeeee">�P�t�@�C���A�b�v���[�h����</td>
		</tr>
		<tr>
			<td width="30%">path</td>
			<td width="30%">name</td>
			<td width="30%">size</td>
		</tr>
		<tr>
			<td nowrap align="left"><bean:write name="_upLoadForm" property="filePath" />&nbsp;</td>
			<td nowrap><bean:write name="_upLoadForm" property="fileName" />&nbsp;</td>
			<td nowrap><bean:write name="_upLoadForm" property="fileSize" />&nbsp;</td>
		</tr>
	</table>
	<br>
	<table border="1" cellspacing="0" cellpadding="1" width="100%"
		frame='box'>
		<tr>
			<td colspan="3" bgcolor="eeeeee">�����t�@�C���A�b�v���[�h����</td>
		</tr>
		<tr>
			<td width="30%">path</td>
			<td width="30%">name</td>
			<td width="30%">size</td>
		</tr>
		<%for (int i=0;i< 3;i++){ %>
		<tr height="25">
			<td nowrap align="left"><bean:write name="_upLoadForm"
				property='<%= "listFilePath[" + i + "]" %>' />&nbsp;</td>
			<td nowrap><bean:write name="_upLoadForm"
				property='<%= "listFileName[" + i + "]" %>' />&nbsp;</td>
			<td nowrap><bean:write name="_upLoadForm"
				property='<%= "listFileSize[" + i + "]" %>' />&nbsp;</td>
		</tr>
		<%} %>
	</table>
<br>
<hr>
<br>
<html:button property="menuForward" value="���j���[��ʂɖ߂�"
	onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>
