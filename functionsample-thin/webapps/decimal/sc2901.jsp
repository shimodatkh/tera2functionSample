<%--
  - $Id: sc2901.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="Decimal�\��"/>
<bean:define id="titleScreenName" scope="page" value="Decimal�\��"/>
<bean:define id="screenName" scope="page" value="Decimal�\��"/>
<bean:define id="screenID" scope="page" value="SC2901"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>Decimal�\���@�\</h4>
    
<%
String decimal = "1981.0381";
pageContext.setAttribute("decimal", decimal);
%><br>

<table>
    <tr>
        <td align="left">
        
          1. decimal�^�O �yname, pattern�z<br>
          <ul>
            <li>name�̃f�[�^��pattern�ʂ�\������鎖���m�F�B<br>
                (pageContext�Ɋi�[����Ă���decimal�̃f�[�^�F1981.0381)<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal name=&quot;decimal&quot; pattern=&quot;#,###.##&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalName">�<font color="#FF0000"><t:decimal name="decimal" pattern="0,000.00" /></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. decimal�^�O �yid, name, pattern�z<br>
          <ul>
            <li>pattern�ɂ���ĕϊ����ꂽname�̃f�[�^��id�Ŏw�肵�����O�̕ϐ��Ɋi�[����Ă��鎖���m�F�B<br>
                (pageContext�Ɋi�[����Ă���decimal�̃f�[�^�F1981.0381)<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal id=&quot;formatted&quot; name=&quot;decimal&quot; pattern=&quot;#,###.##&quot; /&gt;<br><br>
            </li>
          </ul>  
          <t:decimal id="formatted" name="decimal" pattern="0,000.00" />
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalId">�<font color="#FF0000"><%= formatted %></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. decimal�^�O �yvalue, pattern�z<br>
          <ul>
            <li>value�̃f�[�^��pattern�ʂ�\������鎖���m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2005.0209&quot; pattern=&quot;#,###.##&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalValue">�<font color="#FF0000"><t:decimal value="2005.0209" pattern="#,###.##" /></font>�</span>
          <br>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. decimal�^�O �yproperty, scope, name, pattern�z<br>
          <ul>
            <li>decimalForm��decimal���\������鎖���m�F�B<br>
                (decimalForm�Ɋi�[����Ă���decimal�̃f�[�^�F1956.0491)<br><br></li>
        <br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal name=&quot;decimalForm&quot; property=&quot;decimal&quot; 
              scope=&quot;request&quot; pattern=&quot;#,###.##&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalProperty">�<font color="#FF0000"><t:decimal name="decimalForm" property="decimal" scope="request" pattern="#,###.##" /></font>�</span>
          <br>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          5. decimal�^�O �yfilter, value, pattern�z<br>
          <ul>
            <li>pattern�ɐݒ肳�ꂽ &quot;&lt;,&gt;,&amp;,&quot;&quot; ����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
            html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;1981.0391&quot; filter=&quot;true&quot; pattern=&quot;&lt;#,###.##&gt;&amp;\&quot;&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalFilter">�<font color="#FF0000"><t:decimal value="1981.0391" filter="true" pattern="<#,###.##>&\"" /></font>�</span>
          <br>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          6. decimal�^�O �yignore, name, pattern�z<br>
           <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal name=&quot;XXX&quot; ignore=&quot;true&quot; pattern=&quot;#,###.##&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalIgnore">�<font color="#FF0000"><t:decimal name="XXX" ignore="true" pattern="#,###.##" /></font>�</span>
          <br>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          7. decimal�^�O �yscale, value, pattern�z<br>
           <ul>
            <li>scale�Ɏw�肳�ꂽ�����_�ȉ���������ROUND_HALF_EVEN�Ŋۂ߂��ĕ\������鎖���m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.351&quot; scale=&quot;2&quot; pattern=&quot;#,###.###&quot; /&gt;<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.359&quot; scale=&quot;2&quot; pattern=&quot;#,###.###&quot; /&gt;<br><br>
            </li>
           </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalScale1">�<font color="#FF0000"><t:decimal value="2.351" scale="2" pattern="#,###.###" /></font>�</span><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalScale2">�<font color="#FF0000"><t:decimal value="2.359" scale="2" pattern="#,###.###" /></font>�</span><br>
          <br>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
            8. decimal�^�O �yscale, value, pattern, round=&quot;ROUND_HALF_UP&quot;�z<br>
           <ul>
            <li>scale�Ɏw�肳�ꂽ�����_�ȉ���������ROUND_HALF_UP�Ŋۂ߂��ĕ\������鎖���m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.351&quot; scale=&quot;2&quot; pattern=&quot;#,###.###&quot; round="ROUND_HALF_UP" /&gt;<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.359&quot; scale=&quot;2&quot; pattern=&quot;#,###.###&quot; round="ROUND_HALF_UP" /&gt;<br><br>
            </li>
           </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalROUND_HALF_UP1">�<font color="#FF0000"><t:decimal value="2.351" scale="2" pattern="#,###.###" round="ROUND_HALF_UP" /></font>�</span><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalROUND_HALF_UP2">�<font color="#FF0000"><t:decimal value="2.359" scale="2" pattern="#,###.###" round="ROUND_HALF_UP" /></font>�</span><br>
          <br>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          9. decimal�^�O �yscale, value, pattern, round=&quot;ROUND_FLOOR&quot;�z<br>
           <ul>
            <li>scale�Ɏw�肳�ꂽ�����_�ȉ����������؂�̂Ă��ĕ\������鎖���m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.351&quot; scale=&quot;2&quot; pattern=&quot;#,###.##&quot; round="ROUND_FLOOR" /&gt;<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.359&quot; scale=&quot;2&quot; pattern=&quot;#,###.##&quot; round="ROUND_FLOOR" /&gt;<br><br>
            </li>
           </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalROUND_FLOOR1">�<font color="#FF0000"><t:decimal value="2.351" scale="2" pattern="#,###.##" round="ROUND_FLOOR" /></font>�</span><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalROUND_FLOOR2">�<font color="#FF0000"><t:decimal value="2.359" scale="2" pattern="#,###.##" round="ROUND_FLOOR" /></font>�</span><br>
          <br>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          10. decimal�^�O �yscale, value, pattern, round=&quot;ROUND_CEILING&quot;�z<br>
           <ul>
            <li>scale�Ɏw�肳�ꂽ�����_�ȉ����������؂�グ���ĕ\������鎖���m�F�B<br><br></li>
            <li>decimal�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.351&quot; scale=&quot;2&quot; pattern=&quot;#,###.##&quot; round="ROUND_CEILING" /&gt;<br>
              &nbsp;&nbsp;&lt;t:decimal value=&quot;2.359&quot; scale=&quot;2&quot; pattern=&quot;#,###.##&quot; round="ROUND_CEILING" /&gt;<br><br>
            </li>
           </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalROUND_CEILING1">�<font color="#FF0000"><t:decimal value="2.351" scale="2" pattern="#,###.##" round="ROUND_CEILING" /></font>�</span><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="decimalROUND_CEILING2">�<font color="#FF0000"><t:decimal value="2.359" scale="2" pattern="#,###.##" round="ROUND_CEILING" /></font>�</span><br>
          <br>
          <br>
          <br>
  
          </td>
    </tr>
                
</table>
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