<ul class="show-details">
	<li><strong>Date:</strong> $Date.format(MMM) $Date.format(dd), $Date.format(yyyy) <% if not $Date.inPast %> $Time.Nice <% end_if %></li>
 	<% if $Venue %><li><strong>Location:</strong> $Venue</li><% end_if %>
	<% if $SoldOut %>
		<p class="alert"><strong>This show is sold out!</strong></p>
	<% else %>
		<% if $Date.inFuture %>
			<% if $BuyTicketsOnlineLink %>
				<li> <a href="$BuyTicketsOnlineLink" class="button small" target="_blank"> Buy Tickets Online</a> </li>
			<% end_if %>

			<% if $BuyTicketsInPersonLink %>
				<li> <a href="$BuyTicketsInPersonLink" class="button small" target="_blank"> Buy Tickets In Person</a> </li>
			<% end_if %>
			
		<% end_if %>
	<% end_if %>
</ul>
