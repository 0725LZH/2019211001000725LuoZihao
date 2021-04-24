<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: ASUS--%>
<%--  Date: 2021/4/11--%>
<%--  Time: 16:46--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<h1>User Info</h1>--%>
<%--<table>--%>
<%--    <tr><td>Username:</td><td><%=request.getAttribute("username")%></td></tr>--%>
<%--    <tr><td>Password:</td><td><%=request.getAttribute("password")%></td></tr>--%>
<%--    <tr><td>email:</td><td><%=request.getAttribute("email")%></td></tr>--%>
<%--    <tr><td>Gender:</td><td><%=request.getAttribute("gender")%></td></tr>--%>
<%--    <tr><td>Birth Date:</td><td><%=request.getAttribute("birthdate")%></td></tr>--%>
<%--</table>--%>
<%--<%@include file="footer.jsp"%>--%>



<%@ page import="com.LuoZihao.model.User" %><%--
  Created by IntelliJ IDEA.
  User: MMMing
  Date: 2021/4/11
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Info</h1>
<%
    Cookie [] allCookies=request.getCookies();
    for(Cookie c:allCookies){
        System.out.println("<br/>"+c.getName()+" --- "+c.getValue());
    }
%>
<%
    User u=(User)session.getAttribute("user");
%>
<table>
    <tr><td>Username:</td><td><%=u.getUsername()%></td></tr>
    <tr><td>Password:</td><td><%=u.getPassword()%></td></tr>
    <tr><td>Email:</td><td><%=u.getEmail()%></td></tr>
    <tr><td>Gender:</td><td><%=u.getGender()%></td></tr>
    <tr><td>Birth Date:</td><td><%=u.getBirthdate()%></td></tr>
</table>
<a href="updateUser">update</a>
<%@include file="footer.jsp"%>