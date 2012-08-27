<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% include Header %>

<div class="section" id="shows">
	<h1>Shows Archive</h1>
		
	
<div id="paginate">	

<% if ArchivePaginatedPages.MoreThanOnePage %>
    <% if ArchivePaginatedPages.NotFirstPage %>
        <a class="prev" href="$ArchivePaginatedPages.PrevLink">Prev</a>
    <% end_if %>	

	<% loop ArchivePaginatedPages.Pages %>	
		<% if CurrentBool %>
	         $PageNum
	    <% else %>
	     	<% if Link %>
	            <a href="$Link">$PageNum</a>
	        <% else %>
	            
	        <% end_if %>
	    <% end_if %>
    
	 <% end_loop %>  
	 <% if ArchivePaginatedPages.NotLastPage %>
	 	<a class="next" href="$ArchivePaginatedPages.NextLink">Next</a>
	 <% end_if %>
<% end_if %>  
</div>

<% loop ArchivePaginatedPages %>   
 
<div class="details"  id="imu-main-lounge">
	<div class="description venue">
			
		<img id="venue_section" src="$Picture.URL"/>
		
		<a href="{$Link}"><h2>$Title</h2></a>
		<h5 class="date">$Venue $Time <br> $Date.NiceUS</h5>
            	<p>$Content.Summary(100)<p>
				<div class="button"><a href="$Link">See More</a></div>
	</div>
</div>
	<div class="extras">
		<ul>
			<% if $SpotifyLink %>
			<li class="iframe"><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>
			<% end_if %>
			
			<li><div class="date">
				<ul>
					<li><strong>$Artist</strong></li>
					<li>$Venue $Time</li>
					<li>$Date.NiceUS</li>
					<li id="note"></li>
				</ul>
			</div></li> <!-- end date -->
			
			<div class="clear"></div>
			
			<li><div class="get_tix"><h5>Share this event:</h5>
					<ul class="social-small">
		
		<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
		
		<li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en">Tweet</a></li>

		<li><a class="pin" href="http://pinterest.com/USERNAME/"><img src="http://passets-ec.pinterest.com/images/about/buttons/pinterest-button.png" width="60" height="21" alt="Follow Me on Pinterest" /></a></li>
		
		<li><a href="https://www.tumblr.com/register/follow/scopeproductions" class="tumblr"><img src="/scope/themes/scope-redesign/images/tumblr.png"/></a></li>
		</ul> <!-- end ul class social small -->
		</div><!-- end get tix div --></li> <!-- end li div class get tix -->
		
		<div class="clear"></div>
		
		<% if PhotoGallery1 %>
		<li><h5 class="toggle">Photo Gallery<h5>

			<div class="photo_gallery">
				<ul>
					<li><a class="single_image" href="{$PhotoGallery1.Link}" rel="sidebar_gallery"><img src="$PhotoGallery1.Link"/></a></li>
					<li><a class="single_image" href="{$PhotoGallery2.Link}" rel="sidebar_gallery">$PhotoGallery2</a></li>
					<li><a class="single_image" href="{$PhotoGallery3.Link}" rel="sidebar_gallery">$PhotoGallery3</a></li>
					<li><a class="single_image" href="{$PhotoGallery4.Link}" rel="sidebar_gallery">$PhotoGallery4</a></li>		
				</ul>
	  </div> <!-- end photo_gallery -->
	  	</li> <!-- end toggle li -->
	 <% end_if %>
		</ul> <!-- end ul in div class extras -->
		
	</div> <!-- end extras  -->

<% end_loop %>

</div> <!-- end section shows div-->





