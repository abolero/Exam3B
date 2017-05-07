<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB, Inc. Customers</title>
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
    </head>

    <% String table = (String) request.getAttribute("table");%>

    <body>
        <div class="wrap">

            <%@ include file="includes/header.jsp" %>
            <%@ include file="includes/menu2.jsp" %>

            <div class="main">
                <h1>Customers</h1>
                <%= table%>

                <br><br>

                <a href="add">Add a Customer</a>

            </div> <!--close main-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!--close wrap-->
    </body>
</html>
