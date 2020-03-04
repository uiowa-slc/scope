<% include Header %>

<main role="main">
    <div class="container-flud hero">
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
    </div>



        <hr class="featurette-divider">

        <% if $SocialContent %>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="lead pb-3 text-center">$SocialContent</div>
                </div>
            </div>
        <% end_if %>
    </div><!-- /.container -->


    <!-- LightWidget WIDGET --><script src="https://cdn.lightwidget.com/widgets/lightwidget.js"></script><iframe src="https://cdn.lightwidget.com/widgets/d42f1547dd2c56fb8ad082838075f620.html" scrolling="no" allowtransparency="true" class="lightwidget-widget" style="width:100%;border:0;overflow:hidden;"></iframe>


</main>


