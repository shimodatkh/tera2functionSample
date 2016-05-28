<%--
  - $Id: sc1502.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="セッションディレクトリ"/>
<bean:define id="titleScreenName" scope="page" value="セッションディレクトリ確認"/>
<bean:define id="screenName" scope="page" value="セッションディレクトリ確認"/>
<bean:define id="screenID" scope="page" value="SC1502"/>

<%@ page import="jp.terasoluna.fw.util.FileUtil"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<%
  String path = FileUtil.getSessionDirectory(session.getId()).getPath();
  java.io.File file = new java.io.File(path);
  if (!file.exists()) { path=null; }
  request.setAttribute("path", path);
%>
<bean:define id="sessiondir" name="path" scope="request" />

<!-- begin body-->
  <h4>セッションディレクトリ確認</h4>
	このセッションに紐付いた下記ディレクトリの作成が完了。<br>
	機能網羅アプリケーションをログオフすると消去される。<br>
	
	<br>
    <table id='sessionDirTable'>
      <tr>
        <logic:notEmpty name="sessiondir">
          <td>
            ディレクトリ名：
          </td>
          <td>
            <bean:write name="sessiondir" />
          </td>
        </logic:notEmpty>
        <logic:empty name="sessiondir">
          <td colspan="2">
            ディレクトリがありません。
          </td>
        </logic:empty>
      </tr>
    </table>
    <br>

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