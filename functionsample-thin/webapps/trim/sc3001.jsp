<%--
  - $Id: sc3001.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna" prefix="t"%>

<bean:define id="titleUsecaseName" scope="page" value="�g����"/>
<bean:define id="titleScreenName" scope="page" value="�g����"/>
<bean:define id="screenName" scope="page" value="�g����"/>
<bean:define id="screenID" scope="page" value="SC3001"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>�g����</h4>
    
<%
String ltrim = "     ����������";
String rtrim = "����������     ";
String trim = "     ����������     ";

pageContext.setAttribute("ltrim", ltrim);
pageContext.setAttribute("rtrim", rtrim);
pageContext.setAttribute("trim", trim);
%><br>

  &nbsp;&nbsp;&nbsp;�����z���C�g�X�y�[�X�����O�̕�����F&nbsp;�<font color="#FF0000"><t:write name="ltrim" replaceNullToNbsp="true"/></font>�<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;�&quot;�A&quot;�&quot;�̊Ԃ�������ł���B)<br><br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">�����񏈗�: �����z���C�g�X�y�[�X����</font><br><br>

<table>
    <tr>
        <td align="left">
        
          1. ltrim�^�O �yname�z<br>
          <ul>
            <li>name�̃f�[�^�̍����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim name=&quot;ltrim&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimName">�<font color="#FF0000"><t:ltrim name="ltrim"/></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
           2. ltrim�^�O �yid, name�z<br>
          <ul>
            <li>name�̃f�[�^�̍����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>ltrim�̌��ʂ�id�����Ɏw�肵��trimmed�Ɋi�[����鎖���m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim id=&quot;trimmed&quot; name=&quot;ltrim&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:ltrim id="trimmed" name="ltrim"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimId">�<font color="#FF0000"><%= trimmed %></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. ltrim�^�O �yvalue�z<br>
          <ul>
            <li>value�̃f�[�^�̍����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;_____����������&quot;/&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimValue">�<font color="#FF0000"><t:ltrim value="     ����������"/></font>�</span>
          <br>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. ltrim�^�O �yproperty, scope, name�z<br>
          <ul>
            <li>trimForm��ltrim�f�[�^�̍����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim name=&quot;trimForm&quot; property=&quot;ltrim&quot; scope=&quot;request&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimProperty">�<font color="#FF0000"><t:ltrim name="trimForm" property="ltrim" scope="request" /></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. ltrim�^�O �yfilter, value�z<br>
          <ul>
            <li>value�̃f�[�^�̍����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>value�ɐݒ肳�ꂽ&quot;&lt;,&gt;,&amp;,&quot;&quot;����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
             html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;_____&lt;����������&gt;&amp;\&quot;&quot; filter=&quot;true&quot;/&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimFilter">�<font color="#FF0000"><t:ltrim value="     <����������>&\"" filter="true" /></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. ltrim�^�O �yignore, name�z<br>
          <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim name=&quot;XXX&quot; ignore=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimIgnore">�<font color="#FF0000"><t:ltrim name="XXX" ignore="true" /></font>�</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. ltrim�^�O�yvalue, replaceSpToNbsp=&quot;true&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������鎖���m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;___��____������������������_____&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimTrue">�<font color="#FF0000"><t:ltrim value="   ��    ������������������     " replaceSpToNbsp="true" /></font>�</span>
          <br>
        �@<br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. ltrim�^�O�yvalue, replaceSpToNbsp=&quot;false&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������Ȃ������m�F�B<br><br></li>
            <li>ltrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;___��____������������������_____&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimFalse">�<font color="#FF0000"><t:ltrim value="   ��    ������������������     " replaceSpToNbsp="false" /></font>�</span>
          <br>
        �@<br>
          <br>
  
        </td>
    </tr>
        
</table>

  &nbsp;&nbsp;&nbsp;�E���z���C�g�X�y�[�X�����O�̕�����F&nbsp;�<font color="#FF0000"><t:write name="rtrim" replaceNullToNbsp ="true" /></font>�<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;�&quot;�A&quot;�&quot;�̊Ԃ�������ł���B)<br><br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">�����񏈗�: �E���z���C�g�X�y�[�X����</font><br><br>

<table>
    <tr>
        <td align="left">
        
          1. rtrim�^�O �yname�z<br>
          <ul>
            <li>name�̃f�[�^�̉E���z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim name=&quot;rtrim&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimName">�<font color="#FF0000"><t:rtrim name="rtrim"/></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. rtrim�^�O �yid, name�z<br>
          <ul>
            <li>name�̃f�[�^�̉E���z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>rtrim�̌��ʂ�id�����Ɏw�肵��trimmed�Ɋi�[����邩���m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim id=&quot;trimmed&quot; name=&quot;rtrim&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:rtrim id="trimmed" name="rtrim"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimId">�<font color="#FF0000"><%= trimmed %></font>�</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. rtrim�^�O �yvalue�z<br>
          <ul>
            <li>value�̃f�[�^�̉E���z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;����������_____&quot;/&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimValue">�<font color="#FF0000"><t:rtrim value="����������     "/></font>�</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. rtrim�^�O �yproperty ,scope, name�z<br>
          <ul>
            <li>trimForm��rtrim�f�[�^�̉E���z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim name=&quot;trimForm&quot; property=&quot;rtrim&quot; scope=&quot;request&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimProperty">�<font color="#FF0000"><t:rtrim name="trimForm" property="rtrim" scope="request" /></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. rtrim�^�O �yfilter, value�z<br>
          <ul>
            <li>value�̃f�[�^�̉E���z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>value�ɐݒ肳�ꂽ&quot;&lt;,&gt;,&amp;,&quot;&quot;����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
             html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;&lt;����������&gt;&amp;\&quot;_____&quot; filter=&quot;true&quot;/&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimFilter">�<font color="#FF0000"><t:rtrim value="<����������>&\"     " filter="true" /></font>�</span>
        �@<br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. rtrim�^�O�yignore, name�z<br>
          <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim name=&quot;XXX&quot; ignore=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimIgnore">�<font color="#FF0000"><t:rtrim name="XXX" ignore="true" /></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. rtrim�^�O�yvalue, replaceSpToNbsp=&quot;true&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������鎖���m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;___��____������������������_____&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimTrue">�<font color="#FF0000"><t:rtrim value="   ��    ������������������     " replaceSpToNbsp="true" /></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. rtrim�^�O�yvalue, replaceSpToNbsp=&quot;false&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������Ȃ������m�F�B<br><br></li>
            <li>rtrim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;___��____������������������_____&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimFalse">�<font color="#FF0000"><t:rtrim value="   ��    ������������������     " replaceSpToNbsp="false" /></font>�</span>
          <br><br><br>
  
        </td>
    </tr>
        
</table>

  &nbsp;&nbsp;&nbsp;���E�����z���C�g�X�y�[�X�����O�̕�����:&nbsp;�<font color="#FF0000"><t:write name="trim" replaceNullToNbsp="true"/></font>�v<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;�&quot;�A&quot;�&quot;�̊Ԃ�������ł���B)<br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">�����񏈗�: ���E�����z���C�g�X�y�[�X����</font><br><br>
  
<table>
    <tr>
        <td align="left">
        
          1. trim�^�O �yname�z<br>
          <ul>
            <li>name�̃f�[�^�̍��E�����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim name=&quot;trim&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimName">�<font color="#FF0000"><t:trim name="trim"/></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. trim�^�O �yid, name�z<br>
          <ul>
            <li>name�̃f�[�^�̍��E�����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>trim�̌��ʂ�id�����Ɏw�肵��trimmed�Ɋi�[����邩���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim id=&quot;trimmed&quot; name=&quot;trim&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:trim id="trimmed" name="trim"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimId">�<font color="#FF0000"><%= trimmed %></font>�</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. trim�^�O �yvalue�z<br>
          <ul>
            <li>value�̃f�[�^�̍��E�����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;_____����������_____&quot;/&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimValue">�<font color="#FF0000"><t:trim value="     ����������     "/></font>�</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. trim�^�O �yproperty, scope, name�z<br>
          <ul>
            <li>trimForm��rtrim�f�[�^�̍��E�����z���C�g�X�y�[�X���������ĕ\������鎖���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim name=&quot;trimForm&quot; property=&quot;trim&quot; scope=&quot;request&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimProperty">�<font color="#FF0000"><t:trim name="trimForm" property="trim" scope="request"/></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. trim�^�O �yfilter, value�z<br>
          <ul>
            <li>value�̃f�[�^�̍��E�����z���C�g�X�y�[�X���������ĕ\������邩���m�F�B<br><br></li>
            <li>value�ɐݒ肳�ꂽ&quot;&lt;,&gt;,&amp;,&quot;&quot;����ʂɕ\������鎖��html�\�[�X�R�[�h���m�F�B<br>
             html�\�[�X�R�[�h��&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;�ɕϊ�����Ă��鎖���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;_____&amp;&lt;����������&gt;\&quot;_____&quot; filter=&quot;true&quot;/&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimFilter">�<font color="#FF0000"><t:trim value="     &<����������>\"     " filter="true"/></font>�</span>
        �@<br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. trim�^�O �yignore, name�z<br>
          <ul>
            <li>bean��������Ȃ��������A��������JspException���������Ȃ������m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim name=&quot;XXX&quot; ignore=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimIgnore">�<font color="#FF0000"><t:trim name="hoge" ignore="true" /></font>�</span>
        �@<br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. trim�^�O�yvalue, replaceSpToNbsp=&quot;true&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������鎖���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;___��____������������������_____&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimTrue">�<font color="#FF0000"><t:trim value="   ��    ������������������     " replaceSpToNbsp="true" /></font>�</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. trim�^�O�yvalue, replaceSpToNbsp=&quot;false&quot;�z<br>
          <ul>
            <li>�����̋󔒂��\������鎖���m�F�B<br><br></li>
            <li>trim�^�O�̐ݒ�<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;___��____������������������_____&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;�͋󔒂�\��)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimFalse">�<font color="#FF0000"><t:trim value="   ��    ������������������     " replaceSpToNbsp="false" /></font>�</span>
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