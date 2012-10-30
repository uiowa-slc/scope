
<% include Header %>



<!-- 03 SHOWS SECTION -->
	
	<div class="section" id="venues">
	<h1>Venues</h1>

<div class="details"  id="imu-main-lounge">
	<div class="description venue">
		
		<img id="artist_section" src="$Picture.URL"/>
			<h2>$Title</h2>
			<h5 class="date">$Location $Time <br> $Date </h5>
		
		
		
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
	
	<li><div class="specs">
		<ul>
			<% if Other %>
				<li class="left">Other</li>
				<li>$Other</li>
				<div class="clear"></div>
			<% end_if %>	
		</ul>
	 </div></li>
	 <div class="clear"></div>
	</ul>
</div>
</div>
<% include Footer %>
	






