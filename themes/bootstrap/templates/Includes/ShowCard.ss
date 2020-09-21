<div class="card mb-4">
	<div class="row no-gutters">
		<div class="col-md-4 border-right">
			<a href="$Link">
				<img src="$Picture.Pad(400,400).URL" class="card-img" alt="$Title" loading="lazy">
			</a>
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h3 class="card-title my-2">
					<a href="$Link">$Title</a>
				</h3>               

                <!-- Date/Time -->
				<ul class="list-group ">
					<li class="list-group-item"><strong>Date:</strong> $Date.Format("MMM. d, Y") </li>
					<% if $Date.inFuture || $Date.isToday %>
						<li class="list-group-item"><strong>Time:</strong> $Time.format("h:mm a")</li>
					<% end_if %>
					<% if $Venue %>
						<li class="list-group-item"><strong>Location:</strong> $Venue</li>
					<% end_if %>
				</ul>

				<br />
                
                <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">See Details</a>
                
                <!-- Ticket Links -->
                <% if $SoldOut %>
                    <div class="alert alert-warning mt-2" role="alert">
                        This show is sold out!
                    </div>
                <% else %>
                    <% if $Date.inFuture || $Date.isToday %>
                        <% if $BuyTicketsOnlineLink %>
                            <a href="$BuyTicketsOnlineLink" class="btn btn-outline-primary" target="_blank">Buy Tickets Online</a>
                        <% end_if %>
                        <% if $BuyTicketsInPersonLink %>
                            <a href="$BuyTicketsInPersonLink" class="btn btn-outline-primary" target="_blank">Buy Tickets In Person</a>
                        <% end_if %>
                        <%-- <a href="$Link" class="btn btn-primary" aria-label="See details about $Title">See Details</a> --%>
                    <% end_if %>
				<% end_if %>
				
			</div>
		</div>
	</div>
</div>