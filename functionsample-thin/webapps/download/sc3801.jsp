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
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>
<%@ page
	import="jp.terasoluna.thin.functionsample.download.bean.FileDownLoadMenuBean"%>

<bean:define id="titleUsecaseName" scope="page" value="ファイルダウンロード" />
<bean:define id="titleScreenName" scope="page" value="ファイルダウンロードメニュー" />
<bean:define id="screenName" scope="page" value="ファイルダウンロードメニュー" />
<bean:define id="screenID" scope="page" value="3801" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<head></head>

<h4>ダウンロード</h4>
  ダウンロードボタンをクリックすると、ファイルダウンロードします。<br>
<br>
<br>
<hr>
<br>
<script language="JavaScript">
    <!--
    function setFilePathNameLink(fileName, filePath) {
      var inputElm = document.createElement('input');
      inputElm.setAttribute("type", "hidden");
      inputElm.setAttribute("name", "forward_update");
      document.forms["_downLoadForm"].appendChild(inputElm);

      document.getElementById('filePath').value = filePath;
      document.getElementById('fileName').value = fileName;
      document.getElementById('_downLoadForm').submit();
      return true;
    }
    function setFilePathNameButt(fileName, filePath) {
      document.getElementById('filePath').value = filePath;
      document.getElementById('fileName').value = fileName;
      return true;
    }
    //-->
  </script>
<ts:form action="/downloadFileDSP" styleId="_downLoadForm">
	<table id="fileTable" border="1" frame="box">
		<html:hidden name="_downLoadForm" property="filePath" styleId="filePath"/>
		<html:hidden name="_downLoadForm" property="fileName" styleId="fileName"/>
			<tr>
				<td>path/name</td>
				<td>size</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		<logic:iterate id="fileBean" name="fileBeans" scope="request">
			<% String fileName = null; %>
			<% String filePath = null; %>
			<% String fileSize = null; %>
			<% fileName = ((FileDownLoadMenuBean)fileBean).getFileName(); %>
			<% filePath = ((FileDownLoadMenuBean)fileBean).getFilePath(); %>
			<% fileSize = ((FileDownLoadMenuBean)fileBean).getFileSize(); %>
			<% String linkParam = "return setFilePathNameLink('" + fileName + "','" + filePath + "');"; %>
			<tr>
				<td align="left" width="70%"><html:link href="#"
					onclick="<%= linkParam %>">
					<bean:write name="fileBean" property="filePath" />/<bean:write
						name="fileBean" property="fileName" />
				</html:link></td>
				<td><bean:write name="fileBean" property="fileSize"/></td>
				<td><input type="submit" name="forward_update" value="ファイルダウンロード"
					onclick="return setFilePathNameButt('<%= fileName %>','<%= filePath %>');">
				</td>
				<td><input type="submit" name="forward_delete" value="ファイル削除"
					onclick="return setFilePathNameButt('<%= fileName %>','<%= filePath %>');">
				</td>
			</tr>
		</logic:iterate>
	</table>

</ts:form>

<br>
<br>

<html:button property="menuForward" value="メニュー画面に戻る"
	onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>
