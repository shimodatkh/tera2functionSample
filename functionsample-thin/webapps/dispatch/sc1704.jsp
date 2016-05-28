<%--
  - $Id: sc1704.jsp 11645 2006-04-27 10:33:04Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="�W���f�B�X�p�b�`���@�\"/>
<bean:define id="titleScreenName" scope="page" value="���[�U���G���["/>
<bean:define id="screenName" scope="page" value="���[�U���G���["/>
<bean:define id="screenID" scope="page" value="SC1704"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
  <%@ include file="../sc0003.jspf" %>
  <!-- begin body-->

  <h4>�G���[</h4>
  <p>
  ���b�Z�[�W�F<ts:errors />
  </p>
  <p>
  ���A�N�V�����t�H�[���̃��[�U���I�u�W�F�N�g�̐���10�ɐݒ肳�ꂽ���߁A�f�[�^�x�[�X�Ƀ��[�U��10�l��<br>
    �������ꍇ�G���[���������܂��B�f�[�^�x�[�X�̃f�[�^���C�����ĉ������B
  </p>
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