<% include Header %>

<div class="container-xl my-5">
	<div class="row">
		<div class="col">
			<article>
				<h1>$Title</h1>
				<div class="content">$Content</div>
			</article>
			$Form
			$PageComments

		</div>
		<% if $Menu(2) || $SideBarView.Widgets %>
			<% include SideBar %>
		<% end_if %>
	</div>
</div>

