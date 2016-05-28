<%--
  - $Id: sc2009.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��" />
<bean:define id="titleScreenName" scope="page" value="���N�G�X�g�p�����[�^�upage�v�𗘗p����`�F�b�N(�����̑I��)" />
<bean:define id="screenName" scope="page" value="���N�G�X�g�p�����[�^�upage�v�𗘗p����`�F�b�N(�����̑I��)" />
<bean:define id="screenID" scope="page" value="SC2009" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>���̓`�F�b�N�g��</h4>

<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>���N�G�X�g�p�����[�^�upage�v�𗘗p����`�F�b�N(�����̑I��)</td>
        </tr>
    </table>
</div>
<html:form action="/multiPageValidationTaskDispatch.do">
    <div align="center">
        <br>
        <table border="0" cellspacing="1" cellpadding="1" width="95%">
            <tr>
                <td nowrap>������I�����Ă��������B</td>
            </tr>
        </table>
    </div>
    <br>
    <div align="center">
        <table border="0" cellspacing="1" cellpadding="10">
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario01" />�ÓI�A�N�V�����t�H�[����page��MPV�@�\�Ƃ��ė��p����<br>
                    �t�H�[���FValidatorActionFormEx<br>page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`���Ȃ�<br>acceptPage�F���ؑΏۂɐݒ肵��page�̍ŏ��l��ݒ肷��<br>validation.xml�̌��ؑΏۂւ�page�����̐ݒ�F�ݒ肷��</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario02" />���I�A�N�V�����t�H�[����page��MPV�@�\�Ƃ��ė��p����<br>
                    �t�H�[���FDynaValidatorActionFormEx<br>page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`����<br>acceptPage�F���ؑΏۂɐݒ肵��page�̍ŏ��l��ݒ肷��<br>validation.xml�̌��ؑΏۂւ�page�����̐ݒ�F�ݒ肷��</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario03" />�ÓI�A�N�V�����t�H�[����page���Ɩ��p�����[�^�Ƃ��ė��p����<br>
                    �t�H�[���FValidatorActionFormEx<br>page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`����<br>acceptPage�F�ݒ肵�Ȃ�<br>validation.xml�̌��ؑΏۂւ�page�����̐ݒ�F�ݒ肵�Ȃ�</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario04" />���I�A�N�V�����t�H�[����page���Ɩ��p�����[�^�Ƃ��ė��p����<br>
                    �t�H�[���FDynaValidatorActionFormEx<br>page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`���Ȃ�<br>acceptPage�F�ݒ肵�Ȃ�<br>validation.xml�̌��ؑΏۂւ�page�����̐ݒ�F�ݒ肵�Ȃ�</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario05" />�ÓI�A�N�V�����t�H�[����page�𗘗p���Ȃ�<br>
                    �t�H�[���FValidatorActionFormEx<br>page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`���Ȃ�<br>acceptPage�F�ݒ肵�Ȃ�<br>validation.xml�̌��ؑΏۂւ�page�����̐ݒ�:�ݒ肵�Ȃ�</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_mpvScenario06" />���I�A�N�V�����t�H�[����page�𗘗p���Ȃ�<br>
                    �t�H�[���FDynaValidatorActionFormEx<br>page�F�t�H�[���̃v���p�e�B�Ƃ��Ē�`���Ȃ�<br>acceptPage�F�ݒ肵�Ȃ�<br>validation.xml�̌��ؑΏۂւ�page�����̐ݒ�:�ݒ肵�Ȃ�</td>
            </tr>
        </table>
    </div>
    <br>
    <div align="center">
        <table border="0" cellspacing="1" cellpadding="1">
            <tr>
                <td nowrap><html:submit value="�� ��" /></td>
            </tr>
        </table>
    </div>
</html:form>

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