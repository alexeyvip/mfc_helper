
<%@ page import="ru.mfc22.helper.domain.Department" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="create.new.department" /></g:link></li>
			</ul>
		</div>
		<div id="list-department" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="main-table" id="list_table">
                <caption><g:message code="department.list" /></caption>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'name')}"  />
						<g:sortableColumn property="shortName" title="${message(code: 'shortname')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${departmentInstanceList}" status="i" var="departmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" row_id="${departmentInstance.id}">
						<td><g:link action="show" id="${departmentInstance.id}">${fieldValue(bean: departmentInstance, field: "name")}</g:link></td>
						<td>${fieldValue(bean: departmentInstance, field: "shortName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${departmentInstanceTotal}" />
			</div>
		</div>
    %{--<jq:jquery>TableSelector.init('list_table');</jq:jquery>--}%
	</body>
</html>
