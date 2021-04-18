<%--
  Created by IntelliJ IDEA.
  User: 17291
  Date: 2021/4/5
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
<h1>Login</h1>
<%
    if (!(request.getAttribute("message")==null)){
        System.out.println(request.getAttribute("message"));
    }
%>
<form method="post" action="login">
    <table>
        <tr> <td>username:</td> <td><input type="text" name="username" required><br/></td></tr>
        <tr> <td>password:</td> <td><input type="password" name="password" required minlength="3"><br/></td></tr>
        <tr> <td></td><td><input type="submit" value="Login"/></td>  </tr>
    </table>
</form>
<%@include file="footer.jsp"%>