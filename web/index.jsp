<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
        <title>Customers</title>
    </head>
    <body>
        <div class="wrap">
            
            <%@ include file="includes/header.jsp" %>
            <%@ include file="includes/menu.jsp" %>
            
            <div class="main">
                <h1>Customers Database</h1>

                <a href="read">View All Customers</a>
            </div> <!--close main-->

             <%@ include file="includes/footer.jsp" %>
            
        </div> <!--close wrap-->
    </body>
</html>
