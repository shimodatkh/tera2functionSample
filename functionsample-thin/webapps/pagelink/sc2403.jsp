<%--
  - $Id: sc2403.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�ꗗ�\��"/>
<bean:define id="titleScreenName" scope="page" value="�ꗗ�\���i�T�u�~�b�g�g�p�j"/>
<bean:define id="screenName" scope="page" value="�ꗗ�\���i�T�u�~�b�g�g�p�j"/>
<bean:define id="screenID" scope="page" value="SC2403"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>�ꗗ�\��</h4>
���L�����N���N���b�N����ƁA�ꗗ���(�T�u�~�b�g�g�p)���\������܂��B<br>

pageLinks�^�O �yid, name, rowProperty, totalProperty, indexProperty, scope, submit, forward, event, resetIndex, currentPageIndex, totalPageCount�z<br>
          <ul>
            <li>&lt;ts:form&gt;�v�f���L�q���邱�ƁB<br><br></li>
            <li>DispatchAction���g�p����ꍇ�B<br><br></li>
            <li>pageLinks�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:pageLinks id=&quot;reservePageLinks&quot; name=&quot;listSubmitForm&quot; rowProperty=&quot;row&quot; totalProperty=&quot;totalCount&quot; indexProperty=&quot;startIndex&quot; scope=&quot;request&quot;<br>
              &nbsp;&nbsp; submit=&quot;true&quot; forward=&quot;true&quot; event=&quot;next&quot; resetIndex=&quot;true&quot; currentPageIndex=&quot;nowPage&quot; totalPageCount=&quot;totalPage&quot;/&gt;&nbsp;<br><br>
            </li>
          </ul>
          
<ts:form action="/listDispatch.do">
        
<h5>
<ts:pageLinks id="reservePageLinks" 
              name="listSubmitForm" scope="request" 
              rowProperty="row" totalProperty="totalCount" indexProperty="startIndex" 
              submit="true" forward="true" event="next" resetIndex="true" 
              currentPageIndex="nowPage" totalPageCount="totalPage" />

<span id="nowPageID"><bean:write name="nowPage"/></span>/<span id="totalPageID"><bean:write name="totalPage"/></span>(<span id="totalCountID"><bean:write name="listSubmitForm" property="totalCount"/></span>)
<br>
<span id="pageLinkID"><bean:write name="reservePageLinks" filter="false" /></span>
<br>
<p/>
<table id="pageLinkTable" border="1" frame="box">
    <tr>
        <td width="30"  align="center"><b>ID</b></td>
        <td width="100" align="center"><b>NAME</b></td>
        <td width="30"  align="center"><b>AGE</b></td>
        <td width="80"  align="center"><b>BIRTH</b></td>
        
    </tr>
    <logic:iterate id="userBean3" name="userBeans3" scope="request">
    <tr>
        <td align="center">
          <bean:write name="userBean3" property="id"/>
        </td>
        <td>
          <bean:write name="userBean3" property="name"/>
        </td>
        <td align="center">
          <bean:write name="userBean3" property="age"/>
        </td>
        <td align="right">
          <bean:write name="userBean3" property="birth"/>
        </td>
        
    </tr>
    </logic:iterate>
</table>
<p/>

</h5>

</ts:form>
    
<br>
<hr>
<br>
<html:button property="menuForward" value="���j���[��ʂɖ߂�"
onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf" %>

</html:html>