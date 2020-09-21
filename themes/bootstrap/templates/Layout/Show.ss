<% include Header %>

<main class="container-xl mb-5" id="content">

    <div class="row">
		<div class="col-lg-8 offset-lg-2">
			<div class="blog__content">
                <div class="py-3 py-md-6 text-center">
                    $breadcrumbs
                    <h1 class="display-3 pb-4">$Title</h1>
                    <hr>
                </div>
                <% if $Picture %>
                    <img src="$Picture.ScaleMaxWidth(400).URL" class="img-thumbnail float-md-right mb-3 ml-md-3 mr-lg-n8 mr-xl-n9" alt="Poster for {$Title}, please continue reading for specific event information." />
                <% end_if %>

                <div class="card bg-transparent">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <strong>Date:</strong> $Date.Format("MMMM d, Y")
                        </li>
                        <% if $Date.inFuture || $Date.isToday %>
                            <li class="list-group-item">
                                <strong>Time:</strong> $Time.format("h:mm a")
                            </li>
                        <% end_if %>
                        <% if $Venue %>
                            <li class="list-group-item">
                                <strong>Location:</strong> $Venue
                            </li>
                        <% end_if %>
                    </ul>

                    <% if $SoldOut %>
                        <div class="alert alert-warning mb-0 rounded-0" role="alert">
                            This show is sold out!
                        </div>
                    <% else %>
                        <% if $Date.inFuture || $Date.isToday %>
                            <div class="card-body text-center">
                                <% if $BuyTicketsOnlineLink %>
                                    <a href="$BuyTicketsOnlineLink" class="btn btn-primary card-link mb-2" target="_blank" rel="noopener noreferrer"> Buy Tickets Online</a>
                                <% end_if %>

                                <% if $BuyTicketsInPersonLink %>
                                    <a href="$BuyTicketsInPersonLink" class="btn btn-primary card-link mb-2" target="_blank" rel="noopener noreferrer"> Buy Tickets In Person</a>
                                <% end_if %>
                            </div>
                        <% end_if %>
                    <% end_if %>                   
                </div>

                <p>$Content</p>

                <% if $SpotifyEmbed %>
                    $SpotifyEmbed
                <% end_if %>
                <hr />
                <p class="small">Individuals with disabilities are encouraged to attend all University of Iowa - sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact SCOPE in advance at 319-335-3395 or <a href="mailto:scope@uiowa.edu">scope@uiowa.edu</a>.</p>
			</div>
		</div>
	</div>
</main>