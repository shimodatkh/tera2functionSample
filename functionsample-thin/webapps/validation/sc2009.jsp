<%--
  - $Id: sc2009.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張" />
<bean:define id="titleScreenName" scope="page" value="リクエストパラメータ「page」を利用するチェック(処理の選択)" />
<bean:define id="screenName" scope="page" value="リクエストパラメータ「page」を利用するチェック(処理の選択)" />
<bean:define id="screenID" scope="page" value="SC2009" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>入力チェック拡張</h4>

<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>リクエストパラメータ「page」を利用するチェック(処理の選択)</td>
        </tr>
    </table>
</div>
<html:form action="/multiPageValidationTaskDispatch.do">
    <div align="center">
        <br>
        <table border="0" cellspacing="1" cellpadding="1" width="95%">
            <tr>
                <td nowrap>処理を選択してください。</td>
            </tr>
        </table>
    </div>
    <br>
    <div align="center">
        <table border="0" cellspacing="1" cellpadding="10">
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario01" />静的アクションフォームでpageをMPV機能として利用する<br>
                    フォーム：ValidatorActionFormEx<br>page：フォームのプロパティとして定義しない<br>acceptPage：検証対象に設定したpageの最小値を設定する<br>validation.xmlの検証対象へのpage属性の設定：設定する</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario02" />動的アクションフォームでpageをMPV機能として利用する<br>
                    フォーム：DynaValidatorActionFormEx<br>page：フォームのプロパティとして定義する<br>acceptPage：検証対象に設定したpageの最小値を設定する<br>validation.xmlの検証対象へのpage属性の設定：設定する</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario03" />静的アクションフォームでpageを業務パラメータとして利用する<br>
                    フォーム：ValidatorActionFormEx<br>page：フォームのプロパティとして定義する<br>acceptPage：設定しない<br>validation.xmlの検証対象へのpage属性の設定：設定しない</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario04" />動的アクションフォームでpageを業務パラメータとして利用する<br>
                    フォーム：DynaValidatorActionFormEx<br>page：フォームのプロパティとして定義しない<br>acceptPage：設定しない<br>validation.xmlの検証対象へのpage属性の設定：設定しない</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario05" />静的アクションフォームでpageを利用しない<br>
                    フォーム：ValidatorActionFormEx<br>page：フォームのプロパティとして定義しない<br>acceptPage：設定しない<br>validation.xmlの検証対象へのpage属性の設定:設定しない</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario06" />動的アクションフォームでpageを利用しない<br>
                    フォーム：DynaValidatorActionFormEx<br>page：フォームのプロパティとして定義しない<br>acceptPage：設定しない<br>validation.xmlの検証対象へのpage属性の設定:設定しない</td>
            </tr>
        </table>
    </div>
    <br>
    <div align="center">
        <table border="0" cellspacing="1" cellpadding="1">
            <tr>
                <td nowrap><html:submit value="次 へ" /></td>
            </tr>
        </table>
    </div>
</html:form>

<br>
<hr>
<br>
<html:button property="menuForward" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>