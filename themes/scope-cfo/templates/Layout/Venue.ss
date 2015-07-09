<% include Header %>


<div>

	<p> <h1> $Title</h1></p>
	<img src="$Picture.URL"/>
	<p>$Content<p>
</div>



<div>
	<% if Capacity %>
		<li><Strong>Capacity:</Strong> $Capacity</li>
	<% end_if %>
</div>


<div>
	<% if RoomDimensions %>
		<li><Strong>RoomDimensions:</Strong>$RoomDimensions</li>
	<% end_if %>				
</div>


<div>
	<% if StageDimensions %>
		<li><Strong>StageDimensions:</Strong>$StageDimensions</li>
	<% end_if %>		
</div>

<div>
	<% if Power %>
		<li><Strong>Power:</Strong>$Power</li>
	<% end_if %>		
</div>

<div>
	<% if Risers %>
		<li><Strong>Risers:</Strong>$Risers</li>
	<% end_if %>	
</div>

<div>
	<% if Loading %>
		<li><Strong>Loading:</Strong>$Loading</li>
	<% end_if %>	
</div>