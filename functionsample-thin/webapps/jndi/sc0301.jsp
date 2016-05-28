<%--
  - $Id: sc0301.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="JNDIアクセス機能"/>
<bean:define id="titleScreenName" scope="page" value="JNDIリソース一覧"/>
<bean:define id="screenName" scope="page" value="JNDIリソース一覧"/>
<bean:define id="screenID" scope="page" value="SC0301"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  
  <head></head>
  <body>
    <script language="JavaScript">
    <!--
    function setSelectedValue( argFlag ) {
      document.getElementById('selectedValue').value = argFlag;
      return true;
    }
    //-->
  </script>
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>JNDIリソース一覧</h4>
    <ts:form action="listJndiDispatch.do" onsubmit="return true;">
      <input type ="hidden" name="selectedValue" id="selectedValue" />
      <table border="1" frame="box" id="jndiListTable">
        <tr>
          <td width="160" align="center"><b>JNDIリソース名</b></td>
          <td width="200" align="center"><b>リソース内容</b></td>
          <td width="100" align="center"><b>変更 / 削除</b></td>
        </tr>
        <tr>
          <td align="center">
            <bean:write name="listJndiData" property="valueName1"/>
          </td>
          <td align="center">
            <logic:empty name="listJndiData" property="valueData1">
              <font color="red"><strong>
                アンバインドされています。
              </strong></font>
            </logic:empty>
            <logic:notEmpty name="listJndiData" property="valueData1">
              <bean:write name="listJndiData" property="valueData1"/>
            </logic:notEmpty>
          </td>
          <td align="center">
            <input type="submit"
                   name="forward_rebind" value="変更"
                   onclick="return setSelectedValue('<t:trim name="listJndiData" 
                   property="valueName1"/>');">
            <logic:notEmpty name="listJndiData" property="valueData1">
            /
              <input type="submit"
                     name="forward_unbind" value="削除"
                     onclick="return setSelectedValue('<t:trim name="listJndiData" 
                     property="valueName1"/>');">
            </logic:notEmpty>
          </td>
        <tr>
          <td align="center">
            <bean:write name="listJndiData" property="valueName2"/>
          </td>
          <td align="center">
            <logic:empty name="listJndiData" property="valueData2">
            <font color="red"><strong>
                アンバインドされています。
               </strong></font>
            </logic:empty>
            <logic:notEmpty name="listJndiData" property="valueData2">
              <bean:write name="listJndiData" property="valueData2"/>
            </logic:notEmpty>
          </td>
          <td align="center">
            <input type="submit"
                   name="forward_rebind" value="変更"
                   onclick="return setSelectedValue('<t:trim name="listJndiData" 
                   property="valueName2"/>');">
            <logic:notEmpty name="listJndiData" property="valueData2">
            /
              <input type="submit"
                     name="forward_unbind" value="削除"
                     onclick="return setSelectedValue('<t:trim name="listJndiData" 
                     property="valueName2"/>');">
            </logic:notEmpty>
          </td>
        </tr>
        <tr>
          <td align="center">
            <bean:write name="listJndiData" property="valueName3"/>
          </td>
          <td align="center">
            <logic:empty name="listJndiData" property="valueData3">
            <font color="red"><strong>
                アンバインドされています。
               </strong></font>
            </logic:empty>
            <logic:notEmpty name="listJndiData" property="valueData3">
              <bean:write name="listJndiData" property="valueData3"/>
            </logic:notEmpty>
          </td>
          <td align="center">
            <input type="submit"
                   name="forward_rebind" value="変更"
                   onclick="return setSelectedValue('<t:trim name="listJndiData" 
                   property="valueName3"/>');">
            <logic:notEmpty name="listJndiData" property="valueData3">
            /
              <input type="submit"
                     name="forward_unbind" value="削除"
                     onclick="return setSelectedValue('<t:trim name="listJndiData" 
                     property="valueName3"/>');">
            </logic:notEmpty>
          </td>
        </tr>
        <%-- JndiExceptionを起こすため --%>
        <tr>
          <td align="center">
            dummy
          </td>
          <td align="center">
            <logic:empty name="listJndiData" property="valueData4">
            <font color="red"><strong>
                アンバインドされています。
               </strong></font>
            </logic:empty>
            <logic:notEmpty name="listJndiData" property="valueData4">
              <bean:write name="listJndiData" property="valueData4"/>
            </logic:notEmpty>
          </td>
          <td align="center">
            <input type="submit"
                   name="forward_rebind" value="変更"
                   onclick="return setSelectedValue('dummy');">
            /
            <input type="submit"
                   name="forward_unbind" value="削除"
                   onclick="return setSelectedValue('dummy');">
          </td>
        </tr>
      </table>
      <br />
  </ts:form>
  
  <br>
  <hr>
  <br>
  <html:button property="menuForward" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<%@ include file="../sc0004.jspf" %>
</html:html>