<%--
  - $Id: sc2020.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��" />
<bean:define id="titleScreenName" scope="page" value="�ÓI�A�N�V�����t�H�[����page�𗘗p���Ȃ�" />
<bean:define id="screenName" scope="page" value="�ÓI�A�N�V�����t�H�[����page�𗘗p���Ȃ�(���͉��)" />
<bean:define id="screenID" scope="page" value="SC2020" />

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
            <td nowrap>�ÓI�A�N�V�����t�H�[����page�𗘗p���Ȃ�<br> �t�H�[���FValidatorActionFormEx<br> page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`���Ȃ�
            </td>
        </tr>
    </table>
</div>
<div id="error-message">
    <ts:errors />
</div>
<ts:form styleId="form" action="/mpvActionAcceptPageNone.do">
    <table border="1">
        <tr>
            <td>���ڂP</td>
            <td style="text-align: left;">validation.xml��page���`���Ă��Ȃ����ځB<br> page&lt;=0�œ��̓`�F�b�N�����s�����B
            </td>
            <td style="text-align: left;"><html:text styleId="code1" property="code1" value="" size="10" /></td>
        </tr>
        <tr>
            <td>page</td>
            <td style="text-align: left;">struts-config.xml��ActionMapping��acceptPage���`���Ă��Ȃ��̂ŁA<br>�l�Ɋ֌W�Ȃ����ׂĂ̓��̓`�F�b�N�����s�����B<br>
                �t�H�[���ɓ��͂��ꂽ�l���|�s�����[�g�����B<br> <input id="pageCheckbox" type="checkbox" onclick="setPageDisabled();" checked="checked">���N�G�X�g�p�����[�^�Ƃ���page�𑗐M���Ȃ�
            </td>
            <td style="text-align: left;"><html:text styleId="pageTextBox" property="page" value="" size="10" disabled="true" /></td>
        </tr>
    </table>
    <div id="page-notice" style="text-align: left; margin-top: 5px;">
        (��1) �ÓI�A�N�V�����t�H�[���̏ꍇ�Apage�v���p�e�B���ÖٓI�Ɏ�������Ă���̂ŁA<br> page���Ɩ��p�����[�^�Ƃ��ė��p�����AMPV�@�\�𗘗p���Ȃ��ꍇ�ł��AMPV�@�\�����p�\�ȏ�Ԃł��B<br>
        ���N�G�X�g�p�����[�^�Ƃ���page�Ɂu-1�v�ȉ��̒l���Ӑ}�I�ɓ����[����]���������Ă��A���̓`�F�b�N�����s����܂��B<br> (��2) page�͒ʏ��������K�v�͂���܂���B<br>�{�T���v���ł�page�l�ɂ��A�v���P�[�V�����̋������m�F���₷���悤�A�e�L�X�g�{�b�N�X�Ŏ������Ă��܂��B
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