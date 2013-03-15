<!DOCTYPE html>
<html>
<head>
	<base href = "<?php echo base_url(); ?>" />
	<meta charset="utf-8" />
<?php 
if(isset($css_files))
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php 
if(isset($js_files))
foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>
	<div>
		<a href='<?php echo site_url('logout')?>'>Logout</a> |
		<a href='<?php echo site_url('backend/afric_aventure_pages')?>'>Pages</a> |
		<a href='<?php echo site_url('backend/afric_aventure_slider')?>'>Home Page Slider</a> |
		<a href='<?php echo site_url('backend/afric_aventure_safaris_categories')?>'>Safaris Categories</a> |
		<a href='<?php echo site_url('backend/afric_aventure_safaris/1')?>'>Parks Served</a> |
		<a href='<?php echo site_url('backend/afric_aventure_safaris/2')?>'>Themed Safaris</a> |
		<a href='<?php echo site_url('backend/afric_aventure_beach_vacation_categories')?>'>Beach Vacations Categories</a> |
		<a href='<?php echo site_url('backend/afric_aventure_beach_vacations/1')?>'>Beaches Served</a> |
		<a href='<?php echo site_url('backend/afric_aventure_beach_vacations/2')?>'>Beach Themes</a> |
		<a href='<?php echo site_url('backend/afric_aventure_accomodations_categories')?>'>Accomodation Categories</a> | 
		<a href='<?php echo site_url('backend/afric_aventure_accomodations')?>'>Accomodations</a> 
		
	


	</div>
	<div style='height:20px;'></div>  
		<?php if(isset($additional_text)) echo $additional_text; ?>
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
