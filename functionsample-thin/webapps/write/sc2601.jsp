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

<bean:define id="titleUsecaseName" scope="page" value="文字列表示"/>
<bean:define id="titleScreenName" scope="page" value="文字列表示"/>
<bean:define id="screenName" scope="page" value="文字列表示"/>
<bean:define id="screenID" scope="page" value="SC2601"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>文字列表示</h4>
    
<%
String write2 = "writeタグサンプル２";
String filter = "&<>\"";
String lf = "\n←";

pageContext.setAttribute("space", "   ");
pageContext.setAttribute("filter", filter);
pageContext.setAttribute("write2", write2);
pageContext.setAttribute("lf", lf);

%>

<table>
    <tr>
        <td align="left">
        
          1. writeタグ 【name, property, scope】<br>
          <ul>
            <li>name属性に設定したFormのpropertyの内容が表示される事を確認。<br>
                (write1の内容: writeタグサンプル１)<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;writeForm&quot; property=&quot;write1&quot; scope=&quot;request&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagWrite1Message'>[<font color="#FF0000"><t:write name="writeForm" property="write1" scope="request" /></font>]</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. writeタグ 【name】<br>
          <ul>
            <li>name属性の内容が表示される事を確認。<br>
                (write2の内容: writeタグサンプル２)<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;write2&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagWrite2Message'>[<font color="#FF0000"><t:write name="write2" /></font>]</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. writeタグ 【name, filter】<br>
          <ul>
            <li>name属性の内容が表示される事を確認。<br>
                (filterの内容: &lt;&gt;&amp;\&quot;)<br><br></li>
            <li>name属性の内容にある&quot;&lt;,&gt;,&amp;,&quot;&quot;が画面に表示される事とhtmlソースコードを確認。<br>
             htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されているかを確認。<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;filter&quot; filter=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagFilterMessage'>[<font color="#FF0000"><t:write name="filter" filter="true" /></font>]</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. writeタグ 【name, replaceSpToNbsp】<br>
          <ul>
            <li>name属性の内容が表示されるかを確認。<br>
                (spaceの内容: 三つの空白文字）<br><br></li>
            <li>name属性の内容にある空白文字が画面に表示されるかとhtmlで確認、htmlに&amp;nbsp;に変換されているかを確認。<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;space&quot; replaceSpToNbsp=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagSpaceMessage'>[<font color="#FF0000"><t:write name="space" replaceSpToNbsp="true" /></font>]</span>←&amp;nbsp;&amp;nbsp;&amp;nbsp;
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          5. writeタグ 【name, property, replaceNullToNbsp】<br>
          <ul>
            <li>name属性に設定したFormのpropertyの内容が表示されるかを確認。<br>
                (writeFormのwrite2の内容: Null)<br><br></li>
            <li>name属性の内容にある空白文字が画面に表示されるかとhtmlで確認、htmlに&amp;nbsp;に変換されているかを確認。<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;writeForm&quot; property=&quot;write2&quot; replaceNullToNbsp=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagNullMessage'>[<font color="#FF0000"><t:write name="writeForm" property="write2" replaceNullToNbsp="true" /></font>]</span>←&amp;nbsp;
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          6. writeタグ 【name, replaceLFtoBR】<br>
          <ul>
            <li>name属性の内容が表示されるかを確認。<br>
                (lfの内容: \n←)<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;lf&quot; replaceLFtoBR=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagLfMessage'>[<font color="#FF0000"><t:write name="lf" replaceLFtoBR="true"/></font>]</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          7. writeタグ 【name, scope, ignore】<br>
          <ul>
            <li>beanが見つからなかった時、無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;XXX&quot; scope=&quot;session&quot; ignore=&quot;true&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagIgnoreMessage'>[<font color="#FF0000"><t:write name="XXX" scope="session" ignore="true" /></font>]</span>
          <br><br><br>
  
          </td>
    </tr>
    
    <tr>
        <td align="left">
            
          8. writeタグ 【name, fillColumn】<br>
          <ul>
            <li>nameの内容が全角と半角に関係なく3文字ずつ分けて表示されるかを確認。<br>
               (write2の内容：writeタグサンプル２)<br><br></li>
            <li>writeタグの設定<br>
              &nbsp;&nbsp;&lt;t:write name=&quot;write2&quot; fillColumn=&quot;3&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;<span id='writeTagFillColumnMessage'>[<font color="#FF0000"><t:write name="write2" fillColumn="3"/></font>]</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          9. writeタグ 【name, addBR】<br>
          <ul>
            <li>文字列の最後に&lt;br&gt;が追加される事を確認。<br>
               (write2の内容：writeタグサンプル２)<br><br></li>
            <li>writeタグの設定<br>
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
<html:button property="menuForward" value="メニュー画面に戻る"
onclick="location.href='../menuForward.do'" />
<br>
<br>
<br>
<!-- end body-->

<%@ include file="../sc0004.jspf" %>

</html:html>