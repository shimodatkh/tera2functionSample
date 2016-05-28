<%--
  - $Id: sc2102.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="拡張メッセージリソース"/>
<bean:define id="titleScreenName" scope="page" value="優先メッセージ選択"/>
<bean:define id="screenName" scope="page" value="優先メッセージ選択"/>
<bean:define id="screenID" scope="page" value="SC2102"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>メッセージ優先順位</h4>
  <table cellspacing="10" cellpadding="10">
    <tr>
      <td align="left">  
        TERASOLUNAでは、同じメッセージキーが存在する場合、優先順位が高いメッセージが表示されます。<br>
        以下はその優先順位を表しています。
      </td>
    </tr>
    
    <tr>
      <td align="left">
        １．Struts標準のメッセージリソース定義ファイル：
        <span id='strutsMessageText'>
        <ts:messages id="msg1" name="msg" property="first" message="true">
          <bean:write name="msg1"/>
        </ts:messages><br>
        </span>
        ２．DBメッセージリソース定義：
        <span id='dbMessageText'>
        <ts:messages id="msg2" name="msg" property="second" message="true">
          <bean:write name="msg2"/>
        </ts:messages><br>
        </span>
        ３．業務共通メッセージリソース定義ファイル：
        <span id='businessMessageText'>
        <ts:messages id="msg3" name="msg" property="third" message="true">
          <bean:write name="msg3"/>
        </ts:messages><br>
        </span>
        ４．システムメッセージリソース定義ファイル：
        <span id='systemMessageText'>
        <ts:messages id="msg4" name="msg" property="fourth" message="true">
          <bean:write name="msg4"/>
        </ts:messages><br>
        </span>
      </td>
    </tr>
    <tr>
      <td align="left">
        下記のチェックボックスは、チェックされたメッセージリソースの中で優先順位が高いメッセージを表示します。
      </td>
    </tr>
  </table>
    <ts:form action="priorityOrder.do" onsubmit="return true;">
    <table border="1" frame="box" >
      <tr>
        <td align="left">
          優先順位1 MessageResources.propertiesのメッセージ
        </td>
        <td>
          <input type="checkbox" name="check1" value="true">
        </td>
      </tr>
      <tr>
        <td align="left">
          優先順位2 DBのメッセージ
        </td>
        <td>
          <input type="checkbox" name="check2" value="true">
        </td>
      </tr>
      <tr>
        <td align="left">
          優先順位3 application-messages.propertiesのメッセージ
        </td>
        <td>
          <input type="checkbox" name="check3" value="true">
        </td>
      </tr>
      <tr>
        <td align="left">
          優先順位4 System-messages.propertiesのメッセージ
        </td>
        <td>
          <input type="checkbox" name="check4" value="true">
        </td>
      </tr>
    </table>
    
    <br/>
    <table>
      <tr>
        <td>
          <ts:submit property="submit"
              value="送信" styleClass="com-normal-button" /> 
        </td>
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