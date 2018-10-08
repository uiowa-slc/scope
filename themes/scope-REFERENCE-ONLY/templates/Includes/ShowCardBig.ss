<% if $Date.isToday %>
	<h1 class="section-title">Today:</h1> 
<% else %>
	<h1 class="section-title">{$dateTime.Ago}:</h1> 
	
<% end_if %>

<hr />
	<article class="show-card row">
		 
		<div class="show-details large-7 columns">

			<% if $Artist %>
				<h1><a href="$Link">$Artist</a></h1>
			<% else %>
				<h1><a href="$Link">$Title</a></h1>
			<% end_if %>
			<% include ShowDetails %>
			
			<p>$Content.Summary(75) <a href="$Link">Continue Reading</a></p>
			<% if $SpotifyEmbed %>
				$SpotifyEmbed
			<% end_if %>
					<h2>Share this event:</h2>
		<%-- Social  --%>
		<% include ShareButtons %>
		</div>
		<div class="lecture-image large-5 columns">
			<% if $Picture %>
				<a href="$Link"><img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" /></a>
			<% end_if %>
				<% include ShowCountdown %>
		</div>
	</article>