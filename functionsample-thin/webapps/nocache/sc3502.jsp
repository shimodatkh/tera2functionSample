<%--
  - $Id: sc3502.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="�g��form�E�����N�Esubmit"/>
<bean:define id="titleScreenName" scope="page" value="form�^�O�I��"/>
<bean:define id="screenName" scope="page" value="form�^�O�I��"/>
<bean:define id="screenID" scope="page" value="SC3502"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>form�^�O�@�\</h4>
  <br>
  <html:link page="/form1Forward.do">1. form�^�O ����: action, method, enctype, onreset, onsubmit, styleClass, target</html:link><br><br>
  <html:link page="/form2Forward.do" target="form_get">2. form�^�O ����: action, method, style, focus, focusIndex</html:link><br><br>
  <html:link page="/form3Forward.do">3. form�^�O ����: action, method, styleId, acceptCharset</html:link><br><br>
  <html:link page="/form4Forward.do" target="form_get">4. form�^�O ����: action, method, style, focus, focusIndex, scriptLanguage</html:link><br><br>

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