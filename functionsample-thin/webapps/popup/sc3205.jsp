<%--
  - $Id: sc3205.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="メッセージポップアップ"/>
<bean:define id="titleScreenName" scope="page" value="paramType設定のポップアップタグ表示"/>
<bean:define id="screenName" scope="page" value="paramType設定のポップアップタグ表示"/>
<bean:define id="screenID" scope="page" value="SC3205"/>


<%@ page import="org.apache.struts.Globals"%>
<%@ page import="org.apache.struts.action.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
    <title>TERASOLUNA messagesPopup</title>
</head>
  
<!-- メッセージの設定 -->
<%
  ActionMessages messages = new ActionMessages();
 
  messages.add(Globals.MESSAGE_KEY, new ActionMessage("messages.sample.001"));
  messages.add("sample", new ActionMessage("messages.sample.002"));
 
  session.setAttribute(Globals.MESSAGE_KEY, messages);
 
  request.getSession().setAttribute("locUS", java.util.Locale.US);
%>

<!-- begin body-->
  <ts:body>
  <h4>paramType設定のポップアップタグ表示</h4>
    <table>
      <tr>
        <td align="left">
          1. messagesタグ
          <UL>
            <LI>【id, locale, property, name, header,footer】属性<br>
              <OL>
                <LI>property属性に当たるメッセージが表示されることを確認。</LI><br>
                  &nbsp;プロパティファイルの設定<br>
                  &nbsp;&nbsp;messages.sample.001=taglibMessageResources_en.properties's messagesTagSample1<br>
                  &nbsp;&nbsp;messages.sample.002=taglibMessageResources_en.properties's messagesTagSample2<br>
                <LI>メッセージが英語で表示されることを確認</LI>
                <LI>ts:messagesタグにheader属性とfooter属性が設定されていることを確認</LI><br>
                  &nbsp;headerの内容：&lt;LI style=&quot;color:red&quot;&gt;<br>
                  &nbsp;footerの内容：&lt;/LI&gt;<br>
                <LI>messagesタグの設定</LI><br>
                  &nbsp;&lt;ts:messages locale=&quot;locUS&quot; id=&quot;msg&quot; header=&quot;message.header&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;footer=&quot;message.footer&quot; property=&quot;sample&quot; name=&quot;org.apache.struts.action.ACTION_MESSAGE&quot;&gt;<br>
                  &nbsp;&nbsp;&lt;bean:write name="msg"/&gt;<br>
                  &nbsp;&lt;/ts:messages&gt;
                <br>
                <span id='paramTypeMessage'>
                <ts:messages locale="locUS" id="msg" 
                             header="message.header" 
                             footer="message.footer"
                             property="sample" name="org.apache.struts.action.ACTION_MESSAGE">
                  <bean:write name="msg"/>
                </ts:messages>
                </span>
              </OL>
            </LI>
            <br>
          </UL>
        </td>
      </tr>
      <tr>
        <td align="left">
          2. errorsタグ<br>
          &nbsp;&nbsp;「入力値」欄に入力しない時、エラーメッセージが表示される事を確認。
          <UL>
            <LI>【locale, name, property】属性<br>
              <OL>
                <LI>メッセージが英語で表示されることを確認</LI><br>
                <LI>errorsタグの設定</LI><br>
                &nbsp;&nbsp;&lt;ts:errors locale=&quot;locUS&quot; name=&quot;org.apache.struts.action.ERROR&quot; property=&quot;data&quot; /&gt;<br>
              </OL>
            </LI>
          </UL>
          <span id='paramTypeErrorMessage'>
          <ts:errors locale="locUS" name="org.apache.struts.action.ERROR" property="data" />
          </span>
        </td>
      </tr>
      <br>
      <tr>
        <td align="center"><html:button property="close" value="閉じる" onclick="window.close()" />
          <br>
      </tr>
    </table>
  </ts:body>

<!-- end body-->
</html:html>