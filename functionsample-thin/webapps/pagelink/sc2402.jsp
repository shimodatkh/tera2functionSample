<%--
  - $Id: sc2402.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="一覧表示"/>
<bean:define id="titleScreenName" scope="page" value="一覧表示（リンク使用）"/>
<bean:define id="screenName" scope="page" value="一覧表示（リンク使用）"/>
<bean:define id="screenID" scope="page" value="SC2402"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>一覧表示</h4>
下記リンクをクリックすると、一覧画面(リンク使用)が表示されます。<br>

pageLinksタグ 【action, name, rowProperty, totalProperty, indexProperty, scope】<br>
          <ul>
            <li>複数の一覧が表示される事を確認。</li>
            <li>pageLinksタグの設定<br>
              &nbsp;&nbsp;&lt;t:pageLinks action=&quot;listLink1&quot; name=&quot;_listLinkForm&quot; rowProperty=&quot;row1&quot; totalProperty=&quot;totalCount1&quot; indexProperty=&quot;startIndex1&quot; scope=&quot;session&quot;/&gt;&nbsp;<br><br>
            </li>
          </ul>
          
<h5>
<span id="pageLinkID1">
<ts:pageLinks action="listLink1" name="_listLinkForm" rowProperty="row1"
              totalProperty="totalCount1" indexProperty="startIndex1" scope="session">
  
</ts:pageLinks></span><br><br>

<span id="nowPageID1"><bean:write name="currentPageIndex"/></span>/<span id="totalPageID1"><bean:write name="totalPageCount"/></span>(<span id="totalCountID1"><bean:write name="_listLinkForm" property="totalCount1"/></span>)


<p/>
<table id="pageLinkTable1" border="1" frame="box">
    <tr>
        <td width="30"  align="center"><b>ID</b></td>
        <td width="100" align="center"><b>NAME</b></td>
        <td width="30"  align="center"><b>AGE</b></td>
        <td width="80"  align="center"><b>BIRTH</b></td>
        
    </tr>
    <logic:iterate id="userBean1" name="userBeans1" scope="request">
    <tr>
        <td align="center">
          <bean:write name="userBean1" property="id"/>
        </td>
        <td>
          <bean:write name="userBean1" property="name"/>
        </td>
        <td align="center">
          <bean:write name="userBean1" property="age"/>
        </td>
        <td align="right">
          <bean:write name="userBean1" property="birth"/>
        </td>
        
    </tr>
    </logic:iterate>
</table>
<p/>
<span id="pageLinkID2">
<ts:pageLinks action="listLink1" name="_listLinkForm" rowProperty="row1"
              totalProperty="totalCount1" indexProperty="startIndex1" scope="session"/></span>
<br>
<br>
<br>
<span id="pageLinkID3">
<ts:pageLinks action="listLink2" name="_listLinkForm" rowProperty="row2"
              totalProperty="totalCount2" indexProperty="startIndex2" scope="session">

</ts:pageLinks></span><br><br>

<span id="nowPageID2"><bean:write name="currentPageIndex"/></span>/<span id="totalPageID2"><bean:write name="totalPageCount"/></span>(<span id="totalCountID2"><bean:write name="_listLinkForm" property="totalCount2"/></span>)
<p/>
<table id="pageLinkTable2" border="1" frame="box">
    <tr>
        <td width="30"  align="center"><b>ID</b></td>
        <td width="100" align="center"><b>NAME</b></td>
        <td align="center"><b>ADDRESS</b></td>
    </tr>
    <logic:iterate id="userBean2" name="userBeans2" scope="request">
    <tr>
        <td align="center">
          <bean:write name="userBean2" property="customerCode"/>
        </td>
        <td>
          <bean:write name="userBean2" property="customerName"/>
        </td>
        <td align="center">
          <bean:write name="userBean2" property="customerAddress"/>
        </td>
    </tr>
    </logic:iterate>
</table>
<p/>
<span id="pageLinkID4">
<ts:pageLinks action="listLink2" name="_listLinkForm" rowProperty="row2"
              totalProperty="totalCount2" indexProperty="startIndex2" scope="session"/></span>
              
</h5>

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