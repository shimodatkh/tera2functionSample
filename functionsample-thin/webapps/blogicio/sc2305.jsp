<%--
  - $Id: sc2305.jsp 11645 2006-04-27 10:33:04Z bs-eunsu $
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

<bean:define id="titleUsecaseName" scope="page" value="�r�W�l�X���W�b�N���o�͋@�\"/>
<bean:define id="titleScreenName" scope="page" value="�r�W�l�X���W�b�N���o�͉�ʁu���o��null�v����"/>
<bean:define id="screenName" scope="page" value="�r�W�l�X���W�b�N���o�͉�ʁu���o��null�v����"/>
<bean:define id="screenID" scope="page" value="SC2305"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>blogic-io.xml�̐ݒ�</h4>
  <table>
    <tr>
      <td align="left">
        <pre>&nbsp;&nbsp;&lt;action&nbsp;path=&quot;/nullBlogicio&quot;/&gt;</pre>
      </td>
    </tr>
  </table>
  <h4>�r�W�l�X���W�b�N���o�͌��ʉ��</h4>
  <ts:messages id="msg" message="true">
    <span id='blogicioNullResult'>���ʁF<bean:write name="msg"/></span><br/>
  </ts:messages>
  <br>
  <hr>
  <br>
  <html:button property="menuButton" value="���j���[��ʂɖ߂�"
  onclick="location.href='../menuForward.do'" />
  <br>
  <br>
  <br>
<!-- end body-->
<%@ include file="../sc0004.jspf" %>
</html:html>