<%--
  - $Id: sc2005.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="複数フィールドフォーマットチェック"/>
<bean:define id="screenName" scope="page" value="複数フィールドフォーマットチェック"/>
<bean:define id="screenID" scope="page" value="SC2005"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>入力チェック拡張</h4>
    
<span id="validationErrors"><ts:errors /></span>


<div align="center">
  <table border="0" cellspacing="0" cellpadding="2" width="100%">
    <tr>
      <td nowrap>複数フィールドフォーマットチェック処理</td>
    </tr>
  </table>
</div>

<ts:form action="validationArrays03Action.do">

  <div align="center">
    <br>
   <table border="0" cellspacing="0" cellpadding="1" width="70%">
      <tr align="left">
          <td>
                <table border="1" cellspacing="0" cellpadding="1" width="100%" frame='box' >
                  <tr height="25" align="center">
                    <th nowrap>データNo</th>
                    <th nowrap>数値チェック<BR>（整数部3桁、小数部2桁以内）</th>
                    <th nowrap>日付型チェック<BR>（フォーマット形式：yyyy/MM/dd）</th>
                    <th nowrap>クレジットカードフォーマットチェック</th>
                  </tr>
                  <logic:iterate id="dataNoList" name="_validationForm" property="dataNoList" indexId="i">
                    <tr height="25">
                      <td nowrap>
                        <t:write name="_validationForm" property='<%= "dataNoList[" + i + "]" %>' />
                      </td>
                      <td nowrap>
                        <html:text property='<%= "numberList[" + i + "]" %>' size="30" maxlength="10"/>
                      </td>
                      <td nowrap>
                        <html:text property='<%= "dateList[" + i + "]" %>' size="30" maxlength="19"/>
                      </td>
                      <td nowrap>
                        <html:text property='<%= "creditCardList[" + i + "]" %>' size="30" maxlength="16"/>
                      </td>
                    </tr>
                  </logic:iterate>
                </table>
          </td>
      </tr>

      <tr align="left">
          <td>
                <br>
          </td>
      </tr>

      <tr align="left">
          <td>
                <table border="1" cellspacing="0" cellpadding="1" width="100%" frame='box' >
                  <tr height="25" align="center">
                    <th nowrap>データNo</th>
                    <th nowrap> eメールアドレス<br>フォーマットチェック</th>
                    <th nowrap>URLフォーマットチェック<br>（入力形式：http://ウエッブサイトアドレス/ページ名）</th>
                    <th nowrap>正規表現<BR>（フォーマット形式：^[a-z].*[^a-z]$）</th>
                  </tr>
                  <logic:iterate id="dataNoList" name="_validationForm" property="dataNoList" indexId="i">
                    <tr height="25">
                      <td nowrap>
                        <t:write name="_validationForm" property='<%= "dataNoList[" + i + "]" %>' />
                      </td>
                      <td nowrap>
                        <html:text property='<%= "mailList[" + i + "]" %>' size="30" maxlength="50"/>
                      </td>
                      <td nowrap>
                        <html:text property='<%= "urlList[" + i + "]" %>' size="30" maxlength="50"/>
                      </td>
                      <td nowrap>
                        <html:text property='<%= "maskList[" + i + "]" %>' size="30" maxlength="10"/>
                      </td>
                    </tr>
                  </logic:iterate>
                </table>
          </td>
      </tr>

      <tr align="left">
          <td>
                <br>
          </td>
      </tr>
    <br>
    <br>
      <tr align="center">
          <td>
                <table border="0" cellspacing="1" cellpadding="1">
                  <tr>
                    <td nowrap>
                      <html:submit property="forward_action" value=" 実 行 " />
                      <html:reset value=" リセット " />
                      <html:button property="forward_select" value=" 入力チェック拡張選択画面に戻る " onclick='<%= "location.href=\'" + request.getContextPath() + "/validation/validationTaskForward.do\'" %>' />
                    </td>
                  </tr>
                </table>
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