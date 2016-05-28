<%--
  - $Id: sc0001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="����"/>
<bean:define id="titleScreenName" scope="page" value="���j���["/>
<bean:define id="screenName" scope="page" value="���j���["/>
<bean:define id="screenID" scope="page" value="SC0001"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="sc0003.jspf" %>
<!-- begin body-->
  <h4>TERASOLUNA Server Framework for Java(Web��)�@�\�ԗ��T���v���A�v���P�[�V�������j���[</h4>
  <table border="0" cellspacing="5" cellpadding="5">
    <tr>
      <td align="left" valign="top">
        <html:link href="transaction/transactionForward.do">CA-01 �g�����U�N�V�����Ǘ��@�\</html:link><br>
        <html:link href="database/listAddress.do">CB-01 �f�[�^�x�[�X�A�N�Z�X�@�\</html:link><br>
        <html:link href="database/arrayListAddress.do">CB-02 �f�[�^�x�[�X�A�N�Z�X�@�\�iArrayList�Łj</html:link><br>
        <html:link href="jndi/listJndi.do">CC-01 JNDI�A�N�Z�X</html:link><br>
        <br>
        
        <html:link href="authentication/authenticationForward.do">WA-01 ���O�I���ς݃`�F�b�N�@�\</html:link><br>
        <html:link href="authorization/authorizationForward.do">WA-02 �A�N�Z�X�����`�F�b�N�@�\</html:link><br>
        <html:link href="serverblockage/serverBlockageForward.do">WA-03 �T�[�o�ǃ`�F�b�N�@�\</html:link><br>
        <html:link href="blockage/listBlockage.do">WA-04 �Ɩ��ǃ`�F�b�N�@�\</html:link><br>
        <html:link href="extension/extensionForward.do">WA-05 �g���q���ڃA�N�Z�X�֎~�@�\</html:link><br>
        <br>
        
        <html:link href="uvo/uvoForward.do">WB-01 ���[�U���\���@�\</html:link><br>
        <html:link href="formex/formexForward.do">WB-02 �A�N�V�����t�H�[���g���@�\</html:link><br>
        <html:link href="formtrans/formtransForward.do">WB-03 �A�N�V�����t�H�[���؂�ւ�</html:link><br>
        <html:link href="reset/resetMenuForward.do">WB-04 �t�H�[���v���p�e�B���Z�b�g�@�\</html:link><br>
        <html:link href="codelist/codeList.do">WB-05 �R�[�h���X�g�@�\</html:link><br>
        <br>
        
        <html:link href="exception/exceptionForward.do">WC-01 ��O�n���h�����O�@�\</html:link><br>
        <br>
        
        <html:link href="sessiondir/sessionDirForward.do">WD-01 �Z�b�V�����f�B���N�g���@�\</html:link><br>
        <html:link href="upload/uploadForward.do">WD-02 �t�@�C���A�b�v���[�h�@�\</html:link><br>
        <html:link href="download/downloadMenu.do">WD-03 �t�@�C���_�E�����[�h�@�\</html:link><br>
        <html:link href="downloadblogic/downloadblogicMenu.do">WD-04 �t�@�C���_�E�����[�h�@�\�iBLogicDownloadAction�Łj</html:link><br>
        <br>
        
        <html:link href="actionex/actionexForward.do">WE-01 �A�N�V�����g���@�\</html:link><br>
        <html:link href="dispatch/dispatchForward.do">WE-02 �W���f�B�X�p�b�`���@�\</html:link><br>
        <html:link href="forward/forwardForward.do">WE-03 �t�H���[�h�@�\</html:link><br>
        <html:link href="codelist/codeList.do">WE-04 �R�[�h���X�g�ēǂݍ��݋@�\</html:link><br>
        <html:link href="sessiondir/sessionDirForward.do">WE-05 �Z�b�V�����f�B���N�g���쐬�@�\</html:link><br>
        <html:link href="clearsession/clearsessionInitialize.do">WE-06 �Z�b�V�����N���A�@�\</html:link><br>
        <html:link href="logoff.do">WE-07 ���O�I�t�@�\</html:link><br>
        <br>
        
        <html:link href="validation/validationForward.do">WF-01 ���̓`�F�b�N�g���@�\</html:link><br>
        <br>
        
        <html:link href="messageex/messageexForward.do">WG-01 �g�����b�Z�[�W���\�[�X�@�\</html:link><br>
        <br>
        
        <html:link href="blogic/blogicForward.do">WH-01 �r�W�l�X���W�b�N���s�@�\</html:link><br>
        <html:link href="blogicio/blogicioForward.do">WH-02 �r�W�l�X���W�b�N���o�͋@�\</html:link><br>
      </td>
      
      <td align="left" valign="top">
        <html:link href="pagelink/pagelinkForward.do">WI-01 �ꗗ�\���@�\</html:link><br>
        <br>
        
        <html:link href="authorization/authorizationForward.do">WJ-01 �A�N�Z�X�����`�F�b�N�@�\</html:link><br>
        <html:link href="serverblockage/serverBlockageForward.do">WJ-02 �T�[�o�ǃ`�F�b�N�@�\</html:link><br>
        <html:link href="calendar/calendarForward.do">WJ-03 �J�����_�[���͋@�\</html:link><br>
        <html:link href="write/writeForward.do">WJ-04 ������\���@�\</html:link><br>
        <html:link href="date/dateForward.do">WJ-05 ���t�ϊ��@�\</html:link><br>
        <html:link href="wareki/warekiForward.do">WJ-06 �a����t�ϊ��@�\</html:link><br>
        <html:link href="decimal/decimalForward.do">WJ-07 Decimal�\���@�\</html:link><br>
        <html:link href="trim/trimForward.do">WJ-08 �g�����@�\</html:link><br>
        <html:link href="left/leftForward.do">WJ-09 ������؂���@�\</html:link><br>
        <html:link href="codelist/codeList.do">WJ-10 �R�[�h���X�g��`�@�\</html:link><br>
        <html:link href="codelist/codeList.do">WJ-11 �R�[�h���X�g�����o�͋@�\</html:link><br>
        <html:link href="codelist/codeList.do">WJ-12 �w��R�[�h���X�g�l�\���@�\</html:link><br>
        <br>
        <html:link href="styleclass/styleclassForward.do">WK-01 �X�^�C���N���X�؂�ւ��@�\</html:link><br>
        <html:link href="message/messageForward.do">WK-02 ���b�Z�[�W�\���@�\</html:link><br>
        <html:link href="nocache/nocacheForward.do">WK-03 �L���b�V������form�^�O�@�\</html:link><br>
        <html:link href="nocache/nocacheForward.do">WK-04 �L���b�V�����������N�@�\</html:link><br>
        <html:link href="nocache/nocacheForward.do">WK-05 �t�H�[���^�[�Q�b�g�w��@�\</html:link><br>
        <html:link href="popup/popupForward.do">WK-06 ���b�Z�[�W�|�b�v�A�b�v�@�\</html:link><br>
        <html:link href="message/messageForward.do">WK-07 �G���[���b�Z�[�W�`�F�b�N�@�\</html:link><br>
        <html:link href="clientvalidation/clientvalidationForward.do">WK-08 �N���C�A���g�`�F�b�N�g���@�\</html:link><br>
        <html:link href="pagelink/pagelinkForward.do">WK-09 �ꗗ�\���֘A�@�\</html:link><br>
        <br>
      </td>
    </tr>
  </table>
  <br>
  <br>
<!-- end body-->
<%@ include file="sc0004.jspf" %>
</html:html>