<%--
  - $Id: sc0801.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="拡張子直接アクセス禁止"/>
<bean:define id="titleScreenName" scope="page" value="拡張子直接アクセス禁止"/>
<bean:define id="screenName" scope="page" value="拡張子直接アクセス禁止"/>
<bean:define id="screenID" scope="page" value="SC0801"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>拡張子直接アクセス禁止</h4>
  <br>
  <table width="300">
  <tr ><td>
  【拡張子制限チェック対象の拡張子】
  </td></tr><tr><td>
    ・.jsp
  </td></tr><tr><td>
    ・.html
  </td></tr><tr><td>
    ・.htm
  </td></tr><tr><td>
    ・.jspf
  </td></tr><tr><td>
    ・.css
  </td></tr><tr><td>
  【拡張子制限チェック対象外にするパス】
  </td></tr><tr><td>
  　・/index.jsp
  </td></tr><tr><td>
  　・/common.css
  </td></tr>
  </table>
  <br><br>
  【拡張子制限チェック対象外のリンク先】<br>
  <html:link href="../menuForward.do">../menuForward.do</html:link><br>
  <html:link href="../index.jsp">../index.jsp</html:link><br>
  <html:link href="../common.css">../common.css</html:link><br><br>
  【拡張子直接アクセス禁止された拡張子ののリンク先】<br>
  <html:link href="dummy.jsp">dummy.jsp</html:link><br>
  <html:link href="dummy.jspf">dummy.jspf</html:link><br>
  <html:link href="dummy.css">dummy.css</html:link><br><br>
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