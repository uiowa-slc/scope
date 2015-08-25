<div class="<% if $Children || $Parent %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article class="row">
		<div class="show-details medium-8 large-7 columns">

			<h1>$Title</h1>
			<% if $Position %><h3>$Position</h3><% end_if %>
			<% if $EmailAddress %>
				<p>
					<% if $EmailAddress %>Email: <a href="mailto:$EmailAddress">$EmailAddress</a><% end_if %>
				</p>
			<% end_if %>
			$Content

		</div>
		<div class="lecture-image medium-4 large-5 columns">
			<% if $Photo %>
			<img src="$Photo.CroppedFocusedImage(600,700).URL" alt="Photo of $Title" />
			<% end_if %>
		</div>
	</article>	
</div>
<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
	<div class="large-3 columns content-right">
		<br>
		<% include SideNav %>
	</div>
<% end_if %>




