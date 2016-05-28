<%--
  - $Id: sc0101.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�f�[�^�x�[�X�A�N�Z�X" />
<bean:define id="titleScreenName" scope="page" value="�Z���^����" />
<bean:define id="screenName" scope="page" value="�Z���^����" />
<bean:define id="screenID" scope="page" value="SC0106" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<head></head>
<body>
<%@ include file="../sc0003.jspf"%>
<!-- beagin body -->

<h4>�Z���^����</h4>

<ts:form action="searchAddress.do" onsubmit="return true;">
    �ڋq���F<html:text property="query"></html:text>
    <br />
    <input name="search" type="submit" value="�O����v����" />
</ts:form>
<br>
<br>
<hr>
<html:button property="menuForward" value="���j���[��ʂɖ߂�"
    onclick="location.href='../menuForward.do'" />
<br>
<br>
<%@ include file="../sc0004.jspf"%>
</html:html>