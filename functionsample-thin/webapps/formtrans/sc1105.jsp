<%--
  - $Id: sc1105.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�A�N�V�����t�H�[���؂�ւ�"/>
<bean:define id="titleScreenName" scope="page" value="�t�H�[���؂�ւ�����"/>
<bean:define id="screenName" scope="page" value="�t�H�[���؂�ւ�����"/>
<bean:define id="screenID" scope="page" value="SC1105"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->

<h4>�A�N�V�����t�H�[���؂�ւ�</h4>
<br>
�t�H�[���؂�ւ�����
<br>
<br>
<logic:empty name="_formtrans1Form">
  <span id='formtransMessage'>_formtrans1Form�̓A�N�V�����t�H�[���؂�ւ��@�\�ɂ��_formtrans2Form�ɐ؂�ւ��܂����B</span><br>
  <%-- �A�N�V�����t�H�[�� --%>
  <bean:define id="formID2" scope="session" toScope="page" name="_formtrans2Form" />
  �t�H�[���I�u�W�F�N�g�̃n�b�V���R�[�h�F<span id='FormID2'><%=formID2.hashCode()%></span>
  <br>
  <ul>
    <li><span id='ParamValue4'>param4�F<bean:write name="_formtrans2Form" property="param4" /></span></li>
    <li><span id='ParamValue5'>param5�F<bean:write name="_formtrans2Form" property="param5" /></span></li>
    <li><span id='ParamValue6'>param6�F<bean:write name="_formtrans2Form" property="param6" /></span></li>
  </ul>
</logic:empty>

<logic:notEmpty name="_formtrans1Form">
  <%-- �A�N�V�����t�H�[�� --%>
  <bean:define id="formID1" scope="session" toScope="page" name="_formtrans1Form" />
  �t�H�[���I�u�W�F�N�g�̃n�b�V���R�[�h�F<span id='FormID1'><%=formID1.hashCode()%></span>
  <br>
  <ul>
    <li><span id='ParamValue1'>param1�F<bean:write name="_formtrans1Form" property="param1" /></span></li>
    <li><span id='ParamValue2'>param2�F<bean:write name="_formtrans1Form" property="param2" /></span></li>
    <li><span id='ParamValue3'>param3�F<bean:write name="_formtrans1Form" property="param3" /></span></li>
  </ul>
</logic:notEmpty>
<br>
<br>
<hr>
<br>
<html:button property="menuButton" value="���j���[��ʂɖ߂�"
onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>

<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>