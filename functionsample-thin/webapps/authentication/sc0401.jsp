<%--
  - $Id: sc0401.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<%@ taglib uri="/common" prefix="common"%>

<bean:define id="titleUsecaseName" scope="page" value="���O�I���ς݃`�F�b�N"/>
<bean:define id="titleScreenName" scope="page" value="���O�I���ς݃`�F�b�N"/>
<bean:define id="screenName" scope="page" value="���O�I���ς݃`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC0401"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>���O�I���ς݃`�F�b�N</h4>
  <table>
    <tr>
      <td align="left">
       �u���O�I���ς݃`�F�b�N�v�{�^�����N���b�N����ƁA���O�I���ς݃`�F�b�N���ʉ�ʂ��\������܂��B<br>
       �u���O�I���ς݃`�F�b�N�G���[�{�^���v���N���b�N����ƁA���O�A�E�g���ꂽ��ԂŃ��O�I���ς݃`�F�b�N���ʉ�ʂɑJ�ڂ��邽�߁A���O�I���ς݃`�F�b�N�G���[��ʂɑJ�ڂ��܂��B
        <br>
      </td>
    </tr>
  </table>
  
  <br>
  <!-- ���O�I���F���W���[����`����ƃ��j���[��ʂŃp�X��肪�������邽�߁A�f�t�H���g���W���[���ɂĒ�`���� -->
  <html:button property="authentication" value="���O�I���ς݃`�F�b�N"
  onclick="location.href='authenticationResultForward.do'" />
  <br>
  <br>
  <html:button property="authenticationError" value="���O�I���ς݃`�F�b�N�G���["
  onclick="location.href='authenticationError.do'" />
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