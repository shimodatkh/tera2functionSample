<%--
  - $Id: sc2019.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page import="org.apache.struts.validator.DynaValidatorForm"%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="入力チェック拡張" />
<bean:define id="titleScreenName" scope="page" value="動的アクションフォームでpageを業務パラメータとして利用する" />
<bean:define id="screenName" scope="page" value="動的アクションフォームでpageを業務パラメータとして利用する(検証成功画面)" />
<bean:define id="screenID" scope="page" value="SC2019" />

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
<ts:form styleId="form" action="/mpvDynaActionAcceptPageNoneWithPageImpl.do">
    <table border="1">
        <tr>
            <td>項目１</td>
            <td style="text-align: left;">validation.xmlでpageを定義していない項目。<br> page&lt;=0で入力チェックが実行される。
            </td>
            <td style="text-align: left; width: 40px;"><span id="code1"><bean:write name="_dynaMultiPageValidationFormWithPageImpl"
                        property="code1" /></span></td>
        </tr>
        <tr>
            <td>page</td>
            <td style="text-align: left;">struts-config.xmlのActionMappingにacceptPageを定義していないので、<br>値に関係なくすべての入力チェックが実行される。<br>
                フォームに入力した値がポピュレートされる。
            </td>
            <td style="text-align: left; width: 40px;"><span id="pageTextBox"><bean:write name="_dynaMultiPageValidationFormWithPageImpl"
                        property="page" /></span></td>
        </tr>
    </table>
</ts:form>
<br>
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