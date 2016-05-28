<%--
  - $Id: sc3203.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="paramFunc設定のメッセージポップアップタグ選択"/>
<bean:define id="screenName" scope="page" value="paramFunc設定のメッセージポップアップタグ選択"/>
<bean:define id="screenID" scope="page" value="SC3203"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- popupの設定で設定した関数 -->
<script type="text/javascript">
    <!--
      function getParam() {
        return("menubar=yes,width=700,height=650");
      }
    -->
</script>
<!-- paramFuncをパラメータとしたpopupの設定 -->
<ts:messagesPopup popup="/popup/popuptag_paramFuncForward.do" title="popupTitle2" paramFunc="getParam()" windowId="popupId2" />
<!-- begin body-->
  <ts:body>
 
  <h4>paramFunc設定のメッセージポップアップタグ選択</h4>
    <br>
    <ts:form action="popup_paramFuncErrorForward.do">
    <table>
      <tr>
          <td align="left">

          2. messagesPopupタグ messagesPopupタグ 【popup, title, paramFunc, windowId】 
          <UL>
            <LI>ポップアップにエラーメッセージとメニューバーが表示される事を確認。<br></LI>
            <br>
            <LI>1,3のmessagesPopupタグサンプルと別のポップアップが出る事を確認。<br></LI>
            <br>
            <LI>エラーポップアップが出た後にhtmlのscriptにparamFunc, windowId属性が正しく記入される事を確認。<br></LI>
            <br>
            <LI>messagesPopupタグの設定<br>
                &lt;ts:messagesPopup popup=&quot;/popup/popuptag_paramFuncForward.do&quot; 
                 title=&quot;popupTitle2&quot; paramFunc =&quot;getParam()&quot; windowId=&quot;popupId2&quot;/&gt;
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