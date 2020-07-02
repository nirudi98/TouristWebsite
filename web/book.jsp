<%-- 
    Document   : booking
    Created on : 17-Jun-2019, 04:17:11
    Author     : F.R.I.D.A.Y
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="booking-content">
                <div class="booking-image">
                    <img class="booking-img" src="img/form-img.jpg" alt="Booking Image">
                </div>
                <div class="booking-form">
                    <form action="booking" method="POST" id="booking-form">
                        <%=session.getAttribute("user")%>
                        <%=session.getAttribute("pid")%>
                        <h2>Booking your meal!</h2>
                        <div class="form-group form-input">
                            <input type="date" name="date" id="name" value="" required/>

                        </div>
                        <div class="form-group form-input">
                            <input type="number" name="phone" id="phone" value="" required />
                            <label for="phone" class="form-label">Your phone number</label>
                        </div>
                        <div class="form-group">
                            <div class="select-list">
                                <select name="time" id="time" required>
                                    <option value="">Time</option>
                                    <option value="breakfast">breakfast</option>
                                    <option value="lunch">lunch</option>
                                    <option value="dinner">dinner</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="select-list">
                                <select name="food" id="food" required>
                                    <option value="">Food</option>
                                    <option value="seasonalfish">Seasonal steamed fish</option>
                                    <option value="assortedmushrooms">Assorted mushrooms</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-radio">
                            <label class="label-radio"> Select Your Dining Space</label>
                            <div class="radio-item-list">
                                <span class="radio-item">
                                    <input type="radio" name="number_people" value="2" id="number_people_2" />
                                    <label for="number_people_2">2</label>
                                </span>
                                <span class="radio-item active">
                                    <input type="radio" name="number_people" value="4" id="number_people_4" checked="checked" />
                                    <label for="number_people_4">4</label>
                                </span>
                                <span class="radio-item">
                                    <input type="radio" name="number_people" value="6" id="number_people_6" />
                                    <label for="number_people_6">6</label>
                                </span>
                                <span class="radio-item">
                                    <input type="radio" name="number_people" value="8" id="number_people_8" />
                                    <label for="number_people_8">8</label>
                                </span>
                                <span class="radio-item">
                                    <input type="radio" name="number_people" value="10" id="number_people_10" />
                                    <label for="number_people_10">10</label>
                                </span>
                            </div>
                        </div>
                         
                        <div class="form-submit">
                            <input type="submit" value="Book now" class="submit" id="submit" name="submit" />
                            <a href="#" class="vertify-booking">Verify your booking info from your phone</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery1.min.js"></script>
    <script src="js/main3.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
