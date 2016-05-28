<%--
  - $Id: sc0602.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@ page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J" %>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�T�[�o�ǃ`�F�b�N"/>
<bean:define id="titleScreenName" scope="page" value="�T�[�o�ǂ�����Ԃő���ʂɃA�N�Z�X�����ۂɑJ�ڂ����G���["/>
<bean:define id="screenName" scope="page" value="�T�[�o�ǂ�����Ԃő���ʂɃA�N�Z�X�����ۂɑJ�ڂ����G���["/>
<bean:define id="screenID" scope="page" value="SC0602"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
    <h1>
    <font color="red"><strong>�T�[�o�ǒ��ł��B
              </strong></font>
    </h1>
    <br>
    <font color="red">���[�UID�ƃp�X���[�h����͂��A�u�ǉ����v�{�^���������Ă��������B
    </font>
    <ts:form action="cancelServerBlockage.do">
      <table id="logon-table" summary="���O�I���t�H�[�����C�A�E�g�p">
        <tr>
          <td>
            <label for="userid-field">���[�UID:</label>
          </td>
          <td>
            <html:text property="userID" value="" maxlength="8" styleId="userid-field" tabindex="1" />
          </td>
        </tr>
        <tr>
          <td>
            <label for="password-field">�p�X���[�h:</label>
          </td>
          <td>
            <html:password property="password" value="" styleId="password-field" tabindex="2" />
          </td>
        </tr>
        <tr>
          <td colspan="2" id="logon-form-button-area">
            <ts:submit property="cancelServerBlockage"
                   value=" �ǉ��� " styleClass="com-normal-button" /> 
          </td>
        </tr>
      </table>
    </ts:form>
    <br>
    <br>
    <br>
    
<!-- end body-->    
<%@ include file="../sc0004.jspf" %>
</html:html>
