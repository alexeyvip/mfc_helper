<%@ page import="ru.mfc22.helper.domain.Department" %>



<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="department.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${departmentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'serviceCards', 'error')} ">
	<label for="serviceCards">
		<g:message code="department.serviceCards.label" default="Service Cards" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${departmentInstance?.serviceCards?}" var="s">
    <li><g:link controller="serviceCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="serviceCard" action="create" params="['department.id': departmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'serviceCard.label', default: 'ServiceCard')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="department.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" value="${departmentInstance?.shortName}"/>
</div>

