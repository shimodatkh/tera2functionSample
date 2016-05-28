<%--
  - $Id: sc2103.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="拡張メッセージリソース"/>
<bean:define id="titleScreenName" scope="page" value="優先メッセージ結果"/>
<bean:define id="screenName" scope="page" value="優先メッセージ結果"/>
<bean:define id="screenID" scope="page" value="SC2103"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>メッセージ優先順位結果</h4>
  <table cellspacing="10" cellpadding="10">
    <tr>
      <td align="left">
        前画面でチェックされたメッセージリソースの中で優先順位が高いメッセージを表示します。
      </td>
    </tr>
    <tr>
      <td align="left">
        <span id='checkedMessageListText'>
        <ts:messages id="message1" name="mess" property="select" message="true" >
          <bean:write name="message1"/>
        </ts:messages>
        </span>
      </td>
    </tr>
    <tr>
      <td align="left">
        <span id='priorityMessageText'>
        <ts:messages id="message2" name="mess" property="message" message="true">
          <bean:write name="message2"/>
        </ts:messages>
        </span>
      </td>
    </tr>
  </table>
  <br>
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>