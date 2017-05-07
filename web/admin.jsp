<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrative Page</title>
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
    </head>
    <body>
        <div class="wrap">

            <%@ include file="includes/header2.jsp" %>
            <%@ include file="includes/menu2.jsp" %>

            <div class="main"> 
            <div class="adminPage">
                
                <h1>Administrative Page</h1>
                
                <a href="read">View Editable List of Customers</a>
                <br><br>
                <a href="add">Add a Customer to Database</a>
                <br><br>
                <a href="index.jsp">Log Out</a>
            </div> <!--close adminPage-->
            </div> <!--close main-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!--close wrap-->
    </body>
</html>
