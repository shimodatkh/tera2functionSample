<%--
  - $Id: sc0501.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<%@ taglib uri="/common" prefix="common"%>

<bean:define id="titleUsecaseName" scope="page" value="�A�N�Z�X�����`�F�b�N"/>
<bean:define id="titleScreenName" scope="page" value="�A�N�Z�X�����`�F�b�N"/>
<bean:define id="screenName" scope="page" value="�A�N�Z�X�����`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC0501"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>�A�N�Z�X�����`�F�b�N</h4>
  <br>
  ���O�I�����[�U�̌������u�Ǘ��ҁv�̏ꍇ�݂̂��̉�ʂ��\������܂��B<br>
  <br>
  ���[�U�������u���[�U�v�̏ꍇ�̓G���[��ʂɑJ�ڂ��܂��B<br>
<!-- �����ɂ���ʕ\��/��\���ؑ�[start]-->
  <br>
  <br>
  <table width="750px">
    <tr>
      <td align="left">
        <font size="2pt">��&lt;t:ifAuthorized&gt;�v�f��&lt;t:ifAuthorizedBlock&gt;�v�f�̊m�F</font></td>
    </tr>
  </table>
  <table width="750px" cellpadding="3" cellspacing="1" border="1">
    <tr>
      <td width="750px" colspan="2" align="left" valign="top" bgcolor="#87CEFA">
        <font size="2pt">�@&lt;t:ifAuthorized&gt;�v�f��&lt;t:ifAuthorizedBlock&gt;�e�v�f�A�q�v�f���R�t���Ă���ꍇ</font>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top" >
        <font size="2pt">�y�p�^�[���P�z<br>&lt;t:ifAuthorized&gt;�v�f�P��TRUE ����<br>&lt;t:ifAuthorized&gt;�v�f�Q��TRUE</font>
      </td>
      <td width="480px" align="left">
        <t:ifAuthorizedBlock blockId="AA"><span id="sc0501-1"><font size="2pt">�����`���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�e�v�f�̕����ł��B</font></span><br>
          <t:ifAuthorizedBlock blockId="AAA" parentBlockId="AA"><span id="sc0501-2"><font size="2pt">�����`���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�q�v�f�̕����ł��B</font></span><br>
            <span id="sc0501-3"><t:ifAuthorized path="/authorization/authorizationForward.do" blockId="AAA"><font size="2pt">�`�F&lt;t:ifAuthorized&gt;�v�f�P�\������</font><br></t:ifAuthorized></span>
            <span  id="sc0501-4"><t:ifAuthorized path="/authorization/authorizationForward.do" blockId="AAA"><font size="2pt">�`�F&lt;t:ifAuthorized&gt;�v�f�Q�\������</font><br></t:ifAuthorized></span>
          </t:ifAuthorizedBlock>
        </t:ifAuthorizedBlock>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">�y�p�^�[���Q�z<br>&lt;t:ifAuthorized&gt;�v�f�P��FALSE ����<br>&lt;t:ifAuthorized&gt;�v�f�Q��TRUE</font>
      </td>
      <td width="480px" align="left">
        <t:ifAuthorizedBlock blockId="BB"><span id="sc0501-5"><font size="2pt">�����a���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�e�v�f�̕����ł��B</font></span><br>
          <t:ifAuthorizedBlock blockId="BBB" parentBlockId="BB"><span id="sc0501-6"><font size="2pt">�����a���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�q�v�f�̕����ł��B</font></span><br>
            <span id="sc0501-7"><t:ifAuthorized path="/authorization/notAuthorizationForward.do" blockId="BBB"><font size="2pt">���a�F&lt;t:ifAuthorized&gt;�v�f�P�\������</font><br></t:ifAuthorized></span>
            <span id="sc0501-8"><t:ifAuthorized path="/authorization/authorizationForward.do" blockId="BBB"><font size="2pt">�a�F&lt;t:ifAuthorized&gt;�v�f�Q�\������</font><br></t:ifAuthorized></span>
          </t:ifAuthorizedBlock>
       </t:ifAuthorizedBlock>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">�y�p�^�[���R�z<br>&lt;t:ifAuthorized&gt;�v�f�P��FALSE ����<br>&lt;t:ifAuthorized&gt;�v�f�Q��FALSE</font>
      </td>
      <td width="480px" align="left">
      <span id="sc0501-9">
        <t:ifAuthorizedBlock blockId="CC"><font size="2pt">�����b���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�e�v�f�̕����ł��B</font><br>
          <t:ifAuthorizedBlock blockId="CCC" parentBlockId="CC"><font size="2pt">�����b���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�q�v�f�̕����ł��B</font><br>
            <t:ifAuthorized path="/authorization/notAuthorizationForward1.do" blockId="CCC"><font size="2pt">�b�F&lt;t:ifAuthorized&gt;�v�f�P�\������</font><br></t:ifAuthorized>
            <t:ifAuthorized path="/authorization/notAhorizationForward2.do" blockId="CCC"><font size="2pt">�b�F&lt;t:ifAuthorized&gt;�v�f�Q�\������</font><br></t:ifAuthorized>
          </t:ifAuthorizedBlock>
        </t:ifAuthorizedBlock>
      </span>
      <br>
      </td>
    </tr>
    <tr>
      <td width="750px" colspan="2" align="left" valign="top" bgcolor="#87CEFA">
        <font size="2pt">�A&lt;t:ifAuthorized&gt;�v�f��&lt;t:ifAuthorizedBlock&gt;�q�v�f���R�t���Ă��Ȃ��ꍇ</font>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">�y�p�^�[���S�z<br>&lt;t:ifAuthorized&gt;�v�f��TRUE</font>
      </td>
      <td width="480px" align="left">
      <span id="sc0501-10">
        <t:ifAuthorizedBlock blockId="DD"><font size="2pt">�����c���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�e�v�f�̕����ł��B</font><br>
          <t:ifAuthorizedBlock blockId="XXX" parentBlockId="DD"><font size="2pt">�����c���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�q�v�f�̕����ł��B</font><br>
            <t:ifAuthorized path="/authorization/authorizationForward.do" blockId="DDD"><font size="2pt">�c�F&lt;t:ifAuthorized&gt;�v�f�\������</font><br></t:ifAuthorized>
          </t:ifAuthorizedBlock>
       </t:ifAuthorizedBlock>
      </span>
      <br>
      </td>
    </tr>
    <tr>
      <td width="750px" colspan="2" align="left" valign="top" bgcolor="#87CEFA">
        <font size="2pt">�A&lt;t:ifAuthorizedBlock&gt;�q�v�f��&lt;t:ifAuthorizedBlock&gt;�e�v�f���R�t���Ă��Ȃ��ꍇ</font>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">�y�p�^�[���T�z<br>&lt;t:ifAuthorized&gt;�v�f��TRUE</font>
      </td>
      <td width="480px" align="left">
      <span id="sc0501-11">
        <t:ifAuthorizedBlock blockId="XX"><font size="2pt">�����d���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�e�v�f�̕����ł��B</font><br>
          <t:ifAuthorizedBlock blockId="EEE" parentBlockId="DD"><font size="2pt">�����d���\������Ă���ꍇ�A�\�������&lt;t:ifAuthorizedBlock&gt;�q�v�f�̕����ł��B</font><br>
            <t:ifAuthorized path="/authorization/authorizationForward.do" blockId="EEE"><font size="2pt">�d�F&lt;t:ifAuthorized&gt;�v�f�Q�\������</font><br></t:ifAuthorized>
          </t:ifAuthorizedBlock>
        </t:ifAuthorizedBlock>
      </span>
      <br>
      </td>
    </tr>
  </table>
<!-- �����ɂ���ʕ\��/��\���ؑ�[end]-->
  <br>
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="���j���[��ʂɖ߂�" onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>