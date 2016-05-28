<%--
  - $Id: sc3506.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="formタグ使用2"/>
<bean:define id="screenName" scope="page" value="formタグ使用2"/>
<bean:define id="screenID" scope="page" value="SC3506"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>formタグ</h4>
    
  <br>
    2. formタグ 【action, method, style, focus, focusIndex】
    <ul>
      <li>ラジオの千葉にフォーカスされるかを確認。<br><br></li>
      <li>Submitボタンをクリックした後、画面のアドレスにTOKENとmogeの内容がある事を確認。<br><br></li>
      <li>背景色が設定される事を確認。<br><br></li>
      <li><font color="#ff0000">htmlソースコードの&lt;script&gt;部分に&#039;language=&quot;JavaScript&quot;&#039;が設定されている事を確認。</font><br><br></li>
      <li>formタグの設定<br>
        &nbsp;&nbsp;&lt;ts:form action=&quot;/form2Forward.do&quot; method=&quot;get&quot; style=&quot;background-color:#CFDBE2;&quot;<br>
        &nbsp;&nbsp;&nbsp;&nbsp;focus=&quot;hoge&quot; focusIndex=&quot;2&quot;&gt;<br>
      </li>
    </ul>  
    <div align="left">
      <ts:form action="/form2Forward.do" method="get" style="background-color:#CFDBE2;" focus="hoge" focusIndex="2">
            <html:text property="moge" maxlength="30" size="30" /><br>
            <html:radio property="hoge" value="tokyo"/>東京
            <html:radio property="hoge" value="saitama"/>埼玉
            <html:radio property="hoge" value="chiba"/>千葉
            <html:radio property="hoge" value="kanagawa"/>神奈川
      <html:submit />
      </ts:form>
    </div>
    <br>
    <br>
    <html:button property="forward_action" value=" 閉じる " onclick="window.close()"/><br>
    <hr> 
    <br>
    <br>
    <br>
    
<!-- end body-->

<%@ include file="../sc0004.jspf" %>

</html:html>