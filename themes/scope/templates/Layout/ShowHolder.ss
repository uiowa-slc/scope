<% include Header %>


<div class="container">
	<div class="row">
		<div class="col-lg">

			<% if $UpcomingShows %>
				<h2 class="mt-5">Upcoming Shows</h2>
				<div class="upcoming-shows">
					<% loop $UpcomingShows %>
						<% include ShowCard %>
					<% end_loop %>
				</div>
				<br />
				<hr />
				<br />
			<% end_if %>

			<h2>Previously presented:</h2>

			<% loop $paginatedPreviousShows %>
				<div class="previous-shows">
					<% include ShowCard %>
				</div>
			<% end_loop %>

			<% with $paginatedPreviousShows %>
				<% include Pagination %>
			<% end_with %>
		</div>
	</div>
</div>

