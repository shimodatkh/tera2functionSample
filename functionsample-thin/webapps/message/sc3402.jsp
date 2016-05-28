<%--
  - $Id: sc3402.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="メッセージ表示"/>
<bean:define id="titleScreenName" scope="page" value="メッセージ表示"/>
<bean:define id="screenName" scope="page" value="メッセージ表示"/>
<bean:define id="screenID" scope="page" value="SC3402"/>


<%@ page import="org.apache.struts.Globals"%>
<%@ page import="org.apache.struts.action.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<%
 ActionMessages messages = new ActionMessages();
 
 messages.add(Globals.MESSAGE_KEY, new ActionMessage("messages.sample.001"));
 messages.add("sample", new ActionMessage("messages.sample.002"));
 
 session.setAttribute(Globals.MESSAGE_KEY, messages);
 
 request.getSession().setAttribute("locUS", java.util.Locale.US);
%>

<!-- begin body-->
  <h4>message・errorタグ表示</h4>
  <br>
  <ts:form action="messagetagErrorForward.do">
    <table>
      <tr>
        <td align="left">
          １. messagesタグ
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
                <span id='messageTagProperty'>
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
            <LI>【id, message, header,footer】属性<br>
              <OL>
                <LI>全メッセージが表示されることを確認。</LI><br>
                  &nbsp;プロパティファイルの設定<br>
                  &nbsp;&nbsp;messages.sample.001=taglibMessageResources_en.properties's messagesTagSample1<br>
                  &nbsp;&nbsp;messages.sample.002=taglibMessageResources_en.properties's messagesTagSample2<br>
                <LI>メッセージが日本語で表示されることを確認</LI>
                <LI>ts:messagesタグにheader属性とfooter属性が設定されていることを確認</LI><br>
                  &nbsp;headerの内容：&lt;LI style=&quot;color:red&quot;&gt;<br>
                  &nbsp;footerの内容：&lt;/LI&gt;<br>
                <LI>messagesタグの設定</LI><br>
                  &nbsp;&lt;ts:messages id=&quot;msg&quot; header=&quot;message.header&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;footer=&quot;message.footer&quot; message=&quot;true&quot;&gt;<br>
                  &nbsp;&nbsp;&nbsp;&lt;bean:write name=&quot;msg&quot;/&gt;<br>
                  &nbsp;&lt;/ts:messages&gt;<br>
                  <br>
                <span id='messageTagMessage'>
                <ts:messages id="msg" header="message.header" 
                             footer="message.footer" message="true">
                  <span><bean:write name="msg"/></span>
                </ts:messages>
                </span>
              </OL>
            </LI>
            <br>
            <LI>【id, bundle, locale, name, property, header,footer】属性<br>
              <OL>
                <LI>property属性に当たるメッセージが表示されることを確認。</LI><br>
                  &nbsp;プロパティファイルの設定<br>
                  &nbsp;&nbsp;messages.sample.001=taglibMessageBundleResources_en.properties's messagesTagSample1<br>
                  &nbsp;&nbsp;messages.sample.002=taglibMessageBundleResources_en.properties's messagesTagSample2<br>
                <LI>メッセージが英語で表示されることを確認</LI>
                <LI>bundle属性のmessage resourceからメッセージが取得されることを確認。</LI>
                <LI>ts:messagesタグにheader属性とfooter属性が設定されていることを確認</LI><br>
                  &nbsp;headerの内容：&lt;LI style=&quot;color:red&quot;&gt;<br>
                  &nbsp;footerの内容：&lt;/LI&gt;<br>
                <LI>messagesタグの設定</LI><br>
                  &nbsp;&lt;ts:messages id=&quot;msg&quot; bundle=&quot;taglib&quot; locale=&quot;locUS&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name=&quot;org.apache.struts.action.ACTION_MESSAGE&quot;<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;property=&quot;sample&quot; header=&quot;message.header&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;footer=&quot;message.footer&quot;&gt;<br>
                &nbsp;&nbsp;&nbsp;&lt;bean:write name=&quot;msg&quot;/&gt;<br>
                &nbsp;&lt;/ts:messages&gt;<br>
                <br>
                <span id='messageTagBundle'>
                <ts:messages id="msg" bundle="taglib" locale="locUS" 
                             name="org.apache.struts.action.ACTION_MESSAGE"
                             property="sample" header="message.header" 
                             footer="message.footer">
                  <bean:write name="msg"/>
                </ts:messages>
                </span>
              </OL>
            </LI>
          </UL>
          <br>
          </td>
      </tr>
      <tr>
        <td align="left">
          ２. errorsタグ<br>
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
            <span id='errorMessageProperty'>
            <ts:errors locale="locUS" name="org.apache.struts.action.ERROR" property="data" />
            </span>
          <br>
          <UL>
            <LI>属性なし<br>
              <OL>
                  <LI>メッセージが日本語で表示されることを確認</LI><br>
                  <LI>errorsタグの設定</LI><br>
                  &nbsp;&nbsp;&lt;ts:errors/&gt;<br>
              </OL>
            </LI>
          </UL>
            <span id='errorMessageOnly'>
            <ts:errors />
            </span>
          <br>
          <UL>
            <LI>【bundle, name, property】属性<br>
              <OL>
                  <LI>メッセージが日本語で表示されることを確認</LI><br>
                  <LI>errorsタグの設定</LI><br>
                  &nbsp;&nbsp;&lt;ts:errors bundle=&quot;taglib&quot; name=&quot;org.apache.struts.action.ERROR&quot; property=&quot;data&quot;  /&gt;<br>
              </OL>
            </LI>
          </UL>
          <span id='errorMessageBundle'>
          <ts:errors bundle="taglib" name="org.apache.struts.action.ERROR" property="data"  />
          </span>
        </td>
      </tr>
      <tr>
        <table border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td>
              入力値（必須）：<html:text name="messageForm" property="data" maxlength="30" size="30" />
            </td>
          </tr>
          <tr>
            <td align="center"><html:submit value="サブミット"/></td>
          </tr>
         </table>
       </tr>
    </table>
  </ts:form>
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