
<% include Header %>
</div>
<div class="contentwrapper">
<div id="Content" class="searchResults typography">
 
     
    <% if Query %>
        <h1><p class="searchQuery"><strong>Shows tagged with &quot;{$Query}&quot;</strong></p></h1>
    <% end_if %>
         
    <% if Results %>
    <ul id="SearchResults">
        <% control Results %>
        
        <div class="details detailsSearch">
        <div class="description">
        
        <li>
            <a class="searchResultHeader" href="$Link">
                <% if MenuTitle %>
               		 <div class="searchTitle"><h2>$MenuTitle</h2></div>
                <% else %>
                	<div class="searchTitle"><h2>$Title</h2></div>
                <% end_if %>
                <% if Picture %>
                 	<div class="searchPicture">$Picture.SetWidth(485).SetHeight(258)</div>
                 <% end_if %>
            </a>
            <p>$Content.LimitWordCountXML</p>
        <div class="descriptionSearch">              
	        <% if MetaKeywords %>   
	           <div class="tags tagsSearch">
		           <h5>Tags:</h5>
		           <div class="pclip"></div>
		           <p class="tagsBody">
			           <% loop SplitKeywords %>
			           		<a href="{$BaseHref}home/SearchForm?Search={$Keyword}&action_results=Find+Tutors">$Keyword</a><% if Last %><% else %>,<% end_if %> 
				
			           	<% end_loop %>
			
			       </p>
			       <div class="clearfix"></div>
			   </div>
			<% end_if %>
		</div>              
        <div class="clear"></div>
        <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about {$Title}...</a>
        </li>
        
        </div>
        </div>
        
        <% end_control %>
    </ul>
    <% else %>
    <p>Sorry, your search query did not return any results.</p>
    <% end_if %>
             
    <% if Results.MoreThanOnePage %>
    <div id="PageNumbers">
        <div class="pagination">
            <% if Results.NotFirstPage %>
            <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
            <% end_if %>
            <span>
                <% control Results.Pages %>
                    <% if CurrentBool %>
                    $PageNum
                    <% else %>
                    <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                    <% end_if %>
                <% end_control %>
            </span>
            <% if Results.NotLastPage %>
            <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
            <% end_if %>
        </div>    
        <p>Page $Results.CurrentPage of $Results.TotalPages</p>
    </div>
    <% end_if %>
</div>


<% include Footer %>

