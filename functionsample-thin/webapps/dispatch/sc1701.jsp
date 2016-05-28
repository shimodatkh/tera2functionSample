<%--
  - $Id: sc1701.jsp 11563 2006-04-24 08:26:45Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="標準ディスパッチャ機能"/>
<bean:define id="titleScreenName" scope="page" value="標準ディスパッチャ処理メニュー"/>
<bean:define id="screenName" scope="page" value="標準ディスパッチャ処理メニュー"/>
<bean:define id="screenID" scope="page" value="SC1701"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>標準ディスパッチャ</h4>
  下のメニューを選択して下さい<br>
  <br>
  
  <html:link href="submitButtonUserList.do">サブミットボタンを利用するディスパッチャ処理</html:link><br>
  <html:link href="radioButtonUserList.do">ラジオボタンを利用するディスパッチャ処理</html:link><br>
    
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