<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=186440414739082";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="row">
				<div class="span12 full_width_contact_form">
          <h1><?php if(isset($title)) echo $title ?></h1>
           <p><?php if(isset($details)) echo $details ?></p>
           
            <div class="span9">
          
          <form class="form-horizontal" action="send_message/1" method="post" name="contact_form" id="contact_form">
            <legend>Personal Information:</legend>
              <div class="control-group">
                <label class="control-label" for="inputName">First Name:</label>
                <div class="controls">
                  <input autofocus type="text" id="inputName" name="firstname" value="<?php echo set_value('firstname'); ?>" placeholder="Enter Your First Name" required>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="inputName2">Surname:</label>
                <div class="controls">
                  <input type="text" id="inputName2" name="surname" value="<?php echo set_value('surname'); ?>" placeholder="Enter Your Surname" required>
                </div>
              </div>
             
              <div class="control-group">
                <label class="control-label" for="nationality">Nationality:</label>
                <div class="controls">
                  <input type="text" id="nationality" name="nationality" value="<?php echo set_value('nationality'); ?>" placeholder="Enter Your Nationality">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="age">Age:</label>
                <div class="controls">
                  <select required x-moz-errormessage="Please Select Age" >
                      <option value=""></option>
                      <option value="20-30">20-30</option>
                      <option value="31-40">31-40</option>
                      <option value="41-50">41-50</option>
                      <option value="51-60">51-60</option>
                      <option value="61-70">61-70</option>
                     <option value="61-70">71-80</option>
                  </select>
                </div>
              </div> 
               <div class="control-group">
                <label class="control-label" for="inputEmail">Email:</label>
                <div class="controls">
                  <input type="email" id="email" name="email" value="<?php echo set_value('email'); ?>"placeholder="name@example.com" required>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="inputEmail">Confirm Email:</label>
                <div class="controls">
                  <input type="email" id="confirmEmail" name="confirmEmail" value="<?php echo set_value(''); ?>" placeholder="name@example.com" required>
                </div>
              </div>
               <div class="control-group">
                <label class="control-label" for="telephone">Telephone:</label>
                <div class="controls">
                  <input type="tel" id="tel" name="telephone" value="<?php echo set_value('telephone'); ?>" placeholder="Enter Your Telephone Number" required>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="skype">Skype Address:</label>
                <div class="controls">
                  <input type="text" id="skype" name="skype" value="<?php echo set_value('skype'); ?>"placeholder="Enter Your Skype ID name">
                </div>
              </div>
               <legend>Arrival Details:</legend>
               <p>Date Intended of Arrival in Tanzania</p>
               <div class="row">
               <div class="span4">
              <div class="control-groupA">
                <label class="control-label estimated" for="estimated">Estimated:</label>
                <div class="controls">
                  <input type="text"  id="datepicker" name="estimated" value="<?php echo set_value('estimated'); ?>" placeholder="DD/MM/YY" required>

                </div>
              </div>
              
            </div>   <!-- end of span4 -->


             <div class="span4">
                
                 <div class="control-group">
                <label class="control-label accurate" for="accurate">Accurate:</label>
                <div class="controls">
                  <input type="text" id="datepicker2" name="accurate" value="<?php echo set_value('accurate'); ?>" placeholder="DD/MM/YY" required>

                </div>
              </div>
            </div><!-- end of span4 -->

            </div>

             <p>How Many Days?</p>
             <div class="row">
            <div class="span4">
              <div class="control-groupA">
                <label class="control-label" for="days_for_parks">Parks:</label>
                <div class="controls">
                  <input type="text"  id="days_for_parks" name="days_for_parks" value="<?php echo set_value('days_for_parks'); ?>" placeholder="" onchange="Adder()" required>
                 

                </div>
              </div>
              
            </div>   <!-- end of span4 -->
         
             
             <div class="span4">
                
                 <div class="control-group">
                <label class="control-label accurate" for="days_for_beaches">Beaches:</label>
                <div class="controls">
                   <input type="text"  id="days_for_beaches" name="days_for_beaches" value="<?php echo set_value('days_for_parks'); ?>" placeholder="" onchange="Adder()" required>

                </div>
              </div>
            </div><!-- end of span4 -->
            </div>

            <div class="row"> <!--  start of row -->
              <div class="span9">  <!-- start of span 9 -->
                <div id="total_days">
                 <div class="control-group">
                <label class="control-label " for="total_days">Total:</label>
                <div class="controls">
                  <input type="text" id="Result" name="Result">
                </div>
              </div>


                </div>
              </div> <!--  end of span9 -->
            </div>   <!--  end of row -->
            <div class="row">
               <div class="span9">
              <div class="control-groupA">
                <label class="control-label" for="children">No. of Children:</label>
                <div class="controls">
                  <input type="text" id="children" name="no_of_children" value="<?php echo set_value('no_of_children'); ?>" placeholder="">
                  <p style="margin-left:214px;margin-top:-24px;"><em>(Between 5 and 12 years old)</em></p>


                </div>
              </div>
              
            </div>   <!-- end of span9 -->
             
             </div>
             <div class="row">
             <div class="span4">
              <div class="control-groupA">
                <label class="control-label" for="adults">No. of Adults:</label>
                <div class="controls">
                  <input type="text" id="adults" name="no_of_adults" value="<?php echo set_value('no_of_adults'); ?>" placeholder="" required>

                </div>
              </div>
              
            </div>   <!-- end of span4 -->
             <div class="span4">
                
                
             </div>  <!-- end of span4 -->
             </div>
              <div class="row">
             <div class="span4">
              <div class="control-groupA">
                <label class="control-label" for="rooms">No. of Rooms:</label>
                <div class="controls">
                  <input type="text" id="rooms" name="no_of_rooms" value="<?php echo set_value('no_of_rooms'); ?>" placeholder="" required>

                </div>
              </div>
              
            </div>   <!-- end of span4 -->
             <div class="span4">
             </div>  <!-- end of span4 -->
             </div>
            <!--  <br><br><br><br><br><br> -->
             <p>Your Budget per Person (International Flight not Included)</p>
             <div class="row">
              <div class="span4">
              <div class="control-groupA">
                <label class="control-label" for="initial_cost">From:</label>
                <div class="controls">
                  <input type="text" id="initial_cost" name="initial_cost" value="<?php echo set_value('initial_cost'); ?>" placeholder="" required>
                  <p style="margin-left:214px;margin-top:-24px;">USD</p>

                </div>
              </div>
              
            </div>   <!-- end of span4 -->
             <div class="span4">
                
                 <div class="control-group">
                <label class="control-label accurate" for="final_cost">To:</label>
                <div class="controls">
                  <input type="text" id="final_cost" name="final_cost" value="<?php echo set_value('final_cost'); ?>"placeholder="" required>
                 <p style="margin-left:214px;margin-top:-24px;">USD</p>

                </div>
              </div>
             </div>  <!-- end of span4 -->
             </div>
            
               <legend>Tour Details</legend>
               <div class="row">
                 <p>Which Areas you are Most Interested in? </p>
                   <div class="span4">
                
                 <div class="control-groupA">
                <label class="control-label accurate" for="park">Parks:</label>
                <div class="controls">
                   
                 <select multiple="multiple" required style = "height: 200px;">
                   
                  <?php foreach($parks->result() as $park): ?> 
                <option value="<?php echo $park->title  ?>"><?php echo $park->title ?></option>
                <?php endforeach; ?>
              


                </select>
                  
                </div>
              </div>
             </div>  <!-- end of span4 -->
             <div class="span4">
              <div class="control-group">
                <label class="control-label" for="beach"> Beaches:</label>
                <div class="controls">
                   <select multiple="multiple" required style = "height: 200px;">

                  <?php foreach($beaches->result() as $beach): ?> 
                <option value="<?php echo $beach->title  ?>"><?php echo $beach->title ?></option>
                <?php endforeach; ?>


                </select>

                </div>
              </div>
              
            </div>   <!-- end of span4 -->
         </div>
         <div class="row">
           
                   <div class="span4">
                     <p>Which Themes do you like the Most? </p>
                
                 <div class="control-groupA">
                <label class="control-label accurate" for="themes">Themes:</label>
                <div class="controls">
                  <select multiple="multiple" required style = "height: 200px;">
                    
                   <option label="Beach Vacation Themes" style="color:#c88132;font-weight:bold;"></option>
                  <?php foreach($beaches_afric_aventure_beach_vacations->result() as $themed): ?> 
                 
                  <option value="<?php echo $themed->title  ?>"><?php echo $themed->title ?></option>
                <?php endforeach; ?>
                 <option label="" ></option> 
                 <option label="Safari Themes" style="color:#c88132;font-weight:bold;"></option>
                 <?php foreach($themed_afric_aventure_safaris->result() as $themes): ?> 
                 
                <option><?php echo $themes->title ?></option>
                  
                <?php endforeach; ?>
                

                

                </select>

                </div>
              </div>
             </div> 
             <div class="span4"></div> 
             </div>
           <div class="row">
            
                   <div class="span9">
                
                 <div class="control-groupA">
                 <label class="control-label" for="" style="width:250px; margin-left:60px;">How often have you travelled to Africa?</label>
                <div class="controls">
                 
                  <input type="text" id="travels" name="travels" value="<?php echo set_value('travels'); ?>" placeholder="" style="float: right;margin-right: 145px;">

                </div>
              </div>
             </div> 
           
             </div>
              <legend>Others:</legend>
                 <p>How did you Reach Our Website?</p>
                <div class="row">
               <div class="span9">
                <div class="control-groupA">
               
                <div class="controls">
                  
                   <textarea rows="3" id="reach_website" name="reach_website" value="<?php echo set_value('reach_website'); ?>" style="width: 450px;" ></textarea>
                </div>
              </div>
              </div>
            </div>   <!-- end of row -->
                 <p style="margin-top:10px;">Other Comments:</p>
               <div class="control-group">  
                    <textarea rows="3" id="contact_checkbox" name="comments" value="<?php echo set_value('comments'); ?>"></textarea>
                  </div>
              <div id="captcha_wrapper">
               <?php echo $cap['image'] ?>
            <p>Please Prove That You Are Human By Entering The Characters In An Image Above</p>
            </div>
            
              <div class="control-groupA">
                     <div class="controls">
                    <input type="text" id="captcha" name="captcha" placeholder="" required>
              </div>
            </div>
               <button type="submit" class="btn">Send Message</button>

        
          </form>
        </div> <!--  end of span 9 -->
        <div class="span2">
<!--           <div class="fb-like" data-href="http://www.facebook.com/pages/AfricAventure/91990565246?sid=0.017556388396769762" data-send="false" data-layout="box_count" data-width="450" data-show-faces="true"></div>
          <script type="text/javascript" src="http://cdn.dev.skype.com/uri/skype-uri.js"></script>
<div id="genSkypeCall_01">
    <script type="text/javascript">
        Skype.ui({
            name: "call",
            element: "genSkypeCall_01",
            participants: ["vusile1"],
            imageSize: 32,
            imageColor: "skype"
        });
    </script>
</div> -->
      </div>



        
              				
				</div>  <!-- emd of span 12 -->
			</div>   <!-- end of row -->


            <!--    
                <label class="control-label" for="inputMessage">Message:</label>
                <div class="controls">
                   <textarea rows="6" required></textarea><br>

              <?php echo $cap['image'] ?>
            <p>Please Prove That You Are Human By Entering The Characters In An Image Above</p> -->
            
              <!--   </div>
                 </div>   <!-- end of span4 -->
                 <!-- <div class="control-group">
                     <div class="controls">
                    <input type="text" id="captcha" name="captcha" placeholder="" required>
              </div>
            </div>
               <button type="submit" class="btn">Send Message</button  -->

    <script>
  $(function() {
    $( "#datepicker,#datepicker2" ).datepicker();
  });
  </script>

   <script type="text/javascript">
function Adder()
{
var a= parseInt(document.contact_form.days_for_parks.value||"0");
var b = parseInt(document.contact_form.days_for_beaches.value||"0");
var result=a+b;
document.contact_form.Result.value=result;
}
</script>
<script type="text/javascript">
// $('#Result').change(function (){
//    if(!isNaN($('#days_for_parks').val()) && !isNaN($('#days_for_beaches').val()))
//    {
//          $('#Result').val=($('#days_for_parks').val()+$('#days_for_beaches').val())
//    }
});
</script>