<%--
  - $Id: sc0101.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="f[^x[XANZX"/>
<bean:define id="titleScreenName" scope="page" value="Z^ê"/>
<bean:define id="screenName" scope="page" value="Z^ê"/>
<bean:define id="screenID" scope="page" value="SC0101"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  
  <head></head>
  <body>
  <script language="JavaScript">
    <!--
    function setCustomerCode( argFlag ) {
      document.getElementById('customerCode').value = argFlag;
      return true;
    }
    //-->
  </script>
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>Z^ê</h4>
  
  <ts:form action="listAddressDispatch.do" onsubmit="return true;">
    <table border="1" frame="box" id="addressTable">
      <tr>
        <td width="80" align="center"><b>ÚqR[h</b></td>
        <td width="80" align="center"><b>Úq¼</b></td>
        <td width="200" align="center"><b>Z</b></td>
        <td width="80" align="center"><b>ÏXEí</b></td>
      </tr>
      <html:hidden property="customerCode" styleId="customerCode" />
      
      <logic:iterate id="listAddress" name="listAddress" scope="request">
      
      <tr>
        <td align="center">
          <bean:write name="listAddress" property="customerCode"/>
        </td>
        <td align="center">
          <bean:write name="listAddress" property="customerName"/>
        </td>
        <td align="center">
          <bean:write name="listAddress" property="customerAddress"/>
        </td>
        <td align="center">
          <input type="submit"
                 name="forward_update" value="XV"
                 onclick="return setCustomerCode('<t:trim name="listAddress" 
                 property="customerCode"/>');">
		  /
		  <input type="submit"
                 name="forward_delete" value="í"
                 onclick="return setCustomerCode('<t:trim name="listAddress" 
                 property="customerCode"/>');">
        </td>
      </tr>
      
      </logic:iterate>
    </table>
    <br />
    <table >
      <tr>
        <td>
          <ts:submit property="forward_insert"
              value="VKo^" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_procedure"
              value="ú»" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_batch"
              value="êo^" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_csvdownload"
              value="CSV_E[h" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_search"
              value="õ" styleClass="com-normal-button" /> 
        </td>
      </tr>
     </table>
   </ts:form>
   <br>
   <br>
   <hr>
   <html:button property="menuForward" value="j[æÊÉßé" 
                onclick="location.href='../menuForward.do'" />
   <br>
   <br>
<%@ include file="../sc0004.jspf" %>
</html:html>