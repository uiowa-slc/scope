<header role="banner">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand " href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
      <img src="{$ThemeDir}/dist/images/logo-small.png" alt="Scope Productions" style="width: 50px;" />
  </a>

  <div class="navbar-nav-scroll">
    <ul class="navbar-nav bd-navbar-nav flex-row">
        <% loop $Menu(1) %>
            <li class="nav-item mr-lg-5 $LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
        <% end_loop %>
    </ul>
  </div>
    </nav>
</header>
