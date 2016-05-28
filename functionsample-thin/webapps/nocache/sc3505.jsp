<%--
  - $Id: sc3505.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="�g��form�E�����N�Esubmit"/>
<bean:define id="titleScreenName" scope="page" value="form�^�O�g�p1"/>
<bean:define id="screenName" scope="page" value="form�^�O�g�p1"/>
<bean:define id="screenID" scope="page" value="SC3505"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>
  <head>
    <STYLE type="text/css">
    <!--
    .Class_01{
      color: red;
    }
    -->
    </STYLE>

    <script type="text/javascript">
    <!--
        function fun1() {
            return (confirm('���Z�b�g���Ă����ł����H'));
        }
        function fun2() {
            return (confirm('�T�u�~�b�g���Ă����ł����H'));
        }

    // -->
    </script>

  </head>

<!-- begin body-->
  <h4>form�^�O</h4>

  <br>

    1. form�^�O �yaction, method, enctype, onreset, onsubmit, styleClass, target�z
    <ul>
      <li>�������ԐF�ɕ\������鎖���m�F�B<br><br></li>
      <li>Submit�{�^�����N���b�N������A&quot;�T�u�~�b�g���Ă����ł���?&quot;�̊m�F���b�Z�[�W��ʂ��o�鎖���m�F�B<br><br></li>
      <li>&quot;�T�u�~�b�g���Ă����ł���?&quot;�̊m�F���b�Z�[�W��ʂ��m�F������A��ʂ̃A�h���X��TOKEN�̓��e���\������Ȃ������m�F�B<br><br></li>
      <li>Reset�{�^�����N���b�N������A&quot;���Z�b�g���Ă����ł���?&quot;�̊m�F���b�Z�[�W��ʂ��o�鎖���m�F�B<br><br></li>
      <li>�{�^�����N���b�N������̌��ʉ�ʂ��V�����E�C���h�E�ŏo�鎖���m�F�B<br><br></li>
      <li>form�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:form action=&quot;/form1Forward.do&quot; method=&quot;post&quot; enctype=&quot;application/x-www-form-urlencoded&quot;<br>
        &nbsp;&nbsp;&nbsp;&nbsp;onreset=&quot;return fun1();&quot; onsubmit=&quot;return fun2();&quot; styleClass=&quot;Class_01&quot; target=&quot;form_submit&quot;&gt;<br>
      </li>
    </ul>
    <div align="left">
      <ts:form action="/form1Forward.do" method="post" enctype="application/x-www-form-urlencoded"
        onreset="return fun1();" onsubmit="return fun2();" styleClass="Class_01" target="form_submit" scriptLanguage="false">
            ���͂P<html:text name="nocacheForm" property="hoge" maxlength="30" size="30" /><br>
            ���͂Q<html:text name="nocacheForm" property="moge" maxlength="30" size="30" />
            <html:reset/>
            <html:submit/>
      </ts:form>
    </div>
    <br>
    <html:link page="/formForward.do">form�^�O���j���[</html:link>
  <br>
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

