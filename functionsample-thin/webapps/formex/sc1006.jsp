<%--
  - $Id: sc1006.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�A�N�V�����t�H�[���g��"/>
<bean:define id="titleScreenName" scope="page" value="�������ʕ\��"/>
<bean:define id="screenName" scope="page" value="��������"/>
<bean:define id="screenID" scope="page" value="SC1006"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>��������</h4>
  <br>
  <table border="1" frame="box">
    <tr>
      <td>
        ���ڂP
      </td>
      <td>
        <input type="text" name="code1" value="<bean:write name="listCode" property="code1"  />" tabindex="1" size="40"/>
      </td>
    </tr>
    <tr>
      <td>
        ���ڂQ
      </td>
      <td>
        <input type="text" name="code2" value="<bean:write name="listCode" property="code2"  />" tabindex="2" size="40"/>
      </td>
    </tr>
    <tr>
      <td>
        ���ڂR
      </td>
      <td>
        <input type="text" name="code3" value="<bean:write name="listCode" property="code3"  />" tabindex="3" size="40"/>
      </td>
    </tr>
  </table>
  <br>
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