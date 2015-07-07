 <% if $UpcomingShows %>
 <div class="large-12 columns">
 	<section id="upcoming-shows" class="row">

 		<% loop UpcomingShows %>
 			<% include ShowCardBig %>


 		<% end_loop %>

 		</section>
 	</div>
 	<% end_if %>
 </div><!-- end main-content from ../Page.ss -->
</div><!-- end main from ../Page.ss -->

<div class="previous-shows-container">
	<section id="previous-shows">
		<% if not $UpcomingShows %>
		<div class="no-upcoming-content">$Content</div>
		<% end_if %>
		<h1 class="section-title">Previously presented:</h1>
		<hr />
		<ul class="xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
			<% loop paginatedPreviousShows %>
				<li><% include ShowCard %></li>
			<% end_loop %>
			</ul>
			<% include ShowPagination %>
		</section>
	</div> 