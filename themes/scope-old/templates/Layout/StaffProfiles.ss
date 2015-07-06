<!--NOT IN USE-->

<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<% include Header %>

<div class="profileextras">

<h1>Our staff</h1>

	<ul id="staff_ul" class="description">
			<% loop ChildrenOf(StaffHolder) %>	
				
			<% if Odd %>
				<div class="staffpage">
			<% end_if %>
			
			<% if Odd %>
				<div class="staff_left">
			<% else_if Even %>
				<div class="staff_right">
			<% end_if %>
			
					$ProfilePic
				
				<ul>
					<li>$FirstName $LastName</li>
					<li>$Title</li>
					<li>$Class</li>
					<li><a href="mailto:email@uiowa.edu">$Email</a></li>
					
				</ul>
			
				</div>
	
			<% if Even %>	 
				</div>
				<div class="clear"></div>
			<% end_if %>
						
	
			
			
		
	<% end_loop %>	
	</ul> <!-- end ul staff -->
</div>	 <!-- end extras 2nd div -->
	
<% include Footer %>



