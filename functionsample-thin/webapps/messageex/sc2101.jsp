<%--
  - $Id: sc2101.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="�g�����b�Z�[�W���\�[�X�I��"/>
<bean:define id="screenName" scope="page" value="�g�����b�Z�[�W���\�[�X�I��"/>
<bean:define id="screenID" scope="page" value="SC2101"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�g�����b�Z�[�W���\�[�X</h4>
  ���̃��j���[��I�����ĉ�����
  <br>
  <br>

  <html:link href="priorityMessageEx.do">�D�揇��</html:link><br><br>
  <html:link href="../messageex2/propertyMessageResource.do">�g���v���p�e�B���b�Z�[�W���\�[�X</html:link><br><br>
  <html:link href="../messageex3/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�v���p�e�B�̂݁j</html:link><br><br>
  <html:link href="../messageex4/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�c�a�̂݁j</html:link><br><br>
  <html:link href="../messageex5/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�v���p�e�B�A�c�a�j</html:link><br><br>
  <html:link href="../messageex6/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�c�a�A�v���p�e�B�j</html:link><br><br>
  <html:link href="../messageex7/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�c�a�iLANGUAGE�w��Ȃ��j�j</html:link><br><br>
  <html:link href="../messageex8/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�c�a�idefaultLocale:ja_JP�j�j</html:link><br><br>
  <html:link href="../messageex9/springMessageResource.do">�g�����b�Z�[�W���\�[�X�i�c�a�idefaultLocale:en_US�j�j</html:link><br><br>

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