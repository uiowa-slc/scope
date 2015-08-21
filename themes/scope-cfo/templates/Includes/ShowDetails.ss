<ul class="show-details">
	<li><strong>Date:</strong> $Date.format(F) $Date.format(j), $Date.format(Y) $Time</li>
	<% if $Venue %><li><strong>Location:</strong> $Venue</li><% end_if %>
	<% if $SoldOut %>
		<p>This show is sold out!</p>
	<% else %>
		<% if not $Date.inPast %>
			<% if $BuyTicketsOnlineLink %>
				<li> <a href="$BuyTicketsOnlineLink" class="button small" target="_blank"> Buy Tickets Online</a> </li>
			<% end_if %>

			<% if $BuyTicketsInPersonLink %>
				<li> <a href="$BuyTicketsInPersonLink" class="button small" target="_blank"> Buy Tickets In Person</a> </li>
			<% end_if %>
		<% end_if %>
	<% end_if %>
</ul>