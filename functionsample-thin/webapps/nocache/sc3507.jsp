<%--
  - $Id: sc3507.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="�g��form�E�����N�Esubmit"/>
<bean:define id="titleScreenName" scope="page" value="form�^�O�g�p3"/>
<bean:define id="screenName" scope="page" value="form�^�O�g�p3"/>
<bean:define id="screenID" scope="page" value="SC3507"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

  <head>
    <title>form�^�O</title>
    <STYLE type="text/css">
    <!--
    #Class_01{
      color: red;
    }
    -->
    </STYLE>
  </head>
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
    <h4>form�^�O</h4>
    
<br>

    3. form�^�O �yaction, method, styleId, acceptCharset�z
    <ul>
      <li>�������ԐF�ɕ\������邩���m�F�B<br><br></li>
      <li>Submit�{�^�����N���b�N������A��ʂ̃A�h���X��TOKEN�̓��e�����鎖���m�F�B<br><br></li>
      <li>form�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:form action=&quot;/form3Forward.do&quot; method=&quot;get&quot; styleId=&quot;Class_01&quot; acceptCharset=&quot;unknown&quot; &gt;<br>
      </li>
    </ul>    
    <div align="left">
      <ts:form action="/form3Forward.do" method="get" styleId="Class_01" acceptCharset="unknown" >
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���́F<html:text property="text"/> <html:submit/>
      </ts:form>
    </div>
    <br>
    <html:link page="/formForward.do">form�^�O���j���[</html:link><br>
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