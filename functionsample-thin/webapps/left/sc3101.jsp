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

<bean:define id="titleUsecaseName" scope="page" value="文字列切り取り"/>
<bean:define id="titleScreenName" scope="page" value="文字列切り取り"/>
<bean:define id="screenName" scope="page" value="文字列切り取り"/>
<bean:define id="screenID" scope="page" value="SC3101"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>文字列切り取り</h4>
    
<%
String moji = "あいうえおかきくけこ";
pageContext.setAttribute("moji", moji);
%><br>

  &nbsp;&nbsp;&nbsp;指定文字数分切り出し前の文字列：&nbsp;｢<font color="#FF0000"><t:write name="moji" replaceNullToNbsp="true"/></font>｣<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;｢&quot;、&quot;｣&quot;の間が文字列である。)<br><br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">文字列処理: ５文字切り出し</font><br><br>

<table>
    <tr>
        <td align="left">
        
          1. leftタグ 【name, length】<br>
          <ul>
            <li>nameのデータが左からlengthの数ほど表示される事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left name=&quot;moji&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftName">｢<font color="#FF0000"><t:left name="moji" length="5" /></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. leftタグ 【id, name, length】<br>
          <ul>
            <li>lengthによって切出したnameのデータがidで指定した引数に格納されている事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left id=&quot;cut&quot; name=&quot;moji&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          <t:left id="cut" name="moji" length="5" />
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftId">｢<font color="#FF0000"><%= cut %></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. leftタグ 【value, length】<br>
          <ul>
            <li>valueのデータが左からlengthの数ほど表示される事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;あいうえおかきくけこ&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftValue">｢<font color="#FF0000"><t:left value="あいうえおかきくけこ" length="5" /></font>｣</span>
          <br>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. leftタグ 【property, scope, name, length】<br>
          <ul>
            <li>leftFormのleftが左からlengthの数ほど表示される事を確認。<br>
              (leftFormに格納されているleftのデータ：あいうえおかきくけこ)<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left name=&quot;leftForm&quot; property=&quot;left&quot; scope=&quot;request&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftProperty">｢<font color="#FF0000"><t:left name="leftForm" property="left" scope="request" length="5"/></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. leftタグ 【filter, value, length】<br>
          <ul>
            <li>valueに設定された&quot;&lt;,&gt;,&amp;,&quot;&quot;が画面に表示される事とhtmlソースコードを確認。<br>
             htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;&lt;&gt;&amp;\&quot;あいうえおかきくけこ&quot; filter=&quot;true&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftFilter">｢<font color="#FF0000"><t:left value="<>&\"あいうえおかきくけこ" filter="true" length="5" /></font>｣</span>
        　<br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. leftタグ 【ignore, name, length】<br>
          <ul>
            <li>beanが見つからなかった時、無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left name=&quot;XXX&quot; ignore=&quot;true&quot; length=&quot;5&quot; /&gt;<br><br>
            </li>    
          </ul>  
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftIgnore">｢<font color="#FF0000"><t:left name="XXX" ignore="true" length="5" /></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. leftタグ 【value, length, replaceSpToNbsp=&quot;true&quot;】<br>
          <ul>
            <li>複数の空白が表示される事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;あ____いうえおかきくけこ&quot; length=&quot;5&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftReplaceTrue">｢<font color="#FF0000"><t:left value="あ    いうえおかきくけこ" length="5" replaceSpToNbsp="true" /></font>｣</span>
        　<br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. leftタグ 【value, length, replaceSpToNbsp=&quot;false&quot;】<br>
          <ul>
            <li>複数の空白が表示されない事を確認。<br><br></li>
            <li>leftタグの設定<br>
              &nbsp;&nbsp;&lt;t:left value=&quot;あ____いうえおかきくけこ&quot; length=&quot;5&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="leftReplaceFalse">｢<font color="#FF0000"><t:left value="あ    いうえおかきくけこ" length="5" replaceSpToNbsp="false" /></font>｣</span>
        　<br>
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