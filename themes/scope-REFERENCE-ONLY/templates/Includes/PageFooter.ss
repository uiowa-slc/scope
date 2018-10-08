

<div class="row gray collapse <% with Page("blog") %><% if $Entries %>social-blog<% end_if %><% end_with %>">

	<div class="large-7 columns">
		<div class="row">
			<% with Page("blog") %>
				<% if $BlogPosts %>
					<% loop $BlogPosts.Limit(2) %>
						<div class="large-6 columns">
							<div class="blogsnippit">
								<h5 class="intro">From the Blog</h5>
								<h3 class="title"><a href="$Link">$Title</a></h3>
								<p>$Content.LimitCharacters(180)</p>
								<a href="$Link" class="anchor">read more</a>
							</div>
						</div>
					<% end_loop %>
				<% else %>
				<div class="large-12 columns">
					<hr />
					<p>There aren't any blog entries yet.</p>
				</div>
				<% end_if %>
			<% end_with %>
		</div>
	</div>
	<div class="large-5 columns white">
		<% include FBPage %>
	</div>



</div>
