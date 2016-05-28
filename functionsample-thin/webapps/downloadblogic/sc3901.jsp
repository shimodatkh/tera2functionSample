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
	import="jp.terasoluna.thin.functionsample.downloadblogic.bean.DownloadFileBLogicInput"%>

<bean:define id="titleUsecaseName" scope="page" value="ファイルダウンロード（BLogicDownloadAction版）" />
<bean:define id="titleScreenName" scope="page" value="ファイルダウンロード（BLogicDownloadAction版）メニュー" />
<bean:define id="screenName" scope="page" value="ファイルダウンロード（BLogicDownloadAction版）メニュー" />
<bean:define id="screenID" scope="page" value="3901" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<head></head>

<h4>ダウンロード（BLogicDownloadAction版）</h4>
  ダウンロードボタンをクリックすると、BLogicDownloadActionを使用してファイルダウンロードします。
  各ボタンの処理は以下の通りです。
  <table border="1">
  <tr align="left"><td>DownloadFile</td>
      <td>取得したファイルをDownloadFileオブジェクトに格納してダウンロードを実行します</td></tr>
  <tr align="left"><td>DownloadInputStream</td>
      <td>取得したファイルをInputStreamに設定し、それをDownloadInputStreamオブジェクトに格納して
      ダウンロードを実行します</td></tr>
  <tr align="left"><td>DownloadByteArray</td>
      <td>取得したファイルをバイト配列化し、それをDownloadByteArrayオブジェクトに格納して
      ダウンロードを実行します</td></tr>
  <tr align="left"><td>DownloadString</td>
      <td>「ファイル名」と「ファイル化する文字列」をDownloadStringオブジェクトに格納して
      ダウンロードを実行します</td></tr>
  </table>
<br>
<br>
<hr>
<br>
<script language="JavaScript">
    <!--
    function setFilePathNameLink(fileName, filePath) {
      var inputElm = document.createElement('input');
      inputElm.setAttribute("type", "hidden");
      inputElm.setAttribute("name", "forward_file");
      var dbForm = document.getElementById("_downloadblogicForm");
      try{
          dbForm.appendChild(inputElm);
      } catch( e ) {
          alert(e);
          return;
      }
      document.getElementById('filePath').value = filePath;
      document.getElementById('fileName').value = fileName;
      document.getElementById('_downloadblogicForm').submit();
      return true;
    }
    function setFilePathNameButt(fileName, filePath) {
      document.getElementById('filePath').value = filePath;
      document.getElementById('fileName').value = fileName;
      return true;
    }
    //-->
  </script>
<ts:form action="/downloadblogicDSP" styleId="_downloadblogicForm">
	<table id="fileTable" border="1" frame="box">
		<html:hidden name="_downloadblogicForm" property="filePath" styleId="filePath"/>
		<html:hidden name="_downloadblogicForm" property="fileName" styleId="fileName"/>
			<tr>
				<td>path/name</td>
				<td>size</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		<logic:iterate id="fileBean" name="fileBeans" scope="request">
			<% String fileName = null; %>
			<% String filePath = null; %>
			<% String fileSize = null; %>
			<% fileName = ((DownloadFileBLogicInput)fileBean).getFileName(); %>
			<% filePath = ((DownloadFileBLogicInput)fileBean).getFilePath(); %>
			<% fileSize = ((DownloadFileBLogicInput)fileBean).getFileSize(); %>
			<% String linkParam = "return setFilePathNameLink('" + fileName + "','" + filePath + "');"; %>
			<tr>
				<td align="left" width="70%">
				<html:link href="#"	onclick="<%= linkParam %>">
					<bean:write name="fileBean" property="filePath" />/<bean:write
						name="fileBean" property="fileName" />
				</html:link></td>
				<td><bean:write name="fileBean" property="fileSize"/></td>
				<td><input type="submit" name="forward_file" value="DownloadFile"
					onclick="return setFilePathNameButt('<%= fileName %>','<%= filePath %>');"/>
				</td>
				<td><input type="submit" name="forward_inputStream" value="DownloadInputStream"
					onclick="return setFilePathNameButt('<%= fileName %>','<%= filePath %>');"/>
				</td>
				<td><input type="submit" name="forward_byteArray" value="DownloadByteArray"
					onclick="return setFilePathNameButt('<%= fileName %>','<%= filePath %>');"/>
				</td>
			</tr>
		</logic:iterate>
	</table>
</ts:form>
<br>
<br>
<ts:form action="/downloadString">
  <table border="1">
    <tr>
	<td>ファイル名</td>
	<td align="left"><html:text name="_downloadblogicForm" property="fileName"
	    value="" size="40"/></td>
	</tr>
	<tr align="left"><td>ファイル化する文字列</td>
	<td><html:textarea name="_downloadblogicForm" property="text"
	    value="" rows="5" cols="80"/></td>
	</tr>
	<tr><td colspan="2"><ts:submit value="DownloadString"/></td>
	</tr>
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
