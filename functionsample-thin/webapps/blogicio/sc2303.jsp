<%--
  - $Id: sc2303.jsp 24732 2007-10-09 01:28:17Z btitouhrk $
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
<bean:define id="titleScreenName" scope="page" value="�r�W�l�X���W�b�N���o�͉�ʁurequest�v����"/>
<bean:define id="screenName" scope="page" value="�r�W�l�X���W�b�N���o�͉�ʁurequest�v����"/>
<bean:define id="screenID" scope="page" value="SC2303"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">
<%@ include file="../sc0003.jspf" %>
<!-- begin body-->
  <h4>blogic-io.xml�̐ݒ�</h4>
  <table>
    <tr>
      <td align="left">
<pre>&nbsp;&nbsp;&lt;action&nbsp;path=&quot;/requestBlogicio&quot;&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;blogic-params&nbsp;bean-name=&quot;jp.terasoluna.thin.functionsample.blogicio.bean.BlogicioParam&quot;&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;set-property&nbsp;property=&quot;requestData&quot;&nbsp;blogic-property=&quot;request&quot;&nbsp;source=&quot;request&quot;&nbsp;/&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/blogic-params&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;blogic-result&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;set-property&nbsp;property=&quot;requestData&quot;&nbsp;blogic-property=&quot;request&quot;&nbsp;dest=&quot;request&quot;&nbsp;/&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/blogic-result&gt;<br/>
&nbsp;&nbsp;&lt;/action&gt;</pre>
      </td>
    </tr>
  </table>
  <h4>�r�W�l�X���W�b�N���o�͌��ʉ��</h4>
    <span id='blogicioRequestResult'>���ʁF<bean:write name="requestData" scope="request"/></span>
  <br>
  
  <br>
  <span id='paramLog'>BLogicParam���e�F<bean:write name="paramLog" scope="request"/></span>
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