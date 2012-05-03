<%@ page contentType="text/html;charset=UTF-8" %>

<div id="menu-wrap">
    <div id="menu">
        <ul class="menu">

            <!-- Begin Simple Item Without Drop -->
            <li class="">
                <g:link controller="serviceCard" action="list">${message(code: 'menu.servicecards')}</g:link>
            </li>
            <!-- End Simple Item Without Drop -->

            <!-- Begin Item With Drop -->
            <li class="drop">
                <a href="#" onclick="return false;">${message(code: 'menu.dictionary')}</a>

                <!-- Begin Toggle Icon -->
                <span class="toggle">&nbsp;</span>
                <!-- End Toggle Icon -->

                <ul>
                    <li><g:link controller="serviceCategory" action="list">${message(code: 'submenu.categories')}</g:link></li>
                    <li><g:link controller="department" action="list">${message(code: 'submenu.departments')}</g:link></li>
                    <li><g:link controller="documentType" action="list">${message(code: 'submenu.document_types')}</g:link></li>
                    <li><g:link controller="lifeSituation" action="list">${message(code: 'submenu.life_situations')}</g:link></li>
                    <li><g:link controller="serviceReceiver" action="list">${message(code: 'submenu.service_receiver')}</g:link></li>
                    <li><g:link controller="serviceResult" action="list">${message(code: 'submenu.service_result')}</g:link></li>
                </ul>
            </li>
            <!-- End Item With Drop -->
        </ul>
    </div>
</div>