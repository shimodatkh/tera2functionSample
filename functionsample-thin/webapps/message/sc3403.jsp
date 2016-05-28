<%--
  - $Id: sc3403.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="���b�Z�[�W�\��"/>
<bean:define id="titleScreenName" scope="page" value="�G���[���b�Z�[�W�`�F�b�N"/>
<bean:define id="screenName" scope="page" value="�G���[���b�Z�[�W�`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC3403"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
    <h4>ifErrors�^�O�\��</h4>
    <br>
    <table>
      <tr>
        <td align="left">

          �P. ifErrors�^�O<br>
          <ul>
            <li>���͒l�Ȃ��ŃT�u�~�b�g�{�^���������������A<br>�h�G���[�����h�ƃG���[���b�Z�[�W���\������邩�m�F<br><br></li>
            <li>ifErrors�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;ts:ifErrors&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;font color=&quot;#FF0000&quot;&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�G���[�����B<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;/font&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;ts:errors/&gt;<br>
              &nbsp;&nbsp;&lt;/ts:ifErrors&gt;<br> 
            </li>
          </ul>
          <ts:ifErrors>
            &nbsp;&nbsp;&nbsp;&nbsp;�u<span id='errorTagifErrors'><font color="#FF0000">�G���[�����B</font></span>�v
            <span id='errorTagifErrorsMessage'><ts:errors/></span>
          </ts:ifErrors>
        </td>
      </tr>
        <tr>
          <td align="left">

          �Q. ifNotErrors�^�O<br>
          <ul>
            <li>���͒l����ŃT�u�~�b�g�{�^���������������A<br>�h�G���[�Ȃ��h�ƃ��b�Z�[�W���\������邩�m�F<br><br></li>
            <li>ifErrors�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;ts:ifNotErrors&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;font color=&quot;#FF0000&quot;&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�G���[�Ȃ��B<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;/font&gt;<br>
              &nbsp;&nbsp;&lt;/ts:ifNotErrors&gt;<br> 
            </li>
          </ul>
          <ts:ifNotErrors>
            &nbsp;&nbsp;&nbsp;&nbsp;�u<span id='errorTagifNotErrors'><font color="#FF0000">
            �G���[�Ȃ��B
            </font></span>�v
          </ts:ifNotErrors>
        </td>
      </tr>
     </table>
    <br/>
    <ts:form action="ifErrorstagErrorForward.do" onsubmit="return true;">
      <table border="0" cellspacing="0" cellpadding="2">
        <tr>
          <td>
          ���͒l�i�K�{�j�F<html:text name="ifErrorsForm" property="ifErrors" value="" maxlength="30" tabindex="1" />
          </td>
        </tr>
      </table>
      <br>
      <ts:submit property="submit"
                   value=" �T�u�~�b�g " styleClass="com-normal-button" /> 
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