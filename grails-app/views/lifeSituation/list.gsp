
<%@ page import="ru.mfc22.helper.domain.LifeSituation" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="lifesituation.list" default="List life situations" /></title>
	</head>
	<body>
		%{--<a href="#list-lifeSituation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="create.lifesituation" default="Create life situation" /></g:link></li>
			</ul>
		</div>
		<div id="list-lifeSituation" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="main-table">
                <caption><g:message code="lifesituation.list" /></caption>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${lifeSituationInstanceList}" status="i" var="lifeSituationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${lifeSituationInstance.id}">${fieldValue(bean: lifeSituationInstance, field: "name")}</g:link></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lifeSituationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
