<% if $paginatedPreviousShows.MoreThanOnePage%>
<div class="pagination-centered">
	<ul class="inline-list pagination">
	<% if $paginatedPreviousShows.NotFirstPage %>
   		<li class=""><a class="next" href="$paginatedPreviousShows.PrevLink()#previous-shows">Later</a></li>
		<% end_if %>
	<% loop $paginatedPreviousShows.PaginationSummary(10) %>
		<% if $PageNum = $Up.CurrentPage %>
			<li class="curPage"><a href="$Link#previous-shows">$PageNum</li>
			<% else %>
			<li class=""><a href="$Link#previous-shows">$PageNum</li>
			<% end_if %>
		<% end_loop %>
		<% if $paginatedPreviousShows.NotLastPage %>
		<li class=""><a class="prev" href="$paginatedPreviousShos.NextLink()#previous-shows">Earlier</a></li>
	<% end_if %>
	</ul>
</div>
<% end_if %>
<div class="clearfix"></div>