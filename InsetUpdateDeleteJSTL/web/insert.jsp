<%-- 
    Document   : insert.jsp
    Created on : 12-Sep-2019, 20:17:53
    Author     : KHALID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
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
                    <td><input type="submit" value="Login" ></td>
                    <td><input type="reset" value="Reset"></td>
                </tr>
            </table>        
        </form>

    </body>
</html>
