<%@ page import="ru.mfc22.helper.domain.ServiceCategory" %>

<table class="table-form">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCategoryInstance, field: 'name', 'error')} required">
                <label for="name">
                    <g:message code="serviceCategory.name.label" default="Name" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:textField name="name" required="" value="${serviceCategoryInstance?.name}"/>
        </td>
    </tr>
</table>


<table class="table_service_cards">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCategoryInstance, field: 'serviceCards', 'error')} ">
                <g:message code="using.in.service.cards" default="Using in service cards" />:
            </div>
        </td>
    </tr>
    <g:each in="${serviceCategoryInstance?.serviceCards?}" var="s">
        <tr>
            <td>
                <li><g:link controller="serviceCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
            </td>
        </tr>
    </g:each>
    <tr>
        <td>
            <li class="add">
                <g:link controller="serviceCard" action="create" params="['department.id': serviceCategory?.id]">${message(code: 'add.servicecard', default: 'Add ServiceCard')}</g:link>
            </li>
        </td>
    </tr>
</table>
