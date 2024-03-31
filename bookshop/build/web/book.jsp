<%-- 
    Document   : book
    Created on : Mar 31, 2024, 9:55:10 PM
    Author     : ASUS
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="a" class="data.BookList" scope="request"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css">
        <title>Show Book Page</title>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <h2>HTML Table</h2>
                <div style="width: 120px">
                    <button>Thêm sách</button>
                </div>
                <table>
                    <tr>
                        <th>Company</th>
                        <th>Contact</th>
                        <th>Country</th>
                    </tr>
                    <c:forEach items="${a.listBook}" var="book">
                        <tr>
                            <td>${book.getBookName()}</td>
                            <td>Francisco Chang</td>
                            <td>Mexico</td>
                        </tr>
                    </c:forEach>
                    
                </table>
            </div>
        </div>
    </body>
</html>
