<%--
  - $Id: sc3601.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="クライアントチェック"/>
<bean:define id="titleScreenName" scope="page" value="クライアントチェック"/>
<bean:define id="screenName" scope="page" value="クライアントチェック"/>
<bean:define id="screenID" scope="page" value="SC3601"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<ts:javascript formName="/validationAction"/>
<!-- begin body-->
<h4>クライアントチェック</h4>
    

<ts:errors />

<html:form action="validationAction.do" onsubmit="return validateValidationForm(this);">
  <div align="center">
    <br>
    <table border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td nowrap>半角英数字チェック（最大長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="alphaNumericMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>半角英数字チェック（最小長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="alphaNumericMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>半角英（大文字）数字チェック（最大長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="capAlphaNumericMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>半角英（大文字）数字チェック（最小長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="capAlphaNumericMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>日付チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="date" size="23" maxlength="19"/>
        </td>
        <td nowrap>
          （フォーマット形式：yyyy/MM/dd）
        </td>
      </tr>
      <tr>
        <td nowrap>半角カナチェック：</td>
        <td colspan="3" nowrap>
          <html:text property="hankakuKana" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>半角文字チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="hankaku" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>数字文字列チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="numericString" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （数字のみ入力）
        </td>
      </tr>
      <tr>
        <td nowrap>数値チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="number" size="23" maxlength="11"/>
        </td>
        <td nowrap>
          （整数部3桁、小数部3桁以内）
        </td>
      </tr>
      <tr>
        <td nowrap>数値の桁一致チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="numberLength" size="23" maxlength="11"/>
        </td>
        <td nowrap>
          （整数部3桁、小数部3桁）
        </td>
      </tr>      
      <tr>
        <td nowrap>正規表現チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="regExp" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （フォーマット形式：^[a-z].*[^a-z]$）
        </td>
      </tr>
      <tr>
        <td nowrap>必須入力チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="required" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>入力文字列長チェック（最大長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="stringMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>入力文字列長チェック（最小長指定）：</td>
        <td colspan="3" nowrap>
          <html:text property="stringMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>全角カナチェック：</td>
        <td colspan="3" nowrap>
          <html:text property="zenkakuKana" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>全角文字チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="zenkaku" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>同一文字列長チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="length" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （サイズ：５）
        </td>
      </tr>
      <tr>
        <td nowrap>日付範囲チェック：</td>
        <td colspan="3" nowrap>
          <html:text property="dateRange" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          （2000/1/1～2000/12/31）
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