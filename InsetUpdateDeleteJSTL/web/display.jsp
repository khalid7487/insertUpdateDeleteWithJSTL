<%-- 
    Document   : display
    Created on : 13-Oct-2019, 10:56:13
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
        <title>Select Operation</title>
        <script>
            function confirmGo(m,u){
                if(confirm(m)){
                    window.location=u;
                }
            }
        </script>
    </head>
    <body>
           <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://localhost:3306/loginjdbc"
                             user="root" password="7487"/>
           <sql:query dataSource="${dbsource}" var="result">
               select * from product;
           </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Product List</caption>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.id}"/></td>
                        <td><c:out value="${row.pname}"/></td>
                        <td><c:out value="${row.qty}"/></td>
                        <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">Go Home</a>
    </center>
</body>
</html>

