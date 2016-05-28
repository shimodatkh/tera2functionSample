<%--
  - $Id: sc1901.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�Z�b�V�����N���A"/>
<bean:define id="titleScreenName" scope="page" value="�Z�b�V�����N���A"/>
<bean:define id="screenName" scope="page" value="�Z�b�V�����N���A"/>
<bean:define id="screenID" scope="page" value="SC1901"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  <h4>�Z�b�V�����N���A</h4>
  �Z�b�V�����X�R�[�v�Ɋi�[����Ă���l��\�����܂��B<br>
  ���̉�ʂŕ\�������Z�b�V�����i�[�l�̃L�[�ƃo�����[�͈ȉ��̒ʂ�ł��B<br>
  
  sessionValue1�F
  <span id='sessionClearValue1'>
  <logic:notEmpty name="sessionValue1" scope="session">
    <bean:write name="sessionValue1" scope="session" />
  </logic:notEmpty>
  <logic:empty name="sessionValue1" scope="session">
    �폜����܂����B
  </logic:empty>
  </span>
  <br>
  <br>
  sessionValue2�F
  <span id='sessionClearValue2'>
  <logic:notEmpty name="sessionValue2" scope="session">
    <bean:write name="sessionValue2" scope="session" />
  </logic:notEmpty>
  <logic:empty name="sessionValue2" scope="session">
    �폜����܂����B
  </logic:empty>
  </span>
  <br>
  <br>
  sessionValue3�F
  <span id='sessionClearValue3'>
  <logic:notEmpty name="sessionValue3" scope="session">
    <bean:write name="sessionValue3" scope="session" />
  </logic:notEmpty>
  <logic:empty name="sessionValue3" scope="session">
    �폜����܂����B
  </logic:empty>
  </span>
  <br>
  <br>
  
  �u�Z�b�V�����N���A�v�{�^�����N���b�N�����sessoinValue1��sessionValue2�͍폜����܂��B
  <br>
  <html:button property="sessionclearButton" value="�Z�b�V�����N���A" 
               onclick="location.href='clearsessionClear.do'" />
  <br>
  <br>
  ���o�b�N�X�y�[�X���ŉ�ʑJ�ڂ��s���ꍇ�A�Z�b�V�����Ɋi�[����Ă���l�͏�����܂���B�K���Z�b�V�������N���A���āA�u���j���[��ʂɖ߂�v�{�^�����N���b�N���ă��j���[��ʂɖ߂��Ă��������B<br>
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="���j���[��ʂɖ߂�"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>