<%--
  - $Id: sc2018.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張" />
<bean:define id="titleScreenName" scope="page" value="動的アクションフォームでpageを業務パラメータとして利用する" />
<bean:define id="screenName" scope="page" value="動的アクションフォームでpageを業務パラメータとして利用する(入力画面)" />
<bean:define id="screenID" scope="page" value="SC2018" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>入力チェック拡張</h4>
<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>動的アクションフォームでpageを業務パラメータとして利用する<br> フォーム：DynaValidatorActionFormEx<br> page：フォームのプロパティとして定義する
            </td>
        </tr>
    </table>
</div>
<div id="error-message">
    <ts:errors />
</div>
<ts:form styleId="form" action="/mpvDynaActionAcceptPageNoneWithPageImpl.do">
    <table border="1">
        <tr>
            <td>項目１</td>
            <td style="text-align: left;">validation.xmlでpageを定義していない項目。<br> page&lt;=0で入力チェックが実行される。
            </td>
            <td style="text-align: left;"><html:text styleId="code1" property="code1" value="" size="10" /></td>
        </tr>
        <tr>
            <td>page</td>
            <td style="text-align: left;">struts-config.xmlのActionMappingにacceptPageを定義していないので、<br>値に関係なくすべての入力チェックが実行される。<br>
                フォームに入力した値がポピュレートされる。
            </td>
            <td style="text-align: left;"><html:text styleId="pageTextBox" property="page" value="" size="10" /></td>
        </tr>
    </table>
    <div id="page-notice" style="text-align: left; margin-top: 5px;">
        (※1) 業務パラメータとして入力したpageの値がMPV機能にも利用されるため、MPV機能が利用可能な状態です。<br> 業務的にpageに「-1」以下の値を入れて[次へ]を押下しても、入力チェックが実行されます。
    </div>
    <br>
    <div>
        <html:submit property="forward_next" value="次へ" />
    </div>
</ts:form>
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