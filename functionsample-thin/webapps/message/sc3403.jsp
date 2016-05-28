<%--
  - $Id: sc3403.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="メッセージ表示"/>
<bean:define id="titleScreenName" scope="page" value="エラーメッセージチェック"/>
<bean:define id="screenName" scope="page" value="エラーメッセージチェック"/>
<bean:define id="screenID" scope="page" value="SC3403"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
    <h4>ifErrorsタグ表示</h4>
    <br>
    <table>
      <tr>
        <td align="left">

          １. ifErrorsタグ<br>
          <ul>
            <li>入力値なしでサブミットボタンを押下した時、<br>”エラー発生”とエラーメッセージが表示されるか確認<br><br></li>
            <li>ifErrorsタグの設定<br>
              &nbsp;&nbsp;&lt;ts:ifErrors&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;font color=&quot;#FF0000&quot;&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;エラー発生。<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;/font&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;ts:errors/&gt;<br>
              &nbsp;&nbsp;&lt;/ts:ifErrors&gt;<br> 
            </li>
          </ul>
          <ts:ifErrors>
            &nbsp;&nbsp;&nbsp;&nbsp;「<span id='errorTagifErrors'><font color="#FF0000">エラー発生。</font></span>」
            <span id='errorTagifErrorsMessage'><ts:errors/></span>
          </ts:ifErrors>
        </td>
      </tr>
        <tr>
          <td align="left">

          ２. ifNotErrorsタグ<br>
          <ul>
            <li>入力値ありでサブミットボタンを押下した時、<br>”エラーなし”とメッセージが表示されるか確認<br><br></li>
            <li>ifErrorsタグの設定<br>
              &nbsp;&nbsp;&lt;ts:ifNotErrors&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;font color=&quot;#FF0000&quot;&gt;<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;エラーなし。<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&lt;/font&gt;<br>
              &nbsp;&nbsp;&lt;/ts:ifNotErrors&gt;<br> 
            </li>
          </ul>
          <ts:ifNotErrors>
            &nbsp;&nbsp;&nbsp;&nbsp;「<span id='errorTagifNotErrors'><font color="#FF0000">
            エラーなし。
            </font></span>」
          </ts:ifNotErrors>
        </td>
      </tr>
     </table>
    <br/>
    <ts:form action="ifErrorstagErrorForward.do" onsubmit="return true;">
      <table border="0" cellspacing="0" cellpadding="2">
        <tr>
          <td>
          入力値（必須）：<html:text name="ifErrorsForm" property="ifErrors" value="" maxlength="30" tabindex="1" />
          </td>
        </tr>
      </table>
      <br>
      <ts:submit property="submit"
                   value=" サブミット " styleClass="com-normal-button" /> 
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