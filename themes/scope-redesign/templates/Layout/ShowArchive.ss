<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% include Header %>

<div class="section" id="shows">
	<h1>Shows Archive</h1>
		
	
<div id="paginate">	

<% if ArchivePaginatedPages.MoreThanOnePage %>

	<div id="paginate">	
	
    <% if ArchivePaginatedPages.NotFirstPage %>
        <a class="prev" href="$ArchivePaginatedPages.PrevLink">Prev</a>
    <% end_if %>	

	<% loop ArchivePaginatedPages.Pages %>	
		<% if CurrentBool %>
	         <span>$PageNum</span>
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
	 
	 </div> <!--end paginate div -->
	 
<% end_if %>  


<% loop ArchivePaginatedPages %>   
 
<div class="details"  id="imu-main-lounge">
	<div class="description venue">
			
		<% if Picture %>
			<img id="venue_section" src="$Picture.URL"/>
		<% end_if %>
		
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
					
		<li><div class="fb-like" data-href="{$AbsoluteBaseURL}{$URLSegment}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
		
		<li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en">Tweet</a></li>

		<li><a class="pin" href="http://pinterest.com/pin/create/button/?url={$AbsoluteBaseURL}{$URLSegment}&media={$AbsoluteBaseURL}{$Picture.Filename}&description={$Content.Summary(100)}" title="Pin It"><img border="0" src="//assets.pinterest.com/images/PinExt.png" title="Pin It" /></a></li>
		
		<!--<li><a href="{$TumblrLink}" class="tumblr"><img src="/scope/themes/scope-redesign/images/tumblr.png"/></a></li>-->
		
		<li><a href="http://www.tumblr.com/share" title="Share on Tumblr" style="display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url('http://platform.tumblr.com/v1/share_2.png') top left no-repeat transparent;">Share on Tumblr</a></li>
					
		</ul> <!-- end ul class social small -->
		</div><!-- end get tix div --></li> <!-- end li div class get tix -->
		
		<div class="clear"></div>
		
		<% if PhotoGallery1 %>
		<h5 class="photo-gallery-link"><a href="$PhotoGallery1.Link" class="single_image">Photo Gallery</a></h5>
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
		
		<% if PhotoGallery5 %>
			<div class="photo_gallery" id="photo_gallery{$Pos}">
				<ul>
					<% if PhotoGallery5 %>
						<li><a class="single_image" href="{$PhotoGallery5.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery5</a></li>		
					<% end_if %>
					<% if PhotoGallery6 %>
						<li><a class="single_image" href="{$PhotoGallery6.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery6</a></li>		
					<% end_if %>
					<% if PhotoGallery7 %>
						<li><a class="single_image" href="{$PhotoGallery7.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery7</a></li>		
					<% end_if %>
					<% if PhotoGallery8 %>
						<li><a class="single_image" href="{$PhotoGallery8.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery8</a></li>		
					<% end_if %>
				</ul>
			</div>	  
	  <% end_if %>
	  
		</ul> <!-- end ul in div class extras -->
		
	</div> <!-- end extras  -->

<% end_loop %>

</div> <!-- end section shows div-->

</div>
<div class="clear"></div>
<% if ArchivePaginatedPages.MoreThanOnePage %>

	<div id="paginate">	
	
    <% if ArchivePaginatedPages.NotFirstPage %>
        <a class="prev" href="$ArchivePaginatedPages.PrevLink">Prev</a>
    <% end_if %>	

	<% loop ArchivePaginatedPages.Pages %>	
		<% if CurrentBool %>
	         <span>$PageNum</span>
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
	 
	 </div> <!--end paginate div -->
	 
<% end_if %>  

<% include Footer %>	





