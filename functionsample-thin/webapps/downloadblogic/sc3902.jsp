<%--
  - $Id: sc2401.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java"
	pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�t�@�C���_�E�����[�h�G���[���" />
<bean:define id="titleScreenName" scope="page" value="�t�@�C���_�E�����[�h�G���[���" />
<bean:define id="screenName" scope="page" value="�t�@�C���_�E�����[�h�G���[���" />
<bean:define id="screenID" scope="page" value="3902" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>�_�E�����[�h�G���[���</h4>
<br>
<br>
<table border="1" cellspacing="0" cellpadding="1" width="100%" frame='box' >
    <tr height="25">
      <td nowrap>
        <bean:write name="_downloadblogicForm" property="fileName" />�̃t�@�C���_�E�����[�h�Ɏ��s�����B
      </td>
    </tr>
</table>
<br>
<hr>
<br>
<html:button property="menuForward" value="���j���[��ʂɖ߂�"
	onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>
