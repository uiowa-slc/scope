<% if $First %><h1 class="section-title">Next Up:</h1> <hr /><% end_if %>
	<article class="show-card row">

		<div class="show-details large-7 columns">
			<% if $Artist %>
				<h1><a href="$Link">$Artist</a></h1>
			<% else %>
				<h1><a href="$Link">$Title</a></h1>
			<% end_if %>
			<% include ShowDetails %>
			<p>$Content.Summary(75) <a href="$Link">Continue Reading</a></p>
		</div>
		<div class="lecture-image large-5 columns">
			<% if $Picture %>
				<a href="$Link"><img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" /></a>
			<% end_if %>
		</div>
	</article>
	<% if not $Last %>
	<hr />
	<% end_if %>