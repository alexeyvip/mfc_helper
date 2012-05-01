<%@ page import="ru.mfc22.helper.domain.ServiceCard" %>



<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="serviceCard.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${serviceCardInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'shortName', 'error')} required">
	<label for="shortName">
		<g:message code="serviceCard.shortName.label" default="Short Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortName" required="" value="${serviceCardInstance?.shortName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'amount', 'error')} ">
	<label for="amount">
		<g:message code="serviceCard.amount.label" default="Amount" />
		
	</label>
	<g:textField name="amount" value="${serviceCardInstance?.amount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="serviceCard.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${ru.mfc22.helper.domain.Department.list()}" optionKey="id" required="" value="${serviceCardInstance?.department?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'documentTypes', 'error')} ">
	<label for="documentTypes">
		<g:message code="serviceCard.documentTypes.label" default="Document Types" />
		
	</label>
	<g:select name="documentTypes" from="${ru.mfc22.helper.domain.DocumentType.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCardInstance?.documentTypes*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'lifeSituation', 'error')} required">
	<label for="lifeSituation">
		<g:message code="serviceCard.lifeSituation.label" default="Life Situation" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lifeSituation" name="lifeSituation.id" from="${ru.mfc22.helper.domain.LifeSituation.list()}" optionKey="id" required="" value="${serviceCardInstance?.lifeSituation?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'serviceCategory', 'error')} required">
	<label for="serviceCategory">
		<g:message code="serviceCard.serviceCategory.label" default="Service Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="serviceCategory" name="serviceCategory.id" from="${ru.mfc22.helper.domain.ServiceCategory.list()}" optionKey="id" required="" value="${serviceCardInstance?.serviceCategory?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'serviceReceiver', 'error')} required">
	<label for="serviceReceiver">
		<g:message code="serviceCard.serviceReceiver.label" default="Service Receiver" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="serviceReceiver" name="serviceReceiver.id" from="${ru.mfc22.helper.domain.ServiceReceiver.list()}" optionKey="id" required="" value="${serviceCardInstance?.serviceReceiver?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCardInstance, field: 'serviceResults', 'error')} ">
	<label for="serviceResults">
		<g:message code="serviceCard.serviceResults.label" default="Service Results" />
		
	</label>
	<g:select name="serviceResults" from="${ru.mfc22.helper.domain.ServiceResult.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCardInstance?.serviceResults*.id}" class="many-to-many"/>
</div>

