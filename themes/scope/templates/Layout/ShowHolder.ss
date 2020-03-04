<% include Header %>


<div class="container">
	<div class="row">
		<div class="col-lg">

			<% if $UpcomingShows %>
				<h2>Upcoming Shows</h2>
				<% loop $UpcomingShows %>
					<img src="$Picture.URL" />
					<h3>$Title</h3>

				<% end_loop %>
			<% end_if %>

			<h2>Previously presented:</h2>

			<% loop $paginatedPreviousShows %>
				<img src="$Picture.URL" />
				<h3>$Title</h3>
			<% end_loop %>
			<% with $paginatedPreviousShows %>
				<% include Pagination %>
			<% end_with %>
		</div>
	</div>
</div>

