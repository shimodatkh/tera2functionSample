<%--
  - $Id: sc0302.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="JNDI�A�N�Z�X�@�\"/>
<bean:define id="titleScreenName" scope="page" value="JNDI���\�[�X�ύX"/>
<bean:define id="screenName" scope="page" value="JNDI���\�[�X�ύX"/>
<bean:define id="screenID" scope="page" value="SC0302"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  
  <head></head>
  <body>
  <script language="JavaScript">
  </script>
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>JNDI���\�[�X�ύX</h4>
  <ts:form action="resultJndiRebind.do" onsubmit="return true;">
      �ύX���镶�������͂��Ă��������<br><br>
      <table border="1" frame="box">
        <tr>
          <td width="160" align="center"><b>JNDI���\�[�X��</b></td>
          <td width="200" align="center"><b>���\�[�X���e</b></td>
        </tr>
        <tr>
          <td>
            <bean:write name="jndiData" property="valueName"  />
            <input type ="hidden" name="valueName" value="<bean:write name="jndiData" property="valueName" />" />
          </td>
          <td>
            <input type="text" name="valueData" value="<bean:write name="jndiData" property="valueData"  />" maxlength="50" tabindex="4" size="40"/>
          </td>
        </tr>
      </table>
      <br>
      <table >
      <tr>
�@�@      <td>
            <ts:submit property="resultJndiRebind"
                    value="�ύX" styleClass="com-normal-button" /> 
      �@�@</td>
      </tr>
     </table>
  </ts:form>
  
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>