<%--
  - $Id: sc2001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��" />
<bean:define id="titleScreenName" scope="page" value="���̓`�F�b�N�g���I��" />
<bean:define id="screenName" scope="page" value="���̓`�F�b�N�g���I��" />
<bean:define id="screenID" scope="page" value="SC2001" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf"%>

<!-- begin body-->
<h4>���̓`�F�b�N�g��</h4>

<div align="center">
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr>
            <td nowrap>���̓`�F�b�N�����i�����̑I���j</td>
        </tr>
    </table>
</div>
<html:form action="/validationTaskDispatch.do">
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
        <table border="0" cellspacing="1" cellpadding="1">
            <tr>
                <td nowrap><html:radio property="event" value="forward_validation" />�P��t�B�[���h���̓`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays01" />�����t�B�[���h�����`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays02" />�����t�B�[���h�����`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays03" />�����t�B�[���h�t�H�[�}�b�g�`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays04" />�����t�B�[���h�v���~�e�B�u�^�`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays05" />�����t�B�[���h���̑��̃`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays06" />�l�X�g�����r�[���̃`�F�b�N</td>
            </tr>
            <tr>
                <td nowrap><html:radio property="event" value="forward_validationArrays07" />���N�G�X�g�p�����[�^�upage�v�𗘗p����`�F�b�N</td>
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