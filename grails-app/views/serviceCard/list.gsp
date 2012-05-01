
<%@ page import="ru.mfc22.helper.domain.ServiceCard" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceCard.label', default: 'ServiceCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serviceCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceCard" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'serviceCard.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="shortName" title="${message(code: 'serviceCard.shortName.label', default: 'Short Name')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'serviceCard.amount.label', default: 'Amount')}" />
					
						<th><g:message code="serviceCard.department.label" default="Department" /></th>
					
						<th><g:message code="serviceCard.lifeSituation.label" default="Life Situation" /></th>
					
						<th><g:message code="serviceCard.serviceCategory.label" default="Service Category" /></th>
					
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
