
<a href="#" id="back_to_top" onclick="Header.back_to_top(); return false;" style="display: block; ">Back to Top</a>
	<div id="header">
		<a href="http://www.uiowa.edu/" class="uiowa-logo"><img src="{$ThemeDir}/images/uiowa-logo.png" /></a>
		<% if SearchForm %>
	    <span class="search-dropdown-icon"></span>
	    
	        $SearchForm
    
	<% end_if %>
	
		<h1 class="scope_title"><a href="{$BaseHref}"><img src="{$ThemeDir}/images/scope-masthead.png" /></a></h1>	
				   
	</div> <!-- end header div -->
	
	<div class="contentwrapper_top">
	<div class="nav">
		<ul class="social">
			
			<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande" id="scopeFacebook"></div></li>
			
			<li class="scopeTwitter"><a href="https://twitter.com/uiSCOPE" class="twitter-follow-button"  data-show-count="false" data-show-screen-name="false">Follow @uiSCOPE</a>
</li>

			<!--<li><a class="pin scopePinterest" href="http://pinterest.com/USERNAME/"><img src="http://passets-ec.pinterest.com/images/about/buttons/pinterest-button.png" width="60" height="21" alt="Follow Me on Pinterest" /></a></li>-->
			
			<li><a href="http://scopeproductions.tumblr.com/" class="scopeTumblr tumblrHeader"><img src="{$ThemeDir}/images/tumblr.png"/></a></li>
			
		</ul>
		
		<ul class="links">
			<a href="{$BaseHref}#home"><li>Home</li></a>
			<a href="{$BaseHref}#shows"><li>Shows</li></a>
			<a href="{$BaseHref}#venues"><li>Venues</li></a>
			<a href="{$BaseHref}show-archive"><li>History</li></a>
			<a href="{$BaseHref}#about"><li>About</li></a>
			<a href="{$BaseHref}#contact"><li>Contact</li></a>
		</ul>
	</div> <!-- end nav div -->
	<div class="clear"></div> 
