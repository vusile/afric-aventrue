<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo base_url(); ?>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <link rel="shortcut icon" href="images/Nat_ico.ico" /> -->
<title><?php if( isset($title)) echo $title; ?></title>
<meta name="description" content= "<?php if( isset($description)) echo $description; ?>" >
 
<link href="css/main.css" rel="stylesheet" type="text/css" />
<style>
  body{
    background-color: <?php if(isset($color)) echo $color ?>;
}
.navbar-inner{
	 background-color:<?php if(isset($color)) echo $color ?>;
}
.dropdown-menu{
	 background-color:<?php if(isset($color)) echo $color ?>;
}
.navbar .nav li.dropdown.open > .dropdown-toggle, .navbar .nav li.dropdown.active > .dropdown-toggle, .navbar .nav li.dropdown.open.active > .dropdown-toggle {
background-color: <?php if(isset($color_nav)) echo $color_nav ?>;
background-image: -moz-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: -webkit-gradient(linear, 0 0, 0 100%, from(<?php if(isset($color_nav)) echo $color_nav ?>), to(<?php if(isset($color_nav)) echo $color_nav ?>));
background-image: -webkit-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: -o-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: linear-gradient(to bottom, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-repeat: repeat-x;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
.nav a:hover {
  background-color:  <?php if(isset($color_nav)) echo $color_nav ?>;
  background-image: -moz-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: -webkit-gradient(linear, 0 0, 0 100%, from(<?php if(isset($color_nav)) echo $color_nav ?>), to(<?php if(isset($color_nav)) echo $color_nav ?>));
background-image: -webkit-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: -o-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: linear-gradient(to bottom, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-repeat: repeat-x;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
.nav-list > .active > a,
.nav-list > .active > a:hover {
  background-color: <?php if(isset($color_nav)) echo $color_nav ?>;
}
.dropdown-menu li > a:hover, .dropdown-menu li > a:focus, .dropdown-submenu:hover > a {
background-color: <?php if(isset($color_nav)) echo $color_nav ?>;
}
.dropdown-menu li > a:hover, .dropdown-menu li > a:focus, .dropdown-submenu:hover > a {
background-color: <?php if(isset($color_nav)) echo $color_nav ?>;
}
.dropdown-menu li > a:hover, .dropdown-menu li > a:focus, .dropdown-submenu:hover > a {
background-color:  <?php if(isset($color_nav)) echo $color_nav ?>;
background-image: -moz-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: -webkit-gradient(linear, 0 0, 0 100%, from(<?php if(isset($color_nav)) echo $color_nav ?>), to(<?php if(isset($color_nav)) echo $color_nav ?>));
background-image: -webkit-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: -o-linear-gradient(top, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-image: linear-gradient(to bottom, <?php if(isset($color_nav)) echo $color_nav ?>, <?php if(isset($color_nav)) echo $color_nav ?>);
background-repeat: repeat-x;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}

</style>

<!-- <link href="css/content.acss" rel="stylesheet" type="text/css" /> -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<!-- <script type="text/javascript" src="js/jquery.translate-1.4.7-debug-all.js"></script> -->
<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<div class="container">
		<div class="row header">
			    
				<div class="span9 logo">
					<?php if($this->uri->segment(1) =="en" ): ?>
					<a href="<?php echo base_url(); ?>"><img src="img/logo-01.png" alt="Afric' Aventure"></a>
					<?php else: ?>
					<a href="<?php echo base_url(); ?>"><img src="img/logo-02.png" alt="Afric' Aventure"></a>
					<?php endif; ?>
					</div> <!-- end of span9  --> 
					<div class="span3 flag">

						<?php if($this->uri->segment(1) =="en" ): ?>
							<a href="<?php echo $fr ?>"><img src="img/flags-01.png" alt=""></a>
						<?php else: ?>
							<a href="en/<?php echo $en ?>"><img src="img/flags-02.png" alt=""></a>
						<?php endif; ?>
						</div>   <!-- end of span3 -->
         
		</div>  <!--  end of row -->	
		  <div class="row">	
		  <div class="span12">

		