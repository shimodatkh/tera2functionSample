<%--
  - $Id: sc0801.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�g���q���ڃA�N�Z�X�֎~"/>
<bean:define id="titleScreenName" scope="page" value="�g���q���ڃA�N�Z�X�֎~"/>
<bean:define id="screenName" scope="page" value="�g���q���ڃA�N�Z�X�֎~"/>
<bean:define id="screenID" scope="page" value="SC0801"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�g���q���ڃA�N�Z�X�֎~</h4>
  <br>
  <table width="300">
  <tr ><td>
  �y�g���q�����`�F�b�N�Ώۂ̊g���q�z
  </td></tr><tr><td>
    �E.jsp
  </td></tr><tr><td>
    �E.html
  </td></tr><tr><td>
    �E.htm
  </td></tr><tr><td>
    �E.jspf
  </td></tr><tr><td>
    �E.css
  </td></tr><tr><td>
  �y�g���q�����`�F�b�N�ΏۊO�ɂ���p�X�z
  </td></tr><tr><td>
  �@�E/index.jsp
  </td></tr><tr><td>
  �@�E/common.css
  </td></tr>
  </table>
  <br><br>
  �y�g���q�����`�F�b�N�ΏۊO�̃����N��z<br>
  <html:link href="../menuForward.do">../menuForward.do</html:link><br>
  <html:link href="../index.jsp">../index.jsp</html:link><br>
  <html:link href="../common.css">../common.css</html:link><br><br>
  �y�g���q���ڃA�N�Z�X�֎~���ꂽ�g���q�̂̃����N��z<br>
  <html:link href="dummy.jsp">dummy.jsp</html:link><br>
  <html:link href="dummy.jspf">dummy.jspf</html:link><br>
  <html:link href="dummy.css">dummy.css</html:link><br><br>
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