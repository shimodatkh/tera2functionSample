<%--
  - $Id: sc3506.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="�g��form�E�����N�Esubmit"/>
<bean:define id="titleScreenName" scope="page" value="form�^�O�g�p2"/>
<bean:define id="screenName" scope="page" value="form�^�O�g�p2"/>
<bean:define id="screenID" scope="page" value="SC3506"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>form�^�O</h4>
    
  <br>
    2. form�^�O �yaction, method, style, focus, focusIndex�z
    <ul>
      <li>���W�I�̐�t�Ƀt�H�[�J�X����邩���m�F�B<br><br></li>
      <li>Submit�{�^�����N���b�N������A��ʂ̃A�h���X��TOKEN��moge�̓��e�����鎖���m�F�B<br><br></li>
      <li>�w�i�F���ݒ肳��鎖���m�F�B<br><br></li>
      <li><font color="#ff0000">html�\�[�X�R�[�h��&lt;script&gt;������&#039;language=&quot;JavaScript&quot;&#039;���ݒ肳��Ă��鎖���m�F�B</font><br><br></li>
      <li>form�^�O�̐ݒ�<br>
        &nbsp;&nbsp;&lt;ts:form action=&quot;/form2Forward.do&quot; method=&quot;get&quot; style=&quot;background-color:#CFDBE2;&quot;<br>
        &nbsp;&nbsp;&nbsp;&nbsp;focus=&quot;hoge&quot; focusIndex=&quot;2&quot;&gt;<br>
      </li>
    </ul>  
    <div align="left">
      <ts:form action="/form2Forward.do" method="get" style="background-color:#CFDBE2;" focus="hoge" focusIndex="2">
            <html:text property="moge" maxlength="30" size="30" /><br>
            <html:radio property="hoge" value="tokyo"/>����
            <html:radio property="hoge" value="saitama"/>���
            <html:radio property="hoge" value="chiba"/>��t
            <html:radio property="hoge" value="kanagawa"/>�_�ސ�
      <html:submit />
      </ts:form>
    </div>
    <br>
    <br>
    <html:button property="forward_action" value=" ���� " onclick="window.close()"/><br>
    <hr> 
    <br>
    <br>
    <br>
    
<!-- end body-->

<%@ include file="../sc0004.jspf" %>

</html:html>