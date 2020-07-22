<!doctype html>
<html lang="en" class="no-js">
    <head>
        <% base_tag %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        $MetaTags(false)
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <% if $URLSegment = 'home' %>
        <title>$SiteConfig.Title | The University of Iowa</title>
        <% else %>
        <title>$Title - $SiteConfig.Title | The University of Iowa</title>
        <% end_if %>
        $OpenGraph
        <!-- Disable tap highlight on IE -->
        <meta name="msapplication-tap-highlight" content="no">

        <!-- Add to homescreen for Chrome on Android -->
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="application-name" content="$SiteConfig.Title">

        <!-- Add to homescreen for Safari on iOS -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-title" content="$SiteConfig.Title">

        <% include Favicons %>

        {$GoogleFonts}
        <link rel="stylesheet" href="{$ThemeDir}/dist/styles/main.css">

        <!-- Fontawesome -->
        <script src="https://kit.fontawesome.com/49191f9021.js" crossorigin="anonymous"></script>
    </head>
    <body class="{$ClassName}">
        <% include UiowaBar %>

        $Layout

        <% include Footer %>
        $BetterNavigator

        <script src="{$ThemeDir}/dist/scripts/main.min.js"></script>

        $Analytics
    </body>
</html>