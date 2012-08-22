<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% include Header %>

<!-- 04 VENUES SECTION-->	



<div class="section" id="venues">
	<h1>Venues</h1>
<% loop ChildrenOf(venues) %>
<div class="details"  id="imu-main-lounge">
	<div class="description venue">
		
		<img id="venue_section" src="$Picture.URL"/>
		<a href="{$Link}"><h2>$Title</h2></a>
            	<p>$Content<p>
	</div>
</div>
<div class="extras tech-info">
	<ul class="tech">
	<h5>Technical Information</h5>
	<li><div class="specs">
		<ul>
				<li class="left">Capacity</li>
				<li>$Capacity</li>
				<div class="clear"></div>
				
		  </ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if RoomDimensions %>
				<li class="left">Room Dimensions</li>
				<li>$RoomDimensions</li>
				<div class="clear"></div>
			<% end_if %>				
		  </ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if StageDimensions %>
				<li class="left">Stage</li>
				<li>$StageDimensions</li>
				<div class="clear"></div>
			<% end_if %>	
		  </ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if Power %>
				<li class="left">Power</li>
				<li>$Power</li>
				<div class="clear"></div>
			<% end_if %>		
		</ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if Risers %>
				<li class="left">Risers</li>
				<li>$Risers</li>
				<div class="clear"></div>
			<% end_if %>	
		  </ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if Loading %>
				<li class="left">Loading</li>
				<li>$Loading</li>
				<div class="clear"></div>
			<% end_if %>	
		</ul>
	 </div></li>
	</ul>
</div>
<% end_loop %>	


</script>
</body>
</html>



