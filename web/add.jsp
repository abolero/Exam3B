<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
        <link rel="stylesheet" type="text/css" href="3bstyle.css" />
    </head>
    <body>


        <div class="wrap">

            <%@ include file="includes/header.jsp" %>
            <%@ include file="includes/menu2.jsp" %>

            <div class="main"> 
            <div class="addForm">

                <h1>Add A New Customer</h1>

                <form name="addForm" action="addCust" method="get">
                    <label>First Name: </label>
                    &nbsp;
                    <input type="text" name="firstName" value="" required data-validation-required-message="Please enter first name." pattern="[a-zA-Z]+(['-][a-zA-Z]+)*" autofocus required title="Alphabetical characters only."/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Last Name: </label>
                    &nbsp;
                    <input type="text" name="lastName" value="" required data-validation-required-message="Please enter last name." pattern="[a-zA-Z]+(['-][a-zA-Z]+)*" autofocus required title="Alphabetical characters only."/>
                    <br><br><br>
                    <label>Address 1:</label>
                    &nbsp;&nbsp;&nbsp;
                    <input type="text" name="addr1" value="" required data-validation-required-message="Please enter address." pattern="\d+\s{1}\S+\s?\S*\s{1}([a-zA-Z]{2,}[.]?)" autofocus required title="Address should be in the following format: 123 Main St"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Address 2:</label>
                    &nbsp;&nbsp;&nbsp;
                    <input type="text" name="addr2" value="" />
                    <br><br><br>
                    <label>City:</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="city" value="" required data-validation-required-message="Please enter city." pattern="[a-zA-Z]+\s?[a-zA-Z]*\s?[a-zA-Z]*\s?[a-zA-Z]*\s?[a-zA-Z]*" autofocus required title="Alphabetical characters only."/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>State:</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="cstate" value=" " required data-validation-required-message="Please select state.">
                        <option value="" style="display:none;"></option>
                        <option value=" "> </option>
                        <option value="AK">AK</option>
                        <option value="AL">AL</option>
                        <option value="AR">AR</option>
                        <option value="AZ">AZ</option>
                        <option value="CA">CA</option>
                        <option value="CO">CO</option>
                        <option value="CT">CT</option>
                        <option value="DC">DC</option>
                        <option value="DE">DE</option>
                        <option value="FL">FL</option>
                        <option value="GA">GA</option>
                        <option value="HI">HI</option>
                        <option value="IA">IA</option>
                        <option value="ID">ID</option>
                        <option value="IL">IL</option>
                        <option value="IN">IN</option>
                        <option value="KS">KY</option>
                        <option value="LA">LA</option>
                        <option value="MA">MA</option>
                        <option value="MD">MD</option>
                        <option value="ME">ME</option>
                        <option value="MI">MI</option>
                        <option value="MN">MN</option>
                        <option value="MO">MO</option>
                        <option value="MS">MS</option>
                        <option value="MT">MT</option>
                        <option value="NC">NC</option>
                        <option value="ND">ND</option>
                        <option value="NE">NE</option>
                        <option value="NH">NH</option>
                        <option value="NJ">NJ</option>
                        <option value="NM">NM</option>
                        <option value="NV">NV</option>
                        <option value="NY">NY</option>
                        <option value="OH">OH</option>
                        <option value="OK">OK</option>
                        <option value="OR">OR</option>
                        <option value="PA">PA</option>
                        <option value="RI">RI</option>
                        <option value="SC">SC</option>
                        <option value="SD">SD</option>
                        <option value="TN">TN</option>
                        <option value="TX">TX</option>
                        <option value="UT">UT</option>
                        <option value="VA">VA</option>
                        <option value="VT">VT</option>
                        <option value="WA">WA</option>
                        <option value="WI">WI</option>
                        <option value="WV">WV</option>
                        <option value="WY">WY</option>
                    </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Zip:</label>
                    &nbsp;
                    <input type="text" name="zip" value="" required data-validation-required-message="Please enter zip code." pattern="\d{5}" autofocus required title="Zip Code should be 5 digits."/>
                    <br><br><br>
                    <label>Email:  </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="emailAddr" value="" required data-validation-required-message="Please enter email address." pattern="\S+@\S+[.][a-zA-Z]{2,}" autofocus required title="Email should be in the following format: abc123@email.com"/>
                    <br>
                    <br>
                    <input type="submit" name="submit" value="Submit" />
                </form>
            </div> <!--close addForm-->
            </div> <!--close main-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!--close wrap-->

    </body>
</html>
