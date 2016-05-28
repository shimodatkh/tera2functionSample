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

<bean:define id="titleUsecaseName" scope="page" value="�A�N�V�����t�H�[���g��" />
<bean:define id="titleScreenName" scope="page" value="Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N" />
<bean:define id="screenName" scope="page" value="��������" />
<bean:define id="screenID" scope="page" value="SC1008" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>��������</h4>
<hr>
<bean:define id="resultMap" name="resultMap" type="java.util.Map"></bean:define>
<table border="1">
    <tr>
        <td>���ڂP</td>
        <td style="text-align: left;" id="ignoreParameterLabel" colspan="2">
            <%
                if (!resultMap.containsKey("Class.classLoader.resources.dirContext.docBase")) {
            %>
                <span id="Class.classLoader.resources.dirContext.docBase"> ActionForm�ɂ́uclass�v�uClass�v�Ƃ������O�̃v���p�e�B���`�ł��Ȃ��B</span> 
            <%
                 } else {
            %>
                <html:text styleId="Class.classLoader.resources.dirContext.docBase" property="Class.classLoader.resources.dirContext.docBase"
                     value="<%=resultMap.get(\"Class.classLoader.resources.dirContext.docBase\") != null ? (String) resultMap.get(\"Class.classLoader.resources.dirContext.docBase\") :\"\"%>" /><br>
                                      ��DynaActionForm �ɁuClass�v�Ƃ������O�̃v���p�e�B(�^��JavaBean)���`�����ꍇ�A<br> ����JavaBean�̃v���p�e�B�ɑ΂��āA���N�G�X�g�p�����[�^�𔽉f�����邱�Ƃ��ł���B
            <%
                    }
            %>
        </td>
    </tr>
    <tr>
        <td>���ڂQ</td>
        <td style="text-align: left;" colspan="2">
            <%
                if (!resultMap.containsKey("class.code4")) {
            %>
                <span id="class.code4"> ActionForm�ɂ́uclass�v�uClass�v�Ƃ������O�̃v���p�e�B���`�ł��Ȃ��B</span> 
            <%
                 } else {
            %>
                <html:text styleId="class.code4" property="class.code4"
                     value="<%=resultMap.get(\"class.code4\") != null ? (String) resultMap.get(\"class.code4\") :\"\"%>" /><br>
                                      ��DynaActionForm �Ɂuclass�v�Ƃ������O�̃v���p�e�B(�^��JavaBean)���`�����ꍇ�A<br> ����JavaBean�̃v���p�e�B�ɑ΂��āA���N�G�X�g�p�����[�^�𔽉f���邱�Ƃ��ł��Ȃ��B
            <%
                    }
            %>
        </td>
    </tr>
    <tr>
        <td>���ڂR</td>
        <td style="text-align: left;">�p�����[�^���̑O��Ɂu.�v�ȊO���t���ꍇ�͐���(zzzclass)</td>
        <td style="text-align: left;"><html:text styleId="zzzclass" property="zzzclass"
                value="<%=resultMap.get(\"zzzclass\") != null ? (String) resultMap.get(\"zzzclass\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>���ڂS</td>
        <td style="text-align: left;">�p�����[�^���̑O��Ɂu.�v�ȊO���t���ꍇ�͐���(xxx.yyyclass)</td>
        <td style="text-align: left;"><html:text styleId="xxx.yyyclass" property="xxx.yyyclass"
                value="<%=resultMap.get(\"xxx.yyyclass\") != null ? (String) resultMap.get(\"xxx.yyyclass\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>���ڂT</td>
        <td style="text-align: left;">�p�����[�^���̑O��Ɂu.�v�ȊO���t���ꍇ�͐���(xxxclass.yyy)</td>
        <td style="text-align: left;"><html:text styleId="xxxclass.yyy" property="xxxclass.yyy"
                value="<%=resultMap.get(\"xxxclass.yyy\") != null ? (String) resultMap.get(\"xxxclass.yyy\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>���ڂU</td>
        <td style="text-align: left;">�p�����[�^���̑O��Ɂu.�v�ȊO���t���ꍇ�͐���(classxxx)</td>
        <td style="text-align: left;"><html:text styleId="classxxx" property="classxxx"
                value="<%=resultMap.get(\"classxxx\") != null ? (String) resultMap.get(\"classxxx\") :\"\"%>" /></td>
    </tr>
    <tr>
        <td>���ڂU</td>
        <td style="text-align: left;">�p�����[�^���ȊO�̓`�F�b�N�ΏۊO(userId)</td>
        <td style="text-align: left;"><html:text styleId="userId" property="userId"
                value="<%=resultMap.get(\"userId\") != null ? (String) resultMap.get(\"userId\") :\"\"%>" /></td>
    </tr>
</table>
<html:button property="menuForward" value="���j���[��ʂɖ߂�" onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>
