<%--
  - $Id: sc3202.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="paramType設定のメッセージポップアップタグ選択"/>
<bean:define id="screenName" scope="page" value="paramType設定のメッセージポップアップタグ選択"/>
<bean:define id="screenID" scope="page" value="SC3202"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- paramTypeをパラメータとしたpopupの設定 -->
<ts:messagesPopup popup="/popup/popuptag_paramTypeForward.do" title="popupTitle1" paramType="test" windowId="popupId1"/>
<!-- begin body-->
  <ts:body>
 
  <h4>paramType設定のメッセージポップアップタグ選択</h4>
    <br>
    <ts:form action="popup_paramTypeErrorForward.do">
    <table>
      <tr>
          <td align="left">

          1. messagesPopupタグ 【popup, title, paramType】 
          <UL>
            <LI>ポップアップにエラーメッセージが表示される事を確認。<br></LI>
            <br>
            <LI>3のmessagesPopupタグサンプルと同じポップアップが出る事を確認。<br></LI>
            <br>
            <LI>2のmessagesPopupタグサンプルと別のポップアップが出る事を確認。<br></LI>
            <br>
            <LI>エラーポップアップにメニューバーがない事を確認。<br>
                (プロパティファイルの設定:&quot;messages.popup.param.test = menubar=no,width=700,height=700&quot;)
            </LI>
            <br>
            <LI>messagesPopupタグの設定<br>
                &lt;ts:messagesPopup popup=&quot;/popup/popuptag_paramTypeForward.do&quot; title=&quot;popupTitle1&quot; paramType=&quot;test&quot; windowId=&quot;popupId1&quot;/&gt;
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