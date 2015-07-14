<%-- <a href="$Link" class="show-card-link"> --%>
	<article class="show-card">
		<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(500, 600).URL" alt="Photo representing $Title" />
		<% else %>
			<img src="{$ThemeDir}/images/lecture-placeholder.jpg" alt="Placeholder photo representing $Title" />
		<% end_if %>
			<% if $Artist %>
				<h1>$Title.LimitWordCount(10)</h1>
			<% else %>
				<h1>$Title.LimitWordCount(10)</h1>
			<% end_if %>
			<% include ShowDetails %>
			$Content.LimitWordCount(40) <strong><a href="$Link" class="show-card-link">Continue Reading</a></strong><a href="$Link" class="show-card-link"></a>
	</article>
<%-- </a> --%>