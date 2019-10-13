<%-- 
    Document   : updatedb
    Created on : 13-Oct-2019, 11:30:11
    Author     : KHALID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%> 
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/loginjdbc"
                           user="root" password="7487"/>
        <sql:update dataSource="${dbsource}" var="count">
            update product set pname= ?, qty=? where id='${param.id}';
            <sql:param value="${param.pname}"/>
            <sql:param value="${param.qty}"/>
        </sql:update>
            <c:if test="${count>=1}">
               <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="index.jsp">Go Home</a>       
            </c:if>
    </body>
</html>
