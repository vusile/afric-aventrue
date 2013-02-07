<div class="left">
<?php if(isset($fb) and $fb==1): ?>
	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="facebook">
		
       <div 
         class="fb-like-box" data-href="https://www.facebook.com/Lakelandafrica" 
         data-width="292" data-height="300" data-show-faces="true" data-stream="false" 
         data-border-color="#535842" data-header="false" data-border-bottom="#535842">
     </div>
</div>
<?php endif; ?>
	<div style = "margin-top:2px; float: left; clear: both"></div>
	<div class="leftmenu2">
		<div class="kushoto">
          <ul>
		      <h2><span style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Scheduled Trips</a></span></h2>
			  
			  <?php foreach($trips->result() as $trip): ?>
				<li><a href="trip/<?php echo $trip->url ?>"><?php echo date('d/m/Y',strtotime($trip->start_date)) ?> - <?php echo date('d/m/Y',strtotime($trip->end_date)) ?>&nbsp;>&nbsp;<?php echo $trip->title ?></a></li>
				<?php endforeach; ?>

			
			<span style="margin-top: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="safaris/scheduled-trips"><i>See More Scheduled Trips</i></a></span>
		  </ul>
		</div>
	</div>
</div>