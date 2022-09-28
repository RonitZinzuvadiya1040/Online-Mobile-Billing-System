<%-- 
    Document   : Bill
    Created on : 2 Dec, 2020, 7:11:11 PM
    Author     : RAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:powderblue;">
        <h1>Receipt of product</h1><br>

        <h4>Name :</h4>${name}
        <br><h4>Address :</h4>${add}
        <br><h4>Contact Number :</h4>${cn}
        <br><h4>Product Detail :</h4> ${p}
        <br><br><a href="Payment.jsp">Click Here For Order Another Product</a>
        <br><a href="index.html">Click Here For Logout</a>
    </body>
</html>
