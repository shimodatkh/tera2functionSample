<%--
  - $Id: sc3203.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="paramFunc�ݒ�̃��b�Z�[�W�|�b�v�A�b�v�^�O�I��"/>
<bean:define id="screenName" scope="page" value="paramFunc�ݒ�̃��b�Z�[�W�|�b�v�A�b�v�^�O�I��"/>
<bean:define id="screenID" scope="page" value="SC3203"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- popup�̐ݒ�Őݒ肵���֐� -->
<script type="text/javascript">
    <!--
      function getParam() {
        return("menubar=yes,width=700,height=650");
      }
    -->
</script>
<!-- paramFunc���p�����[�^�Ƃ���popup�̐ݒ� -->
<ts:messagesPopup popup="/popup/popuptag_paramFuncForward.do" title="popupTitle2" paramFunc="getParam()" windowId="popupId2" />
<!-- begin body-->
  <ts:body>
 
  <h4>paramFunc�ݒ�̃��b�Z�[�W�|�b�v�A�b�v�^�O�I��</h4>
    <br>
    <ts:form action="popup_paramFuncErrorForward.do">
    <table>
      <tr>
          <td align="left">

          2. messagesPopup�^�O messagesPopup�^�O �ypopup, title, paramFunc, windowId�z 
          <UL>
            <LI>�|�b�v�A�b�v�ɃG���[���b�Z�[�W�ƃ��j���[�o�[���\������鎖���m�F�B<br></LI>
            <br>
            <LI>1,3��messagesPopup�^�O�T���v���ƕʂ̃|�b�v�A�b�v���o�鎖���m�F�B<br></LI>
            <br>
            <LI>�G���[�|�b�v�A�b�v���o�����html��script��paramFunc, windowId�������������L������鎖���m�F�B<br></LI>
            <br>
            <LI>messagesPopup�^�O�̐ݒ�<br>
                &lt;ts:messagesPopup popup=&quot;/popup/popuptag_paramFuncForward.do&quot; 
                 title=&quot;popupTitle2&quot; paramFunc =&quot;getParam()&quot; windowId=&quot;popupId2&quot;/&gt;
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