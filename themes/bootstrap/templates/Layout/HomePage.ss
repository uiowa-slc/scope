<% include Header %>

<main id="content" class="my-3 mb-5 my-lg-6">
    <% if $UpcomingShows %>
        <div class="main-carousel">
            <% loop $UpcomingShows %>  
                <div class="carousel-cell">            
                    <div class="container-xl" id="content">
                        <div class="row d-flex align-items-center">
                            <div class="col-lg-5">
                                <!-- Date -->
                                <div class="text-uppercase mt-2 mt-md-0">$Date.Format("MMMM d, Y")</div>

                                <!-- Title -->
                                <h1 class="display-1 show-title">
                                    <a href="$Link" class="text-dark text-decoration-none">
                                        <span class="link-highlight">$Title</span>
                                    </a>
                                </h1>

                                <!-- Content -->
                                <p class="lead">$Content.FirstParagraph.LimitCharacters(400)</p>

                                <% if $StreamLink %>
                                        <p><% include StreamButton %></p>
                                <% end_if %>
                                <a href="$Link" class="btn  btn-primary mb-3">View Show Details</a>

                                <!-- Ticket buttons -->
                                <% if $SoldOut %>
                                    <div class="alert alert-warning mb-0" role="alert">
                                        This show is sold out!
                                    </div>
                                <% else %>
                                    <% if $BuyTicketsOnlineLink %>
                                        <a href="$BuyTicketsOnlineLink" class="btn btn-outline-primary mb-3" target="_blank" rel="noopener noreferrer">Buy Tickets Online</a>
                                    <% end_if %>
                                    <% if $BuyTicketsInPersonLink %>
                                        <a href="$BuyTicketsInPersonLink" class="btn btn-outline-primary mb-3" target="_blank" rel="noopener noreferrer">Buy Tickets In Person</a>
                                    <% end_if %>
                                <% end_if %> 
                            </div>
                            <div class="col-lg-7">
                                <% if $Picture %>
                                    <img src="$Picture.Pad(800,800, f8f9fa).URL" class="w-100" alt="Poster for {$Title}" />
                                <% end_if %>
                            </div>
                        </div>
                    </div>
                </div><!-- end carousel-cell -->
            <% end_loop %>
        </div><!-- end main-carousel -->
    <% else %>
        <div class="container-xl" id="content">
            <div class="row d-flex align-items-center">
                <div class="col-lg-5">
                    <!-- Headline -->
                    <% if $AssociatedPage %>
                        <h1 class="display-1 show-title">
                            <a href="$AssociatedPage.Link" class="text-dark text-decoration-none">
                                <span class="link-highlight">$Headline</span>
                            </a>
                        </h1>
                    <% else %>
                        <h1 class="display-1 show-title  text-dark">
                            <span class="bg-light">$Headline</span>
                        </h1>
                    <% end_if %>

                    <!-- Content -->
                    <p class="lead">$Content</p>

                    <!-- button -->
                    <% if $AssociatedPage %>
                        <a href="$AssociatedPage.Link" class="btn btn-primary mb-3">
                            <% if $ButtonText %>$ButtonText<% else %>View Details<% end_if %></a>
                    <% end_if %>
                    
                    
                </div>
                <div class="col-lg-7">
                    <% if $Photo %>
                        <img src="$Photo.Fill(800,800).URL" class="w-100" alt="Poster for {$Title}" />
                    <% end_if %>
                </div>
            </div>
        </div>
    <% end_if %><!-- end upcoming shows if statement -->
</main>

<!-- Tickets link -->
<%-- <section class="bg-primary text-white py-3 py-sm-6 tickets">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                <p class="lead">All SCOPE tickets can be purchased at the Welcome Center in the Iowa Memorial Union or online!</p>
            </div>
            <% if $SiteConfig.TicketsLink %>
                <div class="col-sm-4 offset-md-1">
                    <a href="$SiteConfig.TicketsLink" class="btn btn-lg btn-light btn-block">Get Tickets</a>
                </div>
            <% end_if %>
        </div>
    </div>
</section> --%>
<section class="py-3 py-sm-6 bg-dark">
    <div class="container-xl">
        <div class="row">
            <div class="text-divider">
                            <span class="text-light">Recent Posts</span>
                        </div>

        </div>
        <div class="row d-flex align-items-center">
            <% loop $BlogPosts.Limit(3) %>

                <div class="col-lg-4 mb-3 mb-lg-0">
                    <a href="$Link" class=" text-light d-block">
                           <h2>$Title</h2>
                           <% if $PublishDate %>
                            <p class="text-light">
                                <small>
                                <%t SilverStripe\\Blog\\Model\\Blog.Posted "Posted" %>
                                $PublishDate.format("MMMM d, y")
                                </small>
                            </p>
                            <% else %>
                            <p class="text-light">
                                <small>Not published yet.</small>
                            </p>
                            <% end_if %>
                    </a>
                </div>
            <% end_loop %>
        </div>
    </div>
</section>
<section class="py-3 py-sm-6 my-5">
    <div class="container-xl">
        <div class="row">
            <div class="col-sm-6">
                <h3 class="display-3">Our Mission</h3>
            </div>
            <div class="col-sm-6">
                <p class="lead">To serve the community by creating an engaging live music experience, while providing a learning opportunity for students interested in the music industry.</p>
            </div>
        </div>
    </div>
</section>

<section class="py-5">
    <div class="container-xl">
        <h2 class="text-center display-3 mb-5">Meet Our Directors</h2>
        <div class="stafflist">
            <ul class="stafflist__list list-unstyled">
                <% loop RandomStaffMembers(8) %>
                    <% include StaffPageListItem %>
                <% end_loop %>
            </ul>
            <a href="{$baseUrl}directors/" class="text-center d-block">View all Directors</a>
            <br>
        </div>
    </div>
</section>




<% include InstaFeed %>