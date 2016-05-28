<%--
  - $Id: sc1007.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="アクションフォーム拡張" />
<bean:define id="titleScreenName" scope="page" value="Strutsの脆弱性(CVE-2014-0114)対策のチェック" />
<bean:define id="screenName" scope="page" value="Strutsの脆弱性(CVE-2014-0114)対策のチェック" />
<bean:define id="screenID" scope="page" value="SC1007" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<head>
<script type="text/javascript">
	function getOption(paramName, defaultValue) {
		var retParam = defaultValue;
		var opList = document.getElementsByName(paramName);
		for ( var i = 0; i < opList.length; i++) {
			if (opList[i].checked) {
				retParam = opList[i].value;
			}
		}
		return retParam;
	}

	function setMethod() {
		var method = getOption("method", "GET");
		var element = document.getElementById("form");
		if (method == "POST-Multipart") {
			method = "POST";
			element.encoding = "multipart/form-data";
		} else {
			element.encoding = "application/x-www-form-urlencoded";
		}
		element.method = method;
	}

	function setAction() {

		// 選択したアクションを設定
		var action = getOption("action", "securityAction.do");
		if (action == "securityActionWithPrefix.do") {
			var ignoreParameterName = document
					.getElementById("ignoreParameterInput").name;
			document.getElementById("ignoreParameterInput").name = "prefix-"
					+ ignoreParameterName;
			document.getElementById("class.code4").name = "prefix-class.code4";
			document.getElementById("zzzclass").name = "prefix-zzzclass";
			document.getElementById("xxx.yyyclass").name = "prefix-xxx.yyyclass";
			document.getElementById("xxxclass.yyy").name = "prefix-xxxclass.yyy";
			document.getElementById("classxxx").name = "prefix-classxxx";
			document.getElementById("userId").name = "prefix-userId";
			document.getElementById("userId2").name = "prefix-userId";
		} else {
			document.getElementById("ignoreParameterInput").name = document
					.getElementById("ignoreParameterInput").name.replace(
					"prefix-", "");
			document.getElementById("class.code4").name = "class.code4";
			document.getElementById("zzzclass").name = "zzzclass";
			document.getElementById("xxx.yyyclass").name = "xxx.yyyclass";
			document.getElementById("xxxclass.yyy").name = "xxxclass.yyy";
			document.getElementById("classxxx").name = "classxxx";
			document.getElementById("userId").name = "userId";
			document.getElementById("userId2").name = "userId";
		}

		document.getElementById("form").action = action;

		// 項目１のパラメータチェック
		checkIgnoreParameter(document.getElementById("ignoreParameterInput").name);

	}

	function submit() {

		setMethod();

		setAction();

		// 送信
		document.getElementById("form").submit();

	}

	function setIgnoreParameter(label, parameterName, disabled) {
		document.getElementById("ignoreParameterLabel").innerHTML = label
				.replace("\r\n", "<br>");
		document.getElementById("ignoreParameterInput").name = parameterName;
		document.getElementById("class.code4").disabled = disabled
		document.getElementById("zzzclass").disabled = disabled
		document.getElementById("xxx.yyyclass").disabled = disabled;
		document.getElementById("xxxclass.yyy").disabled = disabled;
		document.getElementById("classxxx").disabled = disabled;
		document.getElementById("userId").disabled = disabled;
		document.getElementById("userId2").disabled = disabled;

		// 項目１のパラメータチェック
		checkIgnoreParameter(parameterName);

	}

	function checkIgnoreParameter(parameterName) {
		var expectedResultString = "入力された値は処理されない";
		if (parameterName.indexOf("Class") >= 0) {
			// Classはじまりの場合
			var action = getOption("action", "securityAction.do");
			if (action == "securityDynaAction.do") {
				// DynaValidatorActionFormExを利用する場合はポピュレートされる。
				expectedResultString = "入力された値が処理される";
			}
		}
		document.getElementById("ignoreParameterExpectedResult").innerHTML = expectedResultString;
	}
</script>
</head>

<!-- begin body-->
<h4>Strutsの脆弱性(CVE-2014-0114)対策のチェック</h4>
<div id="classLoader-div">
    <table border="1">
        <tr>
            <th rowspan="4">メソッド</th>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="method-get" type="radio" name="method" value="GET" checked="checked">GET</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="method-post" type="radio" name="method" value="POST">POST(application/x-www-form-urlencoded)</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="method-multipart" type="radio" name="method" value="POST-Multipart">POST(multipart/form-data)</td>
        </tr>
        <tr>
            <th rowspan="5">アクション</th>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="action-securityAction" type="radio" name="action" value="securityAction.do"
                checked="checked" onclick="setAction()">ValidatorActionFormEx利用・プレフィックスなし・チェインなし</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="action-securityDynaAction" type="radio" name="action"
                value="securityDynaAction.do" onclick="setAction()">DynaValidatorActionFormEx利用・プレフィックスなし・チェインなし</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="action-securityActionWithPrefix" type="radio" name="action"
                value="securityActionWithPrefix.do" onclick="setAction()">ValidatorActionFormEx利用・プレフィックスあり・チェインなし</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input id="action-securityActionWithActionChain" type="radio" name="action"
                value="securityActionWithActionChain.do" onclick="setAction()">ValidatorActionFormEx利用・プレフィックスなし・チェインあり</td>
        </tr>
        <tr>
            <th rowspan="5">パラメータ名<br>バリエーション
            </th>
        </tr>
        <tr>
            <td style="text-align: left;"><input type="radio" id="class" name="ignoreParameter"
                value="class.classLoader.resources.dirContext.docBase" checked="checked"
                onclick="setIgnoreParameter('パラメータ名=「class.」始まり', 'class.classLoader.resources.dirContext.docBase', false);">「class.」で始まる異常なパラメータ名と正常なパラメータ名の混在</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input type="radio" id="nestclass" name="ignoreParameter"
                value="xxx.class.classLoader.resources.dirContext.docBase"
                onclick="setIgnoreParameter('パラメータ名=「.class.」を含む','xxx.class.classLoader.resources.dirContext.docBase', false);">「.class.」を含む異常なパラメータ名と正常なパラメータ名の混在</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input type="radio" id="notattack" name="ignoreParameter"
                value="Class.classLoader.resources.dirContext.docBase"
                onclick="setIgnoreParameter('パラメータ名=「Class.」始まり\r\n(大文字と小文字は区別される)',
                'Class.classLoader.resources.dirContext.docBase', false);">「Class.」ではじまる正常なパラメータ名を含む正常なパラメータ名のみ</td>
        </tr>
        <tr>
            <td style="text-align: left;"><input type="radio" id="onlyIgnoreParameter" name="ignoreParameter"
                value="Class.classLoader.resources.dirContext.docBase"
                onclick="setIgnoreParameter('パラメータ名=「class.」始まり', 'class.classLoader.resources.dirContext.docBase', true);">「class.」ではじまる異常なパラメータ名のみ</td>
        </tr>
        <tr>
            <th rowspan="2">リクエスト<br>内容
            </th>
        </tr>
        <tr>
            <td colspan="3"><ts:form styleId="form" action="securityAction.do" method="GET">
                    <table border="1">
                        <tr>
                            <td>項目１</td>
                            <td style="text-align: left;" id="ignoreParameterLabel">パラメータ名=「class.」始まり</td>
                            <td style="text-align: left;" id="ignoreParameterExpectedResult">入力された値は処理されない</td>
                            <td style="text-align: left;"><html:text styleId="ignoreParameterInput"
                                    property="class.classLoader.resources.dirContext.docBase" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td>項目２</td>
                            <td style="text-align: left;">パラメータ名=class.code4</td>
                            <td style="text-align: left;">入力された値は処理されない</td>
                            <td style="text-align: left;"><html:text styleId="class.code4" property="class.code4" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td>項目３</td>
                            <td style="text-align: left;">パラメータ名=zzzclass</td>
                            <td style="text-align: left;">入力された値が処理される</td>
                            <td style="text-align: left;"><html:text styleId="zzzclass" property="zzzclass" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td>項目４</td>
                            <td style="text-align: left;">パラメータ名=xxx.yyyclass</td>
                            <td style="text-align: left;">入力された値が処理される</td>
                            <td style="text-align: left;"><html:text styleId="xxx.yyyclass" property="xxx.yyyclass" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td>項目５</td>
                            <td style="text-align: left;">パラメータ名=xxxclass.yyy</td>
                            <td style="text-align: left;">入力された値が処理される</td>
                            <td style="text-align: left;"><html:text styleId="xxxclass.yyy" property="xxxclass.yyy" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td>項目６</td>
                            <td style="text-align: left;">パラメータ名=classxxx</td>
                            <td style="text-align: left;">入力された値が処理される</td>
                            <td style="text-align: left;"><html:text styleId="classxxx" property="classxxx" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td rowspan="3">項目７</td>
                            <td style="text-align: left;" rowspan="3">パラメータ名=userId<br>(複数パラメータ)
                            </td>
                            <td style="text-align: left;" rowspan="3">入力された値が処理される</td>
                            <td style="text-align: left;"><html:text styleId="userId" property="userId" value="" size="10" /></td>
                        </tr>
                        <tr>
                            <td style="text-align: left;"><html:text styleId="userId2" property="userId" value="" size="10" /></td>
                        </tr>
                    </table>
                </ts:form></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center;"><a href="#" onclick="submit(); return false;">実行</a></td>
        </tr>
    </table>
</div>
<hr>
<br>
<html:button property="menuForward" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>
