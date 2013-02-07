<div style = "color:red; font-weight: bold; margin-left: 30px;">
 <?php echo validation_errors(); ?>
</div>
 <p>Please use the form below to inquire about our tours, overnight packages or to ask 
 	about a custom itinerary designed just for you.</p>

 <form class="contact_form" action="send_message/1" method="post" name="contact_form"  id="contact_form">
    
        <p class="denotes">			
             
             <span class="required_notification">* Denotes Required Field</span>
        </p>  <br>
          <p class="name">	
            <label for="name" style="margin-left: -123px;">Name:</label><br>
            <input type="text"  placeholder="John Doe" required id = "name" name = "name"/>
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
            <label for="expected">Date of Rent:</label><br>
            <input type="text" name="date_of_rent" id="date_of_rent" placeholder="Enter Date of Rent" required />
            <!-- <span class="form_hint">Proper format "DD/MM/YY"</span> -->
        </p>  
        <p class="uexpected">	
            <label for="uexpected">Date of Return:</label><br>
            <input type="text" name="date_of_return" id="date_of_return"  placeholder="Enter Date of Returning" required/>
            <!-- <span class="form_hint">Proper format "DD/MM/YY"</span> -->
        </p> 
       <p class="area">
         <label for="location">Choose the Location:</label><br>
         <select name = "area" id = "area" style="width: 300px;" required>
        <option>Select One</option>
        <?php
        foreach($cities->result() as $city)
        echo "<option value = '" . $city->title . "'>" . $city->title . "</option>";
       ?>
        </select>

      </p>

       <p class="type">
         <label for="location">Choose the Type of Car:</label><br>
        <select name = "type_of_car" id = "type_of_car" style="width: 300px;" required>
        <option>Select One</option>
        <?php
        foreach($types->result() as $type)
        echo "<option value = '" . $type->title . "'>" . $type->title . "</option>";
       ?>
        </select>
     </p>
     <p class="chaguo">
         <label for="driving_options">Choose the Driving Option:</label><br>
        <select name = "driving_options" id = "driving_options" style="width: 300px;" required>
        <option value="self">Select One</option>
        <option value="self">Self Driven</option>
        <option value="chaufer">Chaufer Driven</option>
        <option value="chaufer">City Transfer</option>
        </select>
     </p>

          <p class="message">	
            <label for="message">Message:</label><br>
            <textarea name="message" id="message"  cols="40" rows="6" ></textarea>
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

</div>
</div>

