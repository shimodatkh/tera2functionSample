<%--
  - $Id: sc2305.jsp 11645 2006-04-27 10:33:04Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="ビジネスロジック入出力機能"/>
<bean:define id="titleScreenName" scope="page" value="ビジネスロジック入出力画面「入出力null」結果"/>
<bean:define id="screenName" scope="page" value="ビジネスロジック入出力画面「入出力null」結果"/>
<bean:define id="screenID" scope="page" value="SC2305"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>blogic-io.xmlの設定</h4>
  <table>
    <tr>
      <td align="left">
        <pre>&nbsp;&nbsp;&lt;action&nbsp;path=&quot;/nullBlogicio&quot;/&gt;</pre>
      </td>
    </tr>
  </table>
  <h4>ビジネスロジック入出力結果画面</h4>
  <ts:messages id="msg" message="true">
    <span id='blogicioNullResult'>結果：<bean:write name="msg"/></span><br/>
  </ts:messages>
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