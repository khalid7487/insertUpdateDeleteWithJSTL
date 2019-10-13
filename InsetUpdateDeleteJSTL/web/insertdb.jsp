<%-- 
    Document   : insertdb
    Created on : 12-Sep-2019, 21:40:28
    Author     : KHALID
--%>
<%@page import="java.io.*"%> 
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Operation</title>
    </head>
    <body>
    <c:if test="${empty param.pname or empty param.qty}">
        <c:redirect url="insert.jsp">
            <c:param name="errMsg" value="Please Enter Product and Quantity"/>
        </c:redirect>
    </c:if>
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://localhost:3306/loginjdbc"
                             user="root" password="7487"/>
    <sql:update dataSource="${dbsource}" var="result">
        insert into product(pname, qty) values(?,?);
        <sql:param value="${param.pname}"/>
        <sql:param value="${param.qty}"/>
    </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color="green">Congratulations! Data inserted successfully                
            </font>
            <c:redirect url="insert.jsp">
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
             
        </c:if>
           
    </body>
</html>
