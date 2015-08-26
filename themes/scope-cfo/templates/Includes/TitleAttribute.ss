	<title>
	<% if $UpcomingShows %>
		<% loop UpcomingShows %> 
			{$Title},
		<% end_loop %>
		happening now from Scope Productions! - The University of Iowa
	<% else %>
		Scope Productions - The University of Iowa
	<% end_if %>
	</title>