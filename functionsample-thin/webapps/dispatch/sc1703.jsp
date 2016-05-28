<%--
  - $Id: sc1703.jsp 11563 2006-04-24 08:26:45Z bs-eunsu $
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
<bean:define id="titleScreenName" scope="page" value="ラジオボタンを利用するユーザ権限管理"/>
<bean:define id="screenName" scope="page" value="ラジオボタンを利用するユーザ権限管理"/>
<bean:define id="screenID" scope="page" value="SC1703"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>管理者権限登録</h4>
  <ts:form action="radioButtonDispatch.do" onsubmit="return true;">
    <table border="1" id="radioButtonDispatchTable">
      <tr>
        <td width="120" align="center"><b>ユーザコード</b></td>
        <td width="120" align="center"><b>ユーザ名</b></td>
        <td width="120" align="center"><b>管理者権限</b></td>
      </tr>
      <% int index = 0; %>
      <logic:iterate id="userList" name="userList" scope="request">
        <tr>
          <td>
            <bean:write name="userList" property="userCode"/>
            <input type="hidden" name="userCode[<%= index %>]" value='<bean:write name="userList" property="userCode"/>' />
          </td>
          <td>
            <bean:write name="userList" property="userName"/>
          </td>
          <td>
            <logic:match name="userList" property="userDivision" value="0">
              <input type="checkbox" name='userDivision[<%= index %>]' checked='on'/>
            </logic:match>
            <logic:notMatch name="userList" property="userDivision" value="0">
              <input type="checkbox" name='userDivision[<%= index %>]'/>
            </logic:notMatch>
          </td>
        </tr>
        <% index++; %>
      </logic:iterate>
    </table>
    <br/>
    <html:radio property="radio" value="forward_update"/>更新&nbsp;&nbsp;
    <html:radio property="radio" value="forward_search"/>再検索&nbsp;&nbsp;
    <html:radio property="radio" value="XXX"/>XXX<br/>
    <br/>
    <html:submit property="sumbit" value="実行"/><br/>
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