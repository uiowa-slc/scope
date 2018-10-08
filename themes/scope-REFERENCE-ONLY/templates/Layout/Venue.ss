
<%-- <% include Header %> --%>
<%-- <div>
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
 --%>

<div class="<% if $Children || $Parent ||$InSection("sponsorships") || $InSection("contact") || $InSection("about") %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article class="article">
<div>
	<p> <h1> $Title</h1></p>
	<img src="$Picture.URL"/>
	<p>$Content<p>
</div>
<div>
	<% if Capacity %>
		<p><Strong>Capacity: </Strong> $Capacity</p>
	<% end_if %>
</div>
<div>
	<% if RoomDimensions %>
		<p><Strong>Room Dimensions: </Strong>$RoomDimensions</p>
	<% end_if %>				
</div>
<div>
	<% if StageDimensions %>
		<p><Strong>Stage Dimensions: </Strong>$StageDimensions</p>
	<% end_if %>		
</div>
<div>
	<% if Power %>
		<p><Strong>Power: </Strong>$Power</p>
	<% end_if %>		
</div>
<div>
	<% if Risers %>
		<p><Strong>Risers: </Strong>$Risers</p>
	<% end_if %>	
</div>
<div>
	<% if Loading %>
		<p><Strong>Loading: </Strong>$Loading</p>
	<% end_if %>	
</div>



	</article>
</div>
<% if $InSection("sponsorships") || $InSection("contact") || $InSection("about")||$Children || Parent%><%--Determine if Side Nav should be rendered, you can change this logic--%>
<div class="large-3 columns content-right">
	<br>
	<% include SideNav %>
</div>
<% end_if %>