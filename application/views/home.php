
  <script>
$('#myCarousel').carousel({
      interval: 5000,
      pause: "hover"
    });


   </script>
<div class="row">
				<div class="span12 ">
          <div class="slider">

          <div id="myCarousel" class="carousel slide">
              <!-- Carousel items -->
              <div class="carousel-inner">
                 <?php foreach($slider->result() as $image): ?>
                <div class="item">
                  <img src="assets/uploads/files/<?php echo $image->photo ?>" alt="">
      <!--             <img src="img/tower_ES.jpeg" alt=""> -->
                   <div class="carousel-caption">
                    <h4><?php echo $image->photo_title ?></h4>
                      <p><?php echo $image->caption ?></p>


                      
                    </div>
                   
                </div>
                  <?php endforeach; ?>
                  </div>

            
              <!-- Carousel nav -->
              <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
              <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>

              </div>
				</div>  <!-- emd of span 12 -->
			</div>   <!-- end of row -->