


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>ansible-ssh-hardening/CONTRIBUTING.md at master · hardening-io/ansible-ssh-hardening · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="hardening-io/ansible-ssh-hardening" name="twitter:title" /><meta content="ansible-ssh-hardening -  This Ansible role provides numerous security-related ssh configurations, providing all-round base protection." name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/11883542?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/11883542?v=3&amp;s=400" property="og:image" /><meta content="hardening-io/ansible-ssh-hardening" property="og:title" /><meta content="https://github.com/hardening-io/ansible-ssh-hardening" property="og:url" /><meta content="ansible-ssh-hardening -  This Ansible role provides numerous security-related ssh configurations, providing all-round base protection." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="9234372A:741F:9DA8BF3:5547BA59" name="octolytics-dimension-request_id" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged Out">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
    <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="96An2/2jo3ViG9ddW495Hi2yF+o4d9HmG1XzIE2yKXzpLVS99bE10YCf8RD7UK/OCbwHx1WXovBIZpIHeqipsw==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-b0b471dd90b1b98fa4ad82a741cb063dc35b5aadd578ae0669a1f59e78bb2d75.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2-de5dc7a40d6c453d7f222194158d4416e27c8c628943d75540528101868794d2.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="faeabbcdf5db23d33dee769ccc99d144">

      
  <meta name="description" content="ansible-ssh-hardening -  This Ansible role provides numerous security-related ssh configurations, providing all-round base protection.">
  <meta name="go-import" content="github.com/hardening-io/ansible-ssh-hardening git https://github.com/hardening-io/ansible-ssh-hardening.git">

  <meta content="11883542" name="octolytics-dimension-user_id" /><meta content="hardening-io" name="octolytics-dimension-user_login" /><meta content="34468154" name="octolytics-dimension-repository_id" /><meta content="hardening-io/ansible-ssh-hardening" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="34468154" name="octolytics-dimension-repository_network_root_id" /><meta content="hardening-io/ansible-ssh-hardening" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/hardening-io/ansible-ssh-hardening/commits/master.atom" rel="alternate" title="Recent Commits to ansible-ssh-hardening:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production  vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        
        <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="btn btn-primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="btn" href="/login?return_to=%2Fhardening-io%2Fansible-ssh-hardening%2Fblob%2Fmaster%2FCONTRIBUTING.md" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <form accept-charset="UTF-8" action="/hardening-io/ansible-ssh-hardening/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/hardening-io/ansible-ssh-hardening/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2Fhardening-io%2Fansible-ssh-hardening"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <span class="octicon octicon-eye"></span>
    Watch
  </a>
  <a class="social-count" href="/hardening-io/ansible-ssh-hardening/watchers">
    4
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fhardening-io%2Fansible-ssh-hardening"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/hardening-io/ansible-ssh-hardening/stargazers">
      4
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fhardening-io%2Fansible-ssh-hardening"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/hardening-io/ansible-ssh-hardening/network" class="social-count">
        0
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/hardening-io" class="url fn" itemprop="url" rel="author"><span itemprop="title">hardening-io</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/hardening-io/ansible-ssh-hardening" class="js-current-repository" data-pjax="#js-repo-pjax-container">ansible-ssh-hardening</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">

        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/hardening-io/ansible-ssh-hardening/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/hardening-io/ansible-ssh-hardening" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /hardening-io/ansible-ssh-hardening">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/hardening-io/ansible-ssh-hardening/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /hardening-io/ansible-ssh-hardening/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/hardening-io/ansible-ssh-hardening/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /hardening-io/ansible-ssh-hardening/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/hardening-io/ansible-ssh-hardening/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /hardening-io/ansible-ssh-hardening/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/hardening-io/ansible-ssh-hardening/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /hardening-io/ansible-ssh-hardening/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/hardening-io/ansible-ssh-hardening.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/hardening-io/ansible-ssh-hardening" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a> or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>




                <a href="/hardening-io/ansible-ssh-hardening/archive/master.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of hardening-io/ansible-ssh-hardening as a zip file"
                   title="Download the contents of hardening-io/ansible-ssh-hardening as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/hardening-io/ansible-ssh-hardening/blob/c05a8afa674753ee176ae7a3408525777076d346/CONTRIBUTING.md" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:8806120c0097a9ac098e1408052a2dbb -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hardening-io/ansible-ssh-hardening/blob/badges/CONTRIBUTING.md"
               data-name="badges"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="badges">
                badges
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/hardening-io/ansible-ssh-hardening/blob/master/CONTRIBUTING.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hardening-io/ansible-ssh-hardening/blob/meta_information/CONTRIBUTING.md"
               data-name="meta_information"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="meta_information">
                meta_information
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hardening-io/ansible-ssh-hardening/blob/oracle_tests/CONTRIBUTING.md"
               data-name="oracle_tests"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="oracle_tests">
                oracle_tests
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/hardening-io/ansible-ssh-hardening/tree/1.0.0/CONTRIBUTING.md"
                 data-name="1.0.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="1.0.0">1.0.0</a>
            </div>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/hardening-io/ansible-ssh-hardening/find/master"
          class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/hardening-io/ansible-ssh-hardening" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">ansible-ssh-hardening</span></a></span></span><span class="separator">/</span><strong class="final-path">CONTRIBUTING.md</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="@chris-rock" class="avatar" data-user="1178413" height="24" src="https://avatars1.githubusercontent.com/u/1178413?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/chris-rock" rel="contributor">chris-rock</a></span>
        <time datetime="2015-04-28T14:26:45Z" is="relative-time">Apr 28, 2015</time>
        <div class="commit-title">
            <a href="/hardening-io/ansible-ssh-hardening/commit/1c2bb5d00597d9ec5c9a17db33cdbe9bd3415b8a" class="message" data-pjax="true" title="add more descriptions">add more descriptions</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>1</strong>
           contributor
        </a>
      </p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="@chris-rock" data-user="1178413" height="24" src="https://avatars1.githubusercontent.com/u/1178413?v=3&amp;s=48" width="24" />
            <a href="/chris-rock">chris-rock</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="/hardening-io/ansible-ssh-hardening/raw/master/CONTRIBUTING.md" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="/hardening-io/ansible-ssh-hardening/blame/master/CONTRIBUTING.md" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="/hardening-io/ansible-ssh-hardening/commits/master/CONTRIBUTING.md" class="btn btn-sm " rel="nofollow">History</a>
      </div>


          <button type="button" class="octicon-btn disabled tooltipped tooltipped-n" aria-label="You must be signed in to make or propose changes">
            <span class="octicon octicon-pencil"></span>
          </button>

        <button type="button" class="octicon-btn octicon-btn-danger disabled tooltipped tooltipped-n" aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </button>
    </div>

    <div class="file-info">
        85 lines (45 sloc)
        <span class="file-info-divider"></span>
      3.918 kb
    </div>
  </div>
    <div id="readme" class="blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1>
<a id="user-content-contributor-guideline" class="anchor" href="#contributor-guideline" aria-hidden="true"><span class="octicon octicon-link"></span></a>Contributor Guideline</h1>

<p>This document provides an overview of how you can participat in improving this project or extending it. We are grateful for all your help: bug reports and fixes, code contributions, documentation or ideas. Feel free to join, we appreciate your support!!</p>

<h2>
<a id="user-content-communication" class="anchor" href="#communication" aria-hidden="true"><span class="octicon octicon-link"></span></a>Communication</h2>

<h3>
<a id="user-content-github-repositories" class="anchor" href="#github-repositories" aria-hidden="true"><span class="octicon octicon-link"></span></a>GitHub repositories</h3>

<p>Much of the issues, goals and ideas are tracked in the respective projects in GitHub. Please use this channel to report bugs and post ideas.</p>

<h2>
<a id="user-content-git-and-github" class="anchor" href="#git-and-github" aria-hidden="true"><span class="octicon octicon-link"></span></a>git and GitHub</h2>

<p>In order to contribute code please:</p>

<ol>
<li>Fork the project on GitHub</li>
<li>Clone the project</li>
<li>Add changes (and tests)</li>
<li>Commit and push</li>
<li>Create a merge-request</li>
</ol>

<p>To have your code merged, see the expectations listed below.</p>

<p>You can find a well-written guide <a href="https://help.github.com/articles/fork-a-repo">here</a>.</p>

<p>Please follow common commit best-practices. Be explicit, have a short summary, a well-written description and references. This is especially important for the merge-request.</p>

<p>Some great guidelines can be found <a href="https://wiki.openstack.org/wiki/GitCommitMessages">here</a> and <a href="http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message">here</a>.</p>

<h2>
<a id="user-content-expectations" class="anchor" href="#expectations" aria-hidden="true"><span class="octicon octicon-link"></span></a>Expectations</h2>

<h3>
<a id="user-content-dont-reinvent-the-wheel" class="anchor" href="#dont-reinvent-the-wheel" aria-hidden="true"><span class="octicon octicon-link"></span></a>Don't reinvent the wheel</h3>

<p>This hardening project doesn't intend to reinvent the configuration stack for services. Aim to use official configuration projects first and provide hardening as a layer on top. The goal is remove the need for a user to configure all aspects of services and maintain security configuration. This way, the user can still configure a service using the interface provided by the official project.</p>

<ul>
<li>For Chef refer to the official <a href="http://community.opscode.com/cookbooks">opscode community cookbooks</a>.</li>
<li>For Puppet head to the <a href="https://forge.puppetlabs.com/">Puppet Forge</a> and take a node of the Puppet supported modules.</li>
<li>For Ansible check the <a href="http://docs.ansible.com/list_of_all_modules.html">Ansible Module Index</a>
</li>
</ul>

<p>These projects are generally hosted on GitHub as well.</p>

<p>In some cases, we in fact create the full rollout stack, but this is generally the exception (<a href="https://github.com/TelekomLabs/chef-os-hardening">os-hardening</a>, <a href="https://github.com/TelekomLabs/chef-nginx-hardening">nginx-hardening</a>).</p>

<h3>
<a id="user-content-be-explicit" class="anchor" href="#be-explicit" aria-hidden="true"><span class="octicon octicon-link"></span></a>Be explicit</h3>

<ul>
<li>Please avoid using nonsensical property and variable names</li>
<li>Use self-describing attribute names for user configuration</li>
<li>In case of failures, communicate what happened and why a failure occurs to the user. Make it easy to track the code or action that produced the error. Try to catch and handle errors if possible to provide improved failure messages.</li>
</ul>

<h3>
<a id="user-content-add-tests" class="anchor" href="#add-tests" aria-hidden="true"><span class="octicon octicon-link"></span></a>Add tests</h3>

<p>The security review of this project is done using integration tests.</p>

<p>Whenever you add a new security configuration, please start by writing a test that checks for this configuration. For example: If you want to set a new attribute in a configuration file, write a test that expects the value to be set first. Then implement your change.</p>

<p>You may add a new feature request by creating a test for whatever value you need.</p>

<p>All tests will be reviewed internally for their validity and overall project direction.</p>

<h3>
<a id="user-content-document-your-code" class="anchor" href="#document-your-code" aria-hidden="true"><span class="octicon octicon-link"></span></a>Document your code</h3>

<p>As code is more often read than written, please provide documentation in all projects. </p>

<p>Adhere to the respective guidelines for documentation:</p>

<ul>
<li>Chef generally documents code based explicit readme files. For code documentation please use <a href="https://github.com/rightscale/yard-chef">yard-chef</a>
</li>
<li><a href="http://docs.puppetlabs.com/puppet/latest/reference/modules_documentation.html">Puppet module documentation</a></li>
</ul>

<h3>
<a id="user-content-follow-coding-styles" class="anchor" href="#follow-coding-styles" aria-hidden="true"><span class="octicon octicon-link"></span></a>Follow coding styles</h3>

<p>We generally include test for coding guidelines:</p>

<ul>
<li>Chef follows <a href="http://acrmp.github.io/foodcritic/">Foodcritic</a>
</li>
<li>Puppet is checked with <a href="http://puppet-lint.com/checks/">puppet-lint</a>
</li>
</ul>

<p>Remember: Code is generally read much more often than written.</p>

<h3>
<a id="user-content-use-markdown" class="anchor" href="#use-markdown" aria-hidden="true"><span class="octicon octicon-link"></span></a>Use Markdown</h3>

<p>Wherever possible, please refrain from any other formats and stick to simple markdown.</p>
</article>
  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.03245s from github-fe138-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-2c8ae50712a47d2b83d740cb875d55cdbbb3fdbccf303951cc6b7e63731e0c38.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-6ef28f80a929515cb3e7e424363db63629a966b42acdf1666c433dc4b46de3db.js"></script>
      
      


  </body>
</html>

