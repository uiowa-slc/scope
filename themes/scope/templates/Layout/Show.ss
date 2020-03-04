<% include Header %>

<article>
	<% if $Picture %>
		<img src="$Picture.ScaleWidth(1200).URL" alt="Poster for {$Title}, please continue reading for specific event information." />
	<% end_if %>
		<h1>$Title </h1>
		<strong>Date:</strong> $Date.Format("MMMM d, YYYY") <% if not $Date.inPast %> $Time.Nice <% end_if %></li>
		<% if $Venue %><li><strong>Location:</strong> $Venue</li><% end_if %>
		<% if $SoldOut %>
			<p><strong>This show is sold out!</strong></p>
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
		<p>$Content</p>

		<% if $SpotifyEmbed %>
			$SpotifyEmbed
		<% end_if %>

		<p>Individuals with disabilities are encouraged to attend all University of Iowa - sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact SCOPE in advance at 319-335-3395 or <a href="mailto:scope@uiowa.edu">scope@uiowa.edu</a>.</p>
</article>