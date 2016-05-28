<%--
  - $Id: sc3402.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<bean:define id="titleScreenName" scope="page" value="���b�Z�[�W�\��"/>
<bean:define id="screenName" scope="page" value="���b�Z�[�W�\��"/>
<bean:define id="screenID" scope="page" value="SC3402"/>


<%@ page import="org.apache.struts.Globals"%>
<%@ page import="org.apache.struts.action.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<%
 ActionMessages messages = new ActionMessages();
 
 messages.add(Globals.MESSAGE_KEY, new ActionMessage("messages.sample.001"));
 messages.add("sample", new ActionMessage("messages.sample.002"));
 
 session.setAttribute(Globals.MESSAGE_KEY, messages);
 
 request.getSession().setAttribute("locUS", java.util.Locale.US);
%>

<!-- begin body-->
  <h4>message�Eerror�^�O�\��</h4>
  <br>
  <ts:form action="messagetagErrorForward.do">
    <table>
      <tr>
        <td align="left">
          �P. messages�^�O
          <UL>
            <LI>�yid, locale, property, name, header,footer�z����<br>
              <OL>
                <LI>property�����ɓ����郁�b�Z�[�W���\������邱�Ƃ��m�F�B</LI><br>
                  &nbsp;�v���p�e�B�t�@�C���̐ݒ�<br>
                  &nbsp;&nbsp;messages.sample.001=taglibMessageResources_en.properties's messagesTagSample1<br>
                  &nbsp;&nbsp;messages.sample.002=taglibMessageResources_en.properties's messagesTagSample2<br>
                <LI>���b�Z�[�W���p��ŕ\������邱�Ƃ��m�F</LI>
                <LI>ts:messages�^�O��header������footer�������ݒ肳��Ă��邱�Ƃ��m�F</LI><br>
                  &nbsp;header�̓��e�F&lt;LI style=&quot;color:red&quot;&gt;<br>
                  &nbsp;footer�̓��e�F&lt;/LI&gt;<br>
                <LI>messages�^�O�̐ݒ�</LI><br>
                  &nbsp;&lt;ts:messages locale=&quot;locUS&quot; id=&quot;msg&quot; header=&quot;message.header&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;footer=&quot;message.footer&quot; property=&quot;sample&quot; name=&quot;org.apache.struts.action.ACTION_MESSAGE&quot;&gt;<br>
                  &nbsp;&nbsp;&lt;bean:write name="msg"/&gt;<br>
                  &nbsp;&lt;/ts:messages&gt;
                  <br>
                <span id='messageTagProperty'>
                <ts:messages locale="locUS" id="msg" 
                             header="message.header" 
                             footer="message.footer"
                             property="sample" name="org.apache.struts.action.ACTION_MESSAGE">
                  <bean:write name="msg"/>
                </ts:messages>
                </span>
              </OL>
            </LI>
            <br>
            <LI>�yid, message, header,footer�z����<br>
              <OL>
                <LI>�S���b�Z�[�W���\������邱�Ƃ��m�F�B</LI><br>
                  &nbsp;�v���p�e�B�t�@�C���̐ݒ�<br>
                  &nbsp;&nbsp;messages.sample.001=taglibMessageResources_en.properties's messagesTagSample1<br>
                  &nbsp;&nbsp;messages.sample.002=taglibMessageResources_en.properties's messagesTagSample2<br>
                <LI>���b�Z�[�W�����{��ŕ\������邱�Ƃ��m�F</LI>
                <LI>ts:messages�^�O��header������footer�������ݒ肳��Ă��邱�Ƃ��m�F</LI><br>
                  &nbsp;header�̓��e�F&lt;LI style=&quot;color:red&quot;&gt;<br>
                  &nbsp;footer�̓��e�F&lt;/LI&gt;<br>
                <LI>messages�^�O�̐ݒ�</LI><br>
                  &nbsp;&lt;ts:messages id=&quot;msg&quot; header=&quot;message.header&quot; <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;footer=&quot;message.footer&quot; message=&quot;true&quot;&gt;<br>
                  &nbsp;&nbsp;&nbsp;&lt;bean:write name=&quot;msg&quot;/&gt;<br>
                  &nbsp;&lt;/ts:messages&gt;<br>
                  <br>
                <span id='messageTagMessage'>
                <ts:messages id="msg" header="message.header" 
                             footer="message.footer" message="true">
                  <span><bean:write name="msg"/></span>
                </ts:messages>
                </span>
              </OL>
            </LI>
            <br>
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
                <span id='messageTagBundle'>
                <ts:messages id="msg" bundle="taglib" locale="locUS" 
                             name="org.apache.struts.action.ACTION_MESSAGE"
                             property="sample" header="message.header" 
                             footer="message.footer">
                  <bean:write name="msg"/>
                </ts:messages>
                </span>
              </OL>
            </LI>
          </UL>
          <br>
          </td>
      </tr>
      <tr>
        <td align="left">
          �Q. errors�^�O<br>
          &nbsp;&nbsp;�u���͒l�v���ɓ��͂��Ȃ����A�G���[���b�Z�[�W���\������鎖���m�F�B
          <UL>
            <LI>�ylocale, name, property�z����<br>
              <OL>
                  <LI>���b�Z�[�W���p��ŕ\������邱�Ƃ��m�F</LI><br>
                  <LI>errors�^�O�̐ݒ�</LI><br>
                  &nbsp;&nbsp;&lt;ts:errors locale=&quot;locUS&quot; name=&quot;org.apache.struts.action.ERROR&quot; property=&quot;data&quot; /&gt;<br>
              </OL>
            </LI>
          </UL>
            <span id='errorMessageProperty'>
            <ts:errors locale="locUS" name="org.apache.struts.action.ERROR" property="data" />
            </span>
          <br>
          <UL>
            <LI>�����Ȃ�<br>
              <OL>
                  <LI>���b�Z�[�W�����{��ŕ\������邱�Ƃ��m�F</LI><br>
                  <LI>errors�^�O�̐ݒ�</LI><br>
                  &nbsp;&nbsp;&lt;ts:errors/&gt;<br>
              </OL>
            </LI>
          </UL>
            <span id='errorMessageOnly'>
            <ts:errors />
            </span>
          <br>
          <UL>
            <LI>�ybundle, name, property�z����<br>
              <OL>
                  <LI>���b�Z�[�W�����{��ŕ\������邱�Ƃ��m�F</LI><br>
                  <LI>errors�^�O�̐ݒ�</LI><br>
                  &nbsp;&nbsp;&lt;ts:errors bundle=&quot;taglib&quot; name=&quot;org.apache.struts.action.ERROR&quot; property=&quot;data&quot;  /&gt;<br>
              </OL>
            </LI>
          </UL>
          <span id='errorMessageBundle'>
          <ts:errors bundle="taglib" name="org.apache.struts.action.ERROR" property="data"  />
          </span>
        </td>
      </tr>
      <tr>
        <table border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td>
              ���͒l�i�K�{�j�F<html:text name="messageForm" property="data" maxlength="30" size="30" />
            </td>
          </tr>
          <tr>
            <td align="center"><html:submit value="�T�u�~�b�g"/></td>
          </tr>
         </table>
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