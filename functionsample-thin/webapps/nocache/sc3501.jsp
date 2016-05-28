<%--
  - $Id: sc3501.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="拡張form・リンク・submit選択"/>
<bean:define id="screenName" scope="page" value="拡張form・リンク・submit選択"/>
<bean:define id="screenID" scope="page" value="SC3501"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>拡張form・リンク・submit</h4>
    
  <br>
  <html:link page="/formForward.do">1. formタグ</html:link><br><br>
  <html:link page="/linkForward.do">2. linkタグ</html:link><br><br>
  <html:link page="/submitForward.do">3. submitタグ</html:link><br><br>
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