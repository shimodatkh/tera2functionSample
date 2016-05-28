<%--
  - $Id: sc2303.jsp 24732 2007-10-09 01:28:17Z btitouhrk $
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

<bean:define id="titleUsecaseName" scope="page" value="ビジネスロジック入出力機能"/>
<bean:define id="titleScreenName" scope="page" value="ビジネスロジック入出力画面「request」結果"/>
<bean:define id="screenName" scope="page" value="ビジネスロジック入出力画面「request」結果"/>
<bean:define id="screenID" scope="page" value="SC2303"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>blogic-io.xmlの設定</h4>
  <table>
    <tr>
      <td align="left">
<pre>&nbsp;&nbsp;&lt;action&nbsp;path=&quot;/requestBlogicio&quot;&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;blogic-params&nbsp;bean-name=&quot;jp.terasoluna.thin.functionsample.blogicio.bean.BlogicioParam&quot;&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;set-property&nbsp;property=&quot;requestData&quot;&nbsp;blogic-property=&quot;request&quot;&nbsp;source=&quot;request&quot;&nbsp;/&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/blogic-params&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;blogic-result&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;set-property&nbsp;property=&quot;requestData&quot;&nbsp;blogic-property=&quot;request&quot;&nbsp;dest=&quot;request&quot;&nbsp;/&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/blogic-result&gt;<br/>
&nbsp;&nbsp;&lt;/action&gt;</pre>
      </td>
    </tr>
  </table>
  <h4>ビジネスロジック入出力結果画面</h4>
    <span id='blogicioRequestResult'>結果：<bean:write name="requestData" scope="request"/></span>
  <br>
  
  <br>
  <span id='paramLog'>BLogicParam内容：<bean:write name="paramLog" scope="request"/></span>
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