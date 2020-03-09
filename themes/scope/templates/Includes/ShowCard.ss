<div class="card my-4">
	<div class="row no-gutters">
		<div class="col-md-3">
			<a href="$Link">
				<img src="$Picture.Pad(400,400).URL" class="card-img" alt="$Title">
			</a>
		</div>
		<div class="col-md-9">
			<div class="card-body p-">
				<h3 class="card-title my-2">
					<a href="$Link">$Title</a>
				</h3>

				<ul class="list-group ">
					<li class="list-group-item"><strong>Date:</strong> $Date.Format("MMM. d, Y") </li>
					<% if $Date.inFuture || $Date.isToday %>
						<li class="list-group-item"><strong>Time:</strong> $Time.Nice</li>
					<% end_if %>
					<% if $Venue %>
						<li class="list-group-item"><strong>Location:</strong> $Venue</li>
					<% end_if %>
				</ul>

				<br />

				<% if $SoldOut %>
					<p class="alert"><strong>This show is sold out!</strong></p>
				<% end_if %>

				<% if $Date.inFuture || $Date.isToday %>

					<% if $BuyTicketsOnlineLink %>
						<a href="$BuyTicketsOnlineLink" class="btn btn-primary" target="_blank">Buy Tickets Online</a>
					<% end_if %>
					<% if $BuyTicketsInPersonLink %>
						<a href="$BuyTicketsInPersonLink" class="btn btn-primary" target="_blank">Buy Tickets In Person</a>
					<% end_if %>
					<a href="$Link" class="btn btn-primary">See Details</a>

				<% else %>
					<p><a href="$Link" class="btn btn-primary">See Details</a></p>
				<% end_if %>
			</div>
		</div>
	</div>
</div>