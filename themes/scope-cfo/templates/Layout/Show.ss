<div class="large-12 columns">
	<article class="row">
		<div class="show-details medium-8 large-7 columns">

			<h1>$Title </h1>

			<% include ShowDetails %>
			<p>$Content</p>

		</div>
		<div class="lecture-image medium-4 large-5 columns">
			<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" />
			<% end_if %>
<%-- spotify --%>
		<% if $SpotifyLink %>
			<li><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>
		<% end_if %>
		<h2>Share this event:</h2>
		<%-- Social  --%>


		<p><a class="button facebook" href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}">Facebook</a> <a href="https://twitter.com/share" class="button twitter" data-lang="en" data-url="$AbsoluteLink" data-text="Check out $Title by SCOPE Productions!">Twitter</a>

		</div>
	</article>	

</div>




