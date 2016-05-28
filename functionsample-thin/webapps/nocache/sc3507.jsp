<%--
  - $Id: sc3507.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="formタグ使用3"/>
<bean:define id="screenName" scope="page" value="formタグ使用3"/>
<bean:define id="screenID" scope="page" value="SC3507"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

  <head>
    <title>formタグ</title>
    <STYLE type="text/css">
    <!--
    #Class_01{
      color: red;
    }
    -->
    </STYLE>
  </head>
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
    <h4>formタグ</h4>
    
<br>

    3. formタグ 【action, method, styleId, acceptCharset】
    <ul>
      <li>文字が赤色に表示されるかを確認。<br><br></li>
      <li>Submitボタンをクリックした後、画面のアドレスにTOKENの内容がある事を確認。<br><br></li>
      <li>formタグの設定<br>
        &nbsp;&nbsp;&lt;ts:form action=&quot;/form3Forward.do&quot; method=&quot;get&quot; styleId=&quot;Class_01&quot; acceptCharset=&quot;unknown&quot; &gt;<br>
      </li>
    </ul>    
    <div align="left">
      <ts:form action="/form3Forward.do" method="get" styleId="Class_01" acceptCharset="unknown" >
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入力：<html:text property="text"/> <html:submit/>
      </ts:form>
    </div>
    <br>
    <html:link page="/formForward.do">formタグメニュー</html:link><br>
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