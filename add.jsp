<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all">
<script type="text/javascript" src="view.js"></script>

</head>
<body id="main_body" >
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Registration Form</a></h1>
		<form id="form_26733" class="appnitro"  method="post" action="addRecord.jsp">
					<div class="form_description">
			<h2>Registration Form <a href="dashboard.jsp">Home</a></h2>
			<p>Add Patient Details.</p>
		</div>						
			<ul >
			
					<li id="li_1" >
		<label class="description" for="element_1">Name </label>
		<div>
			<input id="element_1" name="name" class="element text medium" type="text" maxlength="255" value=""/> 
		</div><p class="guidelines" id="guide_1"><small>Name</small></p> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Registration Number </label>
		<div>
			<input id="element_2" name="regno" class="element text medium" type="text" maxlength="255" value=""/> 
		</div><p class="guidelines" id="guide_2"><small>registration number</small></p> 
		</li>		<li id="li_3" >
		<label class="description" for="element_3">Contact </label>
		<div>
			<input id="element_3" name="contact" class="element text medium" type="text" maxlength="255" value=""/> 
		</div><p class="guidelines" id="guide_3"><small>contact</small></p> 
		</li>		<li id="li_4" >
		<label class="description" for="element_4">Email Id </label>
		<div>
			<input id="element_4" name="email" class="element text medium" type="text" maxlength="255" value=""/> 
		</div><p class="guidelines" id="guide_4"><small>email</small></p> 
		</li>		<li id="li_7" >
		<label class="description" for="element_7">Gender </label>
		<span>
			<input id="element_7_1" name="gender" class="element radio" type="radio" value="Male" />
<label class="choice" for="element_7_1">Male</label>
<input id="element_7_2" name="gender" class="element radio" type="radio" value="Female" />
<label class="choice" for="element_7_2">Female</label>
<input id="element_7_3" name="gender" class="element radio" type="radio" value="Other" />
<label class="choice" for="element_7_3">Other</label>

		</span> 
		</li>		<li id="li_5" >
		<label class="description" for="element_5">Age </label>
		<div>
			<input id="element_5" name="age" class="element text medium" type="text" maxlength="255" value=""/> 
		</div> 
		</li>		<li id="li_6" >
		<label class="description" for="element_6">Address </label>
		<div>
			<input id="element_6" name="address" class="element text medium" type="text" maxlength="255" value=""/> 
		</div> 
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="26733" />
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
			</ul>
		</form>	
	<img id="bottom" src="bottom.png" alt="">
	</body>
</html>