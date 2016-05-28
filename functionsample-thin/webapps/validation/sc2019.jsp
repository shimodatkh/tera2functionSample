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

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��" />
<bean:define id="titleScreenName" scope="page" value="���I�A�N�V�����t�H�[����page���Ɩ��p�����[�^�Ƃ��ė��p����" />
<bean:define id="screenName" scope="page" value="���I�A�N�V�����t�H�[����page���Ɩ��p�����[�^�Ƃ��ė��p����(���ؐ������)" />
<bean:define id="screenID" scope="page" value="SC2019" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>���̓`�F�b�N�g��</h4>
<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>���I�A�N�V�����t�H�[����page���Ɩ��p�����[�^�Ƃ��ė��p����<br> �t�H�[���FDynaValidatorActionFormEx<br> page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`����
            </td>
        </tr>
    </table>
</div>
<ts:form styleId="form" action="/mpvDynaActionAcceptPageNoneWithPageImpl.do">
    <table border="1">
        <tr>
            <td>���ڂP</td>
            <td style="text-align: left;">validation.xml��page���`���Ă��Ȃ����ځB<br> page&lt;=0�œ��̓`�F�b�N�����s�����B
            </td>
            <td style="text-align: left; width: 40px;"><span id="code1"><bean:write name="_dynaMultiPageValidationFormWithPageImpl"
                        property="code1" /></span></td>
        </tr>
        <tr>
            <td>page</td>
            <td style="text-align: left;">struts-config.xml��ActionMapping��acceptPage���`���Ă��Ȃ��̂ŁA<br>�l�Ɋ֌W�Ȃ����ׂĂ̓��̓`�F�b�N�����s�����B<br>
                �t�H�[���ɓ��͂����l���|�s�����[�g�����B
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
<html:button property="menuForward" value="���j���[��ʂɖ߂�" onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf"%>

</html:html>