<%--
  - $Id: sc2022.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張" />
<bean:define id="titleScreenName" scope="page" value="動的アクションフォームでpageを利用しない" />
<bean:define id="screenName" scope="page" value="動的アクションフォームでpageを利用しない(入力画面)" />
<bean:define id="screenID" scope="page" value="SC2022" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<head>
<script type="text/javascript">
	function setPageDisabled() {
		document.getElementById('pageTextBox').disabled = !document
				.getElementById('pageTextBox').disabled;
	}
</script>
</head>

<!-- begin body-->
<h4>入力チェック拡張</h4>
<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>動的アクションフォームでpageを利用しない<br> フォーム：DynaValidatorActionFormEx<br> page：フォームのプロパティとして定義しない
            </td>
        </tr>
    </table>
</div>
<div id="error-message">
    <ts:errors />
</div>
<ts:form styleId="form" action="/mpvDynaActionAcceptPageNone.do">
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
                フォームに入力された値がポピュレートされない。<br> <input id="pageCheckbox" type="checkbox" onclick="setPageDisabled();" checked="checked">リクエストパラメータとしてpageを送信しない
            </td>
            <td style="text-align: left;"><html:text styleId="pageTextBox" property="page" value="" size="10" disabled="true" /></td>
        </tr>
    </table>
    <div id="page-notice" style="text-align: left; margin-top: 5px;">
        (※1) 動的アクションフォームの場合、pageを業務パラメータまたはMPV機能として利用するために<br>pageプロパティを明示的に定義しない限り、MPV機能は利用できない状態です。<br>リクエストパラメータとしてpageに「-1」以下の値を意図的に入れて[次へ]を押下しても、入力チェックが実行されます。<br>
        (※2) pageは通常実装する必要はありません。<br>本サンプルではpage値によるアプリケーションの挙動を確認しやすいよう、テキストボックスで実装しています。
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