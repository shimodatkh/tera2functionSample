<%--
  - $Id: sc3504.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="�g��form�E�����N�Esubmit"/>
<bean:define id="titleScreenName" scope="page" value="submit�^�O"/>
<bean:define id="screenName" scope="page" value="submit�^�O"/>
<bean:define id="screenID" scope="page" value="SC3504"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>submit�^�O</h4>
    
<br>
  <head>
    <title>submit�^�O</title>
    <STYLE type="text/css">
    <!--
    .Class_01{
        background-color:#ffffcc;
    }

    #Class_02{
        background-color:red;
    }
    -->
    </STYLE>

  </head>
<%
    String[] strs= new String[]{"Akimoto","Baraki","Chiba","Degawa"};
    pageContext.setAttribute("strs", strs);
%>
  <ts:form action="/submitResultForward.do">
    1. submit�^�O �ytarget, tabindex=2�z<br>
    <ul>
      <li>�V�����E�C���h�E���\������鎖���m�F�B</li>
      <li>�ŏ����̉�ʂ��\���������ATab�L�[��������2�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; tabindex=&quot;2&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1"  tabindex="2">
       submit
    </ts:submit>
    <br><br><br>
    2. submit�^�O �ytarget, tabindex=1�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂł͂Ȃ��ʂ̐V�����E�C���h�E���\������鎖���m�F�B</li>
      <li>�ŏ����̉�ʂ��\���������ATab�L�[��������1�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame2&quot; tabindex=&quot;1&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame2"  tabindex="1">
       submit
    </ts:submit>
    <br><br><br>
    3. submit�^�O �ytarget, onclick, tabindex=3�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^�����N���b�N�������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>�ŏ����̉�ʂ��\���������ATab�L�[��������3�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onclick=&quot;alert('onclick');&quot; tabindex=&quot;3&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit  target="_frame1" onclick="alert('onclick');" tabindex="3">
       �N���b�N�Ń_�C�A���O
    </ts:submit>
    <br><br><br>
    4. submit�^�O �ytarget, ondblclick, tabindex=4�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^�����_�u���N���b�N�������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>�ŏ����̉�ʂ��\���������ATab�L�[��������4�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; ondblclick=&quot;alert('ondblclick');&quot; tabindex=&quot;4&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" ondblclick="alert('ondblclick');"  tabindex="4">
       �_�u���N���b�N�Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    5. submit�^�O �ytarget, onfocus�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^���Ƀt�H�[�J�X���������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onfocus=&quot;alert('onfocus');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onfocus=" alert('onfocus');" >
        �t�H�[�J�X�Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    6. submit�^�O �ytarget, onblur�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^�����t�H�[�J�X�𖳂��������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onblur=&quot;alert('onblur');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onblur="alert('onblur');" >
       �t�H�[�J�X�r���Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    7. submit�^�O �ytarget, onkeydown�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^���Ƀt�H�[�J�X�ƃL�[�_�E���̃C�x���g���������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onkeydown=&quot;alert('onkeydown');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onkeydown="alert('onkeydown');" >
       �t�H�[�J�X�{�L�[�_�E���Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    8. submit�^�O �ytarget, onkeypress�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^���Ƀt�H�[�J�X�ƃL�[���͂̃C�x���g���������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onkeypress=&quot;alert('onkeypress');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onkeypress="alert('onkeypress');">
        �t�H�[�J�X�{�L�[���͂Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    9. submit�^�O �ytarget, onkeyup�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^���Ƀt�H�[�J�X�ƃL�[�A�b�v�̃C�x���g���������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onkeyup=&quot;alert('onkeyup');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onkeyup="alert('onkeyup');" >
   �@�@ �t�H�[�J�X�{�L�[�A�b�v�Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    10. submit�^�O �ytarget, onmousedown�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^�����}�E�X�ŃN���b�N�������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmousedown=&quot;alert('onmousedown');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmousedown="alert('onmousedown');">
       �t�H�[�J�X+�}�E�X�����Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    11. submit�^�O �ytarget, onmousemove�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^���̏���}�E�X���ړ��������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmousemove=&quot;alert('onmousemove');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmousemove="alert('onmousemove');" >
       �}�E�X�ړ��Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    12. submit�^�O �ytarget, onmouseout�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�{�^���̏ォ��O�Ƀ}�E�X���ړ��������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmouseout=&quot;alert('onmouseout');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmouseout="alert('onmouseout');">
       �}�E�X�J�[�\���A�E�g�Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    13. submit�^�O �ytarget, onmouseover�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�O����{�^���̏�Ƀ}�E�X���ړ��������A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmouseover=&quot;alert('onmouseover');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmouseover="alert('onmouseover');">
       �}�E�X�J�[�\���I�[�o�[�Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    14. submit�^�O �ytarget, onmouseup�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
�@    <li>�}�E�X�Ń{�^�����N���b�N������{�^�����オ�鎞�A�_�C�A���O���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmouseup=&quot;alert('onmouseup');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmouseup="alert('onmouseup');">
       �}�E�X�{�^���A�b�v�Ń_�C�A���O�\��
    </ts:submit>
    <br><br><br>
    15. submit�^�O �ytarget, styleClass�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�w�i�F���ݒ肳��鎖���m�F�B</li>
      <li>styleClass�̐ݒ�<br>
          &lt;STYLE type=&quot;text/css&quot;&gt;<br>
          &nbsp;&nbsp;&lt;!--<br>
          &nbsp;&nbsp;.Class_01{<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:#ffffcc;<br>
          &nbsp;&nbsp;}<br>
          &nbsp;&nbsp;--&gt;<br>
          &nbsp;&nbsp;&lt;/STYLE&gt;<br></li>      
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; styleClass=&quot;Class_01&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" styleClass="Class_01">
       CSS�ɂ��o�b�N�O���E���h�J���[�ݒ�(styleClass)
    </ts:submit>
    <br><br><br>
    16. submit�^�O �ytarget, style�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�w�i�F���ݒ肳��鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; style=&quot;background-color:#CFDBE2;&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" style="background-color:#CFDBE2;">
       CSS�ɂ��o�b�N�O���E���h�J���[�ݒ�2(style)
    </ts:submit>
    <br><br><br>
    17. submit�^�O �ytarget, styleId�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�w�i�F���ݒ肳��鎖���m�F�B</li>
      <li>styleId�̐ݒ�<br>
          &lt;STYLE type=&quot;text/css&quot;&gt;<br>
          &nbsp;&nbsp;&lt;!--<br>
          &nbsp;&nbsp;#Class_02{<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:red;<br>
          &nbsp;&nbsp;}<br>
          &nbsp;&nbsp;--&gt;<br>
          &nbsp;&nbsp;&lt;/STYLE&gt;<br></li> 
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; styleId=&quot;Class_02&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" styleId="Class_02">
       CSS�ɂ��o�b�N�O���E���h�J���[�ݒ�3(styleId)
    </ts:submit>
    <br><br><br>
    18. submit�^�O �ytarget, value�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>values�������{�^���ɕ\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; value=&quot;�T�u�~�b�g&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" value="�T�u�~�b�g" />
    <br><br><br>
    19. submit�^�O �ytarget, alt, accessKey�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>&quot;Alt+A&quot;���������A���̃{�^�����t�H�[�J�X����鎖���m�F�B</li>
      <li>���̃{�^�����\������Ȃ����Aalt�����̓��e���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; alt=&quot;alt�����̓��e�ł��B&quot; accesskey=&quot;a&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" alt="alt�����̓��e�ł��B" accesskey="a" />
    <br><br><br>
    20. submit�^�O �ytarget, altKey�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>���̃{�^�����\������Ȃ����AaltKey�����̃L�[�ɓ�����f�[�^���\������鎖���m�F�B
        (�v���p�e�B�t�@�C���̐ݒ�: &quot;submit.alt = taglibMessageResources.properties�ɐݒ肵��submit.alt�̓��e�ł��B&quot;)</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; altKey=&quot;submit.alt&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" altKey="submit.alt" />
    <br><br><br>
    21. submit�^�O �ytarget, disable�z<br>
    <ul>
      <li>���̃{�^��������������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; disabled=&quot;true&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" disabled="true" />
    <br><br><br>
    22. submit�^�O �ytarget, indexed, property�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�{�^������collection�̃f�[�^�ŕ\�����鎖���m�F�B<br>
          (collection�̃f�[�^: {"Akimoto","Baraki","Chiba","Degawa"})</li>
      <li>submit�{�^����html��name�������S���Ⴄ�����m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; indexed=&quot;true&quot; property=&quot;frame1SCR&quot;&gt;</li>
    </ul>
    <logic:iterate id="data" collection='<%= strs %>'>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" indexed="true" property="frame1SCR">
      <bean:write name="data" />
    </ts:submit>
    <br>
    </logic:iterate>
    <br><br><br>
    23. submit�^�O �ytarget, onchange�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�{�^���͂���value��ς�鎖���Ȃ��̂�onchange�����̓`�F�b�N�ł��Ȃ��B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onchange=&quot;alert('onchange')&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onchange="alert('onchange')"/>
    <br><br><br>
    24. submit�^�O �ytarget, title�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�{�^���̏�Ƀ}�E�X���悹�鎞�Atitle�����̓��e���\������鎖���m�F�B</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; title=&quot;title�����ɐݒ肵���^�C�g��&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" title="title�����ɐݒ肵���^�C�g��"/>
    <br><br><br>
    25. submit�^�O �ytarget, titleKey�z<br>
    <ul>
      <li>1.submit�^�O�̌��ʂƓ����E�C���h�E���\������鎖���m�F�B</li>
      <li>�{�^���̏�Ƀ}�E�X���悹�鎞�AtitleKey�����̃L�[�̓��e���\������鎖���m�F�B<br>
          (�v���p�e�B�t�@�C���̐ݒ�: &quot;link.title = taglibMessageResources.properties�ɐݒ肵��link.title�̓��e�ł��B&quot;)</li>
      <li>submit�^�O�̐ݒ�<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; titleKey=&quot;link.title&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" titleKey="link.title"/>
  
  <br><br><br>
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

