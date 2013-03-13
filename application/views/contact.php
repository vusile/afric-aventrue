<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="row">
				<div class="span12 full_width_contact_form">
          <h1><?php if(isset($title)) echo $title ?></h1>
           <p><?php if(isset($details)) echo $details ?></p>
           <div class="row">
         <div class="span5">
          <form class="form-horizontal" action="send_message" method="post" name="contact_form" id="contact_form">
            <legend>Personal Information:</legend>
              <div class="control-group">
                <label class="control-label" for="first_name">First Name:</label>
                <div class="controls">
                  <?php echo form_error('first_name'); ?>
                 
                  <input autofocus type="text" id="first_name" name="first_name" value="<?php echo set_value('first_name'); ?>" placeholder="Enter Your First Name" required>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="surname">Surname:</label>
                <div class="controls">
                   <?php echo form_error('surname'); ?>
                  <input type="text" id="surname" name="surname" value="<?php echo set_value('surname'); ?>" placeholder="Enter Your Surname" required>
                </div>
              </div>
             
              <div class="control-group">
                <label class="control-label" for="nationality">Nationality:</label>
                <div class="controls">
                   <?php echo form_error('nationality'); ?>
                  <input type="text" id="nationality" name="nationality" value="<?php echo set_value('nationality'); ?>" placeholder="Enter Your Nationality">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="age">Age:</label>
                <div class="controls">
                  <select required x-moz-errormessage="Please Select Age" name="age" id="age" >
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
                <label class="control-label" for="email_address">Email:</label>
                <div class="controls">
                   <?php echo form_error('email_address'); ?>
                  <input type="email" id="email_address" name="email_address" value="<?php echo set_value('email_address'); ?>"placeholder="name@example.com" required>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="email_confirmation">Confirm Email:</label>
                <div class="controls">
                   <?php echo form_error('email_confirmation'); ?>
                  <input type="email" id="email_confirmation" name="email_confirmation" value="<?php echo set_value(''); ?>" placeholder="name@example.com" required>
                </div>
              </div>
               <div class="control-group">
                <label class="control-label" for="telephone">Telephone:</label>
                <div class="controls">
                   <?php echo form_error('telephone'); ?>
                  <input type="tel" id="telephone" name="telephone" value="<?php echo set_value('telephone'); ?>" placeholder="Enter Your Telephone Number" required>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="skype">Skype Address:</label>
                <div class="controls">
                   <?php echo form_error('skype'); ?>
                  <input type="text" id="skype" name="skype" value="<?php echo set_value('skype'); ?>"placeholder="Enter Your Skype ID name">
                </div>
              </div>
                 </div> <!--  end of span5 -->
                 <div class="span7">
                  <div class="social_icons">
                    <p id="contact_text_call">We would like to talk with you. Please Call Us on Skype or give us your Phone Number</p>
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
                 </div>
                   <div class="social_fb">
                      <div class="fb-like-box" data-href="http://www.facebook.com/pages/AfricAventure/91990565246?fref=ts" data-width="292" data-show-faces="true" data-stream="false" data-header="false"></div>
                    </div>  <!-- end of social fb -->
                 </div>
                 </div>
            </div> <!--  end of row -->
            <div class="row">
             <div class="span6">
              <div class="groupe">
              <div class="control-groupA">
                <label class="control-label" for="no_of_adults">No. of Adults:</label>
                <div class="controls">
                   <?php echo form_error('no_of_adults'); ?>
                  <input type="text" id="no_of_adults" name="no_of_adults" value="<?php echo set_value('no_of_adults'); ?>" placeholder="" required>

                </div>
              </div>
              </div>
              
            </div>   <!-- end of span6 -->

            <div class="span6">
             <div class="groupa">
              <div class="control-groupA">
                 <label class="control-label" for="no_of_rooms">No. of Rooms:</label>
                <div class="controls">
                   <?php echo form_error('no_of_rooms'); ?>
                  <input type="text" id="no_of_rooms" name="no_of_rooms" value="<?php echo set_value('no_of_rooms'); ?>" placeholder="" required>

                </div>
              </div>
              </div>
              </div>
            
             </div>  <!-- end of row -->

            <div class="row">
               <div class="span6">
              <div class="groupe">
              <div class="control-groupA">
                <label class="control-label" for="children">No. of Children:</label>
                <div class="controls">
                   <?php echo form_error('no_of_children'); ?>
                  <input type="text" id="no_of_children" name="no_of_children" value="<?php echo set_value('no_of_children'); ?>" placeholder="">

                </div>
              </div>  </div>
              
            </div>   <!-- end of span6 -->
             <div class="span6">
             <div class="groupa">
              <div class="control-groupA">
                <label class="control-label" for="ages_of_children">Ages:<em>(separated with comma)</em></label>
                <div class="controls">
                   <?php echo form_error('ages_of_children'); ?>
                  <input type="text" id="ages_of_children" name="ages_of_children" value="<?php echo set_value('ages_of_children'); ?>" placeholder="eg: 7, 10, 14" required>

                </div>
              </div>
              </div>
              </div>
     
             
             </div>  <!-- end of row -->
      
            <!--  <br><br><br><br><br><br> -->
            <div class="row">
              <div class="span12">
                  <p>Your Budget per Person <em>(International Flight not Included)</em></p>
              </div>
            </div>
           
             <div class="row">
              <div class="span6">
                <div class="groupe">
              <div class="control-groupA">
                <label class="control-label" for="initial_budget">From:</label>
                <div class="controls">
                   <?php echo form_error('initial_budget'); ?>
                  <input type="text" id="initial_budget" name="initial_budget" value="<?php echo set_value('initial_budget'); ?>" placeholder="" required>
                  <p style="margin-left: 266px;margin-top: -33px;">USD</p>

                </div>
              </div>
              </div>
           
            </div>   <!-- end of span6 -->
           
     
              <div class="span6">
                <div class="groupa">
                
                 <div class="control-group">
                <label class="control-label accurate" for="final_budget">To:</label>
                <div class="controls">
                   <?php echo form_error('final_budget'); ?>
                  <input type="text" id="final_budget" name="final_budget" value="<?php echo set_value('final_budget'); ?>"placeholder="" required>
                 <p style="margin-left: 266px;margin-top: -33px;;">USD</p>

                </div>
              </div>
              </div>  <!--  end of groupa -->
            </div> <!--  end of span 6 -->
            </div> <!--  end of row -->
            <div class="row">
               <div class="span12">
               <legend class="legend_align">Tour Details:</legend>
              <div class="row">
              <div class="span12">
               <p>Date Intended of Arrival in Tanzania</p>
               </div> <!--  end of span12 -->
               <div class="span6 ">
                <div class="groupe">
              <div class="control-groupA">
                <label class="control-label estimated" for="estimated_date_of_arrival">Estimated:</label>
                <div class="controls">
                   <?php echo form_error('estimated_date_of_arrival'); ?>
                  <input type="text"  id="estimated_date_of_arrival" name="estimated_date_of_arrival" value="<?php echo set_value('estimated_date_of_arrival'); ?>" placeholder="DD/MM/YY" required>

                </div>
              </div>
              </div>
            </div>   <!-- end of span6 -->


             <div class="span6">
                  <div class="groupa">
                 <div class="control-group">
                <label class="control-label accurate" for="accurate_date_of_arrival">Accurate:</label>
                <div class="controls">
                   <?php echo form_error('accurate_date_of_arrival'); ?>
                  <input type="text" id="accurate_date_of_arrival" name="accurate_date_of_arrival" value="<?php echo set_value('accurate_date_of_arrival'); ?>" placeholder="DD/MM/YY" required>

                </div>
              </div>
            </div><!-- end of span6 -->
            </div>
            </div>  <!-- end of row -->
            <div class="row">
              <div class="span11">
             <p>How Many Days would you like to spend:</p>
             </div>
            <div class="span6">
               <div class="groupe">
              <div class="control-groupA">
                <label class="control-label" for="days_for_parks">In the Parks:</label>
                <div class="controls">
                   <?php echo form_error('days_for_parks'); ?>
                  <input type="text"  id="days_for_parks" name="days_for_parks" value="<?php echo set_value('days_for_parks'); ?>" placeholder="" onchange="Adder()" required>
                 

                </div>
              </div>
              </div>
              
            </div>   <!-- end of span6 -->
         
             
             <div class="span6">
                <div class="groupa">
                 <div class="control-group">
                <label class="control-label accurate" for="days_for_beaches">In the Beaches:</label>
                <div class="controls">
                    <?php echo form_error('days_for_beaches'); ?>
                   <input type="text"  id="days_for_beaches" name="days_for_beaches" value="<?php echo set_value('days_for_parks'); ?>" placeholder="" onchange="Adder()" required>

                </div>
              </div>
            </div>
            </div>

          </div><!--  end of row -->

            <div class="row"> <!--  start of row -->
              <div class="span12">  <!-- start of span 12 -->
                <div id="total_days">
                 <div class="control-group">
                <label class="control-label " for="Result">Total:</label>
                <div class="controls">
                  <input type="text" id="Result" name="Result">
                </div>
              </div>

                </div>
              </div> <!--  end of span12 -->
            </div>   <!--  end of row -->



               <p>Which Areas you are Most Interested in? <em>(Click + Ctrl to select more than one area)</em> </p>
               </div> <!--  end of span11 -->
            </div>
             <div class="row">
                   <div class="span6">
                  <div class="groupe">
                 <div class="control-groupA">
                <label class="control-label accurate" for="park">Parks:</label>
                <div class="controls">
                     <?php echo form_error('parks_interested_with'); ?>
                 <select multiple="multiple" required style = "height: 200px;" id="parks_interested_with" name="parks_interested_with[]" value="<?php echo set_value('parks_interested_with'); ?>">
                   
                  <?php foreach($parks->result() as $park): ?> 
                <option value="<?php echo $park->en_title  ?>"><?php echo $park->en_title ?></option>
                <?php endforeach; ?>
              


                </select>
                  
                </div>
              </div>
              </div> <!-- end of groupe -->
             </div>  <!-- end of span6-->
             <div class="span6">
              <div class="groupa">
              <div class="control-group">
                <label class="control-label" for="beaches_interested_with"> Beaches:</label>
                <div class="controls">
                    <?php echo form_error('beaches_interested_with'); ?>
                   <select multiple="multiple" required style = "height: 200px;" name="beaches_interested_with[]" id="beaches_interested_with" value="<?php echo set_value('beaches_interested_with'); ?>">
             
                  <?php foreach($beaches->result() as $beach): ?> 
                <option value="<?php echo $beach->en_title  ?>"><?php echo $beach->en_title ?></option>
                <?php endforeach; ?>


                </select>

                </div>
              </div>
              </div>
            </div>   <!-- end of span6 -->
         </div>
         <div class="row">
            <div class="span12">
               <p>Which Themes do you prefer the Most? <em>(Click + Ctrl to select more than one theme)</em> </p>
                
                   <div class="groupe">
                   
                 <div class="control-groupA">
                <label class="control-label accurate" for="themes">Themes:</label>
                <div class="controls">
                    <?php echo form_error('themes_i_like_the_most'); ?>
                  <select multiple="multiple" required style = "height: 200px;" id="themes_i_like_the_most[]" name="themes_i_like_the_most" value="<?php echo set_value('themes_i_like_the_most'); ?>">
               <optgroup  label="Safari Themes">
                    <?php foreach($themed_afric_aventure_safaris->result() as $themes): ?> 
                 
                <option><?php echo $themes->en_title ?></option>
                  
                <?php endforeach; ?>
              </optgroup>
                
                 <optgroup  label="Beach Themes">
                  <?php foreach($beaches_afric_aventure_beach_vacations->result() as $themed): ?> 
                 
                  <option value="<?php echo $themed->en_title  ?>"><?php echo $themed->en_title ?></option>
                <?php endforeach; ?>
                 </optgroup>
                 <option label="" ></option> 
           
                </select>

                </div>
              </div>
             </div> 
           </div> <!--  end of span 12-->
         </div> <!-- end of row -->
            
           <div class="row">
            
                   <div class="span12">
                
                 <div class="control-groupA">
                 <label class="control-label sub_sahala_label" for="">Have you already travelled to sub- Saharan Africa?</label><br>
                <div class="controls inline_checkbox">
                  <label class="checkbox inline">
                <input type="checkbox" id="no_of_travels_to_afrika" value="<?php echo set_value('no_of_travels_to_afrika'); ?>"> Yes
                </label>
                <label class="checkbox inline">
                <input type="checkbox" id="no_of_travels_to_afrika2" value="<?php echo set_value('no_of_travels_to_afrika2'); ?>"> No
                </label>

                </div>
              </div>
             </div> <!-- end of span12 -->
           
             </div>  <!-- end of row -->
             <div class="row">
              <div class="span12">
               <legend class="legend_align" >Others:</legend>
              <p>How did you Reach Our Website?</p>
               </div> <!--  end of span12 -->
             </div> <!-- end of row -->
      
               
                <div class="row">
               <div class="span12">
                <div class="groupe">
                <div class="control-groupA">
               
                <div class="controls">
                   <?php echo form_error('i_reach_the_website_through'); ?>
                   <textarea rows="3" id="i_reach_the_website_through" name="i_reach_the_website_through" value="<?php echo set_value('i_reach_the_website_through'); ?>" style="width: 450px;" ></textarea>
                </div>
              </div>
              </div>  <!-- end of groupe -->
              </div>  <!-- end of span12 -->
            </div>   <!-- end of row -->
                 <p style="margin-top:10px;">Other Comments:</p>
                 <div class="row">
               <div class="span12">
               <!--  <div class="groupe"> -->
               <div class="control-group">  
                 <?php echo form_error('other_comments'); ?>
                    <textarea rows="3" id="other_comments" name="other_comments" value="<?php echo set_value('other_comments'); ?>"></textarea>
                  </div>
              <div id="captcha_wrapper">
               <?php echo $cap['image'] ?>
            <p>Please Prove That You Are Human By Entering The Characters of the Image Above</p>
            </div>
               <div class="groupe">
              <div class="control-groupA">
                     <div class="controls">
                     <?php echo form_error('captcha'); ?>
                    <input type="text" id="captcha" name="captcha" placeholder="" required>
              </div>
            </div>
            </div>
               <button type="submit" class="btn">Send Message</button>
            <!--  </div> --> <!--  end of groupe -->
            </div>  <!-- end of span -->
            </div>  <!-- end of row -->

                  
          </form>
  

        
              				
				</div>  <!-- emd of span 12 -->
			</div>   <!-- end of row -->



    <script>
  $(function() {
    $( "#estimated_date_of_arrival,#accurate_date_of_arrival" ).datepicker();
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
