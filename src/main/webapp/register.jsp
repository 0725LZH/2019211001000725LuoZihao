<%--
  Created by IntelliJ IDEA.
  User: 庚辰孟冬
  Date: 2021/3/22
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
This is my JSP page.<br>
<h1>New User Registration</h1>
<form method="post"  action="register"><!--within doPost() in servlet-->
    username<input type="text" name="username"/><br/>
    password<input type="password" name="password"/><br/>
    Email<input type="text" name="email"/><br/>
    Gender:<input type="radio" name="gender"value="Male">Male<input type="radio" name="gender"value="Female">Female<br/>
    Date of Birth:<input type="text name=" name="birthDate"><br/>
    <input type="submit" value="Register"/>
</form>
<%@include file="footer.jsp"%>
