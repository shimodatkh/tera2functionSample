<%--
  - $Id: sc2004.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張"/>
<bean:define id="titleScreenName" scope="page" value="複数フィールド桁数チェック"/>
<bean:define id="screenName" scope="page" value="複数フィールド桁数チェック"/>
<bean:define id="screenID" scope="page" value="SC2004"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>入力チェック拡張</h4>

<span id="validationErrors"><ts:errors /></span>

<div align="center">
  <table border="0" cellspacing="0" cellpadding="2" width="100%">
    <tr>
      <td nowrap>複数フィールド桁数チェック処理</td>
    </tr>
  </table>
</div>

<ts:form action="validationArrays02Action.do">

  <div align="center">
    <br>
    <table border="1" cellspacing="0" cellpadding="1" width="70%" frame='box' >
      <tr height="25" align="center">
        <th nowrap>データNo</th>
        <th nowrap>最小桁数チェック<br>（最小桁数：５）</th>
        <th nowrap>最大桁数チェック<br>（最大桁数：５）</th>
        <th nowrap>文字列長一致チェック<br>（サイズ：５）</th>
      </tr>
      <logic:iterate id="dataNoList" name="_validationForm" property="dataNoList" indexId="i">
        <tr height="25">
          <td nowrap>
            <t:write name="_validationForm" property='<%= "dataNoList[" + i + "]" %>' />
          </td>
          <td nowrap>
            <html:text property='<%= "minLengthList[" + i + "]" %>' size="30" maxlength="10"/>
          </td>
          <td nowrap>
            <html:text property='<%= "maxLengthList[" + i + "]" %>' size="30" maxlength="10"/>
          </td>
          <td nowrap>
            <html:text property='<%= "lengthList[" + i + "]" %>' size="30" maxlength="10"/>
          </td>
        </tr>
      </logic:iterate>
    </table>
    <br>
    <br>
    <table border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td nowrap>
          <html:submit property="forward_action" value=" 実 行 " />
          <html:reset value=" リセット " />
          <html:button property="forward_select" value=" 入力チェック拡張選択画面に戻る " onclick='<%= "location.href=\'" + request.getContextPath() + "/validation/validationTaskForward.do\'" %>' />
        </td>
      </tr>
    </table>
  </div>
  <br>
</ts:form>

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