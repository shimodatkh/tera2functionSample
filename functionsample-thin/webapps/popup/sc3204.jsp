<%--
  - $Id: sc3204.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="���b�Z�[�W�|�b�v�A�b�v"/>
<bean:define id="titleScreenName" scope="page" value="param�ݒ�̃��b�Z�[�W�|�b�v�A�b�v�^�O�I��"/>
<bean:define id="screenName" scope="page" value="param�ݒ�̃��b�Z�[�W�|�b�v�A�b�v�^�O�I��"/>
<bean:define id="screenID" scope="page" value="SC3204"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- param���p�����[�^�Ƃ���popup�̐ݒ� -->
<ts:messagesPopup popup="/popup/popuptag_paramForward.do" title="popupTitle1" param="menubar=no,width=800,height=800" windowId="popupId3" />
<!-- begin body-->
  <ts:body>
 
  <h4>param�ݒ�̃��b�Z�[�W�|�b�v�A�b�v�^�O�I��</h4>
    <br>
    <ts:form action="popup_paramErrorForward.do">
    <table>
      <tr>
        <td align="left">

          3. messagesPopup�^�O �ypopup, title, param�z  
          <UL>
            <LI>�|�b�v�A�b�v�ɃG���[���b�Z�[�W���\������鎖���m�F�B<br></LI>
            <br>
            <LI>1��messagesPopup�^�O�T���v���Ɠ����|�b�v�A�b�v���o�鎖���m�F�B<br></LI>
            <br>
            <LI>2��messagesPopup�^�O�T���v���ƕʂ̃|�b�v�A�b�v���o�鎖���m�F�B<br></LI>
            <br>
            <LI>�G���[�|�b�v�A�b�v���o�����html��script��param�̓��e���\������鎖���m�F�B<br></LI>
            <br>
            <LI>messagesPopup�^�O�̐ݒ�<br>
                &lt;ts:messagesPopup popup=&quot;/popup/popuptag_paramForward.do&quot; title=&quot;popupTitle1&quot; param=&quot;menubar=no,width=800,height=800&quot; windowId=&quot;popupId3&quot; /&gt;
            </LI>
            <br>
          </UL>
          <br>
        </td>
      </tr>
       
      <tr>
        <table border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td align="left">
              ���͒l�i�K�{�j�F<html:text name="popupForm" property="data" maxlength="30" size="30" />
            </td>
          </tr>
          <tr>
            <td align="center"><html:submit value="�T�u�~�b�g"/></td>
          </tr>
        </table>
      </tr>
    </table>
    </ts:form>
    <br>
    <hr>
    <br>
    <html:button property="menuForward" value="���j���[��ʂɖ߂�" onclick="location.href='../menuForward.do'" />
    <br>
    <br>
    <br>
  </ts:body>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>