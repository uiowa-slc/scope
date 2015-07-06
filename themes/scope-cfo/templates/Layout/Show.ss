<%-- <div class="large-12 columns">
	<article class="row">
		<div class="lecture-details medium-8 large-7 columns">
			<% if $LectureTitle %>
				<h1>$LectureTitle</h1>
			<% else %>
				<h1>$Title</h1>
			<% end_if %>
			<% include LectureDetails %>
			<p>$Content</p>
		</div>
		<div class="lecture-image medium-4 large-5 columns">
			<% if $Picture %>
				<img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" />
			<% end_if %>
		</div>
	</article>
</div> --%>

<div class="large-12 columns">
	<article class="row">
		<div class="show-details medium-8 large-7 columns">

			<h1>$Title </h1>

			<% include ShowDetails %>
			<p>$Content</p>

		</div>
		<div class="lecture-image medium-4 large-5 columns">
			<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" />
			<% end_if %>
		</div>
	</article>	

	<%-- details  --%>
	<ul>
		<%-- spotify --%>
		<% if $SpotifyLink %>
		<li><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>
		<% end_if %>

		<%-- countdown to event  --%>
		<li>
			<ul>
				<p>Countdown to</p> 
				<li><strong>$Artist</strong></li>
				<li>$Venue $Time</li>
				<li>$Date.NiceUS </li>
				<li></li>
				<li></li>
			</ul>
		</li> <!-- end date -->

		<%-- Tickets  --%>
		<% if $BuyTicketsOnlineLink || $BuyTicketsInPersonLink %>
		<% if $SoldOut %>
		<p>This show is sold out!</p>

		<% else %>
		<li><h5>Get Tickets now:</h5><div>
			<ul>
				<% if $BuyTicketsOnlineLink %>
				<a href="{$BuyTicketsOnlineLink}?camefrom=ScopeWebsiteShowPage"><li><strong>Buy Tickets</strong><br>Online</li></a>
				<% end_if %>

				<% if $BuyTicketsInPersonLink %>
				<a href="{$BuyTicketsInPersonLink}"><li><strong>Buy Tickets</strong><br>In Person</li></a>
				<% end_if %>
			</ul>
			
		</div></li> <!-- end buy tix -->
		<% end_if %>
		<% end_if %> <!-- end buy tix -->


		<li><h5>Share this event:</h5>
			<ul class="social-small">


				<%-- Social  --%>

				<li><div class="fb-like" data-href="{$AbsoluteBaseURL}{$URLSegment}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>



				<li class="twitterSocial"><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="$AbsoluteLink" data-text="<% if TwitterText %>$TwitterText<% else %>Check out $Title by SCOPE Productions!<% end_if %>">Tweet</a></li>

				<!--<li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en">Tweet</a></li>-->


				<% if Picture %>

				<li><a class="pin scopePinterest" href="http://pinterest.com/pin/create/button/?url={$AbsoluteLink}&media={$Picture.AbsoluteURL}&description={$Content.Summary(100)}" title="Pin It"  ><img border="0" src="//assets.pinterest.com/images/PinExt.png"  title="Pin It" /></a></li>
				<% end_if %>

				<li><a href="http://www.tumblr.com/share/" class="tumblr"><img src="/scope/themes/scope-redesign/images/tumblr.png" alt="Tumblr Button"/></a></li>


			</ul>
		</li>


	</ul>
</div>




