<%--
  - $Id: sc1701.jsp 11563 2006-04-24 08:26:45Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="�W���f�B�X�p�b�`���@�\"/>
<bean:define id="titleScreenName" scope="page" value="�W���f�B�X�p�b�`���������j���["/>
<bean:define id="screenName" scope="page" value="�W���f�B�X�p�b�`���������j���["/>
<bean:define id="screenID" scope="page" value="SC1701"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�W���f�B�X�p�b�`��</h4>
  ���̃��j���[��I�����ĉ�����<br>
  <br>
  
  <html:link href="submitButtonUserList.do">�T�u�~�b�g�{�^���𗘗p����f�B�X�p�b�`������</html:link><br>
  <html:link href="radioButtonUserList.do">���W�I�{�^���𗘗p����f�B�X�p�b�`������</html:link><br>
    
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