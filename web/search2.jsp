<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
        <title>Search Customers</title>
    </head>
    <body>

        <div class="wrap">

            <%@ include file="includes/header2.jsp" %>
            <%@ include file="includes/menu2.jsp" %>

            <div class="main">

                <h1>Search Customers</h1>

                <form name="searchForm2" action="search2" method="get">

                    <input type="text" name="searchVal2" value="" />

                    <br>

                    <input type="submit" name="submit" value="Search" />

                </form>

            </div> <!--close main-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!--close wrap-->
    </body>
</html>
