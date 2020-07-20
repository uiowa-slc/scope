<% include Header %>

<main class="container-xl my-5" id="content">
	<div class="row">
		<div class="col">
			<% if $UpcomingShows %>
				<h1 class="text-center">Upcoming Shows</h1>
                <br>
				<div class="upcoming-shows">
					<% loop $UpcomingShows %>
						<% include ShowCard %>
					<% end_loop %>
				</div>
				<br />
				<hr />
			<% end_if %>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h2 class="my-3 my-md-4">Previously Presented:</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <nav class="nav nav-pills flex-column sticky-top">
                <a class="nav-item nav-link active" href="#">All</a>
                <a class="nav-item nav-link " href="#">2020</a>
                <a class="nav-item nav-link" href="#">2019</a>
                <a class="nav-item nav-link" href="#">2018</a>
                <a class="nav-item nav-link" href="#">2017</a>
                <a class="nav-item nav-link" href="#">2016</a>
            </nav>
        </div>
        <div class="col-md-9">
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
</main>

