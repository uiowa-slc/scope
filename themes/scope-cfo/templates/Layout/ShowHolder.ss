<%-- <% if $UpcomingLectures %>
<div class="large-12 columns">
	<section id="upcoming-lectures" class="row">
	
		<% loop UpcomingLectures %>
			<% include LectureCardBig %>
		<% end_loop %>
	
	</section>
</div>
<% end_if %>
</div><!-- end main-content from ../Page.ss -->
</div><!-- end main from ../Page.ss -->

<div class="previous-lectures-container">
	<section id="previous-lectures">
	<% if not $UpcomingLectures %>
		<div class="no-upcoming-content">$Content</div>
	<% end_if %>
		<h1 class="section-title">Previously presented:</h1>
		<hr />
		<ul class="xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
			<% loop paginatedPreviousLectures %>
	  			<li><% include LectureCard %></li>
			<% end_loop %>
		</ul>
		<% include LecturePagination %>
	</section>
</div> --%>

$helloWorld

<% if $PaginatedShows %>
<div class="large-12 columns">
	<section id="upcoming-shows" class="row">

		<% loop $PaginatedShows %>
			<% include ShowCardBig %>
		<% end_loop %>

		<% loop PaginatedShows %>   

		<div>
			<div>

				<a href="{$Link}">
					<img src="$Picture.SetWidth(595).URL" alt="Image representing $Artist" />
				</a>

				<a href="{$Link}"><h2>$Artist</h2></a>
				<h5>$Venue $Time <br>$Date.Format("l, F j")</h5>
				<p>$Content.Summary(100)<p>
					<div><a href="$Link">See More</a></div>
				</div>
			</div>
			<!-- Social -->
			<div>
				<ul>
					<% if SpotifyLink %>
					<!--<li class="iframe"><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>-->
					<% end_if %>
					<li><div >
						<ul>
							<p>Countdown to</p> 

							<li><strong><a href="$Link">$Artist</a></strong></li>

							<li>$Venue</li>
							<li>$Date.NiceUS</li>
							<% if DoorsOpenTime %>
							<li>Doors open at: $DoorsOpenTime</li>						
							<% end_if %>
							<li>Show starts at: $Time</li>

							<li><div></div></li>

							<li></li>

							<script>

								var timestamp = {$getTimestamp};
								ts = new Date(timestamp * 1000);
								cd = '#countdown{$Pos}';
								no = '#note{$Pos}';
								temp = startCountdown(ts,cd,no);

								if (ts < new Date()){					    
									var removeDiv = $('#countdown{$Pos}');
									removeDiv.hide();
									var removeP = $('#countdownText{$Pos}');
									removeP.hide();
								}

							</script>
						</ul>
					</div></li> <!-- end date -->
					<% if $BuyTicketsOnlineLink || $BuyTicketsInPersonLink %>
					<% if $SoldOut %>
					<p>This show is sold out!</p>
					<% else %>
					<li><h5>Get Tickets now:</h5><div>
						<ul>
							<% if $BuyTicketsOnlineLink %>
							<a href="{$BuyTicketsOnlineLink}?camefrom=ScopeWebsiteHomePage"><li><strong>Buy Tickets</strong><br>Online</li></a>
							<% end_if %>

							<% if $BuyTicketsInPersonLink %>
							<a href="{$BuyTicketsInPersonLink}"<li><strong>Buy Tickets</strong><br>In Person</li></a>
							<% end_if %>
						</ul>


					</div></li>
					<% end_if %> <!-- end if sold out -->
					<% end_if %><!-- end buy tix -->

					<div></div>

					<li><div><h5>Share this event:</h5>
						<ul class="social-small">

							<li><div class="fb-like" data-href="{$AbsoluteLink}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
							<!--<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande" id="scopeFacebook"></div></li>-->

							<li class="twitterSocial"><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="$AbsoluteLink" data-text="<% if TwitterText %>$TwitterText<% else %>Check out $Title by SCOPE Productions!<% end_if %>">Tweet</a></li>

							<% if Picture %>
							<li><a class="pin scopePinterest" href="http://pinterest.com/pin/create/button/?url={$AbsoluteLink}&media={$Picture.AbsoluteURL}&description={$Content.Summary(100)}" title="Pin It"  ><img border="0" src="//assets.pinterest.com/images/PinExt.png"  title="Pin It" /></a></li>
							<% end_if %>

							<li><a href="http://www.tumblr.com/share/" class="tumblr"><img src="themes/scope-redesign/images/tumblr.png"alt="Tumblr Button"/></a></li>

							<!--<li><a href="http://www.tumblr.com/share/link/?url={$AbsoluteLink}" title="Share on Tumblr" class="scopeTumblr" style="display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url('http://platform.tumblr.com/v1/share_2.png') top left no-repeat transparent;">Share on Tumblr</a></li>-->

						</ul> <!-- end ul class social small -->
					</div><!-- end get tix div --></li> <!-- end li div class get tix -->




				</ul> <!-- end ul in div class extras -->

			</div> <!-- end extras  -->

			<% end_loop %>

		</div> <!-- end section shows div-->




		<% end_loop %>

	</section>
</div>
<% end_if %>
</div><!-- end main-content from ../Page.ss -->
</div><!-- end main from ../Page.ss -->

<div class="previous-shows-container">
	<section id="previous-shows">
		<% if not $UpcomingShows %>
		<div class="no-upcoming-content">$Content</div>
		<% end_if %>
		<h1 class="section-title">Previously presented:</h1>
		<hr />
		<ul class="xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
			<% loop paginatedPreviousShows %>
			<li><% include ShowCard %></li>
			<% loop PaginatedPages(Date) %>   

			<div>
				<div>

					<a href="{$Link}">
						<img src="$Picture.SetWidth(595).URL" alt="Image representing $Artist" />
					</a>

					<a href="{$Link}"><h2>$Artist</h2></a>
					<h5>$Venue $Time <br>$Date.Format("l, F j")</h5>
					<p>$Content.Summary(100)<p>
						<div><a href="$Link">See More</a></div>
					</div>
				</div>
				<!-- Social -->
				<div>
					<ul>
						<% if SpotifyLink %>
						<!--<li class="iframe"><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>-->
						<% end_if %>
						<li><div >
							<ul>
								<p>Countdown to</p> 

								<li><strong><a href="$Link">$Artist</a></strong></li>

								<li>$Venue</li>
								<li>$Date.NiceUS</li>
								<% if DoorsOpenTime %>
								<li>Doors open at: $DoorsOpenTime</li>						
								<% end_if %>
								<li>Show starts at: $Time</li>

								<li><div></div></li>

								<li></li>

								<script>

									var timestamp = {$getTimestamp};
									ts = new Date(timestamp * 1000);
									cd = '#countdown{$Pos}';
									no = '#note{$Pos}';
									temp = startCountdown(ts,cd,no);

									if (ts < new Date()){					    
										var removeDiv = $('#countdown{$Pos}');
										removeDiv.hide();
										var removeP = $('#countdownText{$Pos}');
										removeP.hide();
									}

								</script>
							</ul>
						</div></li> <!-- end date -->
						<% if $BuyTicketsOnlineLink || $BuyTicketsInPersonLink %>
						<% if $SoldOut %>
						<p>This show is sold out!</p>
						<% else %>
						<li><h5>Get Tickets now:</h5><div>
							<ul>
								<% if $BuyTicketsOnlineLink %>
								<a href="{$BuyTicketsOnlineLink}?camefrom=ScopeWebsiteHomePage"><li><strong>Buy Tickets</strong><br>Online</li></a>
								<% end_if %>

								<% if $BuyTicketsInPersonLink %>
								<a href="{$BuyTicketsInPersonLink}"<li><strong>Buy Tickets</strong><br>In Person</li></a>
								<% end_if %>
							</ul>


						</div></li>
						<% end_if %> <!-- end if sold out -->
						<% end_if %><!-- end buy tix -->

						<div></div>

						<li><div><h5>Share this event:</h5>
							<ul class="social-small">

								<li><div class="fb-like" data-href="{$AbsoluteLink}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
								<!--<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande" id="scopeFacebook"></div></li>-->

								<li class="twitterSocial"><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="$AbsoluteLink" data-text="<% if TwitterText %>$TwitterText<% else %>Check out $Title by SCOPE Productions!<% end_if %>">Tweet</a></li>

								<% if Picture %>
								<li><a class="pin scopePinterest" href="http://pinterest.com/pin/create/button/?url={$AbsoluteLink}&media={$Picture.AbsoluteURL}&description={$Content.Summary(100)}" title="Pin It"  ><img border="0" src="//assets.pinterest.com/images/PinExt.png"  title="Pin It" /></a></li>
								<% end_if %>

								<li><a href="http://www.tumblr.com/share/" class="tumblr"><img src="themes/scope-redesign/images/tumblr.png"alt="Tumblr Button"/></a></li>

								<!--<li><a href="http://www.tumblr.com/share/link/?url={$AbsoluteLink}" title="Share on Tumblr" class="scopeTumblr" style="display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url('http://platform.tumblr.com/v1/share_2.png') top left no-repeat transparent;">Share on Tumblr</a></li>-->

							</ul> <!-- end ul class social small -->
						</div><!-- end get tix div --></li> <!-- end li div class get tix -->




					</ul> <!-- end ul in div class extras -->

				</div> <!-- end extras  -->

				<% end_loop %>

			</div> <!-- end section shows div-->
			<% end_loop %>
		</ul>
		<% include ShowPagination %>
	</section>
</div> --%>