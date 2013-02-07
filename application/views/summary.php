		
      <div class="row">
        <div class="span12 ">
          <div class="full_width">
           <h1><?php echo $toptitle; ?></h1>
           <?php
       if(($show=='destinations')||($show=='themes')){
         $page='beach';
     }else{
      $page='safari';
     }
     ?>
       <?php foreach($query->result() as $destinations): ?>
            <h2><a href="<?php echo $page ?>/<?php  echo $destinations->url  ?>"><?php echo $destinations->title ?></a></h2>
            
      <div class="kapicha">
     <a href="<?php echo $page ?>/<?php  echo $destinations->url  ?>"><img src="ckfinder\userfiles\_thumbs\Images\<?php echo $destinations->thumbnail ?>" alt=""> </a>
   </div>  <!-- end of kapicha -->

     <div class="news_teaser">
      

         <p> 
         <?php  
          $string = $destinations->text;
          $content = word_limiter($string, 70);
          $text= preg_replace("/<img[^>]+\>/i", "", $content); 
          echo $text;
          ?>
         
     <a href="<?php echo $page ?>/<?php  echo $destinations->url  ?>">Read More</a>
      
      
    
       </p>
       
     </div>  <!-- end of news_teaser -->
      <hr>
         <?php endforeach; ?>
       </div> <!-- end of full width -->
      </div>  <!-- emd of span 12 -->
      </div>   <!-- end of row -->

       


       
      