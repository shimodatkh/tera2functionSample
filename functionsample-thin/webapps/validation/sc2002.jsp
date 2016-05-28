<%--
  - $Id: sc2002.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張"/>
<bean:define id="titleScreenName" scope="page" value="単一フィールド入力チェック"/>
<bean:define id="screenName" scope="page" value="単一フィールド入力チェック"/>
<bean:define id="screenID" scope="page" value="SC2002"/>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>入力チェック拡張</h4>
    

<span id="validationErrors"><ts:errors /></span>
<div align="center">
  <table border="0" cellspacing="0" cellpadding="2" width="100%">
    <tr>
      <td nowrap>単一フィールド入力チェック処理</td>
    </tr>
  </table>
</div>

<html:form action="validationDispatch.do">
  <div align="center">
    <br>
    <table border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td class='<ts:changeStyleClass name="alphaNumericMax" default="ItemLabel" error="ErrorItem"/>' nowrap>半角英数字チェック（最大長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="alphaNumericMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="alphaNumericMin" default="ItemLabel" error="ErrorItem"/>' nowrap>半角英数字チェック（最小長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="alphaNumericMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="capAlphaNumericMax" default="ItemLabel" error="ErrorItem"/>' nowrap>半角英（大文字）数字チェック（最大長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="capAlphaNumericMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="capAlphaNumericMin" default="ItemLabel" error="ErrorItem"/>' nowrap>半角英（大文字）数字チェック（最小長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="capAlphaNumericMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="date" default="ItemLabel" error="ErrorItem"/>' nowrap>日付チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="date" size="23" maxlength="19"/>
        </td>
        <td nowrap>
          （フォーマット形式：yyyy/MM/dd）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="hankakuKana" default="ItemLabel" error="ErrorItem"/>' nowrap>半角カナチェック：</td>
        <td colspan="3" nowrap>
          <html:text property="hankakuKana" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="hankaku" default="ItemLabel" error="ErrorItem"/>' nowrap>半角文字チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="hankaku" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="numericString" default="ItemLabel" error="ErrorItem"/>' nowrap>数字文字列チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="numericString" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （数字のみ入力）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="number" default="ItemLabel" error="ErrorItem"/>' nowrap>数値チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="number" size="23" maxlength="11"/>
        </td>
        <td nowrap>
          （整数部3桁、小数部3桁）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="prohibit" default="ItemLabel" error="ErrorItem"/>' nowrap>入力禁止文字チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="prohibit" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （対象禁止文字：!"#$%'()）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="regExp" default="ItemLabel" error="ErrorItem"/>' nowrap>正規表現チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="regExp" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （フォーマット形式：^[a-z].*[^a-z]$）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="required" default="ItemLabel" error="ErrorItem"/>' nowrap>必須入力チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="required" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="stringMax" default="ItemLabel" error="ErrorItem"/>' nowrap>入力文字列長チェック（最大長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="stringMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="stringMin" default="ItemLabel" error="ErrorItem"/>' nowrap>入力文字列長チェック（最小長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="stringMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="zenkakuKana" default="ItemLabel" error="ErrorItem"/>' nowrap>全角カナチェック：</td>
        <td colspan="3" nowrap>
          <html:text property="zenkakuKana" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="zenkaku" default="ItemLabel" error="ErrorItem"/>' nowrap>全角文字チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="zenkaku" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="length" default="ItemLabel" error="ErrorItem"/>' nowrap>同一文字列長チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="length" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="dateRange" default="ItemLabel" error="ErrorItem"/>' nowrap>日付範囲チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="dateRange" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （2000/1/1～2000/12/31）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="byteRange" default="ItemLabel" error="ErrorItem"/>' nowrap>バイト範囲チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="byteRange" size="23" maxlength="30"/>
        </td>
        <td nowrap>
          （バイトサイズ：１０～２０）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="byteLength" default="ItemLabel" error="ErrorItem"/>' nowrap>バイト数チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="byteLength" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （バイトサイズ：１０）
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="multiField" default="ItemLabel" error="ErrorItem"/>' nowrap>複数フィールド相関チェック：</td>
        <td colspan="3" nowrap>
          A<html:text property="multiField" maxlength="10"/><br>
          B<html:text property="multiField1" maxlength="10"/><br>
          C<html:text property="multiField2" maxlength="10"/>
        </td>
        <td nowrap>
          数字を入力（B<=A<=C）
        </td>
      </tr>      
    </table>
  </div>
  <br>
  <br>
  <div align="center">
    <table border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td nowrap>
          <html:submit property="forward_action" value=" 実 行 " />
          <html:reset value=" リセット " />
          <html:button property="forward_select" value="入力チェック拡張選択画面に戻る" onclick='<%= "location.href=\'" + request.getContextPath() + "/validation/validationTaskForward.do\'" %>' />
        </td>
      </tr>
    </table>
  </div>
</html:form>
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