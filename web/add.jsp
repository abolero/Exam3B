<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Team</title>
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
    </head>
    <body>


                <h1>Add A New Customer</h1>

                <form name="addForm" action="addCust" method="get">
                    <label>First Name:</label>
                    <br>
                    <input type="text" name="firstName" value="" />
                    <br>
                    <br>
                    <label>Last Name:</label>
                    <br>
                    <input type="text" name="lastName" value="" />
                    <br>
                    <br>
                    <label>Address 1:</label>
                    <br>
                    <input type="text" name="addr1" value="" />
                    <br>
                    <br>
                    <label>Address 2:</label>
                    <br>
                    <input type="text" name="addr2" value="" />
                    <br>
                    <br>
                    <label>City:</label>
                    <br>
                    <input type="text" name="city" value="" />
                    <br>
                    <br>
                    <label>State:</label>
                    <br>
                    <input type="text" name="cstate" value="" />
                    <br>
                    <br>
                    <label>Zip:</label>
                    <br>
                    <input type="text" name="zip" value="" />
                    <br>
                    <br>
                    <label>Email</label>
                    <br>
                    <input type="text" name="emailAddr" value="" />
                    <br>
                    <br>
                    <input type="submit" name="submit" value="Submit" />
                </form>

    </body>
</html>
