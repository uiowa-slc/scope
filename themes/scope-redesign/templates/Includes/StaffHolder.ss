<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<div class="extras">
	<ul id="staff" class="description">
		<h5>Meet the Staff</h5>
	<% loop getRandomStaff %>		
			<li> 
			<div class="staff">
					$ProfilePic
				<ul>
					<li>$FirstName $LastName</li>
					<li>$Title</li>
					<li>$Class</li>
					<li><a href="{$Email}">$Email</a></li>
					
				</ul> 
			</div> 
			</li>
			
			<li><div class="clear"></div></li>
			
			
			
		
	<% end_loop %>	
	<h4><a href="{$BaseHref}staff-profiles" id="stafflink" >See All Staff >></a></h4>
	</ul> <!-- end ul staff -->
	</div> <!-- end extras 2nd div -->
	
