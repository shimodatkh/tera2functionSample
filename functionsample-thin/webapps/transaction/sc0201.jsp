<%--
  - $Id: sc0201.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="���j���["/>
<bean:define id="screenName" scope="page" value="�g�����U�N�V���������I��"/>
<bean:define id="screenID" scope="page" value="SC0201"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�A�N�V�����t�H�[���g��</h4>
  ���̃��j���[��I�����ĉ�����<br>
  <br>
  
  <html:link href="generalTransactionForward.do">���DB�A�N�Z�X�̃g�����U�N�V��������</html:link><br><br>
  <html:link href="batchTransactionForward.do">�o�b�`���g�p����DB�A�N�Z�X�̃g�����U�N�V��������</html:link><br><br>
  <html:link href="generalWithBatchTransactionForward.do">�o�b�`�ƈ��DB�A�N�Z�X�����g�p�����g�����U�N�V��������</html:link><br><br>
    
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