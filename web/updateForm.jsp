<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers cust = (Customers) request.getAttribute("cust");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
        <title>Update A Customer</title>
    </head>
    <body>

        <div class="wrap">

            <%@ include file="includes/header.jsp" %>
            <%@ include file="includes/menu2.jsp" %>

            <div class="main"> 
            <div class="updateForm">

                <h1>Update A Customer Record</h1>

                <form name="updateForm" action="updateCust" method="get">

                    <label>Customer ID:</label>
                    &nbsp;
                    <input type="text" name="id" value="<%= cust.getCustID()%>" readonly/>
                    <br><br><br>
                    <label>First Name:</label>
                    &nbsp;
                    <input type="text" name="firstName" value="<%= cust.getFirstName()%>" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Last Name:</label>
                    &nbsp;
                    <input type="text" name="lastName" value="<%= cust.getLastName()%>" />
                    <br><br><br>
                    <label>Address 1:</label>
                    &nbsp;&nbsp;&nbsp;
                    <input type="text" name="addr1" value="<%= cust.getAddr1()%>" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Address 2:</label>
                    &nbsp;&nbsp;&nbsp;
                    <input type="text" name="addr2" value="<%= cust.getAddr2()%>" />
                    <br><br><br>
                    <label>City:</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="city" value="<%= cust.getCity()%>" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>State:</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="cstate" value="<%= cust.getState()%>" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Zip:</label>
                    &nbsp;
                    <input type="text" name="zip" value="<%= cust.getZip()%>" />
                    <br><br><br>
                    <label>Email:</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="emailAddr" value="<%= cust.getEmailAddr()%>" />
                    <br>
                    <br>
                    <input type="submit" name="submit" value="Update" />
                </form>

            </div> <!--close updateForm-->
            </div> <!--close main-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!--close wrap-->
    </body>
</html>
