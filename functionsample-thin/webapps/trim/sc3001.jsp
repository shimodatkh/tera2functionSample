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

<bean:define id="titleUsecaseName" scope="page" value="トリム"/>
<bean:define id="titleScreenName" scope="page" value="トリム"/>
<bean:define id="screenName" scope="page" value="トリム"/>
<bean:define id="screenID" scope="page" value="SC3001"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>トリム</h4>
    
<%
String ltrim = "     あいうえお";
String rtrim = "あいうえお     ";
String trim = "     あいうえお     ";

pageContext.setAttribute("ltrim", ltrim);
pageContext.setAttribute("rtrim", rtrim);
pageContext.setAttribute("trim", trim);
%><br>

  &nbsp;&nbsp;&nbsp;左側ホワイトスペース除去前の文字列：&nbsp;｢<font color="#FF0000"><t:write name="ltrim" replaceNullToNbsp="true"/></font>｣<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;｢&quot;、&quot;｣&quot;の間が文字列である。)<br><br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">文字列処理: 左側ホワイトスペース除去</font><br><br>

<table>
    <tr>
        <td align="left">
        
          1. ltrimタグ 【name】<br>
          <ul>
            <li>nameのデータの左側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim name=&quot;ltrim&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimName">｢<font color="#FF0000"><t:ltrim name="ltrim"/></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
           2. ltrimタグ 【id, name】<br>
          <ul>
            <li>nameのデータの左側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>ltrimの結果がid属性に指定したtrimmedに格納される事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim id=&quot;trimmed&quot; name=&quot;ltrim&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:ltrim id="trimmed" name="ltrim"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimId">｢<font color="#FF0000"><%= trimmed %></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. ltrimタグ 【value】<br>
          <ul>
            <li>valueのデータの左側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;_____あいうえお&quot;/&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimValue">｢<font color="#FF0000"><t:ltrim value="     あいうえお"/></font>｣</span>
          <br>
          <br>
          <br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. ltrimタグ 【property, scope, name】<br>
          <ul>
            <li>trimFormのltrimデータの左側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim name=&quot;trimForm&quot; property=&quot;ltrim&quot; scope=&quot;request&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimProperty">｢<font color="#FF0000"><t:ltrim name="trimForm" property="ltrim" scope="request" /></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. ltrimタグ 【filter, value】<br>
          <ul>
            <li>valueのデータの左側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>valueに設定された&quot;&lt;,&gt;,&amp;,&quot;&quot;が画面に表示される事とhtmlソースコードを確認。<br>
             htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;_____&lt;あいうえお&gt;&amp;\&quot;&quot; filter=&quot;true&quot;/&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimFilter">｢<font color="#FF0000"><t:ltrim value="     <あいうえお>&\"" filter="true" /></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. ltrimタグ 【ignore, name】<br>
          <ul>
            <li>beanが見つからなかった時、無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim name=&quot;XXX&quot; ignore=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimIgnore">｢<font color="#FF0000"><t:ltrim name="XXX" ignore="true" /></font>｣</span>
          <br>
          <br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. ltrimタグ【value, replaceSpToNbsp=&quot;true&quot;】<br>
          <ul>
            <li>複数の空白が表示される事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;___あ____いうえおかきくけこ_____&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimTrue">｢<font color="#FF0000"><t:ltrim value="   あ    いうえおかきくけこ     " replaceSpToNbsp="true" /></font>｣</span>
          <br>
        　<br>
          <br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. ltrimタグ【value, replaceSpToNbsp=&quot;false&quot;】<br>
          <ul>
            <li>複数の空白が表示されない事を確認。<br><br></li>
            <li>ltrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:ltrim value=&quot;___あ____いうえおかきくけこ_____&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="ltrimFalse">｢<font color="#FF0000"><t:ltrim value="   あ    いうえおかきくけこ     " replaceSpToNbsp="false" /></font>｣</span>
          <br>
        　<br>
          <br>
  
        </td>
    </tr>
        
</table>

  &nbsp;&nbsp;&nbsp;右側ホワイトスペース除去前の文字列：&nbsp;｢<font color="#FF0000"><t:write name="rtrim" replaceNullToNbsp ="true" /></font>｣<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;｢&quot;、&quot;｣&quot;の間が文字列である。)<br><br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">文字列処理: 右側ホワイトスペース除去</font><br><br>

<table>
    <tr>
        <td align="left">
        
          1. rtrimタグ 【name】<br>
          <ul>
            <li>nameのデータの右側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim name=&quot;rtrim&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimName">｢<font color="#FF0000"><t:rtrim name="rtrim"/></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. rtrimタグ 【id, name】<br>
          <ul>
            <li>nameのデータの右側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>rtrimの結果がid属性に指定したtrimmedに格納されるかを確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim id=&quot;trimmed&quot; name=&quot;rtrim&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:rtrim id="trimmed" name="rtrim"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimId">｢<font color="#FF0000"><%= trimmed %></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. rtrimタグ 【value】<br>
          <ul>
            <li>valueのデータの右側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;あいうえお_____&quot;/&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimValue">｢<font color="#FF0000"><t:rtrim value="あいうえお     "/></font>｣</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. rtrimタグ 【property ,scope, name】<br>
          <ul>
            <li>trimFormのrtrimデータの右側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim name=&quot;trimForm&quot; property=&quot;rtrim&quot; scope=&quot;request&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimProperty">｢<font color="#FF0000"><t:rtrim name="trimForm" property="rtrim" scope="request" /></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. rtrimタグ 【filter, value】<br>
          <ul>
            <li>valueのデータの右側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>valueに設定された&quot;&lt;,&gt;,&amp;,&quot;&quot;が画面に表示される事とhtmlソースコードを確認。<br>
             htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;&lt;あいうえお&gt;&amp;\&quot;_____&quot; filter=&quot;true&quot;/&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimFilter">｢<font color="#FF0000"><t:rtrim value="<あいうえお>&\"     " filter="true" /></font>｣</span>
        　<br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. rtrimタグ【ignore, name】<br>
          <ul>
            <li>beanが見つからなかった時、無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim name=&quot;XXX&quot; ignore=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimIgnore">｢<font color="#FF0000"><t:rtrim name="XXX" ignore="true" /></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. rtrimタグ【value, replaceSpToNbsp=&quot;true&quot;】<br>
          <ul>
            <li>複数の空白が表示される事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;___あ____いうえおかきくけこ_____&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimTrue">｢<font color="#FF0000"><t:rtrim value="   あ    いうえおかきくけこ     " replaceSpToNbsp="true" /></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. rtrimタグ【value, replaceSpToNbsp=&quot;false&quot;】<br>
          <ul>
            <li>複数の空白が表示されない事を確認。<br><br></li>
            <li>rtrimタグの設定<br>
              &nbsp;&nbsp;&lt;t:rtrim value=&quot;___あ____いうえおかきくけこ_____&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="rtrimFalse">｢<font color="#FF0000"><t:rtrim value="   あ    いうえおかきくけこ     " replaceSpToNbsp="false" /></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>
        
</table>

  &nbsp;&nbsp;&nbsp;左右両側ホワイトスペース除去前の文字列:&nbsp;｢<font color="#FF0000"><t:write name="trim" replaceNullToNbsp="true"/></font>」<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&quot;｢&quot;、&quot;｣&quot;の間が文字列である。)<br>
  &nbsp;&nbsp;&nbsp;<font color="#FF0000">文字列処理: 左右両側ホワイトスペース除去</font><br><br>
  
<table>
    <tr>
        <td align="left">
        
          1. trimタグ 【name】<br>
          <ul>
            <li>nameのデータの左右両側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim name=&quot;trim&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimName">｢<font color="#FF0000"><t:trim name="trim"/></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
        
          2. trimタグ 【id, name】<br>
          <ul>
            <li>nameのデータの左右両側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>trimの結果がid属性に指定したtrimmedに格納されるかを確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim id=&quot;trimmed&quot; name=&quot;trim&quot;/&gt;<br><br>
            </li>
          </ul>
          <t:trim id="trimmed" name="trim"/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimId">｢<font color="#FF0000"><%= trimmed %></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>  

    <tr>
        <td align="left">
            
          3. trimタグ 【value】<br>
          <ul>
            <li>valueのデータの左右両側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;_____あいうえお_____&quot;/&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimValue">｢<font color="#FF0000"><t:trim value="     あいうえお     "/></font>｣</span>
          <br><br><br>

        </td>
    </tr>

    <tr>
        <td align="left">
            
          4. trimタグ 【property, scope, name】<br>
          <ul>
            <li>trimFormのrtrimデータの左右両側ホワイトスペースが除去して表示される事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim name=&quot;trimForm&quot; property=&quot;trim&quot; scope=&quot;request&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimProperty">｢<font color="#FF0000"><t:trim name="trimForm" property="trim" scope="request"/></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          5. trimタグ 【filter, value】<br>
          <ul>
            <li>valueのデータの左右両側ホワイトスペースが除去して表示されるかを確認。<br><br></li>
            <li>valueに設定された&quot;&lt;,&gt;,&amp;,&quot;&quot;が画面に表示される事とhtmlソースコードを確認。<br>
             htmlソースコードで&amp;lt;,&amp;gt;,&amp;amp;,&amp;quot;に変換されている事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;_____&amp;&lt;あいうえお&gt;\&quot;_____&quot; filter=&quot;true&quot;/&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimFilter">｢<font color="#FF0000"><t:trim value="     &<あいうえお>\"     " filter="true"/></font>｣</span>
        　<br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          6. trimタグ 【ignore, name】<br>
          <ul>
            <li>beanが見つからなかった時、無視してJspExceptionが発生しない事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim name=&quot;XXX&quot; ignore=&quot;true&quot;/&gt;<br><br>
            </li>
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimIgnore">｢<font color="#FF0000"><t:trim name="hoge" ignore="true" /></font>｣</span>
        　<br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          7. trimタグ【value, replaceSpToNbsp=&quot;true&quot;】<br>
          <ul>
            <li>複数の空白が表示される事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;___あ____いうえおかきくけこ_____&quot; replaceSpToNbsp=&quot;true&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimTrue">｢<font color="#FF0000"><t:trim value="   あ    いうえおかきくけこ     " replaceSpToNbsp="true" /></font>｣</span>
          <br><br><br>
  
        </td>
    </tr>

    <tr>
        <td align="left">
            
          8. trimタグ【value, replaceSpToNbsp=&quot;false&quot;】<br>
          <ul>
            <li>複数の空白が表示される事を確認。<br><br></li>
            <li>trimタグの設定<br>
              &nbsp;&nbsp;&lt;t:trim value=&quot;___あ____いうえおかきくけこ_____&quot; replaceSpToNbsp=&quot;false&quot; /&gt;&nbsp;(&quot;_&quot;は空白を表示)<br><br>
            </li>    
          </ul>
          &nbsp;&nbsp;&nbsp;&nbsp;<span id="trimFalse">｢<font color="#FF0000"><t:trim value="   あ    いうえおかきくけこ     " replaceSpToNbsp="false" /></font>｣</span>
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