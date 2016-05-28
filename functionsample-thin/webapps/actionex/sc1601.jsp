<%--
  - $Id: sc1601.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="アクション拡張"/>
<bean:define id="titleScreenName" scope="page" value="アクション拡張"/>
<bean:define id="screenName" scope="page" value="アクション拡張"/>
<bean:define id="screenID" scope="page" value="SC1601"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  <h4>アクション拡張</h4>
  
  この画面は送信ボタン押下時のアクションはトランザクショントークン制御されるため、<br>
  「送信」ボタンを2回押したり、結果画面からブラウザの「更新」ボタンを押した場合、エラー画面に遷移します。<br>
  <br>
  saveToken=falseの場合、トークンが保存されないため、<br>
  トランザクショントークン制御はスルーされます。<br>
  <br>
  <br>
  <ts:form action="actionexResultSTTrue.do">
    <html:submit value="送信（saveToken=true）" />
  </ts:form>
  <br><br>

  <ts:form action="actionexResultSTFalse.do">
    <html:submit value="送信（saveToken=false）" />
  </ts:form>
  <br>
  <hr> 
  <br>
  <html:button property="menuForward" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>

<%@ include file="../sc0004.jspf" %>
</html:html>