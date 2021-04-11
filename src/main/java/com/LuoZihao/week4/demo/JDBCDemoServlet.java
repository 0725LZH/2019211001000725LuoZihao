package com.LuoZihao.week4.demo;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
//use @Webservlet -no web.xml code
@WebServlet(
        urlPatterns = {"/jdbc"},
        initParams = {
                @WebInitParam(name = "driver",value = "com.microsoft.sqlserver.jdbc.SQLServerDriver"),
                @WebInitParam(name = "url",value = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=userdb"),
                @WebInitParam(name = "username",value = "sa"),
                @WebInitParam(name = "password",value = "1027211xlzh"),

        },loadOnStartup = 1
)

public class JDBCDemoServlet extends HttpServlet {
    Connection con = null;

    @Override
    public void init() throws ServletException {
        // only one connection
        //String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        //String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=userdb";
        //String username = "sa";
        //String password = "1027211xlzh";
        //code like this is bad way --because change in not
        //for example change password of db -change in java

        //get servletconfig --> getInitParameters
        ServletConfig config=getServletConfig();
        String driver=config.getInitParameter("driver");//<param-name>driver</param-name>
        String url=config.getInitParameter("url");
        String username=config.getInitParameter("username");
        String password=config.getInitParameter("password");
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
            System.out.println("ini()-->" + con);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //connection within do get --many times -bad way
        System.out.println("i am in doGet()" );
        String sql = "select * from usertable";
        try {
            ResultSet rs = con.createStatement().executeQuery(sql);
            while (rs.next()) {
                //get from rs -print - write into response
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public void destroy() {
        super.destroy();
        try{
            con.close();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
}
