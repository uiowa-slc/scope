<!--NOT IN USE-->

<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<div class="extras">
	<ul id="staff" class="description">
		<h5>Meet the Staff</h5>
	<% loop ChildrenOf(StaffHolder) %>		
			<li> 
			<div class="staff">
					$ProfilePic
				<ul>
					<li>$FirstName $LastName</li>
					<li>$Title</li>
					<li>$Class</li>
					<li><a href="mailto:email@uiowa.edu">$Email</a></li>
					
				</ul> 
			</div> 
			</li>
			
			<li><div class="clear"></div></li>
			
			
			
		
	<% end_loop %>	
	</ul> <!-- end ul staff -->
	</div> <!-- end extras 2nd div -->



