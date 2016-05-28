<%--
  - $Id: sc1901.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="セッションクリア"/>
<bean:define id="titleScreenName" scope="page" value="セッションクリア"/>
<bean:define id="screenName" scope="page" value="セッションクリア"/>
<bean:define id="screenID" scope="page" value="SC1901"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  <h4>セッションクリア</h4>
  セッションスコープに格納されている値を表示します。<br>
  この画面で表示されるセッション格納値のキーとバリューは以下の通りです。<br>
  
  sessionValue1：
  <span id='sessionClearValue1'>
  <logic:notEmpty name="sessionValue1" scope="session">
    <bean:write name="sessionValue1" scope="session" />
  </logic:notEmpty>
  <logic:empty name="sessionValue1" scope="session">
    削除されました。
  </logic:empty>
  </span>
  <br>
  <br>
  sessionValue2：
  <span id='sessionClearValue2'>
  <logic:notEmpty name="sessionValue2" scope="session">
    <bean:write name="sessionValue2" scope="session" />
  </logic:notEmpty>
  <logic:empty name="sessionValue2" scope="session">
    削除されました。
  </logic:empty>
  </span>
  <br>
  <br>
  sessionValue3：
  <span id='sessionClearValue3'>
  <logic:notEmpty name="sessionValue3" scope="session">
    <bean:write name="sessionValue3" scope="session" />
  </logic:notEmpty>
  <logic:empty name="sessionValue3" scope="session">
    削除されました。
  </logic:empty>
  </span>
  <br>
  <br>
  
  「セッションクリア」ボタンをクリックするとsessoinValue1とsessionValue2は削除されます。
  <br>
  <html:button property="sessionclearButton" value="セッションクリア" 
               onclick="location.href='clearsessionClear.do'" />
  <br>
  <br>
  ＊バックスペース等で画面遷移を行う場合、セッションに格納されている値は消されません。必ずセッションをクリアして、「メニュー画面に戻る」ボタンをクリックしてメニュー画面に戻ってください。<br>
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>