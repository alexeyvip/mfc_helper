
<%@ page import="ru.mfc22.helper.domain.ServiceCategory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="service.category.list" default="List service categories" /></title>
	</head>
	<body>
		%{--<a href="#list-serviceCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="create.service.category" default="Create service category" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceCategory" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
    			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="main-table" id="list_table">
                <caption><g:message code="service.category.list" /></caption>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'serviceCategory.name.label', default: 'Name')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceCategoryInstanceList}" status="i" var="serviceCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serviceCategoryInstance.id}">${fieldValue(bean: serviceCategoryInstance, field: "name")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
