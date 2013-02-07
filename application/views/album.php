
	
<div class="right">
	<h1 class="sitetitle"><?php echo $title ?></h1>
	
<div class="content" style = "padding-left: 40px;">
	<div style="margin-top: 40px;"></div>
  <?php 
	foreach($pictures->result() as $picture):
  ?>
	<a href="images/<?php echo $picture->image ?>" rel="shadowbox[<?php echo $title ?>]"><img width = "150px" alt = "<?php echo $picture->title ?>" src = 'images/thumb__<?php echo $picture->image ?>' /></a>
	
  <?php endforeach; ?>


</div></div></div>
