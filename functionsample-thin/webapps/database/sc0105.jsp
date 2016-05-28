<%--
  - $Id: sc0104.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="データベースアクセス"/>
<bean:define id="titleScreenName" scope="page" value="住所録一括CSVダウンロード"/>
<bean:define id="screenName" scope="page" value="住所録一括CSVダウンロード"/>
<bean:define id="screenID" scope="page" value="SC0105"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>住所録一括CSVダウンロード</h4>
  <ts:form action="resultCsvDlAddressDispatch.do" onsubmit="return true;">

    <table>
      <tr>
        <td>
          <ts:submit property="forward_csvdownload"
              value="CSVダウンロード" styleClass="com-normal-button" /> 
        </td>
        <td>
          <ts:submit property="forward_returnList"
              value="住所一覧に戻る" styleClass="com-normal-button" /> 
        </td>
      </tr>
    </table>
  <br>
  </ts:form>
  <br>
  <br>

  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>