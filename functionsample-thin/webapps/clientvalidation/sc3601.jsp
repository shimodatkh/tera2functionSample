<%--
  - $Id: sc3601.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�N���C�A���g�`�F�b�N"/>
<bean:define id="titleScreenName" scope="page" value="�N���C�A���g�`�F�b�N"/>
<bean:define id="screenName" scope="page" value="�N���C�A���g�`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC3601"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<ts:javascript formName="/validationAction"/>
<!-- begin body-->
<h4>�N���C�A���g�`�F�b�N</h4>
    

<ts:errors />

<html:form action="validationAction.do" onsubmit="return validateValidationForm(this);">
  <div align="center">
    <br>
    <table border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td nowrap>���p�p�����`�F�b�N�i�ő咷�w��j�F</td>
        <td colspan="3" nowrap>
          <html:text property="alphaNumericMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>���p�p�����`�F�b�N�i�ŏ����w��j�F</td>
        <td colspan="3" nowrap>
          <html:text property="alphaNumericMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>���p�p�i�啶���j�����`�F�b�N�i�ő咷�w��j�F</td>
        <td colspan="3" nowrap>
          <html:text property="capAlphaNumericMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>���p�p�i�啶���j�����`�F�b�N�i�ŏ����w��j�F</td>
        <td colspan="3" nowrap>
          <html:text property="capAlphaNumericMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>���t�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="date" size="23" maxlength="19"/>
        </td>
        <td nowrap>
          �i�t�H�[�}�b�g�`���Fyyyy/MM/dd�j
        </td>
      </tr>
      <tr>
        <td nowrap>���p�J�i�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="hankakuKana" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>���p�����`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="hankaku" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>����������`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="numericString" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�����̂ݓ��́j
        </td>
      </tr>
      <tr>
        <td nowrap>���l�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="number" size="23" maxlength="11"/>
        </td>
        <td nowrap>
          �i������3���A������3���ȓ��j
        </td>
      </tr>
      <tr>
        <td nowrap>���l�̌���v�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="numberLength" size="23" maxlength="11"/>
        </td>
        <td nowrap>
          �i������3���A������3���j
        </td>
      </tr>      
      <tr>
        <td nowrap>���K�\���`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="regExp" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�t�H�[�}�b�g�`���F^[a-z].*[^a-z]$�j
        </td>
      </tr>
      <tr>
        <td nowrap>�K�{���̓`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="required" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>���͕����񒷃`�F�b�N�i�ő咷�w��j�F</td>
        <td colspan="3" nowrap>
          <html:text property="stringMax" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>���͕����񒷃`�F�b�N�i�ŏ����w��j�F</td>
        <td colspan="3" nowrap>
          <html:text property="stringMin" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>�S�p�J�i�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="zenkakuKana" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>�S�p�����`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="zenkaku" size="23" maxlength="10"/>
        </td>
      </tr>
      <tr>
        <td nowrap>���ꕶ���񒷃`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="length" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td nowrap>���t�͈̓`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <html:text property="dateRange" size="23" maxlength="10"/>
        </td>
        <td nowrap>
          �i2000/1/1�`2000/12/31�j
        </td>
      </tr>      
    </table>
  </div>
  <br>
  <br>
  <div align="center">
    <table border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td nowrap>
          <html:submit property="forward_action" value=" �� �s " />
          <html:reset value=" ���Z�b�g " />
        </td>
      </tr>
    </table>
  </div>
</html:form>

<br>
<hr>
<br>
<html:button property="menuForward" value="���j���[��ʂɖ߂�"
onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
    
<!-- end body-->

<%@ include file="../sc0004.jspf" %>

</html:html>