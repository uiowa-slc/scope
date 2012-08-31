

<% include Header %>
	
	<div class="main">
		<div class="overlay"><img src="{$ThemeDir}/images/main.png"/></div>
		<% with FeaturedPage %>
		
		$Picture	
		
		<h2><a href="$Link" id="FeaturedArtist">$Artist</a></h2>
		<!--<h4>Featured Show</h4>-->
		
		<div class="main_info">
			<ul>
			
				<li>$Date.NiceUS</li>
			
			</ul>
			
			<ul>
				<li>$Venue</li>
				<li>$Time</li>
			</ul>
			
			<div class="clear"></div>
			
			<% if $BuyTicketsOnlineLink %>

				<a href="$BuyTicketsOnlineLink"><h3>Buy Tickets</h3></a>
			
			<% end_if %>
			
			<% end_with %>
			
		</div> <!-- end main_info div -->
	</div> <!-- end main div --> 

	<div class="twitter">
		<img src="{$ThemeDir}/images/twitter-bird.png"/><h5>@uiSCOPE</h5>
		<div id="twitter_update_list"></div>
	</div>

<!-- PARALLAX STUFF--> 
<div id="parallax-stuff">
	<div class="bk bk_0"></div>
	<div class="bk bk_1"></div>
	<div class="bk bk_2"></div>
	
	
	<div class="img_1"></div>
	<div class="img_2"></div> 	
</div>
	
<!-- 03 SHOWS SECTION -->


<div class="section" id="shows">
	<h1>Shows</h1>
	<h4><a href="{$AbsoluteBaseURL}show-archive" id="showarchive" >To Show Archive >></a></h4><br> 		
	


<% loop PaginatedPages %>   

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

					<% if $Pos==1 %>
						Countdown to 
					<% end_if %>
					<li><strong><a href="$Link">$Artist</a></strong></li>

					<li>$Venue</li>
					<li>$Date.NiceUS</li>
					<% if DoorsOpenTime %>
						<li>Doors open at: $DoorsOpenTime</li>						
					<% end_if %>
					<li>Show starts at: $Time</li>
					
					<li><div id="countdown{$Pos}"></div></li>
										
					<li id="note{$Pos}"></li>
										
					<script>
					
					var timestamp = {$getTimestamp};
					ts = new Date(timestamp * 1000);
				    cd = '#countdown{$Pos}';
				    no = '#note{$Pos}';
					temp = startCountdown(ts,cd,no);
	
					if (ts < new Date()){					    
						var removeDiv = $('#countdown{$Pos}');
						removeDiv.hide();
					}

					</script>
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


<!-- 04 VENUES SECTION-->	

<div class="clear"></div>

<div class="section" id="venues">
	<h1>Venues</h1>
<% loop ChildrenOf(venues) %>


<div class="details"  id={$URLSegment}>
	<div class="description venue">
		
		<a href="{$Link}"><img id="venue_section" src="$Picture.URL"/></a>
		<a href="{$Link}"><h2>$Title</h2></a>
            	<p>$Content<p>
	</div>
</div>
<div class="extras tech-info">
	<ul class="tech">
	<h5>Technical Information</h5>
	<li><div class="specs">
		<ul>
			<% if Capacity %>
				<li class="left">Capacity</li>
				<li>$Capacity</li>
				<div class="clear"></div>
			<% end_if %>				
		</ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if RoomDimensions %>
				<li class="left">Room Dimensions</li>
				<li>$RoomDimensions</li>
				<div class="clear"></div>
			<% end_if %>				
		  </ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if StageDimensions %>
				<li class="left">Stage</li>
				<li>$StageDimensions</li>
				<div class="clear"></div>
			<% end_if %>	
		  </ul>
	 </div></li>
		 <div class="clear"></div>
	</ul>
</div>


<% end_loop %>


<!-- 05 ABOUT SECTION -->

		<div class="clear"></div>
	
		<div class="section" id="about">
		<h1>About</h1>
		<div class="details">
		
		<% with getAboutPage %>
			
			<div class="description">
			<h2>About Us</h2>
			$Content
			
			<h2>Contact</h2>
				<p id="contact">
					$Contact
										
				</p>
				<br>
				<p id="contact">$Contact2
				</p>
				
			</div> <!-- end description div -->
		</div> <!-- end details div -->
		
		
		<div class="extras tech-info">
							
					<ul class="social-small">
			
					<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
					
					<li><a href="https://twitter.com/uiSCOPE" class="twitter-follow-button" data-show-count="false" data-show-screen-name="false">Follow @uiSCOPE</a>
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></li>
		
					<!--<li><a class="pin" href="http://pinterest.com/USERNAME/"><img src="http://passets-ec.pinterest.com/images/about/buttons/pinterest-button.png" width="60" height="21" alt="Follow Me on Pinterest" /></a></li>-->
			
			<li><a href="http://scopeproductions.tumblr.com/" class="tumblr"><img src="{$ThemeDir}/images/tumblr.png" id="tumblr"/></a></li>
			
					</ul>
			
			
					
				<div class="description">
				<h5>Stay updated with emails from SCOPE:</h5>
				
				<form action="http://uiowa.us2.list-manage2.com/subscribe/post?u=ecb2f1db3370a699762596aba&amp;id=9f325218d4" method="post" id="subscribe-form" name="subscribe-form" class="validate" target="_blank">
				<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required="">
				<div class="clear"><input type="submit" value="Subscribe" name="subscribe" class="button"></div>
				</form>
				
				</div> <!-- end description div -->
				
		</div>					
			
		</div> <!-- end extras div -->
		
		<% end_with %>	
    <% if ChildrenOf(StaffHolder) %>
		<% include StaffHolder %>
	<% end_if %>	
		</div> <!-- end section about div -->



	</div> <!-- end content wrapper div -->



<script src="http://twitter.com/javascripts/blogger.js"></script>

<script src="https://api.twitter.com/1/statuses/user_timeline.json?screen_name=uiscope&include_rts=true&count=1&callback=twitterCallback2"></script>
<!--	
<script>
					
	var timestamp = {$FeaturedPage.getTimestamp};
	ts = new Date(timestamp * 1000);
    cd = '#countdown2';
    no = '#note2';
	startCountdown(ts,cd,no);

</script>
-->		
<% include Footer %>	



	