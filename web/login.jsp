<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log-In</title>
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
    </head>
    <body>
        <div class="wrap">

            <%@ include file="includes/header.jsp" %>
            <%@ include file="includes/menu.jsp" %>

            <div class="main">
                
        <h1>Log-In</h1>
        
        <form name="loginForm" action="admin.jsp" method="get">

            <label>Username</label>
            
            <input type="text" name="username" value="" required data-validation-required-message="Please enter username."/>

            <br><br>
            
            <label>Password</label>
            
            <input type="password" name="password" value="" required data-validation-required-message="Please enter password." />
            
            <br><br>

            <input type="submit" name="submit" value="Log-In">

        </form>
        
            </div> <!--close main-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!--close wrap-->
    </body>
</html>
