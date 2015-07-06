<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title</title>
<style type="text/css">
body {background-color:#000; 
	}
td {vertical-align:top;
	padding:0;
	margin:0;}

tr {padding:0;
	margin:0;}


</style>
</head>


<body style="background-color:#000; ">
<table style="border-spacing:0;
	margin:0 auto 0 auto;
	padding:0;" id="main" width="600">
	<tr id="preheader">
   	<td background="http://imu.uiowa.edu/themes/imu4/images/preheader.jpg" colspan="2" height="53">
   	<p style="color:white;margin-top:10px; text-align:center; font-family:Arial, Helvetica, sans-serif;" class="prehead">Having trouble viewing this newsletter? View it in your <a style="color:white;"href="$AbsoluteLink">browser</a>.</p><!-- PREHEADER -->
	</td>
	</tr> 
   
<!-- END PREHEADER -->

<!-- HEADER -->

<tr id="header">
   	<td style="padding:0; border-bottom:10px solid black;" background="http://imu.uiowa.edu/themes/imu4/images/header.jpg" colspan="2" height="75">

	</td>
</tr>

<!-- END HEADER-->

<!-- TWO COLUMNS -->

<tr>
	<td style="width:360px; height:auto; background-color:white; margin-right:30px; border-right:10px solid black;" id="leftcolumn">

<!-- LEFT COLUMN -->

	<% loop Children %>
     	
<table style="width:370px; margin:14px 0 0 0; padding-left:10px;" class="featured">
	<tr class="title">
		<td colspan="3"><h3 style="margin:0; color:#6d1c00; font-family:'Trebuchet MS', Arial, Helvetica, sans-serif; font-size:38px; font-weight:bolder; line-height:100%;text-align:left; text-transform:uppercase; margin:0; padding:4px 0 0 0px; text-decoration:none; ">
                   	<% if LinkURL %><a style="color:#6d1c00; text-decoration: none;" href="$LinkURL">$Title</a></h3>
                    	<% else %>
                        	$Title 
                   		<% end_if %>
                       <% if BuyTicketsLink %>
                       <p style="font-size: 18px;"><a href="{$BuyTicketsLink}?camefrom=ScopeNewsletter">buy tickets</a></p>
                       <% end_if %>
                   </td>
                   </tr>
				
				<% if Image %>
				<tr>
					<td colspan="3"> 
                   <% if LinkURL %>
                   	<a href="$LinkURL"><img style="color:none; width:372px; padding:4px 0px 4px 0px; " src="{$Image.AbsoluteURL}" /></a>
                   <% else %>
                        	<img style="color:none; width:368px; padding:0px 0px 4px 0px; " src="{$Image.AbsoluteURL}" /> 
                   <% end_if %>


					</td>
				</tr>
				<% end_if %>
               <tr class="information">
               	<td width="200"><h4 style="color:#6d1c00; font:italic bold 18px Georgia, 'Times New Roman', Times, serif; text-transform:uppercase; margin:0; padding:0 0 0 0px;" class="h4">$Date</h4>
                   </td>

                   <td><h5 style="color:#6d1c00; font:normal 13px Arial, Helvetica, sans-serif; text-transform:uppercase; margin:0; padding-top:4px;" class="h5">$Location</h5>
                   </td>

                   <td><h6 style="color:#6d1c00; font-weight:normal; font-size: 12px; font-family: Arial, Helvetica, sans-serif; text-transform:uppercase; margin:0; padding-top:4px;" class="h6">$Time</h6>
                   </td>

               </tr>
               <tr>
               	<td style="color:#505050; font-family:Arial, Helvetica, sans-serif; font-size:14px; line-height:120%; padding:0px;" colspan="3">
                   <p class="feature-content">$Content
				   
				   
				   </p>
                   </td>
               </tr>
           </table>

         <% end_loop %>
			 
		
       </td><!-- END LEFT COLUMN --> 

       <td style="vertical-align:top;width:180px; height:auto; background-color:#f2f2f0;" id="rightcolumn"><!-- RIGHT COLUMN -->

				<table style="padding:10px 2px 10px 2px; margin:4px 2px 2px 2px; width:180px;" class="sidebar"> <!--  ENTRY -->
               	<tr>
                   	<td colspan="2"><h2 style="font:italic bold 34px Georgia, 'Times New Roman', Times, serif; color:#28403f; padding:0px 4px 0px 2px; margin:0;">$SidebarMainHeadline</h2></td>
                   </tr>
           <% loop Children %>

			<% if InSidebar %>	
					<tr>
						<td>
							<table style="border-bottom:2px solid #647a6e; padding:15px 0 15px 0;" class="sidebarentry">
								<tr class="title">
									<td colspan="2">
                                    
   								<h3 style="font:lighter 26px impact; opacity:0.7; padding:0; margin:0; text-transform:uppercase; line-height:25px;">
									<% if LinkURL %>
										<a style="font:lighter 26px impact; color:#647a6e;  text-transform:uppercase; line-height:25px; text-decoration:none;" href="$LinkURL">$Title</a>
									<% else %>
										$Title 
									 <% end_if %>
									</h3>
									</td>
								</tr>
								<tr class="information">
									<td><h4 style="padding:0; margin:0; color:#333; font: italic bold 18px Georgia, 'Times New Roman', Times, serif; line-height:20px; ">$Date</h4>
									</td>
									
									<td><h5 style="color:#333; font:normal bold 12px helvetica; margin:0; line-height:15px; padding-top:3px;">$Location</h5>
									
								                        <% if BuyTicketsLink %>
                       <p style="font-size: 18px;"><a href="{$BuyTicketsLink}?camefrom=ScopeNewsletter">buy tickets</a></p>
                       <% end_if %>
								   </td>
								
								</tr>
							</table>
						</td>
					</tr>	
						
					
                   <% end_if %>

           <% end_loop %>
                   <tr>
                       <td colspan="2">


                       </td>
                   </tr>
           	</table><!-- END ENTRY -->

			
			
				
			
           	
           <table style="margin:25px 2px 20px 2px;" id="socialmedia"><!-- SOCIAL MEDIA TABLE -->
           	<tr>
               	<td colspan="3">	
                   	<h2 style="color:#063543; font:italic bold 24px Georgia, 'Times New Roman', Times, serif; color:#28403f; padding: 0 0 4px 4px; margin:0;">Follow us!</h2>
                   </td>
               </tr>
               <tr>
               	<td class="fb" style="padding-left:3px;">
                   	<p><a class="fb" href="https://www.facebook.com/uiscopeproductions"><img src="http://imu.uiowa.edu/themes/imu4/images/wildrose/wr_facebook.jpg" border="0"> </a><br>
					<a class="twitter" href="http://twitter.com/uiSCOPE/"><img src="http://imu.uiowa.edu/themes/imu4/images/wildrose/wr_twitter.jpg" border="0"> </a></p>
                   </td>
                   </tr>
                   <tr>
                   <td>
				   
				   <!--
				   
                       <h4 style="font:lighter 26px impact; color:#647a6e;  text-transform:uppercase; text-decoration:none;">New Headline</h4>
                       <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                       <p><a style="text-decoration: none;" href="#">READ MORE &raquo;</a></p>
					   -->
					   
                                       	<h2 style="color:#063543; font:italic bold 24px Georgia, 'Times New Roman', Times, serif; color:#28403f; padding: 0 0 4px 4px; margin-bottom:20px;">Share This!</h2>
                   <!-- AddThis Button BEGIN -->

<div class="addthis_toolbox addthis_default_style" style="margin: 0px auto; padding-left: 3px;" width="170">
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>

<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e6a813a65dcaeab"></script>
<!-- AddThis Button END -->
</td>
               </tr>
           </table><!-- END SOCIAL MEDIA TABLE -->
       </td> <!-- END RIGHT COLUMN --> 
   </tr><!-- END TWO COLUMNS -->

   <tr><!-- FOOTER -->
   	<td style="border-top:10px solid black;" background="http://imu.uiowa.edu/themes/imu4/images/footer1.png" id="footer" colspan="2">
       	<table>
           	<tr>
               	<td style="padding: 0 20px 0 10px;">
                   	
							<p style="margin-top:10px; font-family:Arial, Helvetica, sans-serif; color:white; font-weight:100%;width:200px;" class="address">
							<a style="font-family:Arial, Helvetica, sans-serif;color:white;font-weight:100; text-decoration:none;" 
						href="http://scope.uiowa.edu/">
								<span style="font-weight:bold;">SCOPE Productions</span>
						
							</a><br /> 154 Iowa Memorial Union <br />
                       Iowa City, Iowa 52240 <br />
                       319.335.3395<br />
                       <a style="text-decoration:none; color:white;" href="mailto:scope@uiowa.edu">scope@uiowa.edu</a>
                       </p>
                   </td>
                   <td >
                   </td>
               </tr>
           </table>
       </td>
   </tr><!-- END FOOTER -->
</table>
</body>
</html>