
<%@ page import="ru.mfc22.helper.domain.DocumentType" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="documents.list" default="Documents list" /></title>
	</head>
	<body>
		%{--<a href="#list-documentType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                    <li><g:link class="create" action="create"><g:message code="create.document" default="Create document" /></g:link></li>
			</ul>
		</div>
		<div id="list-documentType" class="content scaffold-list" role="main">
			<h1><g:message code="documents.list" default="Documents list" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="main-table">
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
						<g:sortableColumn property="note" title="${message(code: 'note', default: 'Note')}" />
						<g:sortableColumn property="original" title="${message(code: 'copy.original', default: 'Copy/Original')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentTypeInstanceList}" status="i" var="documentTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${documentTypeInstance.id}">${fieldValue(bean: documentTypeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: documentTypeInstance, field: "note")}</td>
					
						<td>
                            <g:if test="${documentTypeInstance.original == 1}">
                                <g:message code="original" default="Original" />
                            </g:if>
                            <g:else>
                                <g:message code="copy" default="Copy" />
                            </g:else>
                        </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
