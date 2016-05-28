<%--
  - $Id: sc2701.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="日付変換"/>
<bean:define id="titleScreenName" scope="page" value="日付変換"/>
<bean:define id="screenName" scope="page" value="日付変換"/>
<bean:define id="screenID" scope="page" value="SC2701"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>日付変換</h4>
    
<%
String datePattern01 = "2009/01/21 00:12:34";
pageContext.setAttribute("datePattern01", datePattern01);
String datePattern02 = "2009/01/21 12:34:56";
pageContext.setAttribute("datePattern02", datePattern02);

String datePattern07 = "2009-01-21 12,34,56,789";
pageContext.setAttribute("datePattern07", datePattern07);
String datePattern08 = "2009-01-21 12,34,56,789";
pageContext.setAttribute("datePattern08", datePattern08);
%><br>

<table>
    <tr>
        <td align="left">
        
          1. dateタグ 【name, pattern】<br>
          <ul>
            <li>nameのデータがpattern通り表示される事を確認。<br>
                (pageContextに格納されているdatePattern01のデータ：2009/01/21 00:12:34)<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date name=&quot;datePattern01&quot; pattern=&quot;GGG yyyy.MM.dd  hh:mm aaa&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateName">｢<font color="#FF0000"><t:date name="datePattern01" pattern="GGG yyyy.MM.dd  hh:mm aaa" /></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. dateタグ 【id, name, pattern】<br>
          <ul>
            <li>patternによって変換されたnameのデータがidで指定した名前の変数に格納されている事を確認。<br>
                (pageContextに格納されているdatePattern02のデータ：2009/01/21 12:34:56)<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date id=&quot;formatted&quot; name=&quot;datePattern02&quot; 
              pattern=&quot;GGG yyyy.MM.dd  hh:mm aaa&quot; /&gt;<br><br>
            </li>
          </ul>  
          <t:date id="formatted" name="datePattern02" pattern="GGG yyyy.MM.dd  hh:mm aaa" />
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateId">｢<font color="#FF0000"><%= formatted %></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. dateタグ 【value, pattern】<br>
          <ul>
            <li>valueのデータがpattern通り表示される事を確認。<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date value=&quot;2009/02/21 00:12:34&quot; pattern=&quot;GGG yyyy.MM.dd  hh:mm aaa&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateValue">｢<font color="#FF0000"><t:date value="2009/02/21 00:12:34" pattern="GGG yyyy.MM.dd  hh:mm aaa" /></font>｣</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. dateタグ【property, scope, name, pattern】<br>
          <ul>
            <li>dateFormのdatePattern04が表示される事を確認。<br>
                (dateFormに格納されているdatePattern04のデータ：2009/03/21 12:34:56)<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date name=&quot;dateForm&quot; property=&quot;datePattern04&quot; scope=&quot;request&quot;
                     pattern=&quot;GGG yyyy.MM.dd  hh:mm aaa&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateProperty">｢<font color="#FF0000"><t:date name="dateForm" property="datePattern04" scope="request" pattern="GGG yyyy.MM.dd  hh:mm aaa" /></font>｣</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          5. dateタグ【filter, value, pattern】<br>
          <ul>
            <li>patternに設定された &quot;&lt;,&gt;,&amp;,&quot;&quot; が画面に表示される事とhtmlソースコードを確認。<br>
            htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date value=&quot;2009/02/21 00:12:34&quot; filter=&quot;true&quot;
                     pattern=&quot;GGG &lt;yyyy&gt;.&amp;MM.dd  \&quot;hh:mm aaa&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateFilter">｢<font color="#FF0000"><t:date value="2009/02/21 00:12:34" filter="true" pattern="GGG <yyyy>.&MM.dd  \"hh:mm aaa" /></font>｣</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          6. dateタグ【ignore, name, pattern】<br>
          <ul>
            <li>beanが見つからなかった時に無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date name=&quot;XXX&quot; ignore=&quot;true&quot;
                     pattern=&quot;GGG yyyy.MM.dd  hh:mm aaa&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateIgnore">｢<font color="#FF0000"><t:date name="XXX" ignore="true" pattern="GGG yyyy.MM.dd  hh:mm aaa" /></font>｣</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
        
          7. dateタグ 【format, name, pattern】<br>
          <ul>
            <li>format形式のnameのデータがpattern通り表示される事を確認。<br>
                (pageContextのdatePattern07にformat="yyyy-MM-dd HH,mm,ss,SSS"に従った"2009-01-21 12,34,56,789"である時間が格納されている。)<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date name=&quot;datePattern07&quot; pattern=&quot;GGG yyyy.MM.dd KK:mm aaa&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateFormatName">｢<font color="#FF0000"><t:date name="datePattern07" pattern="GGG yyyy.MM.dd KK:mm aaa" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          8. dateタグ 【format, id, name, pattern】<br>
          <ul>
            <li>patternによって変換されたformat形式のnameのデータがidで指定した名前の変数に格納されている事を確認する。<br>
                (pageContextのdatePattern08にformat="yyyy-MM-dd HH,mm,ss,SSS"に従った"2009-01-21 12,34,56,789"である時間が格納されている。)<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date id=&quot;formatted&quot; name=&quot;datePattern08&quot; 
              pattern=&quot;GGG yyyy.MM.dd KK:mm aaa&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          <t:date id="formatted" name="datePattern08" pattern="GGG yyyy.MM.dd KK:mm aaa" format="yyyy-MM-dd HH,mm,ss,SSS"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateFormatId">｢<font color="#FF0000"><%= formatted %></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          9. dateタグ 【format, value, pattern】<br>
          <ul>
            <li>format形式のvalueのデータがpattern通り表示される事を確認する。<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date value=&quot;2009-01-21 12,34,56,789&quot; pattern=&quot;GGG yyyy.MM.dd KK:mm aaa&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateFormatValue">｢<font color="#FF0000"><t:date value="2009-01-21 12,34,56,789" pattern="GGG yyyy.MM.dd KK:mm aaa" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          10. dateタグ【format, property, scope, name, pattern】<br>
          <ul>
            <li>dateFormのformat形式のdateが表示される事を確認する。<br>
                (dateFormに格納されているdatePattern10のデータ：2009-01-21 12,34,56,789)<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date name=&quot;dateForm&quot; property=&quot;datePattern10&quot; scope=&quot;request&quot;
                     pattern=&quot;GGG yyyy.MM.dd KK:mm aaa&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateFormatProperty">｢<font color="#FF0000"><t:date name="dateForm" property="datePattern10" scope="request" pattern="GGG yyyy.MM.dd KK:mm aaa" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br><br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          11. dateタグ【format, filter, value, pattern】<br>
          <ul>
            <li>format形式のデータがpatternに設定された &quot;&lt;,&gt;,&amp;,&quot;&quot; が画面に表示される事とhtmlソースコードを確認。<br>
            htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>dateタグの設定<br>
              &nbsp;&nbsp;&lt;t:date value=&quot;2009-01-21 12,34,56,789&quot; filter=&quot;true&quot;
                     pattern=&quot;GGG &lt;yyyy&gt;.&amp;MM.dd \&quot;KK:mm aaa&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="dateFormatFilter">｢<font color="#FF0000"><t:date value="2009-01-21 12,34,56,789" filter="true" pattern="GGG <yyyy>.&MM.dd \"KK:mm aaa" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br><br><br>
  
          </td>
    </tr>

</table>
        
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