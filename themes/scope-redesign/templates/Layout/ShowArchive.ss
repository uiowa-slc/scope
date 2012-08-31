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
 

<div class="details" >
	<div class="description">
			
		<a href="{$Link}"><img id="show_image" src="$Picture.URL"/></a>
		
		<a href="{$Link}"><h2>$Artist</h2></a>
		<h5 class="date">$Venue $Time <br>$getFormattedDate</h5>
            	<p>$Content.Summary(100)<p>
				<div class="button"><a href="$Link">See More</a></div>
	</div>
</div>
	<div class="extras">
		<ul>
			<% if SpotifyLink %>
				<li class="iframe"><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>
			<% end_if %>
			<li><div class="date">
				<ul>

					<li><strong><a href="$Link">$Artist</a></strong></li>

					<li>$Venue</li>
					<li>$Date.NiceUS</li>
					<% if DoorsOpenTime %>
						<li>Doors open at: $DoorsOpenTime</li>						
					<% end_if %>
					<li>Show starts at: $Time</li>
					
					<li><div id="countdown{$Pos}"></div></li>
										
					<li id="note{$Pos}"></li>
					
				</ul>
			</div></li> <!-- end date -->
			<% if $BuyTicketsOnlineLink || $BuyTicketsInPersonLink %>
			<li class="get_tix"><h5>Get Tickets now:</h5><div>
				<ul>
					<% if $BuyTicketsOnlineLink %>
					<a href="{$BuyTicketsOnlineLink}" class="tix"><li><strong>Buy Tickets</strong><br>Online</li></a>
					<% end_if %>
					
					<% if $BuyTicketsInPersonLink %>
					<a href="{$BuyTicketsInPersonLink}"class="tix"><li><strong>Buy Tickets</strong><br>In Person</li></a>
					<% end_if %>
				</ul>
			
			</div></li> <!-- end buy tix -->
			<% end_if %>
			<div class="clear"></div>
			
			<li><div class="get_tix"><h5>Share this event:</h5>
					<ul class="social-small">
		
		<li><div class="fb-like" data-href="{$AbsoluteBaseURL}{$URLSegment}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
		
		<li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en">Tweet</a></li>

		<li><a class="pin" href="http://pinterest.com/pin/create/button/?url={$AbsoluteBaseURL}{$URLSegment}&media={$AbsoluteBaseURL}{$Picture.Filename}&description={$Content.Summary(100)}" title="Pin It"><img border="0" src="//assets.pinterest.com/images/PinExt.png" title="Pin It" /></a></li>
		
		<!--<li><a href="{$TumblrLink}" class="tumblr"><img src="/scope/themes/scope-redesign/images/tumblr.png"/></a></li>-->
		
		<li><a href="http://www.tumblr.com/share" title="Share on Tumblr" style="display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url('http://platform.tumblr.com/v1/share_2.png') top left no-repeat transparent;">Share on Tumblr</a></li>
		
		</ul> <!-- end ul class social small -->
		</div><!-- end get tix div --></li> <!-- end li div class get tix -->
		
		<div class="clear"></div>
		
		<li>
		
		
		<% if PhotoGallery1 %>
		<h5><a href="$PhotoGallery1.Link" class="single_image">Photo Gallery</a></h5>
			<div class="photo_gallery" id="photo_gallery{$Pos}">
				<ul>
				   <% if PhotoGallery1 %>
						<li><a class="single_image" href="{$PhotoGallery1.Link}" rel="sidebar_gallery-{$ID}"><img src="$PhotoGallery1.Link"/></a></li>
					<% end_if %>
					<% if PhotoGallery2 %>
						<li><a class="single_image" href="{$PhotoGallery2.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery2</a></li>
					<% end_if %>
					<% if PhotoGallery3 %>
						<li><a class="single_image" href="{$PhotoGallery3.Link}" rel="sidebar_galler-{$ID}">$PhotoGallery3</a></li>
					<% end_if %>
					<% if PhotoGallery4 %>
						<li><a class="single_image" href="{$PhotoGallery4.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery4</a></li>		
					<% end_if %>
				</ul>
	  </div> <!-- end photo_gallery -->
	  <% end_if %>
	  	</li> <!-- end toggle li -->
	 
		</ul> <!-- end ul in div class extras -->
		
	</div> <!-- end extras  -->
<% end_loop %>

</div> <!-- end section shows div-->

<% include Footer %>	





