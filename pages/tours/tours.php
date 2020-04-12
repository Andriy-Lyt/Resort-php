<?php
//include_once $_SERVER['DOCUMENT_ROOT'] . '/pages/include/header-tours.php';
//echo $_SERVER['DOCUMENT_ROOT'].'/pages/include/header-tours.php';
require_once "../../include/header-tours.php"
?>

<!--Bootstr Page Container ==========================-->
<div class="container">

        <h1>Tour the world your way!</h1>

    <div class="row">
<!--Bootstr 1st main Block col-sm-12 col-md-6 col-lg-4 ========-->
        <div class="col-sm-12 col-lg-6 block" >
                <div>
                    <h2>Exotic Diving</h2>
                    <img src="../../img/diving.jpg" alt="restaurant" class="rest-img">
                    <p>Discover unimaginable underwater world and see exotic see creatures! </p>
                    <button class="open-button" onclick="openBookTourForm()">Book </button>
                    <hr>
                </div>
        </div>

    <!--Bootstr 2nd main Block ==================-->
        <div class="col-sm-12 col-lg-6 block" >
            <div>
                <h2>Spectacular Sailing</h2>
                <img src="../../img/kajak.jpg" alt="restaurant" class="rest-img">
                <p>Enchanting getaway. Sail along natural wonders!</p>
                <button class="open-button" onclick="openBookTourForm()">Book </button>
                <hr>
            </div>
        </div>
    </div> <!--CLOSE ROW-->
</div> <!--CLOSE CONTAINER-->


<!-- FORM to BOOK TOUR ===================-->
<div id="overlay"></div>

<div class="form-popup" id="BookTourForm">
    <form action="" class="form-container">
        <h2>Booking</h2>

        <label for="name"><b>Name</b></label>
        <input type="text" placeholder="Yor Name" name="name" >

        <label for="room"><b>Room #</b></label>
        <input type="text" placeholder="Room #" name="room" >

        <label for="room"><b>Message</b></label> <br>
        <textarea rows="3" placeholder="Your Message" name="message" ></textarea>

        <button type="submit" class="btn" name="bookTour">Submit</button>
        <button type="submit" class="btn cancel" onclick="closeForm()">Close</button>
    </form>
</div>


<?php
require_once "../../include/footer.php"
//include_once $_SERVER['DOCUMENT_ROOT'] . '/pages/include/footer.php';
?>




