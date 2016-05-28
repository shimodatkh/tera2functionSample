<%--
  - $Id: sc3505.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="formタグ使用1"/>
<bean:define id="screenName" scope="page" value="formタグ使用1"/>
<bean:define id="screenID" scope="page" value="SC3505"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>
  <head>
    <STYLE type="text/css">
    <!--
    .Class_01{
      color: red;
    }
    -->
    </STYLE>

    <script type="text/javascript">
    <!--
        function fun1() {
            return (confirm('リセットしていいですか？'));
        }
        function fun2() {
            return (confirm('サブミットしていいですか？'));
        }

    // -->
    </script>

  </head>

<!-- begin body-->
  <h4>formタグ</h4>

  <br>

    1. formタグ 【action, method, enctype, onreset, onsubmit, styleClass, target】
    <ul>
      <li>文字が赤色に表示される事を確認。<br><br></li>
      <li>Submitボタンをクリックした後、&quot;サブミットしていいですか?&quot;の確認メッセージ画面が出る事を確認。<br><br></li>
      <li>&quot;サブミットしていいですか?&quot;の確認メッセージ画面を確認した後、画面のアドレスにTOKENの内容が表示されない事を確認。<br><br></li>
      <li>Resetボタンをクリックした後、&quot;リセットしていいですか?&quot;の確認メッセージ画面が出る事を確認。<br><br></li>
      <li>ボタンをクリックした後の結果画面が新しいウインドウで出る事を確認。<br><br></li>
      <li>formタグの設定<br>
        &nbsp;&nbsp;&lt;ts:form action=&quot;/form1Forward.do&quot; method=&quot;post&quot; enctype=&quot;application/x-www-form-urlencoded&quot;<br>
        &nbsp;&nbsp;&nbsp;&nbsp;onreset=&quot;return fun1();&quot; onsubmit=&quot;return fun2();&quot; styleClass=&quot;Class_01&quot; target=&quot;form_submit&quot;&gt;<br>
      </li>
    </ul>
    <div align="left">
      <ts:form action="/form1Forward.do" method="post" enctype="application/x-www-form-urlencoded"
        onreset="return fun1();" onsubmit="return fun2();" styleClass="Class_01" target="form_submit" scriptLanguage="false">
            入力１<html:text name="nocacheForm" property="hoge" maxlength="30" size="30" /><br>
            入力２<html:text name="nocacheForm" property="moge" maxlength="30" size="30" />
            <html:reset/>
            <html:submit/>
      </ts:form>
    </div>
    <br>
    <html:link page="/formForward.do">formタグメニュー</html:link>
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

