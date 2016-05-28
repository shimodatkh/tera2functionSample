<%--
  - $Id: sc2001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張" />
<bean:define id="titleScreenName" scope="page" value="入力チェック拡張選択" />
<bean:define id="screenName" scope="page" value="入力チェック拡張選択" />
<bean:define id="screenID" scope="page" value="SC2001" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>入力チェック拡張</h4>

<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>入力チェック処理（処理の選択）</td>
        </tr>
    </table>
</div>
<html:form action="/validationTaskDispatch.do">
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
        <table border="0" cellspacing="1" cellpadding="1">
            <tr>
                <td nowrap><html:radio property="event" value="forward_validation" />単一フィールド入力チェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays01" />複数フィールド文字チェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays02" />複数フィールド桁数チェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays03" />複数フィールドフォーマットチェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays04" />複数フィールドプリミティブ型チェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays05" />複数フィールドその他のチェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays06" />ネストしたビーンのチェック</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays07" />リクエストパラメータ「page」を利用するチェック</td>
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