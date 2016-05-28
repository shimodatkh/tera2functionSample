<%--
  - $Id: sc2102.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�g�����b�Z�[�W���\�[�X"/>
<bean:define id="titleScreenName" scope="page" value="�D�惁�b�Z�[�W�I��"/>
<bean:define id="screenName" scope="page" value="�D�惁�b�Z�[�W�I��"/>
<bean:define id="screenID" scope="page" value="SC2102"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>���b�Z�[�W�D�揇��</h4>
  <table cellspacing="10" cellpadding="10">
    <tr>
      <td align="left">  
        TERASOLUNA�ł́A�������b�Z�[�W�L�[�����݂���ꍇ�A�D�揇�ʂ��������b�Z�[�W���\������܂��B<br>
        �ȉ��͂��̗D�揇�ʂ�\���Ă��܂��B
      </td>
    </tr>
    
    <tr>
      <td align="left">
        �P�DStruts�W���̃��b�Z�[�W���\�[�X��`�t�@�C���F
        <span id='strutsMessageText'>
        <ts:messages id="msg1" name="msg" property="first" message="true">
          <bean:write name="msg1"/>
        </ts:messages><br>
        </span>
        �Q�DDB���b�Z�[�W���\�[�X��`�F
        <span id='dbMessageText'>
        <ts:messages id="msg2" name="msg" property="second" message="true">
          <bean:write name="msg2"/>
        </ts:messages><br>
        </span>
        �R�D�Ɩ����ʃ��b�Z�[�W���\�[�X��`�t�@�C���F
        <span id='businessMessageText'>
        <ts:messages id="msg3" name="msg" property="third" message="true">
          <bean:write name="msg3"/>
        </ts:messages><br>
        </span>
        �S�D�V�X�e�����b�Z�[�W���\�[�X��`�t�@�C���F
        <span id='systemMessageText'>
        <ts:messages id="msg4" name="msg" property="fourth" message="true">
          <bean:write name="msg4"/>
        </ts:messages><br>
        </span>
      </td>
    </tr>
    <tr>
      <td align="left">
        ���L�̃`�F�b�N�{�b�N�X�́A�`�F�b�N���ꂽ���b�Z�[�W���\�[�X�̒��ŗD�揇�ʂ��������b�Z�[�W��\�����܂��B
      </td>
    </tr>
  </table>
    <ts:form action="priorityOrder.do" onsubmit="return true;">
    <table border="1" frame="box" >
      <tr>
        <td align="left">
          �D�揇��1 MessageResources.properties�̃��b�Z�[�W
        </td>
        <td>
          <input type="checkbox" name="check1" value="true">
        </td>
      </tr>
      <tr>
        <td align="left">
          �D�揇��2 DB�̃��b�Z�[�W
        </td>
        <td>
          <input type="checkbox" name="check2" value="true">
        </td>
      </tr>
      <tr>
        <td align="left">
          �D�揇��3 application-messages.properties�̃��b�Z�[�W
        </td>
        <td>
          <input type="checkbox" name="check3" value="true">
        </td>
      </tr>
      <tr>
        <td align="left">
          �D�揇��4 System-messages.properties�̃��b�Z�[�W
        </td>
        <td>
          <input type="checkbox" name="check4" value="true">
        </td>
      </tr>
    </table>
    
    <br/>
    <table>
      <tr>
        <td>
          <ts:submit property="submit"
              value="���M" styleClass="com-normal-button" /> 
        </td>
      </tr>
    </table>
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