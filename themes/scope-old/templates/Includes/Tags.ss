<div class="tags">
		<h5>Tags:</h5>
		<div class="pclip"></div>
		<p class="tagsBody">
		<% loop SplitKeywords %>
			<a class="tag" href="{$BaseHref}home/SearchForm?Search={$Keyword}&action_results=Find+Tutors">$Keyword</a><% if Last %><% else %>,<% end_if %> 
			
		<% end_loop %>
		
		</p>
		<div class="clearfix"></div>
</div>
	