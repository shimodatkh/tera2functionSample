<%--
  - $Id: sc2301.jsp 11582 2006-04-26 01:54:20Z bs-chob $
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
<bean:define id="titleScreenName" scope="page" value="�r�W�l�X���W�b�N���o�͏������j���["/>
<bean:define id="screenName" scope="page" value="�r�W�l�X���W�b�N���o�͏������j���["/>
<bean:define id="screenID" scope="page" value="SC2301"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�r�W�l�X���W�b�N���o��</h4>
  ���̃��j���[��I�����ĉ�����<br/>
  <br>
  
  <html:link href="formBlogicioInputForward.do">�r�W�l�X���W�b�N���o�͉�ʁuform�v</html:link><br><br>
  <html:link href="requestBlogicio.do?requestData=requestData">�r�W�l�X���W�b�N���o�͉�ʁurequest�v</html:link><br><br>
  <html:link href="sessionBlogicio.do?sessionData=sessionData">�r�W�l�X���W�b�N���o�͉�ʁusession�v</html:link><br><br>
  <html:link href="applicationBlogicio.do?applicationData=applicationData">�r�W�l�X���W�b�N���o�͉�ʁuapplication�v</html:link><br><br>
  <html:link href="nullBlogicio.do">�r�W�l�X���W�b�N���o�͉�ʁu���o��null�v</html:link><br>

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