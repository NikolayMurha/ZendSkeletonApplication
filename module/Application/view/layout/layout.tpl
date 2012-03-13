{$this->doctype()}


<html lang="en">
<head>
    <meta charset="utf-8">
    {$this->headTitle()->setSeparator(' - ')->setAutoEscape(false)}

    {$basePath = $this->basePath()}
    {$this->headLink()->appendStylesheet("`$basePath`/css/bootstrap.min.css")
    ->appendStylesheet("`$basePath`/css/style.css")
    ->appendStylesheet("`$basePath`/css/bootstrap-responsive.min.css")}

    {$this->headLink([ 'rel' => 'shortcut icon', 'type' => 'image/vnd.microsoft.icon', 'href' =>
    "`$basePath`/images/favicon.ico"])}


    {$this->headScript()->appendFile("`$basePath`/js/html5.js', 'text/javascript", ['conditional' => 'lt IE9'])}
    {$this->headTitle('ZF2 Skeleton Application')}

    {$this->headMeta()}

    <!-- Le styles -->
    {$this->headLink()}

    <!-- Scripts -->
    {$this->headScript()}

</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">

                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="{$this->url('home')}">Skeleton Application</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li class="active"><a href="{$this->url('home')}">Home</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container">

    {$this->content}

    <hr>

    <footer>
        <p>&copy; 2006 - 2012 by Zend Technologies Ltd. All rights reserved.</p>
    </footer>

</div>
<!-- /container -->

</body>
</html>
