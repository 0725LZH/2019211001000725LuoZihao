<%@ page import="javax.naming.spi.DirStateFactory" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<h1>User List</h1>
<table border=1>
    <tr>
        <td>ID</td><td>username</td><td>password</td><td>Email</td><td>Gender</td><td>Birthdate</td>
    </tr>
    <%
        ResultSet rs= (ResultSet) request.getAttribute("rs.name");//name of attribute -
        if(rs==null){
    %>

    <tr>
        <td>No Data !!!</td>
    </tr>
    <%}else{
        while(rs.next()) {
            //get one bu one
            int id = rs.getInt("id");
            String username = rs.getString("username");
            String password1 = rs.getString("password");
            String Email = rs.getString("email");
            String Gender = rs.getString("gender");
            Date birthdate = rs.getDate("birthdate");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            System.out.println("<tr><td>" + id + "</td><td>" + username + "</td><td>" + password1 + "</td><td>" + Email + "</td><td>" + Gender + "</td><td>" + sdf.format(birthdate) + "</td></tr>");
        }
    }
        //we will get data in next demo - 6.liveDemo #3
    %>
</table>
<%@include file="footer.jsp"%>