<%--
  - $Id: sc2302.jsp 11563 2006-04-24 08:26:45Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="�r�W�l�X���W�b�N���o�͋@�\"/>
<bean:define id="titleScreenName" scope="page" value="�r�W�l�X���W�b�N���o�͉�ʁuform�v����"/>
<bean:define id="screenName" scope="page" value="�r�W�l�X���W�b�N���o�͉�ʁuform�v����"/>
<bean:define id="screenID" scope="page" value="SC2302"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
    <h4>�r�W�l�X���W�b�N���s</h4>
    
    form1��form2�̓��͒l��\�����܂��B<br/><br/>
    <ts:form action="formBlogicio.do">
      form1 : <html:text property="form1" value="formData1" /><br/>
      form2 : <html:text property="form2" value="formData2" /><br/>
      <br/>
      <html:submit property="success" value="���s" />&nbsp;
    </ts:form>
<br/>
<hr>
<br/>
<br/>
<html:button property="menuButton" value="���j���[��ʂɖ߂�" onclick="location.href='../menuForward.do'" />
<br/>
<br/>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>