<%--
  - $Id: sc0701.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�Ɩ��ǃ`�F�b�N"/>
<bean:define id="titleScreenName" scope="page" value="�Ɩ��ǃ`�F�b�N"/>
<bean:define id="screenName" scope="page" value="�Ɩ��ǃ`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC0701"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>�Ɩ��ǃ`�F�b�N�@�\</h4>
  <br>
  <ts:form action="blockage.do" onsubmit="return true;">
    <table border="1" frame="box" id="blockageTable">
      <tr>
        <td width="200" align="center"><b>�Ɩ���</b></td>
        <td width="80" align="center"><b>�Ǐ��</b></td>
      </tr>
      <logic:iterate id="listBlockage" name="listBlockage" scope="request" indexId="index">
      <tr>
        <td align="center">
          <bean:write name="listBlockage" property="ucName"/>
        </td>
        <td align="center">
          <html:checkbox name="listBlockage" property="checked" value='<%= ""+index  %>' />
        </td>
      </tr>
      </logic:iterate>
    </table>
    <br>
    <table>
      <tr>
        <td>
          <ts:submit property="blockage"
              value=" �� �� " styleClass="com-normal-button" /> 
        </td>
      </tr>
   </table>
  </ts:form>
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