<%--
  - $Id: sc1602.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�A�N�V�����g��"/>
<bean:define id="titleScreenName" scope="page" value="�A�N�V�����g������"/>
<bean:define id="screenName" scope="page" value="�A�N�V�����g������"/>
<bean:define id="screenID" scope="page" value="SC1602"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>�A�N�V�����g������</h4>
  ���̉�ʂ̓g�����U�N�V�����g�[�N�����䂳��邽�߁A<br>
  �u���E�U�́u�X�V�v�{�^�����������ꍇ�A�G���[��ʂɑJ�ڂ��܂��B<br>
  <br>
  saveToken=false�̏ꍇ�A�g�[�N�����ۑ�����Ȃ����߁A<br>
  �g�����U�N�V�����g�[�N������̓X���[����܂��B<br>
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