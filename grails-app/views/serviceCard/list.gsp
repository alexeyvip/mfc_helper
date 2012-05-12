
<%@ page import="ru.mfc22.helper.domain.ServiceCard" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="service.card.list" default="Service card list" /></title>
	</head>
	<body>
		%{--<a href="#list-serviceCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="create.service.card" default="Create service card" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceCard" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="main-table">
                <caption><g:message code="service.card.list" default="Service card list" /></caption>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
						<g:sortableColumn property="shortName" title="${message(code: 'shortname', default: 'Short Name')}" />
						<g:sortableColumn property="amount" title="${message(code: 'amount', default: 'Amount')}" />
						<th><g:message code="department" default="Department" /></th>
						<th><g:message code="lifesituation" default="Life Situation" /></th>
						<th><g:message code="service.category" default="Service Category" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceCardInstanceList}" status="i" var="serviceCardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serviceCardInstance.id}">${fieldValue(bean: serviceCardInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: serviceCardInstance, field: "shortName")}</td>
					
						<td>${fieldValue(bean: serviceCardInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: serviceCardInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: serviceCardInstance, field: "lifeSituation")}</td>
					
						<td>${fieldValue(bean: serviceCardInstance, field: "serviceCategory")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceCardInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
