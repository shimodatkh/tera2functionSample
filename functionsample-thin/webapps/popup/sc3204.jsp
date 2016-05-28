<%--
  - $Id: sc3204.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="param設定のメッセージポップアップタグ選択"/>
<bean:define id="screenName" scope="page" value="param設定のメッセージポップアップタグ選択"/>
<bean:define id="screenID" scope="page" value="SC3204"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- paramをパラメータとしたpopupの設定 -->
<ts:messagesPopup popup="/popup/popuptag_paramForward.do" title="popupTitle1" param="menubar=no,width=800,height=800" windowId="popupId3" />
<!-- begin body-->
  <ts:body>
 
  <h4>param設定のメッセージポップアップタグ選択</h4>
    <br>
    <ts:form action="popup_paramErrorForward.do">
    <table>
      <tr>
        <td align="left">

          3. messagesPopupタグ 【popup, title, param】  
          <UL>
            <LI>ポップアップにエラーメッセージが表示される事を確認。<br></LI>
            <br>
            <LI>1のmessagesPopupタグサンプルと同じポップアップが出る事を確認。<br></LI>
            <br>
            <LI>2のmessagesPopupタグサンプルと別のポップアップが出る事を確認。<br></LI>
            <br>
            <LI>エラーポップアップが出た後にhtmlのscriptにparamの内容が表示される事を確認。<br></LI>
            <br>
            <LI>messagesPopupタグの設定<br>
                &lt;ts:messagesPopup popup=&quot;/popup/popuptag_paramForward.do&quot; title=&quot;popupTitle1&quot; param=&quot;menubar=no,width=800,height=800&quot; windowId=&quot;popupId3&quot; /&gt;
            </LI>
            <br>
          </UL>
          <br>
        </td>
      </tr>
       
      <tr>
        <table border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td align="left">
              入力値（必須）：<html:text name="popupForm" property="data" maxlength="30" size="30" />
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
    <html:button property="menuForward" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
    <br>
    <br>
    <br>
  </ts:body>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>