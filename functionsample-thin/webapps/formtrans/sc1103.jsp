<%--
  - $Id: sc1103.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="�t�H�[���؂�ւ��Ȃ��iclearForm=true�j"/>
<bean:define id="screenName" scope="page" value="�t�H�[���؂�ւ��Ȃ��iclearForm=true�j"/>
<bean:define id="screenID" scope="page" value="SC1103"/>
<%-- �A�N�V�����t�H�[�� --%>
<bean:define id="formID" scope="session" toScope="page" name="_formtrans1Form" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->

<h4>�A�N�V�����t�H�[���؂�ւ�</h4>
�t�H�[���؂�ւ��Ȃ��iclearForm="true"�j<br>
<br>
�t�H�[���I�u�W�F�N�g�̃n�b�V���R�[�h�F<span id='FormID'><%=formID.hashCode()%></span>
<br>
<ul>
  <li><span id='ParamValue1'>param1 : <bean:write name="_formtrans1Form" property="param1" /></span></li>
  <li><span id='ParamValue2'>param2 : <bean:write name="_formtrans1Form" property="param2" /></span></li>
  <li><span id='ParamValue3'>param3 : <bean:write name="_formtrans1Form" property="param3" /></span></li>
</ul>
<br>
<html:link href="formtransClearFormResultForward.do">�t�H�[���؂�ւ��Ȃ��iclearForm="true"�j</html:link>
<br><br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>