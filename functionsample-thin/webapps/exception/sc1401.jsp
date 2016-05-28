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

<bean:define id="titleUsecaseName" scope="page" value="��O�n���h�����O�@�\" />
<bean:define id="titleScreenName" scope="page" value="��O�n���h�����O����" />
<bean:define id="screenName" scope="page" value="��O�n���h�����O����" />
<bean:define id="screenID" scope="page" value="SC1401" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>��O�n���h�����O����</h4>
<br>

<ts:form action="exceptionDSP.do">
	<DIV align="center">
	<table border="1" cellspacing="1" cellpadding="5">
		<tr>
			<td>���L�̊e��V�X�e����O�{�^������������ƁA�Ή�����V�X�e����O(System Exception)���������܂��B<br>
			�ETraceSystemException��trace���O�ɗ�O���O���o�͂���܂��B<br>
			�EDebugSystemException��debug���O�ɗ�O���O���o�͂���܂��B<br>
			�EInfoSystemException��info���O�ɗ�O���O���o�͂���܂��B<br>
			�EWarnSystemException��warn���O�ɗ�O���O���o�͂���܂��B<br>
			�EErrorSystemException��error���O�ɗ�O���O���o�͂���܂��B<br>
			�EFatalSystemException��fatal���O�ɗ�O���O���o�͂���܂��B<br>
			�EDefaultSystemException��error���O�ɗ�O���O���o�͂���܂��B<br>
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
			<td>���L�̊e���O�{�^������������ƁA�Ή������O(Exception)���������܂��B<br>
			�ETraceException��trace���O�ɗ�O���O���o�͂���܂��B<br>
			�EDebugException��debug���O�ɗ�O���O���o�͂���܂��B<br>
			�EInfoException��info���O�ɗ�O���O���o�͂���܂��B<br>
			�EWarnException��warn���O�ɗ�O���O���o�͂���܂��B<br>
			�EErrorException��error���O�ɗ�O���O���o�͂���܂��B<br>
			�EFatalException��fatal���O�ɗ�O���O���o�͂���܂��B<br>
			�EDefaultException��error���O�ɗ�O���O���o�͂���܂��B<br>
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
<html:button property="menuForward" value="���j���[��ʂɖ߂�"
	onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->
<%@ include file="../sc0004.jspf"%>
</html:html>
