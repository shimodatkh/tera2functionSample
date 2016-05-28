<%--
  - $Id: sc1401.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="例外ハンドリング機能" />
<bean:define id="titleScreenName" scope="page" value="例外ハンドリング処理" />
<bean:define id="screenName" scope="page" value="例外ハンドリング処理" />
<bean:define id="screenID" scope="page" value="SC1401" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>例外ハンドリング処理</h4>
<br>

<ts:form action="exceptionDSP.do">
	<DIV align="center">
	<table border="1" cellspacing="1" cellpadding="5">
		<tr>
			<td>下記の各種システム例外ボタンを押下すると、対応するシステム例外(System Exception)が発生します。<br>
			・TraceSystemException→traceログに例外ログが出力されます。<br>
			・DebugSystemException→debugログに例外ログが出力されます。<br>
			・InfoSystemException→infoログに例外ログが出力されます。<br>
			・WarnSystemException→warnログに例外ログが出力されます。<br>
			・ErrorSystemException→errorログに例外ログが出力されます。<br>
			・FatalSystemException→fatalログに例外ログが出力されます。<br>
			・DefaultSystemException→errorログに例外ログが出力されます。<br>
			</td>
		</tr>
		<tr>
			<td align="center">
			<table cellspacing="5" cellpadding="5">
				<tr>
					<td><ts:submit property="forward_systemException"
						value="TraceSystemException" styleClass="com-long-button" /></td>
					<td><ts:submit property="forward_systemException"
						value="DebugSystemException" styleClass="com-long-button" /></td>
					<td><ts:submit property="forward_systemException"
						value="InfoSystemException" styleClass="com-long-button" /></td>
				</tr>
				<tr>
					<td><ts:submit property="forward_systemException"
						value="WarnSystemException" styleClass="com-long-button" /></td>
					<td><ts:submit property="forward_systemException"
						value="ErrorSystemException" styleClass="com-long-button" /></td>
					<td><ts:submit property="forward_systemException"
						value="FatalSystemException" styleClass="com-long-button" /></td>
				</tr>
				<tr>
					<td><ts:submit property="forward_systemException"
						value="DefaultSystemException" styleClass="com-long-button" /></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	<br>
	<table border="1" cellspacing="1" cellpadding="5">
		<tr>
			<td>下記の各種例外ボタンを押下すると、対応する例外(Exception)が発生します。<br>
			・TraceException→traceログに例外ログが出力されます。<br>
			・DebugException→debugログに例外ログが出力されます。<br>
			・InfoException→infoログに例外ログが出力されます。<br>
			・WarnException→warnログに例外ログが出力されます。<br>
			・ErrorException→errorログに例外ログが出力されます。<br>
			・FatalException→fatalログに例外ログが出力されます。<br>
			・DefaultException→errorログに例外ログが出力されます。<br>
			</td>
		</tr>
		<tr>
			<td align="center">
			<table cellspacing="5" cellpadding="5">
				<tr>
					<td><ts:submit property="forward_exception"
						value="TraceException" styleClass="com-normal-button" /></td>
					<td><ts:submit property="forward_exception"
						value="DebugException" styleClass="com-normal-button" /></td>
					<td><ts:submit property="forward_exception"
						value="InfoException" styleClass="com-normal-button" /></td>
				</tr>
				<tr>
					<td><ts:submit property="forward_exception"
						value="WarnException" styleClass="com-normal-button" /></td>
					<td><ts:submit property="forward_exception"
						value="ErrorException" styleClass="com-normal-button" /></td>
					<td><ts:submit property="forward_exception"
						value="FatalException" styleClass="com-normal-button" /></td>
				</tr>
				<tr>
					<td><ts:submit property="forward_exception"
						value="DefaultException" styleClass="com-normal-button" /></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	</DIV>
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
