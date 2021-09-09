<% include Header %>

<main class="container-xl my-5" id="content">
	<%--only show upcoming shows on index page (not archival "year/xxx" urls etc) --%>
	<% if $Action == "index" %>
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
    <% end_if %>
    <div class="row">
        <div class="col">
            <h2 class="my-3 my-md-4">Previously Presented:</h2>
        </div>
    </div>
    <div class="row">

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
        <div class="col-md-3">
            <nav class="nav nav-pills flex-column sticky-top">
            	<% loop $Years.Sort('Year DESC') %>
            		<a class="nav-item nav-link <% if $Active %>active<% end_if %>" href="$Link">$Year</a>
            	<% end_loop %>
            </nav>
        </div>
	</div>
</main>

