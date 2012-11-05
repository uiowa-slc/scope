<!DOCTYPE html>
<head>
	<% base_tag %>
	
	<!--<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>-->
	
	
	<% if ClassName = HomePage %>
	
	<title>
	<% control getShows(3) %> $Artist, <% end_control %> happening now from Scope Productions! - The University of Iowa</title>
	 
	 <meta property="og:title" content="<% control getShows(3) %> $Artist, <% end_control %> happening now from Scope Productions!"/>
    <meta property="og:description"
          content="SCOPE Productions is the University of Iowa's Student Commission on Programming Entertainment. Based in Iowa City, Iowa, SCOPE is charged with bringing quality concerts and entertainment to the University of Iowa campus and the Iowa City community."/>
	
	<% else %>
			<title>$Title - Scope Productions - The University of Iowa</title>
			<meta property="og:title" content="$Title from Scope Productions"/>
		    <meta property="og:description"
		          content="$Content.LimitWordCountXML(50)"/>
	<% end_if %>
	
	
	<% if ClassName = Show %>
    	<meta property="og:type" content="activity"/>
    <% end_if %>
    
    <% if Picture %>
    <meta property="og:image" content="$Picture.AbsoluteURL"/>
    <% else %>
    
    	<% control getShows(1) %>
    		<meta property="og:image" content="$Picture.AbsoluteURL"/>
    	<% end_control %>
    
    <% end_if %>
    <meta property="og:site_name" content="SCOPE Productions"/>
    <meta property="og:url" content="$AbsoluteLink"/>

	
	
	<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--
	<[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Noticia+Text' rel='stylesheet' type='text/css'>
	<% require themedCSS(style) %>

	<% require themedCSS(reset) %>
	<% require themedCSS(typography) %>
	<% require themedCSS(form) %>	
	<% require themedCSS(layout) %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	<link href='http://fonts.googleapis.com/css?family=Karla:400,400italic,700,700italic' rel='stylesheet' type='text/css'>

		<script src="http://code.jquery.com/jquery-latest.js"></script>	
		<script src="themes/scope-redesign/assets/countdown/jquery.countdown.js"></script>
	    <script src="themes/scope-redesign/assets/js/countdownscript.js"></script>
	    <script src="themes/scope-redesign/assets/js/test.js"></script>
	    
		<link rel="stylesheet" href="{$ThemeDir}/js/fancybox/source/jquery.fancybox.css?v=2.1.0" type="text/css" media="screen" />
		<script type="text/javascript" src="{$ThemeDir}/js/fancybox/source/jquery.fancybox.pack.js?v=2.1.0"></script>
		
		
		<script src="themes/scope-redesign/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
		<script src="http://twitter.com/javascripts/blogger.js"></script>
		<script type="text/javascript" src="http://platform.tumblr.com/v1/share.js"></script>
				

<script>
$(document).ready(function () {
<!-- fancy box JavaScript -->
	$("a.single_image").fancybox();
});


jQuery(document).ready(function($) {
    a=parseFloat(400);// Initial value for the first background (bk 0)
    b=parseFloat(0);// Initial value for the first background (bk 0)
    c=parseFloat(400);// Initial value for the second background (bk 1)
    d=parseFloat(0);// Initial value for the second background (bk 1)
    var scrollTop = $(window).scrollTop();
    var scroll_actually= new Array();// Identifies the X and Y values for the background
 
    $(window).scroll(function(){//This is not the cleanest way to do this, I'm just keeping it short.
        if(scrollTop>$(this).scrollTop()) // Scroll up
        {
            if (getScrollTop()<=1600 && getScrollTop()>=0)// Identifies the position for the first background when a scroll event occurs
            {
                    a=a+35;// Position for the first background, it decreases in 35 pixels
                    b=b+10;// Position for the first background, it decreases in 10 pixels
                    $('.img_1').css('backgroundPosition', '50% '+a+'px');
                   // $('.bk_0').css('backgroundPosition', '300px '+b+'px');
            }
            if (getScrollTop()>=2050 && getScrollTop()<=3650)
            {
                    c=c+35;// Position for the second background, it decreases in 35 pixels
                    d=d+10;// Position for the second background, it decreases in 10 pixels
                    $('.img_2').css('backgroundPosition', '50% '+c+'px');
                   // $('.bk_1').css('backgroundPosition', '0 '+d+'px');
            }
        }
        else
        {// Scroll down
            if (getScrollTop()>=0 && getScrollTop()<=1600)
            {
                  a=a-35;// Position for the first background, it decreases in 35 pixels
                  b=b-10;// Position for the first background, it decreases in 10 pixels
                  $('.img_1').css('backgroundPosition', '50% '+a+'px');
                  //$('.bk_0').css('backgroundPosition', '300px '+b+'px');
            }
                if (getScrollTop()>=2050 && getScrollTop()<=3650)
            {
                  c=c-35;// Position for the second background, it decreases in 35 pixels
                  d=d-10;// Position for the second background, it decreases in 10 pixels
                  $('.img_2').css('backgroundPosition', '50% '+c+'px');
                 // $('.bk_1').css('backgroundPosition', '0 '+d+'px');
            }
        }
        if (getScrollTop()==0)// Adjusts the positions values and resets them to zero during a scroll up event
        {
            a=parseFloat(400);
            b=parseFloat(0);
            c=parseFloat(400);
            d=parseFloat(0);
           // $('.bk_0').css('backgroundPosition', '0 0');
           // $('.bk_1').css('backgroundPosition', '0 0');
            $('.img_2').css('backgroundPosition', '50% '+400+'px');
            $('.img_1').css('backgroundPosition', '50% '+400+'px');
        }
      scrollTop = $(this).scrollTop();
    });
});
function getScrollTop(){ //  Verifies the total sum in pixels of the whole page
 
    if(typeof pageYOffset!= 'undefined'){
        // Most browsers
        return pageYOffset;
    }
    else{
        var B= document.body; //IE 'quirks'
        var D= document.documentElement; //IE with doctype
        D= (D.clientHeight)? D: B;
        return D.scrollTop;
    }
}




</script>


<script>

	//jQuery("a.single_image").fancybox([{topRatio : 0}]);
	jQuery(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
	
</script>

<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
<link rel="stylesheet" href="themes/scope-redesign/assets/countdown/jquery.countdown.css" />
<link href='http://fonts.googleapis.com/css?family=Kotta+One|Noticia+Text:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--[if IE 8]>
<link rel="stylesheet" href="{$ThemeDir}/css/ie8.css" />
<![endif]-->
       
       

</head>

<body class="$ClassName<% if Menu(2) %><% else %> no-sidebar<% end_if %>">
<div id="fb-root"></div>


$Layout

	

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." :
"http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost +
"google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-426753-10");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>

</html>
