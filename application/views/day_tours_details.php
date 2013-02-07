
	
<div class="right">
	<h1 class="sitetitle"><?php if(isset($details->browser_title)) echo $details->browser_title; else echo $details->title;  ?></h1>
	
<div class="content">
	<div style="margin-top: 40px;"></div>
 <?php if(isset($button)) echo $button;?>
  <?php echo $details->content; ?>
 <?php if(isset($button)) echo $button;?>


</div>


