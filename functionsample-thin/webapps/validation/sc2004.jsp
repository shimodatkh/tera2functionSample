<%--
  - $Id: sc2004.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��"/>
<bean:define id="titleScreenName" scope="page" value="�����t�B�[���h�����`�F�b�N"/>
<bean:define id="screenName" scope="page" value="�����t�B�[���h�����`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC2004"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>���̓`�F�b�N�g��</h4>

<span id="validationErrors"><ts:errors /></span>

<div align="center">
  <table border="0" cellspacing="0" cellpadding="2" width="100%">
    <tr>
      <td nowrap>�����t�B�[���h�����`�F�b�N����</td>
    </tr>
  </table>
</div>

<ts:form action="validationArrays02Action.do">

  <div align="center">
    <br>
    <table border="1" cellspacing="0" cellpadding="1" width="70%" frame='box' >
      <tr height="25" align="center">
        <th nowrap>�f�[�^No</th>
        <th nowrap>�ŏ������`�F�b�N<br>�i�ŏ������F�T�j</th>
        <th nowrap>�ő包���`�F�b�N<br>�i�ő包���F�T�j</th>
        <th nowrap>�����񒷈�v�`�F�b�N<br>�i�T�C�Y�F�T�j</th>
      </tr>
      <logic:iterate id="dataNoList" name="_validationForm" property="dataNoList" indexId="i">
        <tr height="25">
          <td nowrap>
            <t:write name="_validationForm" property='<%= "dataNoList[" + i + "]" %>' />
          </td>
          <td nowrap>
            <html:text property='<%= "minLengthList[" + i + "]" %>' size="30" maxlength="10"/>
          </td>
          <td nowrap>
            <html:text property='<%= "maxLengthList[" + i + "]" %>' size="30" maxlength="10"/>
          </td>
          <td nowrap>
            <html:text property='<%= "lengthList[" + i + "]" %>' size="30" maxlength="10"/>
          </td>
        </tr>
      </logic:iterate>
    </table>
    <br>
    <br>
    <table border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td nowrap>
          <html:submit property="forward_action" value=" �� �s " />
          <html:reset value=" ���Z�b�g " />
          <html:button property="forward_select" value=" ���̓`�F�b�N�g���I����ʂɖ߂� " onclick='<%= "location.href=\'" + request.getContextPath() + "/validation/validationTaskForward.do\'" %>' />
        </td>
      </tr>
    </table>
  </div>
  <br>
</ts:form>

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