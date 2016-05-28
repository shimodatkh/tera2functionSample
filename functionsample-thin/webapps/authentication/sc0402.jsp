<%--
  - $Id: sc0402.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="ログオン済みチェック"/>
<bean:define id="titleScreenName" scope="page" value="ログオン済みチェック結果"/>
<bean:define id="screenName" scope="page" value="ログオン済みチェック結果"/>
<bean:define id="screenID" scope="page" value="SC0402"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>ログオン済みチェック結果</h4>
  <table border="0" style="width:100%;">
    <tr>
        <td align="center">
            <h1>
                <font color="red"><strong>
                    <span id="logonCheck">ログオン済みです。</span>
                </strong></font>
            </h1>
        </td>
    </tr>
  </table>

  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>

<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>
