<div class="large-12 columns">

	<div class="row">
		<div class="large-12 columns large-centered">			

			<% if $Picture %>
			<img src="$Picture.ScaleWidth(1200).URL" alt="" role="presentation" />
			<% end_if %>
			<% include ShowCountdown %>

		</div>

	</div>
	<article class="row">
		<div class="show-details medium-8 large-7 columns">
			<h1>$Title </h1>
			<% include ShowDetails %>
			<p>$Content</p>
			<% if $SpotifyEmbed %>
				$SpotifyEmbed
			<% end_if %>
		</div>
		<div class="lecture-image medium-4 large-5 columns">

<%-- spotify --%>

		<h2>Share this event:</h2>
		<%-- Social  --%>


		<% include ShareButtons %>

		</div>
	</article>	

</div>
