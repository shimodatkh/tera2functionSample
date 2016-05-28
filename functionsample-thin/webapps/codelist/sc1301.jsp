<%--
  - $Id: sc1301.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="�R�[�h���X�g"/>
<bean:define id="titleScreenName" scope="page" value="�R�[�h���X�g�\��"/>
<bean:define id="screenName" scope="page" value="�R�[�h���X�g�\��"/>
<bean:define id="screenID" scope="page" value="SC1301"/>

<t:defineCodeList id="beanCodeList"/>
<t:defineCodeList id="beanMlCodeList"/>
<t:defineCodeList id="dbCodeList"/>
<t:defineCodeList id="dbMlCodeList1"/>
<t:defineCodeList id="dbMlCodeList2"/>
<t:defineCodeList id="dbMlCodeList3"/>
<t:defineCodeList id="dbMlCodeList4"/>

<bean:define id="beanBeanCodeList" name="beanCodeList" toScope="request" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <br>
  ���P�[��:<bean:write name="org.apache.struts.action.LOCALE" />
  <br>
  <br>
  <table width="70%">
    <tr>
      <td align="left">
        �P�D�A�N�V�������擾�����R�[�h���X�g�iDB�R�[�h���X�g�\���j<br>
      </td>
    </tr>
    <tr>
      <td>
        �S�DdbCodeList�̃��X�g�\��
        <table border="1" frame="box" id="dbCodelistTable">
          <tr>
            <td width="80" align="center"><b>�L�[</b></td>
            <td width="200" align="center"><b>�o�����[</b></td>
          </tr>
          <logic:iterate id="codeListTable" name="codeListTable" scope="request">
            <tr>
              <td align="center">
                <bean:write name="codeListTable" property="id"/>
              </td>
              <td align="center">
                <bean:write name="codeListTable" property="name"/>
              </td>
            </tr>
          </logic:iterate>
        </table>
        �T�DdbMlCodeList4�̃��X�g�\��
        <table border="1" frame="box" id="dbMlCodelistTable">
          <tr>
            <td width="80" align="center"><b>�L�[</b></td>
            <td width="200" align="center"><b>�o�����[</b></td>
          </tr>

          <logic:iterate id="mlCodeListTable" name="mlCodeListTable" scope="request">
            <tr>
              <td align="center">
                <bean:write name="mlCodeListTable" property="id"/>
              </td>
              <td align="center">
                <bean:write name="mlCodeListTable" property="name"/>
              </td>
            </tr>
          </logic:iterate>
        </table>
      </td>
    </tr>
  </table>
  <ts:form action="codeListDispatch.do">
  <br><br>
  <table width="70%">
    <tr>
      <td align="left">
        �Q�DBean�ݒ�t�@�C����p�����R�[�h���X�g(���ۉ��Ή��Ȃ���Bean��`)
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              <html:select name="codeListForm" property="beanCodeListID" value="1">
                <html:options collection="beanCodeList" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td>
              <div id="beanCodelistCount">�����F<t:writeCodeCount id="beanCodeList"/>&nbsp;��
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td align="left">Bean�ݒ�t�@�C����p�����R�[�h���X�g�̃��x���\��<br></td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              <span id="beanCodeListLabel0"><t:writeCodeValue codeList="beanCodeList" key="0" /></span><br>
              <span id="beanCodeListLabel1"><t:writeCodeValue codeList="beanCodeList" key="1" /></span><br>
              <span id="beanCodeListLabel2"><t:writeCodeValue codeList="beanCodeList" key="2" /></span><br>
              <span id="beanCodeListLabel3"><t:writeCodeValue codeList="beanCodeList" key="3" /></span>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td align="left">
        Bean�ݒ�t�@�C����p�����R�[�h���X�g�̑I�����ꂽ���x���\��<br>
        <font color="red">�i�u�����[�h�v�܂��́u�o�^�v�{�^��������ɕ\������܂��j</font>
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              �I�����ꂽ���x���F
              <span id="beanCodeListValue"><t:writeCodeValue codeList="beanCodeList" 
              name="codeListForm" property="beanCodeListID" scope="request" /></span>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <br><br>
  <table width="70%">
    <tr>
      <td align="left">
        �R�DBean�ݒ�t�@�C����p�����R�[�h���X�g(���ۉ��Ή������Bean��`)
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              <html:select name="codeListForm" property="beanMlCodeListID" value="1">
                <html:options collection="beanMlCodeList" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td>
              <div id="beanMlCodelistCount">�����F<t:writeCodeCount id="beanMlCodeList"/>&nbsp;��
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td align="left">Bean�ݒ�t�@�C����p�����R�[�h���X�g�̃��x���\��<br></td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              <span id="beanMlCodeListLabel0"><t:writeCodeValue codeList="beanMlCodeList" key="0" /></span><br>
              <span id="beanMlCodeListLabel1"><t:writeCodeValue codeList="beanMlCodeList" key="1" /></span><br>
              <span id="beanMlCodeListLabel2"><t:writeCodeValue codeList="beanMlCodeList" key="2" /></span><br>
              <span id="beanMlCodeListLabel3"><t:writeCodeValue codeList="beanMlCodeList" key="3" /></span>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td align="left">
        Bean�ݒ�t�@�C����p�����R�[�h���X�g�̑I�����ꂽ���x���\��<br>
        <font color="red">�i�u�����[�h�v�܂��́u�o�^�v�{�^��������ɕ\������܂��j</font>
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              �I�����ꂽ���x���F
              <span id="beanCodeListValue"><t:writeCodeValue codeList="beanMlCodeList" 
              name="codeListForm" property="beanMlCodeListID" scope="request" /></span>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <br><br>
  <table width="70%">
    <tr>
      <td align="left">
        �S�D�f�[�^�x�[�X��p�����R�[�h���X�g�i���ۉ��Ή��J�����Ȃ��j
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              <html:select name="codeListForm" property="dbCodeListID" value="2">
                <html:options collection="dbCodeList" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td>
            <div id="dbCodelistCount">
              �����F<t:writeCodeCount id="dbCodeList"/>&nbsp;��&nbsp;&nbsp;
            </div>
            </td>
            <td>
              <ts:submit property="forward_reload"
                         value="�����[�h" styleClass="com-normal-button" />
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td>
        �EDB�R�[�h���X�g�o�^ 
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td colspan="3">
             <font color="#FF0000"> �E�o�^������A�����[�h�{�^�����������Ă��������
             </font>
            </td>
          </tr>
          <tr>
            <td>
              �L�[:<html:text property="dbKey" value="" maxlength="10" size="10"/>
            </td>
            <td>
              �o�����[:<html:text property="dbValue" value="" maxlength="50" size="30"/>
            </td>
            <td>
              <ts:submit property="forward_entry"
                           value="�o�^" styleClass="com-normal-button" /> 
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  
  <table width="70%">
    <tr>
      <td align="left">
        �T�D�f�[�^�x�[�X��p�����R�[�h���X�g�i���ۉ��Ή��J��������j
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID1">
                <html:options collection="dbMlCodeList1" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount1">�����F<t:writeCodeCount id="dbMlCodeList1"/>&nbsp;��</div>
            </td>
            <td align="left">
              (dbMlCodeList1, �擾�J�����F�Ȃ�)
            </td>
          </tr>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID2">
                <html:options collection="dbMlCodeList2" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount2">�����F<t:writeCodeCount id="dbMlCodeList2"/>&nbsp;��</div>
            </td>
            <td align="left">
              (dbMlCodeList2, �擾�J�����F����)
            </td>
          </tr>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID3">
                <html:options collection="dbMlCodeList3" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount3">�����F<t:writeCodeCount id="dbMlCodeList3"/>&nbsp;��</div>
            </td>
            <td align="left">
              (dbMlCodeList3, �擾�J�����F����A��)
            </td>
          </tr>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID4">
                <html:options collection="dbMlCodeList4" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount4">�����F<t:writeCodeCount id="dbMlCodeList4"/>&nbsp;��</div>
            </td>
            <td align="left">
              (dbMlCodeList4, �擾�J�����F����A���A�o���A���g)
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  </ts:form>
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