<%--
  - $Id: sc0203.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�g�����U�N�V�����Ǘ��@�\"/>
<bean:define id="titleScreenName" scope="page" value="�o�b�`���g�p����DB�A�N�Z�X�̃g�����U�N�V��������"/>
<bean:define id="screenName" scope="page" value="�o�b�`���g�p����DB�A�N�Z�X�̃g�����U�N�V��������"/>
<bean:define id="screenID" scope="page" value="SC0203"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- beagin body -->
  
  <h4>�Z���o�^</h4>
  <ts:form action="batchInsertAddress.do" onsubmit="return true;">
    <table border="1">
      <tr>
        <td colspan="2">
          �Z������1
        <td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�ڋq�R�[�h</b></td>
        <td>
          <html:text property="customerCode1" maxlength="8" tabindex="1" size="40" value="00001003"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�ڋq����</b></td>
        <td>
          <html:text property="customerName1" maxlength="30" tabindex="2" size="40" value="����"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�X�֔ԍ�</b></td>
        <td>
        <html:text property="postCode1" maxlength="8" tabindex="3" size="40" value="111-1234"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�Z��</b></td>
        <td>
          <html:text property="customerAddress1" maxlength="50" tabindex="4" size="40" value="�����s������"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�d�b�ԍ�</b></td>
        <td>
          <html:text property="customerTel1" maxlength="13" tabindex="5" size="40" value="070-4451-1234"/>
        </td>
      </tr>
    </table>
    <br/>
    <table border="1">
      <tr>
        <td colspan="2">
          �Z������2
        <td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�ڋq�R�[�h</b></td>
        <td>
          <html:text property="customerCode2" maxlength="8" tabindex="6" size="40" value="00001004"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�ڋq����</b></td>
        <td>
          <html:text property="customerName2" maxlength="30" tabindex="7" size="40" value="���"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�X�֔ԍ�</b></td>
        <td>
        <html:text property="postCode2" maxlength="8" tabindex="8" size="40" value="111-1234"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�Z��</b></td>
        <td>
          <html:text property="customerAddress2" maxlength="50" tabindex="9" size="40" value="�����s������"/>
        </td>
      </tr>
      <tr>
        <td width="80" align="center"><b>�d�b�ԍ�</b></td>
        <td>
          <html:text property="customerTel2" maxlength="13" tabindex="10" size="40" value="090-1122-1122"/>
        </td>
      </tr>
    </table>
    <br/>
    <table>
      <tr>
        <td>
          <ts:submit property="insertAddress"
                    value="�o�^" styleClass="com-normal-button" /> 
        </td>
      </tr>
    </table>
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
<%@ include file="../sc0004.jspf" %>
</html:html>