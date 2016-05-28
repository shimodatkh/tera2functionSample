<%--
  - $Id: sc1004.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�A�N�V�����t�H�[���g��"/>
<bean:define id="titleScreenName" scope="page" value="���I�A�N�V�����t�H�[���icancelPouplate=true�j"/>
<bean:define id="screenName" scope="page" value="���I�A�N�V�����t�H�[���icancelPouplate=true�j"/>
<bean:define id="screenID" scope="page" value="SC1004"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>���I�A�N�V�����t�H�[���icancelPouplate = "true"�j</h4>
  <br>
  <ts:form action="cancelPopulateFormEx.do" onsubmit="return true;">
     <table border="1" frame="box" id="dynaValidatorCancelTable">
      <tr>
        <td>
          ���ڂP
        </td>
        <td>
          <html:text property="code1" value="" tabindex="1" size="40" />
        </td>
      </tr>
      <tr>
        <td>
          ���ڂQ
        </td>
        <td>
          <html:text property="code2" value="" tabindex="2" size="40" />
        </td>
      </tr>
      <tr>
        <td>
          ���ڂR
        </td>
        <td>
          <html:text property="code3" value="" tabindex="3" size="40" />
        </td>
      </tr>
    </table>
    
    <br/>
    <table >
      <tr>
        <td>
          <ts:submit property="submit"
              value="����" styleClass="com-normal-button" /> 
        </td>
      </tr>
    </table>
  </ts:form>
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