<%-- 
    Document   : Payment
    Created on : 2 Dec, 2020, 6:59:42 PM
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
        <h1>Select Product</h1>
        <form method="post" action="pay">
            <input name="p" type="radio" value="Realme 3 pro  4gb RAM & 64gb ROM  Rs = 15,000">
            <label>Realme 3 pro  <br>4gb RAM & 64gb ROM  <br>Rs = 15,000</label><br><br>
            <input name="p" type="radio" value="Realme 5 pro  4gb RAM & 128gb ROM Rs = 20,000">
            <label>Realme 5 pro  <br>4gb RAM & 128gb ROM <br>Rs = 20,000</label><br> <br>
            <input name="p" type="radio" value="Realme 7 pro  6gb RAM & 64gb ROM Rs = 25,000">
            <label>Realme 7 pro  <br>6gb RAM & 64gb ROM <br>Rs = 25,000</label><br><br>
                    <h3>||Payment||<br></h3>
                        Name :<input name="name" type="text"><br><br>
                        Address :<input name="add" type="text" ><br><br>
                        Contact Number :<input name="cn" type="number" ><br><br>
                        Credit card No.<input name="ccn" type="number" ><br><br>
                        CVV No.<input name="cvv" type="number" ><br><br>
                        <button class="button" name="submit" value="submit"> Do Payment </button>
                        </form>
    </body>
</html>
