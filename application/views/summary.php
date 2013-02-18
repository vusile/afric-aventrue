		 <?php 
     if($this->uri->segment(1)!='en')
             $more='Lire la Suite';
           else
              $more = 'Read More';
              ?>
      <div class="row">
        <div class="span12 ">
          <div class="full_width">
           <h1><?php echo $toptitle; ?></h1>

       <?php foreach($query->result() as $destinations): ?>
       <?php  
         if($this->uri->segment(1)!='en'):?>
            <h2><a href="<?php echo $page ?>/<?php  echo $destinations->url  ?>"><?php echo $destinations->title ?></a></h2>
          <?php else: ?>
            <h2><a href="<?php echo $page ?>/<?php  echo $destinations->en_url  ?>"><?php echo $destinations->en_title ?></a></h2>
           <?php endif; ?>
      <?php if($destinations->thumbnail != ''): ?>
      <div class="kapicha">
               <?php  
         if($this->uri->segment(1)!='en'):?>
     <a href="<?php echo $page ?>/<?php  echo $destinations->url  ?>"><img src="ckfinder\userfiles\_thumbs\Images\<?php echo $destinations->thumbnail ?>" alt=""> </a>
     <?php else: ?>
          <a href="<?php echo $page ?>/<?php  echo $destinations->en_url  ?>"><img src="ckfinder\userfiles\_thumbs\Images\<?php echo $destinations->thumbnail ?>" alt=""> </a>
          <?php endif; ?>
   </div>  <!-- end of kapicha -->
    <?php endif; ?>
     <div class="news_teaser">
      

         <p> 
         <?php  
         if($this->uri->segment(1)!='en')
             $string = $destinations->text;
           else
              $string = $destinations->en_text;
          $content = word_limiter($string, 110);
          $text= strip_tags(preg_replace("/<img[^>]+\>/i", "", $content)); 
          echo $text;
          ?>
      <?php  
         if($this->uri->segment(1)!='en'):?>
     <a href="<?php echo $page ?>/<?php  echo $destinations->url  ?>"><?php echo $more; ?></a>
      <?php else: ?>
     <a href="<?php echo $page ?>/<?php  echo $destinations->en_url  ?>"><?php echo $more; ?></a>
      <?php endif; ?>
    
       </p>
       
     </div>  <!-- end of news_teaser -->
      <hr>
         <?php endforeach; ?>
       </div> <!-- end of full width -->
      </div>  <!-- emd of span 12 -->
      </div>   <!-- end of row -->

       


       
      