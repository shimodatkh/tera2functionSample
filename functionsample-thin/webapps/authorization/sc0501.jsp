<%--
  - $Id: sc0501.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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
<%@ taglib uri="/common" prefix="common"%>

<bean:define id="titleUsecaseName" scope="page" value="アクセス権限チェック"/>
<bean:define id="titleScreenName" scope="page" value="アクセス権限チェック"/>
<bean:define id="screenName" scope="page" value="アクセス権限チェック"/>
<bean:define id="screenID" scope="page" value="SC0501"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>アクセス権限チェック</h4>
  <br>
  ログオンユーザの権限が「管理者」の場合のみこの画面が表示されます。<br>
  <br>
  ユーザ権限が「ユーザ」の場合はエラー画面に遷移します。<br>
<!-- 権限による画面表示/非表示切替[start]-->
  <br>
  <br>
  <table width="750px">
    <tr>
      <td align="left">
        <font size="2pt">■&lt;t:ifAuthorized&gt;要素と&lt;t:ifAuthorizedBlock&gt;要素の確認</font></td>
    </tr>
  </table>
  <table width="750px" cellpadding="3" cellspacing="1" border="1">
    <tr>
      <td width="750px" colspan="2" align="left" valign="top" bgcolor="#87CEFA">
        <font size="2pt">①&lt;t:ifAuthorized&gt;要素と&lt;t:ifAuthorizedBlock&gt;親要素、子要素が紐付いている場合</font>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top" >
        <font size="2pt">【パターン１】<br>&lt;t:ifAuthorized&gt;要素１がTRUE 且つ<br>&lt;t:ifAuthorized&gt;要素２がTRUE</font>
      </td>
      <td width="480px" align="left">
        <t:ifAuthorizedBlock blockId="AA"><span id="sc0501-1"><font size="2pt">※↓Ａが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;親要素の文言です。</font></span><br>
          <t:ifAuthorizedBlock blockId="AAA" parentBlockId="AA"><span id="sc0501-2"><font size="2pt">※↓Ａが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;子要素の文言です。</font></span><br>
            <span id="sc0501-3"><t:ifAuthorized path="/authorization/authorizationForward.do" blockId="AAA"><font size="2pt">Ａ：&lt;t:ifAuthorized&gt;要素１表示文言</font><br></t:ifAuthorized></span>
            <span  id="sc0501-4"><t:ifAuthorized path="/authorization/authorizationForward.do" blockId="AAA"><font size="2pt">Ａ：&lt;t:ifAuthorized&gt;要素２表示文言</font><br></t:ifAuthorized></span>
          </t:ifAuthorizedBlock>
        </t:ifAuthorizedBlock>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">【パターン２】<br>&lt;t:ifAuthorized&gt;要素１がFALSE 且つ<br>&lt;t:ifAuthorized&gt;要素２がTRUE</font>
      </td>
      <td width="480px" align="left">
        <t:ifAuthorizedBlock blockId="BB"><span id="sc0501-5"><font size="2pt">※↓Ｂが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;親要素の文言です。</font></span><br>
          <t:ifAuthorizedBlock blockId="BBB" parentBlockId="BB"><span id="sc0501-6"><font size="2pt">※↓Ｂが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;子要素の文言です。</font></span><br>
            <span id="sc0501-7"><t:ifAuthorized path="/authorization/notAuthorizationForward.do" blockId="BBB"><font size="2pt">※Ｂ：&lt;t:ifAuthorized&gt;要素１表示文言</font><br></t:ifAuthorized></span>
            <span id="sc0501-8"><t:ifAuthorized path="/authorization/authorizationForward.do" blockId="BBB"><font size="2pt">Ｂ：&lt;t:ifAuthorized&gt;要素２表示文言</font><br></t:ifAuthorized></span>
          </t:ifAuthorizedBlock>
       </t:ifAuthorizedBlock>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">【パターン３】<br>&lt;t:ifAuthorized&gt;要素１がFALSE 且つ<br>&lt;t:ifAuthorized&gt;要素２がFALSE</font>
      </td>
      <td width="480px" align="left">
      <span id="sc0501-9">
        <t:ifAuthorizedBlock blockId="CC"><font size="2pt">※↓Ｃが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;親要素の文言です。</font><br>
          <t:ifAuthorizedBlock blockId="CCC" parentBlockId="CC"><font size="2pt">※↓Ｃが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;子要素の文言です。</font><br>
            <t:ifAuthorized path="/authorization/notAuthorizationForward1.do" blockId="CCC"><font size="2pt">Ｃ：&lt;t:ifAuthorized&gt;要素１表示文言</font><br></t:ifAuthorized>
            <t:ifAuthorized path="/authorization/notAhorizationForward2.do" blockId="CCC"><font size="2pt">Ｃ：&lt;t:ifAuthorized&gt;要素２表示文言</font><br></t:ifAuthorized>
          </t:ifAuthorizedBlock>
        </t:ifAuthorizedBlock>
      </span>
      <br>
      </td>
    </tr>
    <tr>
      <td width="750px" colspan="2" align="left" valign="top" bgcolor="#87CEFA">
        <font size="2pt">②&lt;t:ifAuthorized&gt;要素と&lt;t:ifAuthorizedBlock&gt;子要素が紐付いていない場合</font>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">【パターン４】<br>&lt;t:ifAuthorized&gt;要素がTRUE</font>
      </td>
      <td width="480px" align="left">
      <span id="sc0501-10">
        <t:ifAuthorizedBlock blockId="DD"><font size="2pt">※↓Ｄが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;親要素の文言です。</font><br>
          <t:ifAuthorizedBlock blockId="XXX" parentBlockId="DD"><font size="2pt">※↓Ｄが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;子要素の文言です。</font><br>
            <t:ifAuthorized path="/authorization/authorizationForward.do" blockId="DDD"><font size="2pt">Ｄ：&lt;t:ifAuthorized&gt;要素表示文言</font><br></t:ifAuthorized>
          </t:ifAuthorizedBlock>
       </t:ifAuthorizedBlock>
      </span>
      <br>
      </td>
    </tr>
    <tr>
      <td width="750px" colspan="2" align="left" valign="top" bgcolor="#87CEFA">
        <font size="2pt">②&lt;t:ifAuthorizedBlock&gt;子要素と&lt;t:ifAuthorizedBlock&gt;親要素が紐付いていない場合</font>
      </td>
    </tr>
    <tr>
      <td width="270px" align="left" valign="top">
        <font size="2pt">【パターン５】<br>&lt;t:ifAuthorized&gt;要素がTRUE</font>
      </td>
      <td width="480px" align="left">
      <span id="sc0501-11">
        <t:ifAuthorizedBlock blockId="XX"><font size="2pt">※↓Ｅが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;親要素の文言です。</font><br>
          <t:ifAuthorizedBlock blockId="EEE" parentBlockId="DD"><font size="2pt">※↓Ｅが表示されている場合、表示される&lt;t:ifAuthorizedBlock&gt;子要素の文言です。</font><br>
            <t:ifAuthorized path="/authorization/authorizationForward.do" blockId="EEE"><font size="2pt">Ｅ：&lt;t:ifAuthorized&gt;要素２表示文言</font><br></t:ifAuthorized>
          </t:ifAuthorizedBlock>
        </t:ifAuthorizedBlock>
      </span>
      <br>
      </td>
    </tr>
  </table>
<!-- 権限による画面表示/非表示切替[end]-->
  <br>
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="メニュー画面に戻る" onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>