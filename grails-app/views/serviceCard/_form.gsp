<%@ page import="ru.mfc22.helper.domain.ServiceCard" %>

<table class="table-form">
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'serviceCategory', 'error')} required">
                <label for="serviceCategory">
                    <g:message code="service.category" default="Service Category" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:select id="serviceCategory" name="serviceCategory.id" from="${ru.mfc22.helper.domain.ServiceCategory.list()}" optionKey="id" required="" value="${serviceCardInstance?.serviceCategory?.id}" class="many-to-one"/>
        </td>
   </tr>
   <tr>
       <td>
           <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'name', 'error')} required">
               <label for="name">
                   <g:message code="name" default="Name" />
                   <span class="required-indicator">*</span>
               </label>
           </div>
       </td>
       <td>
           <g:textField name="name" required="" value="${serviceCardInstance?.name}"/>
       </td>
   </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'shortName', 'error')} required">
                <label for="shortName">
                    <g:message code="shortname" default="Short Name" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:textField name="shortName" required="" value="${serviceCardInstance?.shortName}"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'amount', 'error')} ">
                <label for="amount">
                    <g:message code="amount" default="Amount" />

                </label>
            </div>
        </td>
        <td>
            <g:textField name="amount" value="${serviceCardInstance?.amount}"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'department', 'error')} required">
                <label for="department">
                    <g:message code="department" default="Department" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:select id="department" name="department.id" from="${ru.mfc22.helper.domain.Department.list()}" optionKey="id" required="" value="${serviceCardInstance?.department?.id}" class="many-to-one"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'documentTypes', 'error')} ">
                <label for="documentTypes">
                    <g:message code="document" default="Document Types" />

                </label>
            </div>
        </td>
        <td>
            <g:select name="documentTypes" from="${ru.mfc22.helper.domain.DocumentType.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCardInstance?.documentTypes*.id}" class="many-to-many"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'lifeSituation', 'error')} required">
                <label for="lifeSituation">
                    <g:message code="lifesituation" default="Life Situation" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:select id="lifeSituation" name="lifeSituation.id" from="${ru.mfc22.helper.domain.LifeSituation.list()}" optionKey="id" required="" value="${serviceCardInstance?.lifeSituation?.id}" class="many-to-one"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'serviceReceiver', 'error')} required">
                <label for="serviceReceiver">
                    <g:message code="service.result" default="Service Receiver" />
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </td>
        <td>
            <g:select id="serviceReceiver" name="serviceReceiver.id" from="${ru.mfc22.helper.domain.ServiceReceiver.list()}" optionKey="id" required="" value="${serviceCardInstance?.serviceReceiver?.id}" class="many-to-one"/>
        </td>
    </tr>
    <tr>
        <td>
            <div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'serviceResults', 'error')} ">
                <label for="serviceResults">
                    <g:message code="service.result" default="Service Results" />
                </label>
            </div>
        </td>
        <td>
            <g:select name="serviceResults" from="${ru.mfc22.helper.domain.ServiceResult.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCardInstance?.serviceResults*.id}" class="many-to-many"/>
        </td>
    </tr>
</table>

