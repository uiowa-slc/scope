<%-- <% include Header %>


<div>
	<% loop ChildrenOf(venues) %>

		<img src="$Picture.URL"/>
		<a href="{$Link}"><h2>$Title</h2></a>
            	<p>$Content<p>
	<% end_loop %>

</div>
 --%>




<div class="<% if $Children || $Parent ||$InSection("sponsorships") || $InSection("contact") || $InSection("about") %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article class="article">



	<% loop ChildrenOf(venues) %>

		<img src="$Picture.URL"/>
		<h2><a href="{$Link}">$Title</h2></a>
            	<p>$Content<p>
	<% end_loop %>



	</article>
</div>
<% if $InSection("sponsorships") || $InSection("contact") || $InSection("about")||$Children || Parent%><%--Determine if Side Nav should be rendered, you can change this logic--%>
<div class="large-3 columns content-right">
	<br>
	<% include SideNav %>
</div>
<% end_if %>
