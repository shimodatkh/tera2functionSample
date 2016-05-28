<%--
  - $Id: sc3101.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna" prefix="t"%>

<bean:define id="titleUsecaseName" scope="page" value="������؂���"/>
<bean:define id="titleScreenName" scope="page" value="������؂���"/>
<bean:define id="screenName" scope="page" value="������؂���"/>
<bean:define id="screenID" scope="page" value="SC3101"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>������؂���</h4>
    
<%
String moji = "��������������������";
pageContext.setAttribute("moji", moji);
%><br>

  &nbsp;&nbsp;&nbsp;�w�蕶�������؂�o���O�̕�����F&nbsp;�<font color="#FF0000"><t:write name="moji" replaceNullToNbsp="true"/></font>�<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;�&quot;�A&quot;�&quot;�̊Ԃ�������ł���B)<br><br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">�����񏈗�: �T�����؂�o��</font><br><br>

<table>
    <tr>
        <td align="left">
        
          1. left�^�O �yname, length�z<br>
          <ul>
            <li>name�̃f�[�^��������length�̐��قǕ\������鎖���m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left name=&quot;moji&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftName">�<font color="#FF0000"><t:left name="moji" length="5" /></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. left�^�O �yid, name, length�z<br>
          <ul>
            <li>length�ɂ���Đ؏o����name�̃f�[�^��id�Ŏw�肵�������Ɋi�[����Ă��鎖���m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left id=&quot;cut&quot; name=&quot;moji&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          <t:left id="cut" name="moji" length="5" />
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftId">�<font color="#FF0000"><%= cut %></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. left�^�O �yvalue, length�z<br>
          <ul>
            <li>value�̃f�[�^��������length�̐��قǕ\������鎖���m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;��������������������&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftValue">�<font color="#FF0000"><t:left value="��������������������" length="5" /></font>�</span>
          <br>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. left�^�O �yproperty, scope, name, length�z<br>
          <ul>
            <li>leftForm��left��������length�̐��قǕ\������鎖���m�F�B<br>
              (leftForm�Ɋi�[����Ă���left�̃f�[�^�F��������������������)<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left name=&quot;leftForm&quot; property=&quot;left&quot; scope=&quot;request&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftProperty">�<font color="#FF0000"><t:left name="leftForm" property="left" scope="request" length="5"/></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. left�^�O �yfilter, value, length�z<br>
          <ul>
            <li>value�ɐݒ肳�ꂽ&quot;&lt;,&gt;,&amp;,&quot;&quot;����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
             html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;&lt;&gt;&amp;\&quot;��������������������&quot; filter=&quot;true&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftFilter">�<font color="#FF0000"><t:left value="<>&\"��������������������" filter="true" length="5" /></font>�</span>
        �@<br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. left�^�O �yignore, name, length�z<br>
          <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left name=&quot;XXX&quot; ignore=&quot;true&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftIgnore">�<font color="#FF0000"><t:left name="XXX" ignore="true" length="5" /></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. left�^�O �yvalue, length, replaceSpToNbsp=&quot;true&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������鎖���m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;��____������������������&quot; length=&quot;5&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftReplaceTrue">�<font color="#FF0000"><t:left value="��    ������������������" length="5" replaceSpToNbsp="true" /></font>�</span>
        �@<br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. left�^�O �yvalue, length, replaceSpToNbsp=&quot;false&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������Ȃ������m�F�B<br><br></li>
            <li>left�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;��____������������������&quot; length=&quot;5&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftReplaceFalse">�<font color="#FF0000"><t:left value="��    ������������������" length="5" replaceSpToNbsp="false" /></font>�</span>
        �@<br>
          <br>
          <br>
  
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