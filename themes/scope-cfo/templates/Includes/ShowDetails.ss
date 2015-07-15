<%-- <ul class="lecture-details">
	<% if $LectureTitle %><li><h3>$Title</h3></li><% end_if %>
	<li><strong>Date:</strong> $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y) $Time</li>
	<li><strong>Location:</strong> $Location</li>
	<li><strong>Cost:</strong> $Price</li>
</ul>

 --%>

<ul class="show-details">
	<% if $Artist %><li><h3>$Venue</h3></li><% end_if %>
	<li><strong>Date:</strong> $Date.format(F) $Date.format(j), $Date.format(Y) $Time</li>
	<li><strong>Location:</strong> $Venue</li>
	
	<% if Date.inPast != true %>
		<p> well hello! </p>
		
		<% if $BuyTicketsOnlineLink %>
		<li> <a href="$BuyTicketsOnlineLink"> Buy Tickets Online</a> </li>
		<% end_if %>

		<% if $BuyTicketsInPersonLink %>
		<li> <a href="$BuyTicketsInPersonLink"> Buy Tickets In Person</a> </li>
		<% end_if %>
		
	<% end_if %>
	
	<%-- <li><strong>Cost:</strong> $Price</li> --%>
</ul>



<%--  <div class="section" id="venues">
 	<h1>$Artist</h1>

 	<div class="details"  id="imu-main-lounge">
 		<div class="description venue">

 			<img id="venue_section" src="$Picture.URL"/>
 			<a href="{$Link}" ><h2>$Title</h2></a>
 			<h5 class="date">$Venue $Time <br> $Date.NiceUS</h5>
 			<p>$Content</p>
 			</div>
 		</div>
</div> --%>
