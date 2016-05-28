<%--
  - $Id: sc1202.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="フォームプロパティリセット"/>
<bean:define id="titleScreenName" scope="page" value="フォームプロパティリセット"/>
<bean:define id="screenName" scope="page" value="フォームプロパティリセット"/>
<bean:define id="screenID" scope="page" value="SC1202"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
    <h4>フォームプロパティリセット</h4>
    <br>
    <ts:form action="reset.do">
      <html:hidden property="startIndex" value="1" />
      <html:hidden property="endIndex" value="3" />
      <table border="1" frame="box">
        <tr>
          <td width="200" align="center"><b>一般タイプのリセット</b></td>
          <td width="200" align="center"><b>Mapタイプのリセット</b></td>
          <td width="200" align="center"><b>ネストされたビーンリストのリセット</b><br>
            (select設定ない)
          </td>
          <td width="200" align="center"><b>ネストされたビーンリストのリセット</b><br>
            (select設定あり)
          </td>
        </tr>
        <tr>
          <td valign="top">
            <br><br><br>
            <table cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><html:checkbox property="testItem1" name="_resetForm" value="on" /></td>
                <td></td>
              </tr>
              <tr>
                <td align="center"><html:checkbox property="testItem2" name="_resetForm" value="on" /></td>
                <td>←リセット設定</td>
              </tr>
              <tr>
                <td align="center"><html:checkbox property="testItem3" name="_resetForm" value="on" /></td>
                <td></td>
              </tr>
              <tr> 
                <td align="center"><html:checkbox property="testItem4" name="_resetForm" value="on" /></td>
                <td>←リセット設定</td>
              </tr>
              <tr>
                <td align="center"><html:checkbox property="testItem5" name="_resetForm" value="on" /></td>
                <td></td>
              </tr>
            </table>
          </td>
          <td valign="top">
            <br><br><br>
            <table cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><html:checkbox property="mapItems(mapItem1)" name="_resetForm" value="on" /></td>
                <td></td>
              </tr>
              <tr>
                <td align="center"><html:checkbox property="mapItems(mapItem2)" name="_resetForm" value="on" /></td>
                <td></td>
              </tr>
              <tr>
                <td align="center"><html:checkbox property="mapItems(mapItem3)" name="_resetForm" value="on" /></td>
                <td>←リセット設定</td>
              </tr>
              <tr> 
                <td align="center"><html:checkbox property="mapItems(mapItem4)" name="_resetForm" value="on" /></td>
                <td></td>
              </tr>
              <tr>
                <td align="center"><html:checkbox property="mapItems(mapItem5)" name="_resetForm" value="on" /></td>
                <td>←リセット設定</td>
              </tr>
            </table>
          </td>
          <td align="center"  valign="top">
            <br><br><br>
            <logic:iterate id="rows1" name="_resetForm" property="rows1" indexId="i">
              <html:checkbox property='<%= "rows1[" + i + "].value" %>' name="_resetForm" value="on" /><br>
            </logic:iterate>
          </td>
          <td align="center"  valign="top">
            <br><br><br>
            <logic:iterate id="rows2" name="_resetForm" property="rows2" indexId="i">
              <html:checkbox property='<%= "rows2[" + i + "].value" %>' name="_resetForm" value="on" /><br>
            </logic:iterate>
            <br><br>
            リセット設定<br>
            startIndex = 1<br>
            endIndex = 3<br>
          </td>
        </tr>
      </table>
      <br>
      <table >
        <tr>
          <td align="center">
            <ts:submit value="フォームプロパティリセット" />
          </td>
        </tr>
     </table>
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