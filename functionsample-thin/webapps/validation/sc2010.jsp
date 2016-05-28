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

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��" />
<bean:define id="titleScreenName" scope="page" value="�ÓI�A�N�V�����t�H�[����page��MPV�@�\�Ƃ��ė��p����" />
<bean:define id="screenName" scope="page" value="�ÓI�A�N�V�����t�H�[����page��MPV�@�\�Ƃ��ė��p����(1/3�y�[�W)" />
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
<h4>���̓`�F�b�N�g��</h4>
<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>�ÓI�A�N�V�����t�H�[����page��MPV�@�\�Ƃ��ė��p����<br> �t�H�[���FValidatorActionFormEx<br> page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`���Ȃ�
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
            <td>���ڂP</td>
            <td style="text-align: left;">validation.xml��page=0�ƒ�`���Ă��鍀�ځB<br> page&lt;=0�œ��̓`�F�b�N�����s�����B
            </td>
            <td style="text-align: left;"><html:text styleId="code1" property="code1" size="10" /></td>
        </tr>
        <tr>
            <td>page</td>
            <td style="text-align: left;">struts-config.xml��ActionMapping��acceptPage=0�ƒ�`���Ă��邽�߁A<br>0�����̒l�𑗐M���Ă�page=0�Ƃ��Ă݂Ȃ����B <br>
                <input id="pageCheckbox" type="checkbox" onclick="setPageDisabled();">���N�G�X�g�p�����[�^�Ƃ���page�𑗐M���Ȃ�
            </td>
            <td style="text-align: left;"><html:text styleId="pageTextBox" property="page" value="0" size="10" /></td>
        </tr>
    </table>
    <div id="page-notice" style="text-align: left; margin-top: 5px;">
        (��1) page��-1��A2�ȏ�̕s���Ȓl�����ē��̓`�F�b�N�ɐ�������ƁA1�y�[�W�ڂɖ߂�����ɂȂ��Ă��܂��B<br> (��2) page�͒ʏ�hidden���ڂƂ��Ď������܂��B<br>�{�T���v���ł�page�l�ɂ��A�v���P�[�V�����̋������m�F���₷���悤�A�e�L�X�g�{�b�N�X�Ŏ������Ă��܂��B
    </div>
    <br>
    <div>
        <html:submit property="forward_next" value="����" />
    </div>
</ts:form>
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