<%--
  - $Id: sc2601.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="������\��"/>
<bean:define id="titleScreenName" scope="page" value="������\��"/>
<bean:define id="screenName" scope="page" value="������\��"/>
<bean:define id="screenID" scope="page" value="SC2601"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>������\��</h4>
    
<%
String write2 = "write�^�O�T���v���Q";
String filter = "&<>\"";
String lf = "\n��";

pageContext.setAttribute("space", "   ");
pageContext.setAttribute("filter", filter);
pageContext.setAttribute("write2", write2);
pageContext.setAttribute("lf", lf);

%>

<table>
    <tr>
        <td align="left">
        
          1. write�^�O �yname, property, scope�z<br>
          <ul>
            <li>name�����ɐݒ肵��Form��property�̓��e���\������鎖���m�F�B<br>
                (write1�̓��e: write�^�O�T���v���P)<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;writeForm&quot; property=&quot;write1&quot; scope=&quot;request&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagWrite1Message'>[<font color="#FF0000"><t:write name="writeForm" property="write1" scope="request" /></font>]</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. write�^�O �yname�z<br>
          <ul>
            <li>name�����̓��e���\������鎖���m�F�B<br>
                (write2�̓��e: write�^�O�T���v���Q)<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;write2&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagWrite2Message'>[<font color="#FF0000"><t:write name="write2" /></font>]</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. write�^�O �yname, filter�z<br>
          <ul>
            <li>name�����̓��e���\������鎖���m�F�B<br>
                (filter�̓��e: &lt;&gt;&amp;\&quot;)<br><br></li>
            <li>name�����̓��e�ɂ���&quot;&lt;,&gt;,&amp;,&quot;&quot;����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
             html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��邩���m�F�B<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;filter&quot; filter=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagFilterMessage'>[<font color="#FF0000"><t:write name="filter" filter="true" /></font>]</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. write�^�O �yname, replaceSpToNbsp�z<br>
          <ul>
            <li>name�����̓��e���\������邩���m�F�B<br>
                (space�̓��e: �O�̋󔒕����j<br><br></li>
            <li>name�����̓��e�ɂ���󔒕�������ʂɕ\������邩��html�Ŋm�F�Ahtml��&amp;nbsp;�ɕϊ�����Ă��邩���m�F�B<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;space&quot; replaceSpToNbsp=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagSpaceMessage'>[<font color="#FF0000"><t:write name="space" replaceSpToNbsp="true" /></font>]</span>��&amp;nbsp;&amp;nbsp;&amp;nbsp;
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          5. write�^�O �yname, property, replaceNullToNbsp�z<br>
          <ul>
            <li>name�����ɐݒ肵��Form��property�̓��e���\������邩���m�F�B<br>
                (writeForm��write2�̓��e: Null)<br><br></li>
            <li>name�����̓��e�ɂ���󔒕�������ʂɕ\������邩��html�Ŋm�F�Ahtml��&amp;nbsp;�ɕϊ�����Ă��邩���m�F�B<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;writeForm&quot; property=&quot;write2&quot; replaceNullToNbsp=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagNullMessage'>[<font color="#FF0000"><t:write name="writeForm" property="write2" replaceNullToNbsp="true" /></font>]</span>��&amp;nbsp;
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          6. write�^�O �yname, replaceLFtoBR�z<br>
          <ul>
            <li>name�����̓��e���\������邩���m�F�B<br>
                (lf�̓��e: \n��)<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;lf&quot; replaceLFtoBR=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagLfMessage'>[<font color="#FF0000"><t:write name="lf" replaceLFtoBR="true"/></font>]</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          7. write�^�O �yname, scope, ignore�z<br>
          <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;XXX&quot; scope=&quot;session&quot; ignore=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagIgnoreMessage'>[<font color="#FF0000"><t:write name="XXX" scope="session" ignore="true" /></font>]</span>
          <br><br><br>
  
          </td>
    </tr>
    
    <tr>
        <td align="left">
            
          8. write�^�O �yname, fillColumn�z<br>
          <ul>
            <li>name�̓��e���S�p�Ɣ��p�Ɋ֌W�Ȃ�3�����������ĕ\������邩���m�F�B<br>
               (write2�̓��e�Fwrite�^�O�T���v���Q)<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;write2&quot; fillColumn=&quot;3&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagFillColumnMessage'>[<font color="#FF0000"><t:write name="write2" fillColumn="3"/></font>]</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          9. write�^�O �yname, addBR�z<br>
          <ul>
            <li>������̍Ō��&lt;br&gt;���ǉ�����鎖���m�F�B<br>
               (write2�̓��e�Fwrite�^�O�T���v���Q)<br><br></li>
            <li>write�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;write2&quot; addBR=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagBRMessage'>[<font color="#FF0000"><t:write name="write2" addBR="true" /></font>]</span>
          <br><br><br>      
  
        </td>
    </tr>
</table>
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