
<%@ page import="ru.mfc22.helper.domain.ServiceResult" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="service.result.list" default="List service result" /></title>
	</head>
	<body>
		%{--<a href="#list-serviceResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="create.service.result" default="Create service result" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceResult" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="main-table">
                <caption><g:message code="service.result.list" default="List service result" /></caption>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceResultInstanceList}" status="i" var="serviceResultInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serviceResultInstance.id}">${fieldValue(bean: serviceResultInstance, field: "name")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceResultInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
