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

<bean:define id="titleUsecaseName" scope="page" value="和暦日付変換"/>
<bean:define id="titleScreenName" scope="page" value="和暦日付変換"/>
<bean:define id="screenName" scope="page" value="和暦日付変換"/>
<bean:define id="screenID" scope="page" value="SC2801"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>和暦日付変換</h4>
    
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
        
          1. jdateタグ 【name, pattern】<br>
          <ul>
            <li>nameのデータがpattern通り表示される事を確認。<br>
                (pageContextに格納されているdatePattern01のデータ：2009/01/21 00:12:34 , datePattern02のデータ：2009/01/21 12:34:56)<br><br></li>
            <li>日付が和暦で表示されるかを確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern01&quot; pattern=&quot;GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒&quot; /&gt;<br><br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern02&quot; pattern=&quot;G. yy年MM月dd日(E) aaa hh時mm分ss秒&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateName1">｢<font color="#FF0000"><t:jdate name="datePattern01" pattern="GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒" /></font>｣</span>
          <br><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateName2">｢<font color="#FF0000"><t:jdate name="datePattern02" pattern="G. yy年MM月dd日(E) aaa hh時mm分ss秒" /></font>｣</span>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. jdateタグ 【id, name, pattern】<br>
          <ul>
            <li>patternによって変換されたnameのデータがidで指定した名前の変数に格納されている事を確認。<br>
                (pageContextに格納されているdatePattern03のデータ：2009/01/21 12:34:56)<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate id=&quot;formatted&quot; name=&quot;datePattern03&quot; 
              pattern=&quot;GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒&quot; /&gt;<br><br>
            </li>
          </ul>
          <t:jdate id="formatted" name="datePattern03" pattern="GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒" />
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateId">｢<font color="#FF0000"><%= formatted %></font>｣</span>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. jdateタグ 【value, pattern】<br>
          <ul>
            <li>valueのデータがpattern通り表示される事を確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009/02/21 12:34:56&quot; pattern=&quot;GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateValue">｢<font color="#FF0000" ><t:jdate value="2009/02/21 12:34:56" pattern="GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒" /></font>｣</span>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. jdateタグ 【property, scope, name, pattern】<br>
          <ul>
            <li>warekiFormのdateが表示される事を確認。<br>
                (warekiFormに格納されているdatePattern04のデータ：2009/03/21 00:12:34)<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;warekiForm&quot; property=&quot;datePattern04&quot; scope=&quot;request&quot;
                     pattern=&quot;GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateProperty">｢<font color="#FF0000"><t:jdate name="warekiForm" property="datePattern04" scope="request" pattern="GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒"/></font>｣</span>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          5. jdateタグ 【filter, value, pattern】<br>
          <ul>
            <li>patternに設定された &quot;&lt;,&gt;,&amp;,&quot;&quot; が画面に表示される事とhtmlソースコードを確認。<br>
            htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009/02/21 12:34:56&quot; filter=&quot;true&quot;
                     pattern=&quot;&lt;GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒&gt;&amp;\&quot;&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFilter">｢<font color="#FF0000"><t:jdate value="2009/02/21 12:34:56" filter="true" pattern="<GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒>&\"" /></font>｣</span>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          6. jdateタグ 【ignore, name, pattern】<br>
            <ul>
            <li>beanが見つからなかった時、無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;XXX&quot; ignore=&quot;true&quot;
                     pattern=&quot;GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒&quot; /&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateIgnore">｢<font color="#FF0000"><t:jdate name="XXX" ignore="true" pattern="GGGGyy年MM月dd日(EEEE) aaa hh時mm分ss秒" /></font>｣</span>
          <br><br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
        
          7. jdateタグ 【format, name, pattern】<br>
          <ul>
            <li>format形式のnameのデータがpattern通り表示される事を確認。<br>
                (format="yyyy-MM-dd HH,mm,ss,SSS"に従ったpageContextに格納されているdatePattern07のデータ：2009-01-21 12,34,56,789 , datePattern08のデータ：2009-01-21 12,34,56,789)<br><br></li>
            <li>日付が和暦で表示されるかを確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern07&quot; pattern=&quot;GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;datePattern08&quot; pattern=&quot;G. yy年MM月dd日(E) aaaKK時mm分ss秒&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatName1">｢<font color="#FF0000"><t:jdate name="datePattern07" pattern="GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatName2">｢<font color="#FF0000"><t:jdate name="datePattern08" pattern="G. yy年MM月dd日(E) aaaKK時mm分ss秒" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          8. jdateタグ 【format, id, name, pattern】<br>
          <ul>
            <li>patternによって変換されたnameのデータがidで指定した名前の変数に格納されている事を確認。<br>
                (format="yyyy-MM-dd HH,mm,ss,SSS"に従ったpageContextに格納されているdatePattern09のデータ：2009-01-21 12,34,56,789)<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate id=&quot;formatted&quot; name=&quot;datePattern09&quot; 
              pattern=&quot;GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:jdate id="formatted" name="datePattern09" pattern="GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒" format="yyyy-MM-dd HH,mm,ss,SSS"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatId">｢<font color="#FF0000"><%= formatted %></font>｣</span>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          9. jdateタグ 【format, value, pattern】<br>
          <ul>
            <li>format="yyyy-MM-dd HH,mm,ss,SSS"に従ったvalueのデータがpattern通り表示される事を確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009-01-21 12,34,56,789&quot; pattern=&quot;GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatValue">｢<font color="#FF0000" ><t:jdate value="2009-01-21 12,34,56,789" pattern="GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          10. jdateタグ 【format, property, scope, name, pattern】<br>
          <ul>
            <li>format="yyyy-MM-dd HH,mm,ss,SSS"に従ったwarekiFormのdateが表示される事を確認。<br>
                (warekiFormに格納されているdatePattern10のデータ：2009-01-21 12,34,56,789)<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate name=&quot;warekiForm&quot; property=&quot;datePattern10&quot; scope=&quot;request&quot;
                     pattern=&quot;GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatProperty">｢<font color="#FF0000"><t:jdate name="warekiForm" property="datePattern10" scope="request" pattern="GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br>
          <br>
  
          </td>
    </tr>

    <tr>
        <td align="left">
            
          11. jdateタグ 【format, filter, value, pattern】<br>
          <ul>
            <li>patternに設定された &quot;&lt;,&gt;,&amp;,&quot;&quot; が画面に表示される事とhtmlソースコードを確認。<br>
            htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>jdateタグの設定<br>
              &nbsp;&nbsp;&lt;t:jdate value=&quot;2009-01-21 12,34,56,789&quot; filter=&quot;true&quot;
                     pattern=&quot;&lt;GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒&gt;&amp;\&quot;&quot; format=&quot;yyyy-MM-dd HH,mm,ss,SSS&quot;/&gt;<br><br>
            </li>
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="jdateFormatFilter">｢<font color="#FF0000"><t:jdate value="2009-01-21 12,34,56,789" filter="true" pattern="<GGGGyy年MM月dd日(EEEE) aaaKK時mm分ss秒>&\"" format="yyyy-MM-dd HH,mm,ss,SSS"/></font>｣</span>
          <br>
          <br>
  
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