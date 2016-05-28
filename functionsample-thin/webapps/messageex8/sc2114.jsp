<%--
  - $Id: sc2114.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="�g�����b�Z�[�W���\�[�X�i�c�a�iLanguage�J�����L�AdefaultLocale:ja_JP�j�j�X"/>
<bean:define id="screenName" scope="page" value="�g�����b�Z�[�W���\�[�X�i�c�a�iLanguage�J�����L�AdefaultLocale:ja_JP�j�j"/>
<bean:define id="screenID" scope="page" value="sc2114"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�c�a���b�Z�[�W�\���iLanguage�J�����L�AdefaultLocale:ja_JP�j</h4>

  �c�a���b�Z�[�W�̓��e����ʂɕ\�����܂��B�iLanguage�J�����L�AdefaultLocale:ja_JP�j
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