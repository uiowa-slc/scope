<html>
<head>
	<% base_tag %>
	
	<!--<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>-->
	<title>$Title</title>
	<meta charset="utf-8">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--
	<[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<% require themedCSS(style) %>

	<% require themedCSS(reset) %>
	<% require themedCSS(typography) %>
	<% require themedCSS(form) %>	
	<% require themedCSS(layout) %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />


<link rel="stylesheet" href="themes/scope-redesign/assets/countdown/jquery.countdown.css" />
<link href='http://fonts.googleapis.com/css?family=Kotta+One|Noticia+Text:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="themes/scope-redesign/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
        
       
<div id="fb-root"></div>

</head>

<body class="$ClassName<% if Menu(2) %><% else %> no-sidebar<% end_if %>">
<script src="http://code.jquery.com/jquery-latest.js"></script>


<!-- JavaScript includes -->		
		<script src="themes/scope-redesign/assets/countdown/jquery.countdown.js"></script>
	    <script src="themes/scope-redesign/assets/js/countdownscript.js"></script>
	    <script src="themes/scope-redesign/assets/js/test.js"></script>
		<script src="themes/scope-redesign/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<script src="themes/scope-redesign/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
		<script src="http://twitter.com/javascripts/blogger.js"></script>
		<script type="text/javascript" src="http://platform.tumblr.com/v1/share.js"></script>
		
$Layout

	

<!-- slider javaScript -->
		

<script>


jQuery(document).ready(function($) {
    
    a=parseFloat(400);// Initial value for the first background (bk 0)
    
    
    b=parseFloat(0);// Initial value for the first background (bk 0)
    
    $('.bk_0').css('backgroundPosition', '100% 0px');
     
    c=parseFloat(400);// Initial value for the second background (bk 1)
    d=parseFloat(0);// Initial value for the second background (bk 1)
    var scrollTop = $(window).scrollTop();
    var scroll_actually= new Array();// Identifies the X and Y values for the background
    //alert("Hello world!");
    $(window).scroll(function(){//This is not the cleanest way to do this, I'm just keeping it short.
        if(scrollTop>$(this).scrollTop()) // Scroll up
        {
            if (getScrollTop()<=1600 && getScrollTop()>=0)// Identifies the position for the first background when a scroll event occurs
            {
                    a=a+35;// Position for the first background, it decreases in 35 pixels
                    b=b+10;// Position for the first background, it decreases in 10 pixels
                    $('.img_1').css('backgroundPosition', '50% '+a+'px');
                    //$('.bk_0').css('backgroundPosition', 'auto '+b+'px');
            }
            if (getScrollTop()>=2050 && getScrollTop()<=3650)
            {
                    c=c+35;// Position for the second background, it decreases in 35 pixels
                    d=d+10;// Position for the second background, it decreases in 10 pixels
                    $('.img_2').css('backgroundPosition', '50% '+c+'px');
                    $('.bk_1').css('backgroundPosition', '0 '+d+'px');
            }
        }
        else
        {// Scroll down
            if (getScrollTop()>=0 && getScrollTop()<=1600)
            {
                  a=a-35;// Position for the first background, it decreases in 35 pixels
                  b=b-10;// Position for the first background, it decreases in 10 pixels
                  $('.img_1').css('backgroundPosition', '50% '+a+'px');
                  //$('.bk_0').css('backgroundPosition', 'auto '+b+'px');
            }
                if (getScrollTop()>=2050 && getScrollTop()<=3650)
            {
                  c=c-35;// Position for the second background, it decreases in 35 pixels
                  d=d-10;// Position for the second background, it decreases in 10 pixels
                  $('.img_2').css('backgroundPosition', '50% '+c+'px');
                  $('.bk_1').css('backgroundPosition', '0 '+d+'px');
            }
        }
        if (getScrollTop()==0)// Adjusts the positions values and resets them to zero during a scroll up event
        {
            a=parseFloat(400);
            b=parseFloat(0);
            c=parseFloat(400);
            d=parseFloat(0);
            //$('.bk_0').css('backgroundPosition', '0 0');
            $('.bk_1').css('backgroundPosition', '0 0');
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
	  //$(document).ready(function ()
   $(document).ready(function () {
      $("div.photo_gallery").hide();
      $(".description p.hidden").hide();
    });		
		
    //jQuery("h5.toggle").click(function ($) {
    jQuery("h5.toggle").click(function () {
      $("div.photo_gallery").slideToggle("fast");
    });
    
		
    //jQuery("h5.toggle_p").click(function ($) {
    jQuery("h5.toggle_p").click(function () {
      $(".description p.hidden").slideToggle("slow");
    });

	jQuery("a.single_image").fancybox([{topRatio : 0}]);
	
(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
	
</script>
</body>

</html>
