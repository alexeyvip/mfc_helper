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
    <nav:resources override="true"/>
    <%-- ссылка до своего файла css navigation --%>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'my-navigation.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mfc.css')}" type="text/css">
</head>
<body class="yui-skin-sam">
<div id="doc" class="yui-t2">
    <div id="hd" role="banner">
        <div>
            <div class="float-right">
                <div class="user_info">
                    Плотников Алексей
                </div>
                <ul class="top-buttons">
                    <li class="top-first-button">
                        <a href="#">
                            %{--<img src="${resource(dir: 'images', file: 'door_in.png')}">--}%
                            <span>Войти</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="main_menu"><nav:render group="menu" /></div>
    </div>
    <div id="bd" role="main">
        <div id="yui-main">
            <div class="yui-b">
                <div class="yui-g">
                    <g:layoutBody/>
                </div>
            </div>
        </div>
        <div class="yui-b">
            <nav:renderSubItems group="menu" />
            <!-- YOUR NAVIGATION GOES HERE -->
        </div>

    </div>
    <div id="ft" role="contentinfo"><p>Footer</p></div>
    <g:javascript library="application"/>
    <r:layoutResources />
</div>
</body>
</html>