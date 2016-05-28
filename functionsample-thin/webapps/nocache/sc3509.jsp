<%--
  - $Id: sc3509.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="submit結果"/>
<bean:define id="screenName" scope="page" value="submit結果"/>
<bean:define id="screenID" scope="page" value="SC3509"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>実行結果</h4>
    
  <table border="0" cellspacing="1" cellpadding="1">
     <tr>
      <td nowrap>
        <html:button property="forward_action" value=" 閉じる " onclick="window.close()"/>
      </td>
     </tr>
  </table>
  <br>
  <br>

<!-- end body-->

<%@ include file="../sc0004.jspf" %>

</html:html>
