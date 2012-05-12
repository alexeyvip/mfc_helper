<%@ page import="ru.mfc22.helper.domain.ServiceResult" %>

<table class="table-form">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceResultInstance, field: 'name', 'error')} required">
                <label for="name">
                    <g:message code="serviceResult.name.label" default="Name" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:textField name="name" required="" value="${serviceResultInstance?.name}"/>
        </td>
    </tr>
</table>

<table class="table_service_cards">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceResultInstance, field: 'serviceCards', 'error')} ">
                <g:message code="using.in.service.cards" default="Using in service cards" />:
            </div>
        </td>
    </tr>
    <g:each in="${serviceResultInstance?.serviceCards?}" var="s">
        <tr>
            <td>
                <li><g:link controller="serviceCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
            </td>
        </tr>
    </g:each>
    <tr>
        <td>
            <li class="add">
                <g:link controller="serviceCard" action="create" params="['department.id': serviceResultInstance?.id]">${message(code: 'add.servicecard', default: 'Add ServiceCard')}</g:link>
            </li>
        </td>
    </tr>
</table>


