<ul class="side-nav">
	<% if $Parent.Parent %>
		<% with $Parent.Parent  %>
			<% include SideNavMenuItems %>
		<% end_with %>
	<% else_if $Parent %>
		<% with $Parent %>
			<% include SideNavMenuItems %>
		<% end_with %>
	<% else %>
		<% include SideNavMenuItems %>
	<% end_if %>
</ul>
<section class="upcoming-shows">
	<% if UpcomingShows %>
		<h2>Next: </h2>
		<% loop UpcomingShows %>
			<a href="$Link">$picture.CroppedFocusedImage(250,250)</a>
			<h3><a href="$Link">$Title.LimitWordCount(5)</a></h3>
			<p> $Date.format(F) $Date.format(j), $Date.format(Y) $Time</p>
		<% end_loop %>

	<% else %>
		<h3>No upcoming shows scheduled.</h3>
	<% end_if %>
</section>
<hr />
<ul class="side-nav">
		<h4>Previous Shows:</h4>
		
		 	<% loop PreviousShows.Limit(10) %>
		 		<% include SideNavMenuItem %>
		 	<% end_loop %>
		
		 <li><a href="{$BaseHref}shows">See all previous shows</a></li>
</ul>

<!-- FIX -->

<p><a href="{$BaseHref}contact">To request a lecture, contact the UI Lecture Committee.</a></p>