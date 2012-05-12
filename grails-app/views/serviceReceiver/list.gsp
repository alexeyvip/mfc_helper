
<%@ page import="ru.mfc22.helper.domain.ServiceReceiver" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="service.receiver.list" default="List service receivers" /></title>
	</head>
	<body>
		%{--<a href="#list-serviceReceiver" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="create.service.receiver" default="Create servie receiver" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceReceiver" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="main-table">
                <caption><g:message code="service.receiver.list" default="List service receivers" /></caption>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
						<g:sortableColumn property="shortName" title="${message(code: 'shortname', default: 'Short Name')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceReceiverInstanceList}" status="i" var="serviceReceiverInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${serviceReceiverInstance.id}">${fieldValue(bean: serviceReceiverInstance, field: "name")}</g:link></td>
						<td>${fieldValue(bean: serviceReceiverInstance, field: "shortName")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceReceiverInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
