 <!-- special accomodation page add on   -->  
     <div class="span12 ">
        <div class="teaser">
          <h1><?php if(isset($toptitle)) echo $toptitle ?></h1>
          <h1><?php if(isset($kk)) echo $kk ?></h1>

        </div> <!--  end of span 12 -->
      </div>  <!-- end of teaser -->

 <!--  start of fisrt slider, heads up ! -->
 <?php if(isset($accomodations)): ?>
  <?php foreach($accomodations->result() as $accomodation): ?>
      <div class="row">
        <div class="span12 teaser ">
          <h2><?php echo $accomodation->title ?></h2> 
         
        </div>   <!-- end of span12 -->
      <div class="span1"></div>
      <?php if(isset($slider_check[$accomodation->id])): ?>
        <div class="span10 slidest ">

          <div id="myCarousel<?php echo $accomodation->id ?>" class="carousel slide">  
              <!-- Carousel items -->
              <div class="carousel-inner">
        <?php 
        $i = 0;
        foreach($sliders->result() as $slider): ?>
        <?php if($slider->accomodation_id == $accomodation->id): ?>
                <?php if($i==0): ?>
                <div class="active item"> 
                <?php else: ?>
                <div class="item"> 
              <?php endif; ?>
                  <img src="assets/uploads/files/<?php if(isset($slider->slide_pic)) echo $slider->slide_pic ?>" alt="">
                   <div class="carousel-caption">
                    <h4><?php if(isset($slider->slide_title)) echo $slider->slide_title ?></h4>
                      <p><?php if(isset($slider->slide_teaser)) echo $slider->slide_teaser ?></p>
                     
                    </div>
                    </div>
                
                      
      <?php $i++; endif; ?>
        <?php endforeach; ?>  <!-- emd of span 8 -->
              </div>
              <!-- Carousel nav -->
              <a class="carousel-control2 right" href="#myCarousel<?php echo $accomodation->id ?>" data-slide="next">&rsaquo;</a>
              <a class="carousel-control2 left" href="#myCarousel<?php echo $accomodation->id ?>" data-slide="prev">&lsaquo;</a>
              </div>
        </div>
      <?php endif; ?>
        <div class="span1"></div>
      </div>   <!-- end of row -->
   <?php endforeach; ?>

<?php foreach($accomodations->result() as $accomodation): ?>
  <?php if(isset($slider_check[$accomodation->id])): ?>
        <script>
$('#myCarousel<?php echo $accomodation->id ?>').carousel({
      interval: false
    });

   </script>
 <?php endif; ?>
<?php endforeach; ?>
<?php endif; ?>