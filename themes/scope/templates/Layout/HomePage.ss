<% include Header %>


<section class="my-3 my-lg-7">

    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-lg-6">
                <div class="text-uppercase">Upcoming Show</div>
                <h1 class="display-1">Homecoming 2018: Lizzo</h1>
                <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa, rem neque doloribus impedit explicabo minus laborum cupiditate atque esse consectetur.</p>
                 <a href="#" class="btn btn-primary btn-lg">Get Tickets</a> <a href="#" class="btn btn-lg btn-outline-primary">View Show Details</a>
            </div>
            <div class="col-lg-6">
                <img class="w-100" src="$ThemeDir/dist/images/lizzo.jpg" alt="Image description">
            </div>
        </div>
    </div>

   <%--  <% if $UpcomingShows %>
        <% loop $UpcomingShows %>

            <h2 class="display-1">$Title</h2>

            <img src="$Picture.URL" alt="">
        <% end_loop %>
    <% end_if %> --%>
</section>

<section class="bg-primary text-white">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 p-6">
                <p class="lead">Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            </div>
            <div class="col-sm-4 p-5">
                <a href="#" class="btn btn-lg btn-outline-light">Get Tickets</a>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 p-5">
                asdfasdf
            </div>
            <div class="col-sm-6 p-5">
                asdfasdf
            </div>
        </div>
    </div>
</section>


<main role="main">
    <%-- <div class="container-flud hero">
        <div class="row no-gutters">
            <div class="col-md d-flex align-items-center">
                <div class="hero__body">
                    $Content
                </div>
            </div>
            <div class="col-md">
                <% if $UpcomingShows %>
                    <div class="main-carousel">
                        <% loop $UpcomingShows %>
                        <div class="carousel-cell">
                            <img src="{$Picture.URL}" alt="">
                            $Title
                        </div>
                        <% end_loop %>
                    </div>
                <% end_if %>
            </div>
        </div>
    </div> --%>



        <%-- <hr class="featurette-divider">

        <% if $SocialContent %>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="lead pb-3 text-center">$SocialContent</div>
                </div>
            </div>
        <% end_if %> --%>
    </div><!-- /.container -->


    <!-- LightWidget WIDGET --><%-- <script src="https://cdn.lightwidget.com/widgets/lightwidget.js"></script><iframe src="https://cdn.lightwidget.com/widgets/d42f1547dd2c56fb8ad082838075f620.html" scrolling="no" allowtransparency="true" class="lightwidget-widget" style="width:100%;border:0;overflow:hidden;"></iframe> --%>


</main>


