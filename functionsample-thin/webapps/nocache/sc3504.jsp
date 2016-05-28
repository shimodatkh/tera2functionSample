<%--
  - $Id: sc3504.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="submitタグ"/>
<bean:define id="screenName" scope="page" value="submitタグ"/>
<bean:define id="screenID" scope="page" value="SC3504"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>submitタグ</h4>
    
<br>
  <head>
    <title>submitタグ</title>
    <STYLE type="text/css">
    <!--
    .Class_01{
        background-color:#ffffcc;
    }

    #Class_02{
        background-color:red;
    }
    -->
    </STYLE>

  </head>
<%
    String[] strs= new String[]{"Akimoto","Baraki","Chiba","Degawa"};
    pageContext.setAttribute("strs", strs);
%>
  <ts:form action="/submitResultForward.do">
    1. submitタグ 【target, tabindex=2】<br>
    <ul>
      <li>新しいウインドウが表示される事を確認。</li>
      <li>最初この画面が表示した時、Tabキーを押すと2番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; tabindex=&quot;2&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1"  tabindex="2">
       submit
    </ts:submit>
    <br><br><br>
    2. submitタグ 【target, tabindex=1】<br>
    <ul>
      <li>1.submitタグの結果ではなく別の新しいウインドウが表示される事を確認。</li>
      <li>最初この画面が表示した時、Tabキーを押すと1番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame2&quot; tabindex=&quot;1&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame2"  tabindex="1">
       submit
    </ts:submit>
    <br><br><br>
    3. submitタグ 【target, onclick, tabindex=3】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンをクリックした時、ダイアログが表示される事を確認。</li>
      <li>最初この画面が表示した時、Tabキーを押すと3番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onclick=&quot;alert('onclick');&quot; tabindex=&quot;3&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit  target="_frame1" onclick="alert('onclick');" tabindex="3">
       クリックでダイアログ
    </ts:submit>
    <br><br><br>
    4. submitタグ 【target, ondblclick, tabindex=4】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンをダブルクリックした時、ダイアログが表示される事を確認。</li>
      <li>最初この画面が表示した時、Tabキーを押すと4番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; ondblclick=&quot;alert('ondblclick');&quot; tabindex=&quot;4&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" ondblclick="alert('ondblclick');"  tabindex="4">
       ダブルクリックでダイアログ表示
    </ts:submit>
    <br><br><br>
    5. submitタグ 【target, onfocus】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンにフォーカスが来た時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onfocus=&quot;alert('onfocus');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onfocus=" alert('onfocus');" >
        フォーカスでダイアログ表示
    </ts:submit>
    <br><br><br>
    6. submitタグ 【target, onblur】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンがフォーカスを無くした時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onblur=&quot;alert('onblur');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onblur="alert('onblur');" >
       フォーカス喪失でダイアログ表示
    </ts:submit>
    <br><br><br>
    7. submitタグ 【target, onkeydown】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンにフォーカスとキーダウンのイベントが来た時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onkeydown=&quot;alert('onkeydown');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onkeydown="alert('onkeydown');" >
       フォーカス＋キーダウンでダイアログ表示
    </ts:submit>
    <br><br><br>
    8. submitタグ 【target, onkeypress】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンにフォーカスとキー入力のイベントが来た時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onkeypress=&quot;alert('onkeypress');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onkeypress="alert('onkeypress');">
        フォーカス＋キー入力でダイアログ表示
    </ts:submit>
    <br><br><br>
    9. submitタグ 【target, onkeyup】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンにフォーカスとキーアップのイベントが来た時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onkeyup=&quot;alert('onkeyup');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onkeyup="alert('onkeyup');" >
   　　 フォーカス＋キーアップでダイアログ表示
    </ts:submit>
    <br><br><br>
    10. submitタグ 【target, onmousedown】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンをマウスでクリックした時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmousedown=&quot;alert('onmousedown');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmousedown="alert('onmousedown');">
       フォーカス+マウス押下でダイアログ表示
    </ts:submit>
    <br><br><br>
    11. submitタグ 【target, onmousemove】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンの上をマウスが移動した時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmousemove=&quot;alert('onmousemove');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmousemove="alert('onmousemove');" >
       マウス移動でダイアログ表示
    </ts:submit>
    <br><br><br>
    12. submitタグ 【target, onmouseout】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>ボタンの上から外にマウスを移動した時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmouseout=&quot;alert('onmouseout');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmouseout="alert('onmouseout');">
       マウスカーソルアウトでダイアログ表示
    </ts:submit>
    <br><br><br>
    13. submitタグ 【target, onmouseover】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>外からボタンの上にマウスを移動した時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmouseover=&quot;alert('onmouseover');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmouseover="alert('onmouseover');">
       マウスカーソルオーバーでダイアログ表示
    </ts:submit>
    <br><br><br>
    14. submitタグ 【target, onmouseup】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
　    <li>マウスでボタンをクリックした後ボタンが上がる時、ダイアログが表示される事を確認。</li>
      <li>submitタグの設定<br>
        &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onmouseup=&quot;alert('onmouseup');&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onmouseup="alert('onmouseup');">
       マウスボタンアップでダイアログ表示
    </ts:submit>
    <br><br><br>
    15. submitタグ 【target, styleClass】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>背景色が設定される事を確認。</li>
      <li>styleClassの設定<br>
          &lt;STYLE type=&quot;text/css&quot;&gt;<br>
          &nbsp;&nbsp;&lt;!--<br>
          &nbsp;&nbsp;.Class_01{<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:#ffffcc;<br>
          &nbsp;&nbsp;}<br>
          &nbsp;&nbsp;--&gt;<br>
          &nbsp;&nbsp;&lt;/STYLE&gt;<br></li>      
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; styleClass=&quot;Class_01&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" styleClass="Class_01">
       CSSによるバックグラウンドカラー設定(styleClass)
    </ts:submit>
    <br><br><br>
    16. submitタグ 【target, style】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>背景色が設定される事を確認。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; style=&quot;background-color:#CFDBE2;&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" style="background-color:#CFDBE2;">
       CSSによるバックグラウンドカラー設定2(style)
    </ts:submit>
    <br><br><br>
    17. submitタグ 【target, styleId】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>背景色が設定される事を確認。</li>
      <li>styleIdの設定<br>
          &lt;STYLE type=&quot;text/css&quot;&gt;<br>
          &nbsp;&nbsp;&lt;!--<br>
          &nbsp;&nbsp;#Class_02{<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:red;<br>
          &nbsp;&nbsp;}<br>
          &nbsp;&nbsp;--&gt;<br>
          &nbsp;&nbsp;&lt;/STYLE&gt;<br></li> 
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; styleId=&quot;Class_02&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" styleId="Class_02">
       CSSによるバックグラウンドカラー設定3(styleId)
    </ts:submit>
    <br><br><br>
    18. submitタグ 【target, value】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>values属性がボタンに表示される事を確認。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; value=&quot;サブミット&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" value="サブミット" />
    <br><br><br>
    19. submitタグ 【target, alt, accessKey】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>&quot;Alt+A&quot;を押す時、このボタンがフォーカスされる事を確認。</li>
      <li>このボタンが表示されない時、alt属性の内容が表示される事を確認。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; alt=&quot;alt属性の内容です。&quot; accesskey=&quot;a&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" alt="alt属性の内容です。" accesskey="a" />
    <br><br><br>
    20. submitタグ 【target, altKey】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>このボタンが表示されない時、altKey属性のキーに当たるデータが表示される事を確認。
        (プロパティファイルの設定: &quot;submit.alt = taglibMessageResources.propertiesに設定したsubmit.altの内容です。&quot;)</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; altKey=&quot;submit.alt&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" altKey="submit.alt" />
    <br><br><br>
    21. submitタグ 【target, disable】<br>
    <ul>
      <li>このボタンが無効化される事を確認。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; disabled=&quot;true&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" disabled="true" />
    <br><br><br>
    22. submitタグ 【target, indexed, property】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>ボタン名がcollectionのデータで表示する事を確認。<br>
          (collectionのデータ: {"Akimoto","Baraki","Chiba","Degawa"})</li>
      <li>submitボタンのhtmlのname属性が全部違う事を確認。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; indexed=&quot;true&quot; property=&quot;frame1SCR&quot;&gt;</li>
    </ul>
    <logic:iterate id="data" collection='<%= strs %>'>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" indexed="true" property="frame1SCR">
      <bean:write name="data" />
    </ts:submit>
    <br>
    </logic:iterate>
    <br><br><br>
    23. submitタグ 【target, onchange】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>ボタンはそのvalueを変わる事がないのでonchange属性はチェックできない。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; onchange=&quot;alert('onchange')&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" onchange="alert('onchange')"/>
    <br><br><br>
    24. submitタグ 【target, title】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>ボタンの上にマウスを乗せる時、title属性の内容が表示される事を確認。</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; title=&quot;title属性に設定したタイトル&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" title="title属性に設定したタイトル"/>
    <br><br><br>
    25. submitタグ 【target, titleKey】<br>
    <ul>
      <li>1.submitタグの結果と同じウインドウが表示される事を確認。</li>
      <li>ボタンの上にマウスを乗せる時、titleKey属性のキーの内容が表示される事を確認。<br>
          (プロパティファイルの設定: &quot;link.title = taglibMessageResources.propertiesに設定したlink.titleの内容です。&quot;)</li>
      <li>submitタグの設定<br>
          &nbsp;&nbsp;&lt;ts:submit target=&quot;_frame1&quot; titleKey=&quot;link.title&quot;&gt;</li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:submit target="_frame1" titleKey="link.title"/>
  
  <br><br><br>
  </ts:form>
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

