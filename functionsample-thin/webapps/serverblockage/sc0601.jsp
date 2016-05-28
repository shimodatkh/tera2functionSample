<%--
  - $Id: sc0601.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>
<%@ taglib uri="/terasoluna" prefix="t"%>

<bean:define id="titleUsecaseName" scope="page" value="サーバ閉塞チェック"/>
<bean:define id="titleScreenName" scope="page" value="サーバ閉塞・閉塞解除切り替え"/>
<bean:define id="screenName" scope="page" value="サーバ閉塞・閉塞解除切り替え"/>
<bean:define id="screenID" scope="page" value="SC0601"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
    <h4>サーバ閉塞チェック</h4>
    <br>
    <ts:form action="serverBlockageDispatch.do" onsubmit="return true;">
      <!-- サーバopenの場合 -->
      <logic:equal name="serverBlockageForm" property="serverBlockageState" value="open" >
        <input type="hidden" name="serverBlockageState" value="<bean:write name="serverBlockageForm" property="serverBlockageState"/>"/>
        <ts:submit property="forward_blockage"
                   value=" 設 定 " styleClass="com-normal-button" /> 
      </logic:equal>
      <!-- サーバ閉塞中 -->
      <t:ifPreBlockade>
        <input type="hidden" name="serverBlockageState" value="<bean:write name="serverBlockageForm" property="serverBlockageState"/>"/>
        <font color="red"><span id="closedMessage">サーバ閉塞中です。<br>「閉塞解除」ボタンを押してください。</span><br>
        </font>
        <br>
        <ts:submit property="forward_cancel"
                   value=" 閉塞解除 " styleClass="com-normal-button" /> 
      </t:ifPreBlockade>
    </ts:form>
    <br>
    <hr>
    <br>
    <html:button property="menuButton" value="メニュー画面に戻る"
    onclick="location.href='../menuForward.do'" />
    <br>
    <br>
    <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>