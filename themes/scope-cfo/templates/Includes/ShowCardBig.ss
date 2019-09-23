<% if $Date.isToday %>
	<h1 class="section-title">Today:</h1> 
<% else %>
	<h1 class="section-title">{$dateTime.Ago}:</h1> 
	
<% end_if %>

<hr />
	<div class="row">
		<div class="large-12 columns large-centered">			

			<% if $Picture %>
			<img src="$Picture.ScaleWidth(1200).URL" alt="Poster for {$Title}. Please follow the link for more information." />
			<% end_if %>>
		</div>

	</div>
	<article class="show-card row">
		<div class="show-details large-7 columns large-centered">

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
	</article>