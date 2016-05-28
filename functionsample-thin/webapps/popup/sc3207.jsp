<%--
  - $Id: sc3207.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="���b�Z�[�W�|�b�v�A�b�v"/>
<bean:define id="titleScreenName" scope="page" value="param�ݒ�̃|�b�v�A�b�v�^�O�\��"/>
<bean:define id="screenName" scope="page" value="param�ݒ�̃|�b�v�A�b�v�^�O�\��"/>
<bean:define id="screenID" scope="page" value="SC3207"/>


<%@ page import="org.apache.struts.Globals"%>
<%@ page import="org.apache.struts.action.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
    <title>TERASOLUNA messagesPopup</title>
</head>

<!-- ���b�Z�[�W�̐ݒ� -->
<%
  ActionMessages messages = new ActionMessages();
 
  messages.add(Globals.MESSAGE_KEY, new ActionMessage("messages.sample.001"));
  messages.add("sample", new ActionMessage("messages.sample.002"));
 
  session.setAttribute(Globals.MESSAGE_KEY, messages);
 
  request.getSession().setAttribute("locUS", java.util.Locale.US);
%>

<!-- begin body-->
  <ts:body>
  <h4>param�ݒ�̃|�b�v�A�b�v�^�O�\��</h4>
    <table>
      <tr>
        <td align="left">
          5. messages�^�O
          <UL>
            <LI>�yid, bundle, locale, name, property, header,footer�z����<br>
              <OL>
                <LI>property�����ɓ����郁�b�Z�[�W���\������邱�Ƃ��m�F�B</LI><br>
                  &nbsp;�v���p�e�B�t�@�C���̐ݒ�<br>
                  &nbsp;&nbsp;messages.sample.001=taglibMessageBundleResources_en.properties's messagesTagSample1<br>
                  &nbsp;&nbsp;messages.sample.002=taglibMessageBundleResources_en.properties's messagesTagSample2<br>
                <LI>���b�Z�[�W���p��ŕ\������邱�Ƃ��m�F</LI>
                <LI>bundle������message resource���烁�b�Z�[�W���擾����邱�Ƃ��m�F�B</LI>
                <LI>ts:messages�^�O��header������footer�������ݒ肳��Ă��邱�Ƃ��m�F</LI><br>
                  &nbsp;header�̓��e�F&lt;LI style=&quot;color:red&quot;&gt;<br>
                  &nbsp;footer�̓��e�F&lt;/LI&gt;<br>
                <LI>messages�^�O�̐ݒ�</LI><br>
                  &nbsp;&lt;ts:messages id=&quot;msg&quot; bundle=&quot;taglib&quot; locale=&quot;locUS&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name=&quot;org.apache.struts.action.ACTION_MESSAGE&quot;<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;property=&quot;sample&quot; header=&quot;message.header&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;footer=&quot;message.footer&quot;&gt;<br>
                  &nbsp;&nbsp;&nbsp;&lt;bean:write name=&quot;msg&quot;/&gt;<br>
                  &nbsp;&lt;/ts:messages&gt;<br>
                <br>
                <span id='paramMessage'>
                <ts:messages id="msg" bundle="taglib" locale="locUS" 
                             name="org.apache.struts.action.ACTION_MESSAGE"
                             property="sample" header="message.header" 
                             footer="message.footer">
                  <bean:write name="msg"/>
                </ts:messages>
                </span>
              </OL>
            </LI>
            <br>
          </UL>
        </td>
      </tr>
      <tr>
        <td align="left">
          6. errors�^�O<br>
          &nbsp;&nbsp;�u���͒l�v���ɓ��͂��Ȃ����A�G���[���b�Z�[�W���\������鎖���m�F�B
          <UL>
            <LI>�ybundle, name, property�z����<br>
              <OL>
                <LI>���b�Z�[�W�����{��ŕ\������邱�Ƃ��m�F</LI><br>
                <LI>errors�^�O�̐ݒ�</LI><br>
                &nbsp;&nbsp;&lt;ts:errors bundle=&quot;taglib&quot; name=&quot;org.apache.struts.action.ERROR&quot; property=&quot;data&quot;/&gt;<br>
              </OL>
            </LI>
          </UL>
          <span id='paramErrorMessage'>
          <ts:errors bundle="taglib" name="org.apache.struts.action.ERROR" property="data" />
          </span>
        </td>
      </tr>
      <br>
      <tr>
        <td align="center"><html:button property="close" value="����" onclick="window.close()" />
        <br>
      </tr>
    </table>
  </ts:body>

<!-- end body-->
</html:html>