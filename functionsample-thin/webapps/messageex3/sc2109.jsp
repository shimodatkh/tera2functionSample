<%--
  - $Id: sc2109.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�g�����b�Z�[�W���\�[�X"/>
<bean:define id="titleScreenName" scope="page" value="�g�����b�Z�[�W���\�[�X�i�v���p�e�B�̂݁j"/>
<bean:define id="screenName" scope="page" value="�g�����b�Z�[�W���\�[�X�i�v���p�e�B�̂݁j"/>
<bean:define id="screenID" scope="page" value="sc2109"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�v���p�e�B���b�Z�[�W�\��</h4>
    
  �v���p�e�B���b�Z�[�W�̓��e����ʂɕ\�����܂��B
  <br>
  <br>
  <span id='propertyMessage'>  
  <ts:messages id="msgs" message="true">
    <span><bean:write name="msgs" /></span><br>
  </ts:messages>
  </span>
  <br>
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="���j���[��ʂɖ߂�"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>