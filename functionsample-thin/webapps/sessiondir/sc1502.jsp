<%--
  - $Id: sc1502.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�Z�b�V�����f�B���N�g��"/>
<bean:define id="titleScreenName" scope="page" value="�Z�b�V�����f�B���N�g���m�F"/>
<bean:define id="screenName" scope="page" value="�Z�b�V�����f�B���N�g���m�F"/>
<bean:define id="screenID" scope="page" value="SC1502"/>

<%@ page import="jp.terasoluna.fw.util.FileUtil"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<%
  String path = FileUtil.getSessionDirectory(session.getId()).getPath();
  java.io.File file = new java.io.File(path);
  if (!file.exists()) { path=null; }
  request.setAttribute("path", path);
%>
<bean:define id="sessiondir" name="path" scope="request" />

<!-- begin body-->
  <h4>�Z�b�V�����f�B���N�g���m�F</h4>
	���̃Z�b�V�����ɕR�t�������L�f�B���N�g���̍쐬�������B<br>
	�@�\�ԗ��A�v���P�[�V���������O�I�t����Ə��������B<br>
	
	<br>
    <table id='sessionDirTable'>
      <tr>
        <logic:notEmpty name="sessiondir">
          <td>
            �f�B���N�g�����F
          </td>
          <td>
            <bean:write name="sessiondir" />
          </td>
        </logic:notEmpty>
        <logic:empty name="sessiondir">
          <td colspan="2">
            �f�B���N�g��������܂���B
          </td>
        </logic:empty>
      </tr>
    </table>
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