<%-- 
    Document   : insert.jsp
    Created on : 12-Sep-2019, 20:17:53
    Author     : KHALID
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertdb.jsp" method="post">
            <h1>Purchase Product</h1>
            <table border="0" cellspacing="2" cellpadding="5">
                <tr>
                    <td><label>Product Name</label></td>
                    <td><input type="text" name="pname"></td>
                </tr>
                <tr>
                    <td><label>Quantity</label></td>
                    <td><input type="text" name="qty"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Save" ></td>
                    <td><input type="reset" value="Reset"></td>
                </tr>
            </table>        
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
            <a href="index.jsp">Go back</a>
        </c:if>
        </font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
    </body>
</html>
