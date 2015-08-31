<div class="large-12 columns">
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
			<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" />
			<% end_if %>
			<% include ShowCountdown %>
<%-- spotify --%>

		<h2>Share this event:</h2>
		<%-- Social  --%>


		<% include ShareButtons %>

		</div>
	</article>	

</div>
