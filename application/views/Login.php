
<div class="right">
	<h1 class="sitetitle"><?php echo $title ?></h1>
<div class="content">
	<div style="margin-top: 40px;"></div>
<p></p>
<form class="contact_form" action="login_user" method = "post">

	   <p class="name">	
            <label for="email">Email:</label><br>
            <input type="email" name = "email"  required />
        </p>	   
		
		<p class="password">	
            <label for="password">Password:</label><br>
            <input type="password" name = "password"  required />
        </p>
 
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn">Log Me In</button>
    </div>
  </div>
</form>
</div>
</div>
</div>