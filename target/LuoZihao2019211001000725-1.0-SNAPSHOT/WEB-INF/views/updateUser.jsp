<%--<%@ page import="com.LuoZihao.model.User" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@include file="header.jsp"%>--%>
<%--<%--%>
<%--    User u=(User) session.getAttribute("user");--%>
<%--%>--%>
<%--<form method="post" action="updateUser">--%>
<%--    <tr> <td>Id:</td> <td><input type="text" name="id" value="<%=u.getId()%>" required><br/></td></tr>--%>
<%--    <input type="hidden" name="id" value="<%=u.getId()%>">--%>
<%--    username : <input type="text" name="username" required value="<%=u.getUsername()%>"> <br/>--%>
<%--    password : <input type="password" name="password" required value="<%=u.getPassword()%>"> <br/>--%>
<%--    email : <input type="email" name="email" required value="<%=u.getEmail()%>"> <br/>--%>
<%--    birthday : <input type="date" name="date"required value="<%=u.getBirthdate()%>"> <br/>--%>
<%--    <input name="gender" type="radio" value="Male" <%="Male".equals(u.getGender())?"checked":""%>/>Male--%>
<%--    <input name="gender" type="radio" value="Female" <%="Female".equals(u.getGender())?"checked":""%>/>Female<br/>--%>
<%--    <input type="submit" value="Save Changes"/><br/>--%>
<%--</form>--%>
<%--<%@include file="footer.jsp"%>--%>
<%--© 2021 GitHub, Inc.--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1> User Update</h1>
<%
    User u=(User) session.getAttribute("user");
%>
<div class="center">
    <form method="post" action="updateUser">
        Id:</td> <td><input type="text" name="Id" value="<%=u.getId()%>" required><br/>
        <input type="hidden" name="id" value="<%=u.getId()%>"><br/>
        Username:<input type="text" name="username" value="<%=u.getUsername()%>"><br/>
        Password:<input type="password" name="password" id="password"  value="<%=u.getPassword()%>"><br/>
        Email :<input type="email" name="email" value="<%=u.getEmail()%>"><br/>
        <tr>
            <td>Gender:</td>
            <td>
                <input type="radio" name="gender" value="Male" <%= "Male".equals(u.getGender())?"checked":""%>> Male <!-- checked="checked"默认选择项 -->
                <input type="radio" name="gender" value="Female" <%= "Female".equals(u.getGender())?"checked":""%>> Female
            </td>
        </tr>
        <br/>
        Birthdate :<input type="date" name="birthdate" value=""<%=u.getBirthdate()%> /><br/>


        <tr> <td></td><td><input type="submit" value="Save Changes"/></td>  </tr>
    </form>

    <br/><br/><br/><br/>
</div>