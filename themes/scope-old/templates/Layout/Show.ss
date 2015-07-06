<% include Header %>

<div class="section" id="venues">
	<h1>$Artist</h1>

<div class="details"  id="imu-main-lounge">
	<div class="description venue">
		
		<img id="venue_section" src="$Picture.URL"/>
		<a href="{$Link}"><h2>$Title</h2></a>
		<h5 class="date">$Venue $Time <br> $Date.NiceUS</h5>
            	<p>$Content<p>
	</div>
</div>
	<div class="extras">
		<ul>
			<% if $SpotifyLink %>
			<li class="iframe"><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>
			<% end_if %>
			
			<li><div class="date">
				<ul>
					<p id="countdownText" style="display: inline;">Countdown to</p> 
					<li><strong>$Artist</strong></li>
					<li>$Venue $Time</li>
					<li>$Date.NiceUS </li>
					<li><div id="countdown"></div></li>
					<li id="note"></li>
				</ul>
			</div></li> <!-- end date -->
			
			<% if $BuyTicketsOnlineLink || $BuyTicketsInPersonLink %>
			<% if $SoldOut %>
				<p class="sold-out">This show is sold out!</p>
			<% else %>
			<li class="get_tix"><h5>Get Tickets now:</h5><div>
				<ul>
					<% if $BuyTicketsOnlineLink %>
					<a href="{$BuyTicketsOnlineLink}?camefrom=ScopeWebsiteShowPage" class="tix"><li><strong>Buy Tickets</strong><br>Online</li></a>
					<% end_if %>
					
					<% if $BuyTicketsInPersonLink %>
					<a href="{$BuyTicketsInPersonLink}"class="tix"><li><strong>Buy Tickets</strong><br>In Person</li></a>
					<% end_if %>
				</ul>
			
			</div></li> <!-- end buy tix -->
			<% end_if %>
			<% end_if %> <!-- end buy tix -->
			
			<div class="clear"></div>
			
			<li><div class="get_tix"><h5>Share this event:</h5>
					<ul class="social-small">

		<!--<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande" id="scopeFacebook"></div></li>-->


		<li><div class="fb-like" data-href="{$AbsoluteBaseURL}{$URLSegment}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>

		

		<li class="twitterSocial"><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="$AbsoluteLink" data-text="<% if TwitterText %>$TwitterText<% else %>Check out $Title by SCOPE Productions!<% end_if %>">Tweet</a></li>
		
		<!--<li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en">Tweet</a></li>-->

		
		<% if Picture %>
		<li><a class="pin scopePinterest" href="http://pinterest.com/pin/create/button/?url={$AbsoluteLink}&media={$Picture.AbsoluteURL}&description={$Content.Summary(100)}" title="Pin It"  ><img border="0" src="//assets.pinterest.com/images/PinExt.png"  title="Pin It" /></a></li>
		<% end_if %>
		
		<li><a href="http://www.tumblr.com/share/" class="tumblr"><img src="/scope/themes/scope-redesign/images/tumblr.png" alt="Tumblr Button"/></a></li>
				
		<!--<li><a href="http://www.tumblr.com/share/link?url={$AbsoluteLink}&description=$Content.LimitWordCountXML(50)" title="Share on Tumblr" class="scopeTumblr" style="display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url('http://platform.tumblr.com/v1/share_2.png') top left no-repeat transparent;">Share on Tumblr</a></li>-->
		
		</ul> <!-- end ul class social small -->
		</div><!-- end get tix div --></li> <!-- end li div class get tix -->
		
		<div class="clear"></div>
		
		<% if $PhotoGallery1 %>
		<li>

			<div class="photo_gallery">
				<ul>
					<li><a class="single_image" href="{$PhotoGallery1.Link}" rel="sidebar_gallery">$PhotoGallery1</a></li>
					<li><a class="single_image" href="{$PhotoGallery2.Link}" rel="sidebar_gallery">$PhotoGallery2</a></li>
					<li><a class="single_image" href="{$PhotoGallery3.Link}" rel="sidebar_gallery">$PhotoGallery3</a></li>
					<li><a class="single_image" href="{$PhotoGallery4.Link}" rel="sidebar_gallery">$PhotoGallery4</a></li>					
				</ul>
	  </div> <!-- end photo_gallery -->
	  	</li> <!-- end toggle li -->
	  	<% end_if %>
		</ul> <!-- end ul in div class extras -->
		
	</div> <!-- end extras  -->

</div> <!-- end section shows div-->

	<div class="clear"></div>
	
<% include Footer %>

<script>	
   	var timestamp = {$getTimestamp};
	ts = new Date(timestamp * 1000);
	
	/*
	
	var year = timestamp.getYear();
	var month = timestamp.getMonth();
	var day = timestamp.getDay();
	var hour = timestamp.getHours();
	var minutes = timestamp.getMinutes();
	
	*/
	
	//ts = new Date(year, month, day, hour, minutes);
	
	//alert(ts);


	var timestamp = {$getTimestamp};
	ts = new Date(timestamp * 1000);
    cd = '#countdown';
    no = '#note';
    temp = startCountdown(ts,cd,no);
	
	if (ts < new Date()){					    
		var removeDiv = $('#countdown');
		removeDiv.hide();
		var removeP = $('#countdownText');
		removeP.hide();
	}

	
</script>









