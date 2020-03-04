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
                <div class="main-carousel">
                    <div class="carousel-cell">
                        <img src="$ThemeDir/dist/images/img-2.png" alt="">
                    </div>
                    <div class="carousel-cell">
                        <img src="$ThemeDir/dist/images/img-1.jpg" alt="">
                    </div>
                    <div class="carousel-cell">
                        <img src="$ThemeDir/dist/images/img-3.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="ways-to-engage mb-4">
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <% if $EngageTitle %>
                        <h2 class="display-3 text-center pt-8">$EngageTitle</h2>
                    <% end_if %>
                    <% if $EngageContent %>
                        <div class="lead pb-6 text-center">$EngageContent</div>
                    <% end_if %>
                </div>
            </div>

            <% if $Engages %>
                <% loop $Engages %>
                    <div class="row engage">
                        <div class="col-md-6 d-flex align-items-center <% if $Even %>offset-md-1 order-md-2<% end_if %>">
                            <div>
                                <h2>$Title</h2>
                                <div class="engage__content">$Content</div>
                            </div>
                        </div>
                        <div class="col-md-5 <% if $Even %>order-md-1<% else %>offset-lg-1<% end_if %>">
                            <div class="vd-bg">
                                <video width="100%" controls playsinline="" autoplay loop>
                                    <source src="$Video.URL" type="video/mp4">
                                    Your browser does not support HTML5 video.
                                </video>
                            </div>
                        </div>
                    </div>
                    <hr class="featurette-divider">
                <% end_loop %>
            <% end_if %>
        </div><!-- end .container -->
    </div>

    <% if $Testimonials %>
        <div class="container">
            <% loop $Testimonials %>
                <div class="profile">
                    <div class="row ">
                        <div class="col-lg-6">
                            <img src="$MainImage.Fill(800, 533).URL" alt="$Title" class="profile__img">
                        </div>
                        <div class="col-lg-6 align-items-center d-flex">
                            <blockquote class="profile__blockquote">
                                $Content
                                <footer>— $Title</footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        </div>
    <% end_if %>

    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <% if $CompetenciesTitle %>
                    <h2 class="display-3 text-center mt-8">$CompetenciesTitle</h2>
                <% end_if %>
                <% if $CompetenciesContent %>
                    <div class="lead pb-6 text-center">$CompetenciesContent</div>
                <% end_if %>
            </div>
        </div>
        <% if $Competencies %>
        <div class="row">
            <div class="col-md-12">
                <div class="competencies text-center">
                    <% loop $Competencies %>
                        <div class="card competencies__card">
                            <div class="card-body">
                                <img src="$Image.URL" alt="$Title icon" width="80" height="80">
                                <h5 class="card-title mt-4">
                                    <% if $URL %><a href="$URL"><% end_if %>$Title<% if $URL %></a><% end_if %></h5>
                                <div class="card-text">$Content</div>
                            </div>
                            <% if $URL %>
                                <div class="card-footer">
                                    <small>
                                        <a href="$URL">View Related Programs</a>
                                    </small>
                                </div>
                            <% end_if %>
                        </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
        <% end_if %>


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


