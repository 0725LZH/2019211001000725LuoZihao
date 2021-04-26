<%--<%@ page import="com.LuoZihao.model.User" %>&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: 17291--%>
<%--  Date: 2021/4/11--%>
<%--  Time: 21:49--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@include file="header.jsp"%>--%>
<%--<h1>User Info</h1>--%>
<%--<%--%>
<%--    User user=(User)request.getAttribute("user");--%>
<%--%>--%>
<%--<table>--%>
<%--    <tr><td>Username:</td><td><%=user.getUsername()%></td></tr>--%>
<%--    <tr><td>Password:</td><td><%=user.getPassword()%></td></tr>--%>
<%--    <tr><td>email:</td><td><%=user.getEmail()%></td></tr>--%>
<%--    <tr><td>Gender:</td><td><%=user.getGender()%></td></tr>--%>
<%--    <tr><td>Birth Date:</td><td><%=user.getBirthdate()%></td></tr>--%>
<%--</table>--%>

<%--<%@include file="footer.jsp"%>--%>
<%@ page import="com.LuoZihao.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp"%>

<h1>User Info</h1>
<%--<%--%>
<%--    //read cookies--%>
<%--    Cookie [] allCookies=request.getCookies();--%>
<%--    for(Cookie c:allCookies){--%>
<%--        System.out.println("<br/>"+c.getName()+" --- "+c.getValue());--%>
<%--    }--%>
<%--%>--%>
<%
    User u=(User)session.getAttribute("user");
%>
<table>
    <tr><td>Username:</td><td><%=u.getUsername()%></td></tr>
    <tr><td>Password:</td><td><%=u.getPassword()%></td></tr>
    <tr><td>email:</td><td><%=u.getEmail()%></td></tr>
    <tr><td>Gender:</td><td><%=u.getGender()%></td></tr>
    <tr><td>Birth Date:</td><td><%=u.getBirthdate()%></td></tr>
</table>
<a href="updateUser">Update User</a>
<%@include file="footer.jsp"%>
