<%--
  - $Id: sc0102.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�f�[�^�x�[�X�A�N�Z�X"/>
<bean:define id="titleScreenName" scope="page" value="�Z���V�K�o�^"/>
<bean:define id="screenName" scope="page" value="�Z���V�K�o�^"/>
<bean:define id="screenID" scope="page" value="SC0102"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>�Z���V�K�o�^</h4>
  
  <ts:form action="resultInsertAddressDispatch.do" onsubmit="return true;">
    <table border="1" frame="box">
      <tr>
        <td width="80" align="center"><b>�ڋq�R�[�h</b></td>
        <td>
          <html:text property="customerCode" value="00000100" maxlength="8" size="40" />
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�ڋq����</b></td>
        <td>
          <html:text property="customerName" value="�R�c���Y" maxlength="30" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�X�֔ԍ�</b></td>
        <td>
          <html:text property="postCode" value="000-0000" maxlength="8" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�Z��</b></td>
        <td>
          <html:text property="customerAddress" value="�����s������" maxlength="50" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�d�b�ԍ�</b></td>
        <td>
          <html:text property="customerTel" value="000-000-0000" maxlength="13" size="40"/>
        </td>
      </tr>
    </table>
    <br />
    <table border="1">
      <tr>
        <td>
          <ts:submit property="forward_insert"
              value="�V�K�o�^" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_returnList"
              value="�Z���ꗗ�ɖ߂�" styleClass="com-normal-button" /> 
        </td>
      </tr>
     </table>
     <br />
  </ts:form>
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>