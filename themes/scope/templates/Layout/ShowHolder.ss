<% include Header %>


<div class="container-xl">
	<div class="row">
		<div class="col">

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
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-8">
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

