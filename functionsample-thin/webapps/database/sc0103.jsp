<%--
  - $Id: sc0103.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="�Z���^�ύX"/>
<bean:define id="screenName" scope="page" value="�Z���^�ύX"/>
<bean:define id="screenID" scope="page" value="SC0103"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>�Z���^�ύX</h4>
  
  <ts:form action="resultUpdateAddressDispatch.do" onsubmit="return true;">
    <table border="1" frame="box" id="updateAddressTable">
      <tr>
        <td width="80" align="center"><b>�ڋq�R�[�h</b></td>
        <td>
          <bean:write name="addressData" property="customerCode" />
          <input type ="hidden" name="customerCode" value="<bean:write name="addressData" property="customerCode" />"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�ڋq����</b></td>
        <td>
          <input type="text" name="customerName" value="<bean:write name="addressData" property="customerName"  />" maxlength="30" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�X�֔ԍ�</b></td>
        <td>
          <input type="text" name="postCode" value="<bean:write name="addressData" property="postCode"  />" maxlength="8" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�Z��</b></td>
        <td>
          <input type="text" name="customerAddress" value="<bean:write name="addressData" property="customerAddress"  />" maxlength="50" size="40"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�d�b�ԍ�</b></td>
        <td>
          <input type="text" name="customerTel" value="<bean:write name="addressData" property="customerTel"  />" maxlength="13" size="40"/>
        </td>
      </tr>
    </table>
    <br />
    <table border="1">
      <tr>
        <td>
          <ts:submit property="forward_update"
              value="�ύX" styleClass="com-normal-button" /> 
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