<%--
  - $Id: sc3503.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@page import="jp.terasoluna.thin.functionsample.nocache.bean.LinkParameter" %>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="�g��form�E�����N�Esubmit"/>
<bean:define id="titleScreenName" scope="page" value="link�^�O"/>
<bean:define id="screenName" scope="page" value="link�^�O"/>
<bean:define id="screenID" scope="page" value="SC3503"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>�����N�^�O�@�\</h4>
    
  <br>
  <head>
    <title>�����N�^�O</title>
    
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
    String[] strs= new String[]{"Tokyo","Osaka","Chiba","Saitama"};
    pageContext.setAttribute("strs", strs);
    request.setAttribute("linkBean",new LinkParameter());
    
%>
  1. link�^�O �ypage, linkName�z<br>
  <ul>
    <li>page�ɐݒ肵���A�N�V�����Ƀ����N�ł��鎖���m�F�B</li>
    <li>27. link�^�O���N���b�N���A�����ɗ��鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; linkName=&quot;target&quot; &gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" linkName="target">
    Link Tag
  </ts:link>
  <br>
  <br>
  <br>

  2. link�^�O �ypage, title, tabindex�z<br>
  <ul>
    <li>page�ɐݒ肵���A�N�V�����Ƀ����N�ł��鎖���m�F�B</li>
    <li>�����N�̏�Ƀ}�E�X���悹�鎞�Atitle�����̓��e���\������鎖���m�F�B</li>
    <li>�ŏ����̉�ʂ��\���������ATab�L�[��������2�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; title=&quot;TITLE&quot; tabindex=&quot;2&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" title="TITLE"  tabindex="2">
    link�^�O�T���v�� ���� page(tabindex2)
  </ts:link> 
  <br>
  <br>
  <br>

  3. link�^�O �yforward, tabindex�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�ŏ����̉�ʂ��\���������ATab�L�[��������1�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; tabindex=&quot;1&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink"  tabindex="1">
    link�^�O�T���v�� ���� forward(tabindex1)
  </ts:link> 
  <br>
  <br>
  <br>

  4. link�^�O �yaction, tabindex�z<br>
  <ul>
    <li>struts-confis.xml�ɐݒ肵��action����action�����Ń����N�ł��鎖���m�F�B</li>
    <li>�ŏ����̉�ʂ��\���������ATab�L�[��������3�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link action=&quot;/linkForward&quot; tabindex=&quot;3&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link action="/linkForward" tabindex="3" >
    link�^�O�T���v�� ���� action(tabindex3)
  </ts:link>
  <br>
  <br>
  <br>

  5. link�^�O �yhref, tabindex, module, useLocalEncoding�z<br>
  <ul>
    <li>web�A�h���X��href�����Ń����N�ł��邩���m�F�B</li>
    <li>�ŏ����̉�ʂ��\���������ATab�L�[��������4�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link href=&quot;/functionsample-thin/&quot; tabindex=&quot;4&quot; module=&quot;&quot; useLocalEncoding=&quot;true&quot; &gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link href="/functionsample-thin/index.jsp" tabindex="4" module="" useLocalEncoding="true">
    link�^�O�T���v���i���O�I����ʁj���� href(tabindex4)
  </ts:link>
  <br>
  <br>
  <br>

  6. link�^�O �yforward, ondblclick, tabindex�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N���_�u���N���b�N�������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>�ŏ����̉�ʂ��\���������ATab�L�[��������5�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; ondblclick=&quot;alert('ondblclick');&quot; tabindex=&quot;5&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" ondblclick="alert('ondblclick');" tabindex="5">
    �_�u���N���b�N�Ń_�C�A���O�\��(tabindex5)
  </ts:link>
  <br>
  <br>
  <br>

  7. link�^�O �yforward, onblur, tabindex�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N���t�H�[�J�X�𖳂��������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>�ŏ����̉�ʂ��\���������ATab�L�[��������6�Ԗڂɂ��̃����N���I������鎖���m�F�B(�A�h���X�o�[�͏����j</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onblur=&quot;alert('onblur');&quot; tabindex=&quot;6&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onblur="alert('onblur');"  tabindex="6" >
    �t�H�[�J�X�r���Ń_�C�A���O�\��(tabindex6)
  </ts:link>
  <br>
  <br>
  <br>

  8. link�^�O �yforward, onclick�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N���N���b�N�������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onclick=&quot;alert('onclick');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onclick="alert('onclick');" >
    �N���b�N�Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  9. link�^�O �yforward, onfocus�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N�Ƀt�H�[�J�X���������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onfocus=&quot;alert('onfocus');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onfocus="alert('onfocus');" >
    �t�H�[�J�X�Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  10. link�^�O �yforward, onkeydown�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N�Ƀt�H�[�J�X�ƃL�[�_�E���̃C�x���g���������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onkeydown=&quot;alert('onkeydown');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onkeydown="alert('onkeydown');" >
    �t�H�[�J�X�{�L�[�_�E���Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  11. link�^�O �yforward, onkeypress�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N�Ƀt�H�[�J�X�ƃL�[���͂̃C�x���g���������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onkeypress=&quot;alert('onkeypress');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onkeypress="alert('onkeypress');" >
    �t�H�[�J�X�{�L�[���͂Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  12. link�^�O �yforward, onkeyup�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N�Ƀt�H�[�J�X�ƃL�[�A�b�v�̃C�x���g���������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onkeyup=&quot;alert('onkeyup');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onkeyup="alert('onkeyup');" >
    �t�H�[�J�X�{�L�[�A�b�v�Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>
 
  13. link�^�O �yforward, onmousedown�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N���}�E�X�ŃN���b�N�������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmousedown=&quot;alert('onmousedown');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmousedown="alert('onmousedown');" >
    �}�E�X�����Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  14. link�^�O �yforward, onmousemove�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N�̏���}�E�X���ړ��������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmousemove=&quot;alert('onmousemove');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmousemove="alert('onmousemove');" >
    �}�E�X�ړ��Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  15. link�^�O �yforward, onmouseout�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N�̏ォ��O�Ƀ}�E�X���ړ��������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmouseout=&quot;alert('onmouseout');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmouseout="alert('onmouseout');" >
    �}�E�X�J�[�\���A�E�g�Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  16. link�^�O �yforward, onmouseover�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�O���烊���N�̏�Ƀ}�E�X���ړ��������A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmouseover=&quot;alert('onmouseover');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmouseover="alert('onmouseover');" >
    �}�E�X�J�[�\���I�[�o�[�Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>

  17. link�^�O �yforward, onmouseup�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�}�E�X�Ń����N���N���b�N������{�^�����オ�鎞�A�_�C�A���O���\������鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmouseup=&quot;alert('onmouseup');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmouseup="alert('onmouseup');">
    �}�E�X�{�^���A�b�v�Ń_�C�A���O�\��
  </ts:link>
  <br>
  <br>
  <br>
  
  18. link�^�O �yforward, styleClass�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�w�i�F���ݒ肳��邩���m�F�B</li>
    <li>styleClass�̐ݒ�<br>
        &lt;STYLE type=&quot;text/css&quot;&gt;<br>
        &nbsp;&nbsp;&lt;!--<br>
        &nbsp;&nbsp;.Class_01{<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:#ffffcc;<br>
        &nbsp;&nbsp;}<br>
        &nbsp;&nbsp;--&gt;<br>
        &nbsp;&nbsp;&lt;/STYLE&gt;<br></li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; styleClass=&quot;Class_01&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" styleClass="Class_01">
    CSS�ɂ��o�b�N�O���E���h�J���[�ݒ�(styleClass)
  </ts:link>
  <br>
  <br>
  <br>

  19. link�^�O �yforward, style�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�w�i�F���ݒ肳��鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; style=&quot;background-color:#CFDBE2;&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" style="background-color:#CFDBE2;">
    CSS�ɂ��o�b�N�O���E���h�J���[�ݒ�2(style)
  </ts:link>
  <br>
  <br>
  <br>

  20. link�^�O �yforward, styleId�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�w�i�F���ݒ肳��鎖���m�F�B</li>
    <li>styleId�̐ݒ�<br>
        &lt;STYLE type=&quot;text/css&quot;&gt;<br>
        &nbsp;&nbsp;&lt;!--<br>
        &nbsp;&nbsp;#Class_02{<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:red;<br>
        &nbsp;&nbsp;}<br>
        &nbsp;&nbsp;--&gt;<br>
        &nbsp;&nbsp;&lt;/STYLE&gt;<br></li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; styleId=&quot;Class_02&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" styleId="Class_02">
    CSS�ɂ��o�b�N�O���E���h�J���[�ݒ�3(styleId)
  </ts:link>
  <br>
  <br>
  <br>

  21. link�^�O �yforward, paramId, paramName, paramProperty, paramScope�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N��URI��name�����̃f�[�^�����鎖���m�F�B<br>
        (_taglibForm2��link�̃f�[�^: dynamicURI)</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;paramId=&quot;name&quot; paramName=&quot;_taglibForm2&quot;
      paramProperty=&quot;link&quot; paramScope=&quot;session&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" 
    paramId="name" paramName="_taglibForm2" paramProperty="link" paramScope="session">
    link�^�O�T���v�� ���� param 
  </ts:link>
  <br>
  <br>
  <br>

  22. link�^�O �yforward, name, property, scope�z<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N��URI��sample�Asample2�̃f�[�^�����鎖���m�F�B<br>
        (linkBean��sample�̃f�[�^: hello�A&nbsp;linkBean��sample2�̃f�[�^: goodby)</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;name=&quot;linkBean&quot; property=&quot;parameters&quot;
      scope=&quot;request&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" 
    name="linkBean" property="parameters" scope="request">
    link�^�O�T���v�� ���� name 
  </ts:link>
  <br>
  <br>
  <br>

  23. link�^�O �yforward, indexed, indexId�z�ilogic:iterate���j<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N����collection�̃f�[�^�ŕ\�����鎖���m�F�B<br>
        (collection�̃f�[�^: {"Tokyo","Osaka","Chiba","Saitama"})</li>
    <li>�e�����N��URI��indesxId������number�����邩���m�F�B</li>
    <li>�e�����N��URI��number�̃f�[�^���S���Ⴄ�����m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; indexed=&quot;true&quot; indexId=&quot;number&quot;&gt;</li>
  </ul>
  <logic:iterate id="data" collection='<%= strs %>'>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" indexed="true" indexId="number">
      <bean:write name="data" /><br>
    </ts:link>
  </logic:iterate>
  <br>
  <br>
  <br>

  24. link�^�O �yforward, indexed�z�ilogic:iterate���j<br>
  <ul>
    <li>struts-confis.xml��global-forwards�ɐݒ肵��forward����forward�����Ń����N�ł��鎖���m�F�B</li>
    <li>�����N����_taglibForm2��linkList�̃f�[�^�ŕ\�����鎖���m�F�B<br>
        (_taglibForm2��linkList�̃f�[�^: {"Japan", "USA", "Chaina", "France"})</li>
    <li>�e�����N��URI��index�����邩���m�F�B</li>
    <li>�e�����N��URI��index�̃f�[�^���S���Ⴄ�����m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; indexed=&quot;true&quot;&gt;</li>
  </ul>
  <logic:iterate id="list" name="_taglibForm2" property="linkList" indexId="i">
  
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" indexed="true">
      <bean:write name="_taglibForm2" property='<%= "linkList[" + i + "]" %>' /><br>
    </ts:link>
  </logic:iterate>
  <br>
  <br>
  <br>

  25. link�^�O �ypage, target�z<br>
  <ul>
    <li>page�ɐݒ肵���A�N�V�����Ƀ����N�ł��鎖���m�F�B</li>
    <li>�����N��̉�ʂ��V�����E�C���h�E�ɕ\������鎖���m�F�B<br>
        (�V�����\�������E�C���h�E�̓A�N�Z�X�������Ȃ��̂ŁA���O�I������K�v������B)</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; target=&quot;_blank&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" target="_blank">
    ����target(�V�K�t���[��)
  </ts:link>
  <br>
  <br>
  <br>

  26. link�^�O �ypage, transaction, titleKey�z<br>
  <ul>
    <li>page�ɐݒ肵���A�N�V�����Ƀ����N�ł��鎖���m�F�B</li>
    <li>�����N��URI��TOKEN�f�[�^�����鎖���m�F�B</li>
    <li>�����N�̏�Ƀ}�E�X���悹�鎞�AtitleKey�����̃L�[�ɓ�����f�[�^���\������鎖���m�F�B<br>
        (�v���p�e�B�t�@�C���̐ݒ�: &quot;link.title = taglibMessageResources.properties�ɐݒ肵��link.title�̓��e�ł��B&quot;)</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; transaction=&quot;true&quot; titleKey=&quot;link.title&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" transaction="true" titleKey="link.title">
    �g�����U�N�V������URI�ɒǉ�
  </ts:link>
  <br>
  <br>
  <br>

  27. link�^�O �ypage, anchor, title, accesskey�z<br>
  <ul>
    <li>page�ɐݒ肵���A�N�V�����Ƀ����N�ł��鎖���m�F�B</li>
    <li>�����N���N���b�N�������A���̃y�[�W��&quot;1. link�^�O&quot;�ɃW�����v���鎖���m�F�B</li>
    <li>�����N�̏�Ƀ}�E�X���悹�鎞�Atitle�����̓��e���\������鎖���m�F�B</li>
    <li>&quot;Alt+A&quot;���������A���̃����N���t�H�[�J�X����鎖���m�F�B</li>
    <li>link�^�O�̐ݒ�<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; anchor=&quot;target&quot; title=&quot;1. link�^�O�ɃW�����v���܂��B&quot; accesskey=&quot;a&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" anchor="target" title="1. link�^�O�ɃW�����v���܂��B" accesskey="a">
     ���̃y�[�W��&quot;1. link�^�O&quot;�փW�����v
  </ts:link>
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