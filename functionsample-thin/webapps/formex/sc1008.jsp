<%--
  - $Id: sc1008.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="screenName" scope="page" value="処理結果" />
<bean:define id="screenID" scope="page" value="SC1008" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>処理結果</h4>
<hr>
<bean:define id="resultMap" name="resultMap" type="java.util.Map"></bean:define>
<table border="1">
    <tr>
        <td>項目１</td>
        <td style="text-align: left;" id="ignoreParameterLabel" colspan="2">
            <%
                if (!resultMap.containsKey("Class.classLoader.resources.dirContext.docBase")) {
            %>
                <span id="Class.classLoader.resources.dirContext.docBase"> ActionFormには「class」「Class」という名前のプロパティを定義できない。</span> 
            <%
                 } else {
            %>
                <html:text styleId="Class.classLoader.resources.dirContext.docBase" property="Class.classLoader.resources.dirContext.docBase"
                     value="<%=resultMap.get(\"Class.classLoader.resources.dirContext.docBase\") != null ? (String) resultMap.get(\"Class.classLoader.resources.dirContext.docBase\") :\"\"%>" /><br>
                                      ※DynaActionForm に「Class」という名前のプロパティ(型はJavaBean)を定義した場合、<br> そのJavaBeanのプロパティに対して、リクエストパラメータを反映させることができる。
            <%
                    }
            %>
        </td>
    </tr>
    <tr>
        <td>項目２</td>
        <td style="text-align: left;" colspan="2">
            <%
                if (!resultMap.containsKey("class.code4")) {
            %>
                <span id="class.code4"> ActionFormには「class」「Class」という名前のプロパティを定義できない。</span> 
            <%
                 } else {
            %>
                <html:text styleId="class.code4" property="class.code4"
                     value="<%=resultMap.get(\"class.code4\") != null ? (String) resultMap.get(\"class.code4\") :\"\"%>" /><br>
                                      ※DynaActionForm に「class」という名前のプロパティ(型はJavaBean)を定義した場合、<br> そのJavaBeanのプロパティに対して、リクエストパラメータを反映することができない。
            <%
                    }
            %>
        </td>
    </tr>
    <tr>
        <td>項目３</td>
        <td style="text-align: left;">パラメータ名の前後に「.」以外が付く場合は正常(zzzclass)</td>
        <td style="text-align: left;"><html:text styleId="zzzclass" property="zzzclass"
                value="<%=resultMap.get(\"zzzclass\") != null ? (String) resultMap.get(\"zzzclass\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>項目４</td>
        <td style="text-align: left;">パラメータ名の前後に「.」以外が付く場合は正常(xxx.yyyclass)</td>
        <td style="text-align: left;"><html:text styleId="xxx.yyyclass" property="xxx.yyyclass"
                value="<%=resultMap.get(\"xxx.yyyclass\") != null ? (String) resultMap.get(\"xxx.yyyclass\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>項目５</td>
        <td style="text-align: left;">パラメータ名の前後に「.」以外が付く場合は正常(xxxclass.yyy)</td>
        <td style="text-align: left;"><html:text styleId="xxxclass.yyy" property="xxxclass.yyy"
                value="<%=resultMap.get(\"xxxclass.yyy\") != null ? (String) resultMap.get(\"xxxclass.yyy\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>項目６</td>
        <td style="text-align: left;">パラメータ名の前後に「.」以外が付く場合は正常(classxxx)</td>
        <td style="text-align: left;"><html:text styleId="classxxx" property="classxxx"
                value="<%=resultMap.get(\"classxxx\") != null ? (String) resultMap.get(\"classxxx\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>項目６</td>
        <td style="text-align: left;">パラメータ名以外はチェック対象外(userId)</td>
        <td style="text-align: left;"><html:text styleId="userId" property="userId"
                value="<%=resultMap.get(\"userId\") != null ? (String) resultMap.get(\"userId\") :\"\"%>" /></td>
    </tr>
</table>
<html:button property="menuForward" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>
