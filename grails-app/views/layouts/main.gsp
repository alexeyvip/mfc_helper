<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
 "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>${message(code: 'title.main')} &raquo; <g:layoutTitle default="Добро пожаловать"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'yui-grid-2.8.css')}" type="text/css">
    <g:layoutHead/>
    <r:layoutResources />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mfc.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'menu.css')}" type="text/css">
</head>
<body class="yui-skin-sam">
<div id="doc2" class="yui-t7">
    <div id="hd" role="navigation">
        <div>
            Плотников Алексей
        </div>
        <div id="main_menu" class="background-border background-grey"><g:render template="/menu" /></div>
    </div>
    <div id="bd" role="main">
        <div class="yui-g main-body">
            <div class="main-body-content">
                <g:layoutBody/>
            </div>
        </div>
    </div>
    <div id="ft" role="contentinfo" class="background-grey footer">${message(code: 'footer.title')}</div>
    <g:javascript library="application"/>
    <r:layoutResources />
</div>
</body>
</html>