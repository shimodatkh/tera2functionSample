<%--
  - $Id: sc0702.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@ page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J" %>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>
<%@ taglib uri="/common" prefix="common"%>

<bean:define id="titleUsecaseName" scope="page" value="�Ɩ��ǃ`�F�b�N"/>
<bean:define id="titleScreenName" scope="page" value="�Ɩ���"/>
<bean:define id="screenName" scope="page" value="�Ɩ���"/>
<bean:define id="screenID" scope="page" value="SC0702"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h1><font color="red"><strong>�Ɩ��ǒ��ł��B</strong></font></h1>
  <br>
  <font color="red">�Ɩ��ǃ`�F�b�N�@�\�ŉ������Ă��������B</font>
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="���j���[��ʂɖ߂�"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->    
<%@ include file="../sc0004.jspf" %>
</html:html>
