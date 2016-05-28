<%--
  - $Id: sc2010.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張" />
<bean:define id="titleScreenName" scope="page" value="静的アクションフォームでpageをMPV機能として利用する" />
<bean:define id="screenName" scope="page" value="静的アクションフォームでpageをMPV機能として利用する(1/3ページ)" />
<bean:define id="screenID" scope="page" value="SC2010" />

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
            <td nowrap>静的アクションフォームでpageをMPV機能として利用する<br> フォーム：ValidatorActionFormEx<br> page：フォームのプロパティとして定義しない
            </td>
        </tr>
    </table>
</div>
<div id="error-message">
    <ts:errors />
</div>
<ts:form styleId="form" action="mpvActionAcceptPage0.do">
    <table border="1">
        <tr>
            <td>項目１</td>
            <td style="text-align: left;">validation.xmlでpage=0と定義している項目。<br> page&lt;=0で入力チェックが実行される。
            </td>
            <td style="text-align: left;"><html:text styleId="code1" property="code1" size="10" /></td>
        </tr>
        <tr>
            <td>page</td>
            <td style="text-align: left;">struts-config.xmlのActionMappingでacceptPage=0と定義しているため、<br>0未満の値を送信してもpage=0としてみなされる。 <br>
                <input id="pageCheckbox" type="checkbox" onclick="setPageDisabled();">リクエストパラメータとしてpageを送信しない
            </td>
            <td style="text-align: left;"><html:text styleId="pageTextBox" property="page" value="0" size="10" /></td>
        </tr>
    </table>
    <div id="page-notice" style="text-align: left; margin-top: 5px;">
        (※1) pageに-1や、2以上の不正な値を入れて入力チェックに成功すると、1ページ目に戻る実装になっています。<br> (※2) pageは通常hidden項目として実装します。<br>本サンプルではpage値によるアプリケーションの挙動を確認しやすいよう、テキストボックスで実装しています。
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