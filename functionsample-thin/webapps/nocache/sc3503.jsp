<%--
  - $Id: sc3503.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>
<%@page import="jp.terasoluna.thin.functionsample.nocache.bean.LinkParameter" %>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>

<bean:define id="titleUsecaseName" scope="page" value="拡張form・リンク・submit"/>
<bean:define id="titleScreenName" scope="page" value="linkタグ"/>
<bean:define id="screenName" scope="page" value="linkタグ"/>
<bean:define id="screenID" scope="page" value="SC3503"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
  <h4>リンクタグ機能</h4>
    
  <br>
  <head>
    <title>リンクタグ</title>
    
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
    String[] strs= new String[]{"Tokyo","Osaka","Chiba","Saitama"};
    pageContext.setAttribute("strs", strs);
    request.setAttribute("linkBean",new LinkParameter());
    
%>
  1. linkタグ 【page, linkName】<br>
  <ul>
    <li>pageに設定したアクションにリンクできる事を確認。</li>
    <li>27. linkタグをクリック時、ここに来る事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; linkName=&quot;target&quot; &gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" linkName="target">
    Link Tag
  </ts:link>
  <br>
  <br>
  <br>

  2. linkタグ 【page, title, tabindex】<br>
  <ul>
    <li>pageに設定したアクションにリンクできる事を確認。</li>
    <li>リンクの上にマウスを乗せる時、title属性の内容が表示される事を確認。</li>
    <li>最初この画面が表示した時、Tabキーを押すと2番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; title=&quot;TITLE&quot; tabindex=&quot;2&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" title="TITLE"  tabindex="2">
    linkタグサンプル 属性 page(tabindex2)
  </ts:link> 
  <br>
  <br>
  <br>

  3. linkタグ 【forward, tabindex】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>最初この画面が表示した時、Tabキーを押すと1番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; tabindex=&quot;1&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink"  tabindex="1">
    linkタグサンプル 属性 forward(tabindex1)
  </ts:link> 
  <br>
  <br>
  <br>

  4. linkタグ 【action, tabindex】<br>
  <ul>
    <li>struts-confis.xmlに設定したaction名をaction属性でリンクできる事を確認。</li>
    <li>最初この画面が表示した時、Tabキーを押すと3番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link action=&quot;/linkForward&quot; tabindex=&quot;3&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link action="/linkForward" tabindex="3" >
    linkタグサンプル 属性 action(tabindex3)
  </ts:link>
  <br>
  <br>
  <br>

  5. linkタグ 【href, tabindex, module, useLocalEncoding】<br>
  <ul>
    <li>webアドレスをhref属性でリンクできるかを確認。</li>
    <li>最初この画面が表示した時、Tabキーを押すと4番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link href=&quot;/functionsample-thin/&quot; tabindex=&quot;4&quot; module=&quot;&quot; useLocalEncoding=&quot;true&quot; &gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link href="/functionsample-thin/index.jsp" tabindex="4" module="" useLocalEncoding="true">
    linkタグサンプル（ログオン画面）属性 href(tabindex4)
  </ts:link>
  <br>
  <br>
  <br>

  6. linkタグ 【forward, ondblclick, tabindex】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクをダブルクリックした時、ダイアログが表示される事を確認。</li>
    <li>最初この画面が表示した時、Tabキーを押すと5番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; ondblclick=&quot;alert('ondblclick');&quot; tabindex=&quot;5&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" ondblclick="alert('ondblclick');" tabindex="5">
    ダブルクリックでダイアログ表示(tabindex5)
  </ts:link>
  <br>
  <br>
  <br>

  7. linkタグ 【forward, onblur, tabindex】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクがフォーカスを無くした時、ダイアログが表示される事を確認。</li>
    <li>最初この画面が表示した時、Tabキーを押すと6番目にこのリンクが選択される事を確認。(アドレスバーは除く）</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onblur=&quot;alert('onblur');&quot; tabindex=&quot;6&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onblur="alert('onblur');"  tabindex="6" >
    フォーカス喪失でダイアログ表示(tabindex6)
  </ts:link>
  <br>
  <br>
  <br>

  8. linkタグ 【forward, onclick】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクをクリックした時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onclick=&quot;alert('onclick');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onclick="alert('onclick');" >
    クリックでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  9. linkタグ 【forward, onfocus】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクにフォーカスが来た時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onfocus=&quot;alert('onfocus');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onfocus="alert('onfocus');" >
    フォーカスでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  10. linkタグ 【forward, onkeydown】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクにフォーカスとキーダウンのイベントが来た時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onkeydown=&quot;alert('onkeydown');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onkeydown="alert('onkeydown');" >
    フォーカス＋キーダウンでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  11. linkタグ 【forward, onkeypress】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクにフォーカスとキー入力のイベントが来た時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onkeypress=&quot;alert('onkeypress');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onkeypress="alert('onkeypress');" >
    フォーカス＋キー入力でダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  12. linkタグ 【forward, onkeyup】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクにフォーカスとキーアップのイベントが来た時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onkeyup=&quot;alert('onkeyup');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onkeyup="alert('onkeyup');" >
    フォーカス＋キーアップでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>
 
  13. linkタグ 【forward, onmousedown】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクをマウスでクリックした時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmousedown=&quot;alert('onmousedown');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmousedown="alert('onmousedown');" >
    マウス押下でダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  14. linkタグ 【forward, onmousemove】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクの上をマウスが移動した時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmousemove=&quot;alert('onmousemove');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmousemove="alert('onmousemove');" >
    マウス移動でダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  15. linkタグ 【forward, onmouseout】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクの上から外にマウスを移動した時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmouseout=&quot;alert('onmouseout');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmouseout="alert('onmouseout');" >
    マウスカーソルアウトでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  16. linkタグ 【forward, onmouseover】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>外からリンクの上にマウスを移動した時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmouseover=&quot;alert('onmouseover');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmouseover="alert('onmouseover');" >
    マウスカーソルオーバーでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>

  17. linkタグ 【forward, onmouseup】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>マウスでリンクをクリックした後ボタンが上がる時、ダイアログが表示される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; onmouseup=&quot;alert('onmouseup');&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" onmouseup="alert('onmouseup');">
    マウスボタンアップでダイアログ表示
  </ts:link>
  <br>
  <br>
  <br>
  
  18. linkタグ 【forward, styleClass】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>背景色が設定されるかを確認。</li>
    <li>styleClassの設定<br>
        &lt;STYLE type=&quot;text/css&quot;&gt;<br>
        &nbsp;&nbsp;&lt;!--<br>
        &nbsp;&nbsp;.Class_01{<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:#ffffcc;<br>
        &nbsp;&nbsp;}<br>
        &nbsp;&nbsp;--&gt;<br>
        &nbsp;&nbsp;&lt;/STYLE&gt;<br></li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; styleClass=&quot;Class_01&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" styleClass="Class_01">
    CSSによるバックグラウンドカラー設定(styleClass)
  </ts:link>
  <br>
  <br>
  <br>

  19. linkタグ 【forward, style】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>背景色が設定される事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; style=&quot;background-color:#CFDBE2;&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" style="background-color:#CFDBE2;">
    CSSによるバックグラウンドカラー設定2(style)
  </ts:link>
  <br>
  <br>
  <br>

  20. linkタグ 【forward, styleId】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>背景色が設定される事を確認。</li>
    <li>styleIdの設定<br>
        &lt;STYLE type=&quot;text/css&quot;&gt;<br>
        &nbsp;&nbsp;&lt;!--<br>
        &nbsp;&nbsp;#Class_02{<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bckground-color:red;<br>
        &nbsp;&nbsp;}<br>
        &nbsp;&nbsp;--&gt;<br>
        &nbsp;&nbsp;&lt;/STYLE&gt;<br></li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; styleId=&quot;Class_02&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" styleId="Class_02">
    CSSによるバックグラウンドカラー設定3(styleId)
  </ts:link>
  <br>
  <br>
  <br>

  21. linkタグ 【forward, paramId, paramName, paramProperty, paramScope】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクのURIにname属性のデータがある事を確認。<br>
        (_taglibForm2のlinkのデータ: dynamicURI)</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;paramId=&quot;name&quot; paramName=&quot;_taglibForm2&quot;
      paramProperty=&quot;link&quot; paramScope=&quot;session&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" 
    paramId="name" paramName="_taglibForm2" paramProperty="link" paramScope="session">
    linkタグサンプル 属性 param 
  </ts:link>
  <br>
  <br>
  <br>

  22. linkタグ 【forward, name, property, scope】<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンクのURIにsample、sample2のデータがある事を確認。<br>
        (linkBeanのsampleのデータ: hello、&nbsp;linkBeanのsample2のデータ: goodby)</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;name=&quot;linkBean&quot; property=&quot;parameters&quot;
      scope=&quot;request&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" 
    name="linkBean" property="parameters" scope="request">
    linkタグサンプル 属性 name 
  </ts:link>
  <br>
  <br>
  <br>

  23. linkタグ 【forward, indexed, indexId】（logic:iterate内）<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンク名がcollectionのデータで表示する事を確認。<br>
        (collectionのデータ: {"Tokyo","Osaka","Chiba","Saitama"})</li>
    <li>各リンクのURIにindesxId属性のnumberがあるかを確認。</li>
    <li>各リンクのURIにnumberのデータが全部違うかを確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; indexed=&quot;true&quot; indexId=&quot;number&quot;&gt;</li>
  </ul>
  <logic:iterate id="data" collection='<%= strs %>'>
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" indexed="true" indexId="number">
      <bean:write name="data" /><br>
    </ts:link>
  </logic:iterate>
  <br>
  <br>
  <br>

  24. linkタグ 【forward, indexed】（logic:iterate内）<br>
  <ul>
    <li>struts-confis.xmlのglobal-forwardsに設定したforward名をforward属性でリンクできる事を確認。</li>
    <li>リンク名が_taglibForm2のlinkListのデータで表示する事を確認。<br>
        (_taglibForm2のlinkListのデータ: {"Japan", "USA", "Chaina", "France"})</li>
    <li>各リンクのURIにindexがあるかを確認。</li>
    <li>各リンクのURIにindexのデータが全部違うかを確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link forward=&quot;globalLink&quot; indexed=&quot;true&quot;&gt;</li>
  </ul>
  <logic:iterate id="list" name="_taglibForm2" property="linkList" indexId="i">
  
    &nbsp;&nbsp;&nbsp;&nbsp;<ts:link forward="globalLink" indexed="true">
      <bean:write name="_taglibForm2" property='<%= "linkList[" + i + "]" %>' /><br>
    </ts:link>
  </logic:iterate>
  <br>
  <br>
  <br>

  25. linkタグ 【page, target】<br>
  <ul>
    <li>pageに設定したアクションにリンクできる事を確認。</li>
    <li>リンク先の画面が新しいウインドウに表示される事を確認。<br>
        (新しく表示されるウインドウはアクセス権限がないので、ログオンする必要がある。)</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; target=&quot;_blank&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" target="_blank">
    属性target(新規フレーム)
  </ts:link>
  <br>
  <br>
  <br>

  26. linkタグ 【page, transaction, titleKey】<br>
  <ul>
    <li>pageに設定したアクションにリンクできる事を確認。</li>
    <li>リンクのURIにTOKENデータがある事を確認。</li>
    <li>リンクの上にマウスを乗せる時、titleKey属性のキーに当たるデータが表示される事を確認。<br>
        (プロパティファイルの設定: &quot;link.title = taglibMessageResources.propertiesに設定したlink.titleの内容です。&quot;)</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; transaction=&quot;true&quot; titleKey=&quot;link.title&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" transaction="true" titleKey="link.title">
    トランザクションをURIに追加
  </ts:link>
  <br>
  <br>
  <br>

  27. linkタグ 【page, anchor, title, accesskey】<br>
  <ul>
    <li>pageに設定したアクションにリンクできる事を確認。</li>
    <li>リンクをクリックした時、このページの&quot;1. linkタグ&quot;にジャンプする事を確認。</li>
    <li>リンクの上にマウスを乗せる時、title属性の内容が表示される事を確認。</li>
    <li>&quot;Alt+A&quot;を押す時、このリンクがフォーカスされる事を確認。</li>
    <li>linkタグの設定<br>
      &nbsp;&nbsp;&lt;ts:link page=&quot;/linkForward.do&quot; anchor=&quot;target&quot; title=&quot;1. linkタグにジャンプします。&quot; accesskey=&quot;a&quot;&gt;</li>
  </ul>
  &nbsp;&nbsp;&nbsp;&nbsp;<ts:link page="/linkForward.do" anchor="target" title="1. linkタグにジャンプします。" accesskey="a">
     このページの&quot;1. linkタグ&quot;へジャンプ
  </ts:link>
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