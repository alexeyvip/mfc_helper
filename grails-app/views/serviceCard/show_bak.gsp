
<%@ page import="ru.mfc22.helper.domain.ServiceCard" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="service.card" default="Service card" /></title>
</head>
<body>
%{--<a href="#show-serviceCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
<div class="nav" role="navigation">
    <ul>
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        <li><g:link class="list" action="list"><g:message code="service.card.list" default="List service cards" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="create.service.card" default="Create service card" /></g:link></li>
    </ul>
</div>
<div id="show-serviceCard" class="content scaffold-show" role="main">
    <h1><g:message code="service.card" default="Service card" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>


    <table class="table-show">
        <tr>
            <td><g:message code="name" default="Name" /></td>
            <td><g:fieldValue bean="${serviceCardInstance}" field="name"/></td>
        </tr>
        <tr>
            <td><g:message code="shortname" default="Short name" /></td>
            <td><g:fieldValue bean="${serviceCardInstance}" field="shortName"/></td>
        </tr>
        <tr>
            <td><g:message code="amount" default="Amount" /></td>
            <td><g:fieldValue bean="${serviceCardInstance}" field="amount"/></td>
        </tr>
        <tr>
            <td><g:message code="department" default="Department" /></td>
            <td>
                <g:link controller="department" action="show" id="${serviceCardInstance?.department?.id}">${serviceCardInstance?.department?.encodeAsHTML()}</g:link>
            </td>
        </tr>
        <tr>
            <td><g:message code="document" default="Document" /></td>
            <td>
                <g:each in="${serviceCardInstance.documentTypes}" var="d">
                    <g:link controller="documentType" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link>
                </g:each>
            </td>
        </tr>
        <tr>
            <td><g:message code="lifesituation" default="Lifesituation" /></td>
            <td>
                <g:link controller="lifeSituation" action="show" id="${serviceCardInstance?.lifeSituation?.id}">${serviceCardInstance?.lifeSituation?.encodeAsHTML()}</g:link>
            </td>
        </tr>
        <tr>
            <td><g:message code="service.category" default="Service category" /></td>
            <td>
                <g:link controller="serviceCategory" action="show" id="${serviceCardInstance?.serviceCategory?.id}">${serviceCardInstance?.serviceCategory?.encodeAsHTML()}</g:link>
            </td>
        </tr>
        <tr>
            <td><g:message code="service.receiver" default="Service receiver" /></td>
            <td>
                <g:link controller="serviceReceiver" action="show" id="${serviceCardInstance?.serviceReceiver?.id}">${serviceCardInstance?.serviceReceiver?.encodeAsHTML()}</g:link>
            </td>
        </tr>
        <tr>
            <td><g:message code="service.result" default="Service result" /></td>
            <td>
                <g:each in="${serviceCardInstance.serviceResults}" var="s">
                    <g:link controller="serviceResult" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link>
                </g:each>
            </td>
        </tr>
    </table>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${serviceCardInstance?.id}" />
            <g:link class="edit" action="edit" id="${serviceCardInstance?.id}"><g:message code="edit" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', default: 'Delete')}" onclick="return confirm('${message(code: 'button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
