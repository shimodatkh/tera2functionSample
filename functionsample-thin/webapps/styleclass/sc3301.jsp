<%--
  - $Id: sc3301.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�X�^�C���N���X�؂�ւ�"/>
<bean:define id="titleScreenName" scope="page" value="�X�^�C���N���X�؂�ւ�"/>
<bean:define id="screenName" scope="page" value="�X�^�C���N���X�؂�ւ�"/>
<bean:define id="screenID" scope="page" value="SC3301"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>�X�^�C���N���X�؂�ւ�</h4>
    
changeStyleClass�^�O �yname, default, error�z<br><br>
  <span id="styleClassError">
  <ts:errors/>
  </span>
  <ts:form action="styleclassCheckForward.do">
    <ul>
      <li>���͂��Ȃ����A&quot;���͒l�i�K�{�j�F&quot;���ԐF�ɕ\������鎖���m�F�B<br><br></li>
      <li>changeStyleClass�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;td class='&lt;ts:changeStyleClass name=&quot;data&quot; default=&quot;ItemLabel&quot; error=&quot;ErrorItem&quot;/&gt;'&gt;<br>
      </li>
    </ul>
    <table id="styleClassTable" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td class='<ts:changeStyleClass name="data" default="ItemLabel" error="ErrorItem"/>'>
        ���͒l�i�K�{�j�F<html:text name="styleclassForm" property="data" maxlength="30" size="30" />
        </td>
      </tr>
      <tr>
        <td align="center"><html:submit value="�T�u�~�b�g"/></td>
      </tr>
    </table>
</ts:form>
    
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