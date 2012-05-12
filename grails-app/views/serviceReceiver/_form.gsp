<%@ page import="ru.mfc22.helper.domain.ServiceReceiver" %>

<table class="table-form">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceReceiverInstance, field: 'name', 'error')} required">
                <label for="name">
                    <g:message code="name" default="Name" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:textField name="name" required="" value="${serviceReceiverInstance?.name}"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceReceiverInstance, field: 'shortName', 'error')} required">
                <label for="shortName">
                    <g:message code="serviceReceiver.shortName.label" default="Short Name" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:textField name="shortName" required="" value="${serviceReceiverInstance?.shortName}"/>
        </td>
    </tr>
</table>


<table class="table_service_cards">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceReceiverInstance, field: 'serviceCards', 'error')} ">
                <g:message code="using.in.service.cards" default="Using in service cards" />:
            </div>
        </td>
    </tr>
    <g:each in="${serviceReceiverInstance?.serviceCards?}" var="s">
        <tr>
            <td>
                <li><g:link controller="serviceCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
            </td>
        </tr>
    </g:each>
    <tr>
        <td>
            <li class="add">
                <g:link controller="serviceCard" action="create" params="['department.id': serviceReceiverInstance?.id]">${message(code: 'add.servicecard', default: 'Add ServiceCard')}</g:link>
            </li>
        </td>
    </tr>
</table>


