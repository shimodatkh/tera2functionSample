<%--
  - $Id: sc3201.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="���b�Z�[�W�|�b�v�A�b�v"/>
<bean:define id="titleScreenName" scope="page" value="���b�Z�[�W�|�b�v�A�b�v�^�O�I��"/>
<bean:define id="screenName" scope="page" value="���b�Z�[�W�|�b�v�A�b�v�^�O�I��"/>
<bean:define id="screenID" scope="page" value="SC3201"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
    <h4>���b�Z�[�W�|�b�v�A�b�v�^�O�I��</h4>
    ���̃��j���[��I�����ĉ�����<br>
    <br>
  
    <html:link href="popup_paramTypeForward.do">messagePopup�^�O ����:popup,title,paramType,windowId</html:link><br>
    Errors�^�O ����:locale,name,property<br>
    Message�^�O ����:locale,id,header,footer,property,name<br><br>
    <html:link href="popup_paramFuncForward.do">messagePopup�^�O ����:popup,title,paramFunc,windowId</html:link><br>
    Errors�^�O ����:�Ȃ�<br>
    Message�^�O ����:id,header,footer,message<br><br>
    <html:link href="popup_paramForward.do">messagePopup�^�O ����:popup,title,param,windowId</html:link><br>
    Errors�^�O ����:bundle,name.property<br>
    Message�^�O ����:bundle,locale,id,header,footer,property,name<br><br>
    
    <br>
    <hr>
    <br>
    <html:button property="menuForward" value="���j���[��ʂɖ߂�" onclick="location.href='../menuForward.do'" />
    <br>
    <br>
    <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>