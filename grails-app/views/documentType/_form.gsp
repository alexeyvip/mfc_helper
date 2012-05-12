<%@ page import="ru.mfc22.helper.domain.DocumentType" %>

<table class="table-form">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'name', 'error')} required">
                <label for="name">
                    <g:message code="name" default="Name" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:textField name="name" required="" value="${documentTypeInstance?.name}"/>
        </td>
    </tr>

    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'note', 'error')} ">
                <label for="note">
                    <g:message code="note" default="Note" />

                </label>
            </div>
        </td>
        <td>
            <g:textField name="note" value="${documentTypeInstance?.note}"/>
        </td>
    </tr>

    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'original', 'error')} required">
                <label for="original">
                    <g:message code="original" default="Original" />?
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:field type="number" name="original" min="0" max="1" required="" value="${fieldValue(bean: documentTypeInstance, field: 'original')}"/>
        </td>
    </tr>
</table>


    <%--<table class="table_service_cards">
        <tr>
            <td>
                <div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'serviceCards', 'error')} ">
                    <g:message code="using.in.service.cards" default="Using in service cards" />:
                </div>
            </td>
        </tr>
        <g:each in="${documentTypeInstance?.serviceCards?}" var="s">
            <tr>
                <td>
                    <li><g:link controller="serviceCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
                </td>
            </tr>
        </g:each>
        <tr>
            <td>
                <li class="add">
                    <g:link controller="serviceCard" action="create">${message(code: 'add.servicecard', default: 'Add ServiceCard')}</g:link>
                </li>
            </td>
        </tr>
    </table>--%>

</div>

