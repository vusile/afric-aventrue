<div class="right">
	<h1 class="sitetitle"><?php echo $title; ?></h1>
	
<div class="content">
	<div style="margin-top: 20px;"></div>
	<?php echo $details->intro_text; ?>

  <div class="scheduled" style="color:#009F4D;">


	<h1 class="senta">National Parks</h1>
	<?php foreach($parks as $url=>$park): ?>
	<div class = "row" style = "width: 600px; margin-top: 10px; margin-left: 50px;">
		  <div class = "col" style = "width: 290px; float: left; clear: none; margin-bottom: 5px"><a href="destination/<?php echo $url; ?>"><?php echo $park; ?></a></div> 
	</div>
	<?php endforeach; ?>
	<div class = "clear" style = "width: 600px; margin-top: 10px; margin-left: 50px; border-bottom: 2px solid #CCC"></div>
		  
	   
		  
	<br><h1 class="senta">Beaches</h1>

	  
	<?php foreach($beaches as $url=>$beach): ?>
	<div class = "row" style = "width: 600px; margin-top: 10px; margin-left: 50px;">
		  <div class = "col" style = "width: 290px; float: left; clear: none; margin-bottom: 5px"><a href="destination/<?php echo $url; ?>"><?php echo $beach; ?></a></div> 
	</div>
	<?php endforeach; ?>
	<div class = "clear" style = "width: 600px; margin-top: 10px; margin-left: 50px; border-bottom: 2px solid #CCC"></div>
		<br><h1 class="senta">Cultural Tourism</h1>

	  
	   		<?php foreach($cultural as $url=>$culture): ?>
	<div class = "row" style = "width: 600px; margin-top: 10px; margin-left: 50px;">
		  <div class = "col" style = "width: 290px; float: left; clear: none; margin-bottom: 5px"><a href="destination/<?php echo $url; ?>"><?php echo $culture; ?></a></div> 
	</div>
	<?php endforeach; ?>
	<div class = "clear" style = "width: 600px; margin-top: 10px; margin-left: 50px; border-bottom: 2px solid #CCC"></div>

	
	</div>  <!-- end of scheduled  -->
    <?php echo validation_errors(); ?>
	<h2 style="font-size: 15px;">Custom Package Quote Request Form</h2>

	<form class="contact_form" action="send_message/2" method="post" name="contact_form"  id="contact_form">
    
        <p class="denotes">         
             
             <span class="required_notification">* Denotes Required Field</span>
        </p>  <br>
          <p class="name">  
            <label for="name">Name:</label><br>
            <input type="text"  placeholder="John Doe" required id = "name" name = "name" />
        </p>
          <p class="email"> 
            <label for="email">Email:</label><br>
            <input type="email" name="email" id ="email" placeholder="john_doe@example.com" required />
            <span class="form_hint">Proper format "name@something.com"</span>
         </p>
          <p class="email_confirm"> 
        
            <label for="email"> Please Confirm Your Email Address:</label><br>
            <input type="email" name="confirm_email" id ="confirm_email" placeholder="john_doe@example.com" required />
            <span class="form_hint">Proper format "name@something.com"</span>
        </p>
          <p class="phone"> 
            <label for="phone">Phone Number:</label><br>
            <input type="phone" name="phone" id="phone" placeholder="Phone Number" />
            <span class="form_hint">Proper format "Start with your country code"</span>
        </p>
         <p class="expected">   
            <label for="expected">Expected Date of Arrival:</label><br>
            <input type="text" name="expected_arrival_date" id="expected_arrival_date" placeholder="Enter Expected Date of Arrival (if known)" />
            <!-- <span class="form_hint">Proper format "DD/MM/YY"</span> -->
        </p>  
        <p class="uexpected">   
            <label for="uexpected">Expected Date of Depature:</label><br>
            <input type="text" name="expected_departure_date" id="expected_departure_date"  placeholder="Enter Expected Date of Depature(if known)" />
            <!-- <span class="form_hint">Proper format "DD/MM/YY"</span> -->
        </p> 
        <p class="number_people">   
            <label for="number_of_people">Number of People:</label><br>
            <input type="text" name="number_of_people" id="number_of_people" placeholder="Enter Number of People" />
            <span class="form_hint">Proper format "Use numeric values, eg: 12 "</span>
        </p>
          <p class="rooms"> 
            <label for="rooms">Number and Type of Rooms Required:</label><br>
            <textarea name="rooms" id = "rooms" cols="40" rows="6" ></textarea>
        </p>

        <p class="approx_budget">   
            <label for="approx_budget">Approximated Budget:</label><br>
            <input type="text" name="approx_budget" id = "approx_budget" placeholder="Enter Your Approximated Budget" />
            <span class="form_hint">Proper format "eg: $120"</span>
        </p>
        <p class="subject"> 
            <label for="subject">Subject:</label><br>
            <input type="text" name="subject" id ="subject" placeholder="Enter The Subject"  required <?php if(isset($subject)) echo 'value="' . ucwords($subject) . '"' ?>/>
           <!--  <span class="form_hint">Proper format " "</span> -->
        </p> 
          <p class="interests"> 
            <label for="interests">Tell Us About Your Interests:</label><br>
            <textarea name="interests" id="interests"  cols="40" rows="6" required></textarea>
        </p>
         <p class="captcha">    
            <?php echo $cap['image'] ?>
            <p  class="contact_teaser">Please Prove That You Are Human By Entering The Characters In An Image Above</p>
        </p> 
        <p class="captcha2">    
            <input type="text" name="captcha" id = "captcha" placeholder="" required />

        </p>
          <p>   
            <button class="submit" type="submit">Submit Form</button>
        </p>
    
</form>



</div></div></div>
