<%--
  - $Id: sc1403.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@ page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J" %>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>
<%@ page import="org.apache.struts.Globals" %>

<bean:define id="titleUsecaseName" scope="page" value="��O�n���h�����O�@�\"/>
<bean:define id="titleScreenName" scope="page" value="��O�n���h�����O�m�F"/>
<bean:define id="screenName" scope="page" value="��O�n���h�����O�m�F"/>
<bean:define id="screenID" scope="page" value="SC1403"/>

<%
  java.lang.Exception exception = 
  (java.lang.Exception) request.getAttribute(Globals.EXCEPTION_KEY);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>��O�n���h�����O�m�F</h4>

  <br>

  <table cellspacing="5" cellpadding="5">
    <tr>
      <td align="left">
        <b>�ETERASOLUNA�̃G���[���b�Z�[�W�F</b>
        <br>
        <font color="#FF0000">
          <span id="errorMessage"><ts:errors/></span>
        </font>
      </td>
    </tr>
    <tr>
      <td align="left">
        <b>�E�G���[�F</b>
        <br>
        <span id="error"><%=exception.toString() %></span>
      </td>
    </tr>
    <tr>
      <td align="left">
        <b>�E�G���[���b�Z�[�W�F</b>
        <br>
        <span id="message"><%=exception.getMessage() %></span>
        <br>
      </td>
    </tr>
    <tr>
      <td align="left">
        <b>�E�X�^�b�N�g���[�X�F</b>
        <br>
        <span id="stackTrace"><%exception.printStackTrace(new java.io.PrintWriter(out)); %></span>
        <br>
      </td>
    </tr>
  </table>
  <br>
  
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="���j���[��ʂɖ߂�"
  onclick="location.href='../menuForward.do'" />
  <html:button property="exceptionForward" value="��O�n���h�����O������ʂɖ߂�"
  onclick="location.href='./exceptionForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->

<%@ include file="../sc0004.jspf" %>
</html:html>