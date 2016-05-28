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

<bean:define id="titleUsecaseName" scope="page" value="コードリスト"/>
<bean:define id="titleScreenName" scope="page" value="コードリスト表示"/>
<bean:define id="screenName" scope="page" value="コードリスト表示"/>
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
  ロケール:<bean:write name="org.apache.struts.action.LOCALE" />
  <br>
  <br>
  <table width="70%">
    <tr>
      <td align="left">
        １．アクションより取得したコードリスト（DBコードリスト表示）<br>
      </td>
    </tr>
    <tr>
      <td>
        ４．dbCodeListのリスト表示
        <table border="1" frame="box" id="dbCodelistTable">
          <tr>
            <td width="80" align="center"><b>キー</b></td>
            <td width="200" align="center"><b>バリュー</b></td>
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
        ５．dbMlCodeList4のリスト表示
        <table border="1" frame="box" id="dbMlCodelistTable">
          <tr>
            <td width="80" align="center"><b>キー</b></td>
            <td width="200" align="center"><b>バリュー</b></td>
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
        ２．Bean設定ファイルを用いたコードリスト(国際化対応なしのBean定義)
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
              <div id="beanCodelistCount">件数：<t:writeCodeCount id="beanCodeList"/>&nbsp;件
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td align="left">Bean設定ファイルを用いたコードリストのラベル表示<br></td>
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
        Bean設定ファイルを用いたコードリストの選択されたラベル表示<br>
        <font color="red">（「リロード」または「登録」ボタン押下後に表示されます）</font>
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              選択されたラベル：
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
        ３．Bean設定ファイルを用いたコードリスト(国際化対応ありのBean定義)
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
              <div id="beanMlCodelistCount">件数：<t:writeCodeCount id="beanMlCodeList"/>&nbsp;件
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td align="left">Bean設定ファイルを用いたコードリストのラベル表示<br></td>
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
        Bean設定ファイルを用いたコードリストの選択されたラベル表示<br>
        <font color="red">（「リロード」または「登録」ボタン押下後に表示されます）</font>
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td>
              選択されたラベル：
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
        ４．データベースを用いたコードリスト（国際化対応カラムなし）
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
              件数：<t:writeCodeCount id="dbCodeList"/>&nbsp;件&nbsp;&nbsp;
            </div>
            </td>
            <td>
              <ts:submit property="forward_reload"
                         value="リロード" styleClass="com-normal-button" />
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td>
        ・DBコードリスト登録 
      </td>
    </tr>
    <tr>
      <td>
        <table>
          <tr>
            <td colspan="3">
             <font color="#FF0000"> ・登録した後、リロードボタンを押下してください｡
             </font>
            </td>
          </tr>
          <tr>
            <td>
              キー:<html:text property="dbKey" value="" maxlength="10" size="10"/>
            </td>
            <td>
              バリュー:<html:text property="dbValue" value="" maxlength="50" size="30"/>
            </td>
            <td>
              <ts:submit property="forward_entry"
                           value="登録" styleClass="com-normal-button" /> 
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  
  <table width="70%">
    <tr>
      <td align="left">
        ５．データベースを用いたコードリスト（国際化対応カラムあり）
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
            <div id="dbMlCodelistCount1">件数：<t:writeCodeCount id="dbMlCodeList1"/>&nbsp;件</div>
            </td>
            <td align="left">
              (dbMlCodeList1, 取得カラム：なし)
            </td>
          </tr>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID2">
                <html:options collection="dbMlCodeList2" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount2">件数：<t:writeCodeCount id="dbMlCodeList2"/>&nbsp;件</div>
            </td>
            <td align="left">
              (dbMlCodeList2, 取得カラム：言語)
            </td>
          </tr>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID3">
                <html:options collection="dbMlCodeList3" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount3">件数：<t:writeCodeCount id="dbMlCodeList3"/>&nbsp;件</div>
            </td>
            <td align="left">
              (dbMlCodeList3, 取得カラム：言語、国)
            </td>
          </tr>
          <tr>
            <td align="left">
              <html:select name="codeListForm" property="dbMlCodeListID4">
                <html:options collection="dbMlCodeList4" property="id" labelProperty="name"/>
              </html:select>
            </td>
            <td align="left">
            <div id="dbMlCodelistCount4">件数：<t:writeCodeCount id="dbMlCodeList4"/>&nbsp;件</div>
            </td>
            <td align="left">
              (dbMlCodeList4, 取得カラム：言語、国、バリアント)
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
  <html:button property="menuForward" value="メニュー画面に戻る"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>