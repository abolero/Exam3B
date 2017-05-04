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
       
                <h1>Update A Customer Record</h1>

                <form name="updateForm" action="updateCust" method="get">

                    <label>Customer ID:</label>
                    <br>
                    <input type="text" name="id" value="<%= cust.getCustID()%>" readonly/>
                    <br>
                    <br>
                    <label>First Name:</label>
                    <br>
                    <input type="text" name="firstName" value="<%= cust.getFirstName()%>" />
                    <br>
                    <br>
                    <label>Last Name:</label>
                    <br>
                    <input type="text" name="lastName" value="<%= cust.getLastName()%>" />
                    <br>
                    <br>
                    <label>Address 1:</label>
                    <br>
                    <input type="text" name="addr1" value="<%= cust.getAddr1()%>" />
                    <br>
                    <br>
                    <label>Address 2:</label>
                    <br>
                    <input type="text" name="addr2" value="<%= cust.getAddr2()%>" />
                    <br>
                    <br>
                    <label>City:</label>
                    <br>
                    <input type="text" name="city" value="<%= cust.getCity()%>" />
                    <br>
                    <br>
                    <label>State:</label>
                    <br>
                    <input type="text" name="cstate" value="<%= cust.getState()%>" />
                    <br>
                    <br>
                    <label>Zip:</label>
                    <br>
                    <input type="text" name="zip" value="<%= cust.getZip()%>" />
                    <br>
                    <br>
                    <label>Email:</label>
                    <br>
                    <input type="text" name="emailAddr" value="<%= cust.getEmailAddr()%>" />
                    <br>
                    <br>
                    <input type="submit" name="submit" value="Update" />
                </form>


    </body>
</html>
