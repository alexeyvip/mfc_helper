
<%@ page import="ru.mfc22.helper.domain.ServiceResult" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="service.result" default="Service result" /></title>
	</head>
	<body>
		%{--<a href="#show-serviceResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="service.result.list" default="List service results" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="create.service.result" default="Create service result" /></g:link></li>
			</ul>
		</div>
		<div id="show-serviceResult" class="content scaffold-show" role="main">
			<h1><g:message code="service.result" default="Service result" /></h1>
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>


            <table class="table-show">
                <tr>
                    <td><g:message code="name" default="Name" /></td>
                    <td><g:fieldValue bean="${serviceResultInstance}" field="name"/></td>
                </tr>
            </table>


            <table class="table_service_cards">
                <tr>
                    <td>
                        <g:message code="using.in.service.cards" default="Using in service cards" />:
                    </td>
                </tr>
                <g:if test="${serviceResultInstance?.serviceCards}">
                    <g:each in="${serviceResultInstance.serviceCards}" var="s">
                        <tr>
                            <td>
                                <g:link controller="serviceCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link>
                            </td>
                        </tr>
                    </g:each>
                </g:if>
                <g:else>
                    <tr>
                        <td>
                            <g:message code="not.used" default="Not used" />
                        </td>
                    </tr>
                </g:else>
            </table>

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serviceResultInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceResultInstance?.id}"><g:message code="edit" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', default: 'Delete')}" onclick="return confirm('${message(code: 'button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
