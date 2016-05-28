<%--
  - $Id: sc2501.jsp,v 1.12 2006/02/08 02:39:12 jeon Exp $
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

<bean:define id="titleUsecaseName" scope="page" value="カレンダー入力"/>
<bean:define id="titleScreenName" scope="page" value="カレンダー入力"/>
<bean:define id="screenName" scope="page" value="カレンダー入力"/>
<bean:define id="screenID" scope="page" value="SC2501"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html:html locale="true">

<%@ include file="../sc0003.jspf" %>

<!-- begin body-->
<h4>カレンダー入力機能</h4>
    
<ts:form action="calendarForward.do">   
        
    <table border="0">
        <tr>
            <td valign="top">
                <table>
                    <tr>
                        <td align="left">
                            下記ボタンをクリックすると、カレンダー入力画面が表示されます。<br><br>
                        </td>
                    </tr>
                    <tr>
                      <td align="left">
                        <ul>
                          <li>inputCalendarタグの設定【for,format】<br>
                            &nbsp;&nbsp;&lt;t:inputCalendar for=&quot;date1&quot; format=&quot;yyyy/MM/dd&quot;&gt;<br>
                            &nbsp;&nbsp;&lt;/t:inputCalendar&gt;<br>
                          </li>
                        </ul>
                      </td>
                    </tr>
                    <tr>
                        <td align="center">
                            日付：<html:text name="dynaFormBean" property="date1" maxlength="10" />
                            <t:inputCalendar for="date1" format="yyyy/MM/dd"/>
                            <br><br><br><br><br><br>
                        </td>
                    </tr>
                    <tr>
                      <td align="left">
                      <ul>
                        <li>inputCalendarタグの設定【for,format】<br>
                          &nbsp;&nbsp;&lt;t:inputCalendar for=&quot;date2&quot; format=&quot;yyyy.MM.dd&quot;&gt;<br>
                          &nbsp;&nbsp;&lt;/t:inputCalendar&gt;<br>
                        </li>
                      </ul>
                      </td>
                    </tr>
                    <tr>
                        <td align="center">
                            日付：<html:text name="dynaFormBean" property="date2" maxlength="10" />
                            <t:inputCalendar for="date2" format="yyyy.MM.dd"/>
                            <br><br><br><br><br><br>
                        </td>
                    </tr>
                    <tr>
                      <td align="left">
                      <ul>
                        <li>inputCalendarタグの設定【for,format】<br>
                          &nbsp;&nbsp;&lt;t:inputCalendar for=&quot;date3&quot; format=&quot;yyyy&nbsp;MM&nbsp;dd&quot;&gt;<br>
                          &nbsp;&nbsp;&lt;/t:inputCalendar&gt;<br>
                        </li>
                      </ul>
                      </td>
                    </tr>
                    <tr>
                        <td align="center">
                            日付：<html:text name="dynaFormBean" property="date3" maxlength="10" />
                            <t:inputCalendar for="date3" format="yyyy MM dd"/>
                            <br><br><br><br><br><br>
                        </td>
                    </tr>
                    <tr>
                      <td align="left">
                      <ul>
                        <li>inputCalendarタグの設定【for,formatKey】<br>
                          &nbsp;&nbsp;&lt;t:inputCalendar for=&quot;date4&quot; formatKey=&quot;calendar.format.key&quot;&gt;<br>
                          &nbsp;&nbsp;&lt;/t:inputCalendar&gt;<br>
                        </li>
                      </ul>
                      </td>
                    </tr>
                    <tr>
                        <td align="center">
                            日付：<html:text name="dynaFormBean" property="date4" maxlength="10" />
                            <t:inputCalendar for="date4" formatKey="calendar.format.key"/>
                            <br><br><br><br><br><br>
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