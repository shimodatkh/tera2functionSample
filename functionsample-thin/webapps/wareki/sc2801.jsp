<%--
  - $Id: sc2801.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@ page import="java.util.Date"%>
<%@ page import="jp.terasoluna.fw.util.DateUtil"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/struts-logic" prefix="logic"%>
<%@ taglib uri="/terasoluna" prefix="t"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>
<%@ taglib uri="/common" prefix="common"%>

<bean:define id="titleUsecaseName" scope="page" value="�a����t�ϊ�"/>
<bean:define id="titleScreenName" scope="page" value="�a����t�ϊ�"/>
<bean:define id="screenName" scope="page" value="�a����t�ϊ�"/>
<bean:define id="screenID" scope="page" value="SC2801"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>�a����t�ϊ�</h4>
    
<%
String datePattern01 = "2009/01/21 00:12:34";
pageContext.setAttribute("datePattern01", datePattern01);
String datePattern02 = "2009/01/21 12:34:56";
pageContext.setAttribute("datePattern02", datePattern02);
String datePattern03 = "2009/01/21 00:12:34";
pageContext.setAttribute("datePattern03", datePattern03);

String datePattern07 = "2009-01-21 12,34,56,789";
pageContext.setAttribute("datePattern07", datePattern07);
String datePattern08 = "2009-01-21 12,34,56,789";
pageContext.setAttribute("datePattern08", datePattern08);
String datePattern09 = "2009-01-21 12,34,56,789";
pageContext.setAttribute("datePattern09", datePattern09);
%><br>

<table>
    <tr>
        <td align="left">
        
          1. jdate�^�O �yname, pattern�z<br>
          <ul>
            <li>name�̃f�[�^��pattern�ʂ�\������鎖���m�F�B<br>
                (pageContext�Ɋi�[����Ă���datePattern01�̃f�[�^�F2009/01/21 00:12:34 , datePattern02�̃f�[�^�F2009/01/21 12:34:56)<br><br></li>
            <li>���t���a��ŕ\������邩���m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern01&quot; pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b&quot; /&gt;<br><br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern02&quot; pattern=&quot;G. yy�NMM��dd��(E) aaa hh��mm��ss�b&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateName1">�<font color="#FF0000"><t:jdate name="datePattern01" pattern="GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b" /></font>�</span>
          <br><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateName2">�<font color="#FF0000"><t:jdate name="datePattern02" pattern="G. yy�NMM��dd��(E) aaa hh��mm��ss�b" /></font>�</span>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. jdate�^�O �yid, name, pattern�z<br>
          <ul>
            <li>pattern�ɂ���ĕϊ����ꂽname�̃f�[�^��id�Ŏw�肵�����O�̕ϐ��Ɋi�[����Ă��鎖���m�F�B<br>
                (pageContext�Ɋi�[����Ă���datePattern03�̃f�[�^�F2009/01/21 12:34:56)<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate id=&quot;formatted&quot; name=&quot;datePattern03&quot; 
              pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b&quot; /&gt;<br><br>
            </li>
          </ul>
          <t:jdate id="formatted" name="datePattern03" pattern="GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b" />
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateId">�<font color="#FF0000"><%= formatted %></font>�</span>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. jdate�^�O �yvalue, pattern�z<br>
          <ul>
            <li>value�̃f�[�^��pattern�ʂ�\������鎖���m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009/02/21 12:34:56&quot; pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateValue">�<font color="#FF0000" ><t:jdate value="2009/02/21 12:34:56" pattern="GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b" /></font>�</span>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. jdate�^�O �yproperty, scope, name, pattern�z<br>
          <ul>
            <li>warekiForm��date���\������鎖���m�F�B<br>
                (warekiForm�Ɋi�[����Ă���datePattern04�̃f�[�^�F2009/03/21 00:12:34)<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;warekiForm&quot; property=&quot;datePattern04&quot; scope=&quot;request&quot;
                     pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateProperty">�<font color="#FF0000"><t:jdate name="warekiForm" property="datePattern04" scope="request" pattern="GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b"/></font>�</span>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          5. jdate�^�O �yfilter, value, pattern�z<br>
          <ul>
            <li>pattern�ɐݒ肳�ꂽ &quot;&lt;,&gt;,&amp;,&quot;&quot; ����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
            html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009/02/21 12:34:56&quot; filter=&quot;true&quot;
                     pattern=&quot;&lt;GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b&gt;&amp;\&quot;&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFilter">�<font color="#FF0000"><t:jdate value="2009/02/21 12:34:56" filter="true" pattern="<GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b>&\"" /></font>�</span>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          6. jdate�^�O �yignore, name, pattern�z<br>
            <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;XXX&quot; ignore=&quot;true&quot;
                     pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateIgnore">�<font color="#FF0000"><t:jdate name="XXX" ignore="true" pattern="GGGGyy�NMM��dd��(EEEE) aaa hh��mm��ss�b" /></font>�</span>
          <br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
        
          7. jdate�^�O �yformat, name, pattern�z<br>
          <ul>
            <li>format�`����name�̃f�[�^��pattern�ʂ�\������鎖���m�F�B<br>
                (format="yyyy-MM-dd HH,mm,ss,SSS"�ɏ]����pageContext�Ɋi�[����Ă���datePattern07�̃f�[�^�F2009-01-21 12,34,56,789 , datePattern08�̃f�[�^�F2009-01-21 12,34,56,789)<br><br></li>
            <li>���t���a��ŕ\������邩���m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern07&quot; pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern08&quot; pattern=&quot;G. yy�NMM��dd��(E) aaaKK��mm��ss�b&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatName1">�<font color="#FF0000"><t:jdate name="datePattern07" pattern="GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>�</span>
          <br><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatName2">�<font color="#FF0000"><t:jdate name="datePattern08" pattern="G. yy�NMM��dd��(E) aaaKK��mm��ss�b" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>�</span>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          8. jdate�^�O �yformat, id, name, pattern�z<br>
          <ul>
            <li>pattern�ɂ���ĕϊ����ꂽname�̃f�[�^��id�Ŏw�肵�����O�̕ϐ��Ɋi�[����Ă��鎖���m�F�B<br>
                (format="yyyy-MM-dd HH,mm,ss,SSS"�ɏ]����pageContext�Ɋi�[����Ă���datePattern09�̃f�[�^�F2009-01-21 12,34,56,789)<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate id=&quot;formatted&quot; name=&quot;datePattern09&quot; 
              pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:jdate id="formatted" name="datePattern09" pattern="GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b" format="yyyy-MM-dd HH,mm,ss,SSS"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatId">�<font color="#FF0000"><%= formatted %></font>�</span>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          9. jdate�^�O �yformat, value, pattern�z<br>
          <ul>
            <li>format="yyyy-MM-dd HH,mm,ss,SSS"�ɏ]����value�̃f�[�^��pattern�ʂ�\������鎖���m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009-01-21 12,34,56,789&quot; pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatValue">�<font color="#FF0000" ><t:jdate value="2009-01-21 12,34,56,789" pattern="GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>�</span>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          10. jdate�^�O �yformat, property, scope, name, pattern�z<br>
          <ul>
            <li>format="yyyy-MM-dd HH,mm,ss,SSS"�ɏ]����warekiForm��date���\������鎖���m�F�B<br>
                (warekiForm�Ɋi�[����Ă���datePattern10�̃f�[�^�F2009-01-21 12,34,56,789)<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;warekiForm&quot; property=&quot;datePattern10&quot; scope=&quot;request&quot;
                     pattern=&quot;GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatProperty">�<font color="#FF0000"><t:jdate name="warekiForm" property="datePattern10" scope="request" pattern="GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>�</span>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          11. jdate�^�O �yformat, filter, value, pattern�z<br>
          <ul>
            <li>pattern�ɐݒ肳�ꂽ &quot;&lt;,&gt;,&amp;,&quot;&quot; ����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
            html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>jdate�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009-01-21 12,34,56,789&quot; filter=&quot;true&quot;
                     pattern=&quot;&lt;GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b&gt;&amp;\&quot;&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatFilter">�<font color="#FF0000"><t:jdate value="2009-01-21 12,34,56,789" filter="true" pattern="<GGGGyy�NMM��dd��(EEEE) aaaKK��mm��ss�b>&\"" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>�</span>
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