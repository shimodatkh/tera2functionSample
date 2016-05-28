<%--
  - $Id: sc2008.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
  -
  - Copyright 2006 NTT DATA Corporation.
  -
  --%>
<%@page contentType="text/html; charset=Windows-31J" language="java" pageEncoding="Windows-31J"%>

<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean"%>
<%@ taglib uri="/terasoluna-struts" prefix="ts"%>

<bean:define id="titleUsecaseName" scope="page" value="���̓`�F�b�N�g��"/>
<bean:define id="titleScreenName" scope="page" value="�l�X�g�����r�[���̃`�F�b�N"/>
<bean:define id="screenName" scope="page" value="�l�X�g�����r�[���̃`�F�b�N"/>
<bean:define id="screenID" scope="page" value="SC2008"/>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>�l�X�g�����r�[���̃`�F�b�N</h4>
    

<span id="validationErrors"><ts:errors /></span>


<html:form action="validationBeanArrayDispatch.do">
  <div align="center">
    <br>
    <table border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td class='<ts:changeStyleClass name="alphaNumericMax" default="ItemLabel" error="ErrorItem"/>' nowrap>���p�p�����`�F�b�N�i�ő咷�w��j�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].alphaNumericMax" %>' size="23" maxlength="10"/>
          </logic:iterate>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="alphaNumericMin" default="ItemLabel" error="ErrorItem"/>' nowrap>���p�p�����`�F�b�N�i�ŏ����w��j�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].alphaNumericMin" %>' size="23" maxlength="10"/>
          </logic:iterate>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="capAlphaNumericMax" default="ItemLabel" error="ErrorItem"/>' nowrap>���p�p�i�啶���j�����`�F�b�N�i�ő咷�w��j�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].capAlphaNumericMax" %>' size="23" maxlength="10"/>
          </logic:iterate>
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="capAlphaNumericMin" default="ItemLabel" error="ErrorItem"/>' nowrap>���p�p�i�啶���j�����`�F�b�N�i�ŏ����w��j�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].capAlphaNumericMin" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="date" default="ItemLabel" error="ErrorItem"/>' nowrap>���t�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].date" %>' size="23" maxlength="19"/>
          </logic:iterate>   
        </td>
        <td nowrap>
          �i�t�H�[�}�b�g�`���Fyyyy/MM/dd�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="hankakuKana" default="ItemLabel" error="ErrorItem"/>' nowrap>���p�J�i�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].hankakuKana" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="hankaku" default="ItemLabel" error="ErrorItem"/>' nowrap>���p�����`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].hankaku" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="numericString" default="ItemLabel" error="ErrorItem"/>' nowrap>����������`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].numericString" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
        <td nowrap>
          �i�����̂ݓ��́j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="number" default="ItemLabel" error="ErrorItem"/>' nowrap>���l�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].number" %>' size="23" maxlength="11"/>
          </logic:iterate>          
        </td>
        <td nowrap>
          �i������3���A������2���ȓ��j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="prohibit" default="ItemLabel" error="ErrorItem"/>' nowrap>���͋֎~�����`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].prohibit" %>' size="23" maxlength="10"/>
          </logic:iterate>           
        </td>
        <td nowrap>
          �i�Ώۋ֎~�����F!"#$%'()�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="regExp" default="ItemLabel" error="ErrorItem"/>' nowrap>���K�\���`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].regExp" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
        <td nowrap>
          �i�t�H�[�}�b�g�`���F^[a-z].*[^a-z]$�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="required" default="ItemLabel" error="ErrorItem"/>' nowrap>�K�{���̓`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].required" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="stringMax" default="ItemLabel" error="ErrorItem"/>' nowrap>���͕����񒷃`�F�b�N�i�ő咷�w��j�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].stringMax" %>' size="23" maxlength="10"/>
          </logic:iterate>           
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="stringMin" default="ItemLabel" error="ErrorItem"/>' nowrap>���͕����񒷃`�F�b�N�i�ŏ����w��j�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].stringMin" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="zenkakuKana" default="ItemLabel" error="ErrorItem"/>' nowrap>�S�p�J�i�`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].zenkakuKana" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="zenkaku" default="ItemLabel" error="ErrorItem"/>' nowrap>�S�p�����`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].zenkaku" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
      </tr>
      <tr>
        <td class='<ts:changeStyleClass name="length" default="ItemLabel" error="ErrorItem"/>' nowrap>���ꕶ���񒷃`�F�b�N�F</td>
        <td colspan="3" nowrap>
          <logic:iterate id="dataNoList" name="validationNestedForm" property="dataNoList" indexId="i">
            <html:text name="validationNestedForm" property='<%= "beanList[" + i + "].length" %>' size="23" maxlength="10"/>
          </logic:iterate>          
        </td>
        <td nowrap>
          �i�T�C�Y�F�T�j
        </td>
      </tr>
    </table>
  </div>
  <br>
  <br>
  <div align="center">
    <table border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td nowrap>
          <html:submit property="forward_action" value=" �� �s " />
          <html:reset value=" ���Z�b�g " />
          <html:button property="forward_select" value=" ���̓`�F�b�N�g���I����ʂɖ߂� " onclick='<%= "location.href=\'" + request.getContextPath() + "/validation/validationTaskForward.do\'" %>' />
        </td>
      </tr>
    </table>
  </div>
</html:form>

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