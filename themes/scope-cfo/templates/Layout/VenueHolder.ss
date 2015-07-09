<% include Header %>


<div>
	<% loop ChildrenOf(venues) %>

		<img src="$Picture.URL"/>
		<a href="{$Link}"><h2>$Title</h2></a>
            	<p>$Content<p>
	<% end_loop %>

</div>
