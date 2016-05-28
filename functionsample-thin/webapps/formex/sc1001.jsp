<%--
  - $Id: sc1001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�A�N�V�����t�H�[���g��"/>
<bean:define id="titleScreenName" scope="page" value="�A�N�V�����t�H�[���I��"/>
<bean:define id="screenName" scope="page" value="�A�N�V�����t�H�[���I��"/>
<bean:define id="screenID" scope="page" value="SC1001"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�A�N�V�����t�H�[���g��</h4>
  ���̃��j���[��I�����ĉ�����<br>
  <br>
  
  <html:link href="validatorFormExForward.do">�ÓI�A�N�V�����t�H�[���icancelPouplate = "false"�j</html:link><br><br>
  <html:link href="dynaFormExForward.do">���I�A�N�V�����t�H�[���icancelPouplate = "false"�j</html:link><br><br>
  <html:link href="dynaFormExCancelForward.do">���I�A�N�V�����t�H�[���icancelPouplate = "true"�j</html:link><br><br>
  <html:link href="dynaFormExModifiedForward.do">�T�[�r�X���W�b�N�ŃA�N�V�����t�H�[���l�ύX�icancelPouplate = "false"�j</html:link><br><br>
  <html:link href="securityForward.do">Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N</html:link><br><br>
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