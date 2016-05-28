<%--
  - $Id: sc0006.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@ page contentType="text/html; charset=Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<%@ taglib uri="/struts-bean" prefix="bean" %>
<%@ taglib uri="/struts-logic" prefix="logic" %>
<%@ taglib uri="/terasoluna-struts" prefix="ts" %>
<%@ taglib uri="/terasoluna" prefix="t" %>

<bean:define id="titleUsecaseName" scope="page" value="共通"/>
<bean:define id="titleScreenName" scope="page" value="認証エラー"/>
<bean:define id="screenName" scope="page" value="認証エラー"/>
<bean:define id="screenID" scope="page" value="SC0006"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="sc0002.jspf" %>

<!-- begin body-->

  <h4>エラー画面（ログオフ状態）</h4>
  <table border="0" style="width:100%;">
    <tr>
        <td align="center">
            <h1>
                <font color="red"><strong>
                    <span id="errorMsg">!!&nbsp;ログオンしてください。&nbsp;!!</span>
                </strong></font>
            </h1>
        </td>
    </tr>
  </table>
  <br>
  <br>
  <hr>
  <html:button property="logonButton" value="ログオン画面に戻る" onclick="location.href='logonForward.do'" />
  <br>
  <br>
<!-- end body-->
<%@ include file="sc0004.jspf" %>
</html:html>