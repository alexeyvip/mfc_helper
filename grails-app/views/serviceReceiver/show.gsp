
<%@ page import="ru.mfc22.helper.domain.ServiceReceiver" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="service.receiver" default="Service receiver" /></title>
	</head>
	<body>
		%{--<a href="#show-serviceReceiver" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="service.receiver.list" default="List service receivers" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="create.service.receiver" default="Create service receiver" /></g:link></li>
			</ul>
		</div>
		<div id="show-serviceReceiver" class="content scaffold-show" role="main">
			<h1><g:message code="service.receiver" default="Service receiver" /></h1>
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>

            <table class="table-show">
                <tr>
                    <td><g:message code="name" default="Name" /></td>
                    <td><g:fieldValue bean="${serviceReceiverInstance}" field="name"/></td>
                </tr>
                <tr>
                    <td><g:message code="shortname" default="Short name" /></td>
                    <td><g:fieldValue bean="${serviceReceiverInstance}" field="shortName"/></td>
                </tr>
            </table>

            <table class="table_service_cards">
                <tr>
                    <td>
                        <g:message code="using.in.service.cards" default="Using in service cards" />:
                    </td>
                </tr>
                <g:if test="${serviceReceiverInstance?.serviceCards}">
                    <g:each in="${serviceReceiverInstance.serviceCards}" var="s">
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
					<g:hiddenField name="id" value="${serviceReceiverInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceReceiverInstance?.id}"><g:message code="edit" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', default: 'Delete')}" onclick="return confirm('${message(code: 'button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
