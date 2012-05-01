
<%@ page import="ru.mfc22.helper.domain.ServiceCard" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceCard.label', default: 'ServiceCard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-serviceCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-serviceCard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list serviceCard">
			
				<g:if test="${serviceCardInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="serviceCard.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${serviceCardInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.shortName}">
				<li class="fieldcontain">
					<span id="shortName-label" class="property-label"><g:message code="serviceCard.shortName.label" default="Short Name" /></span>
					
						<span class="property-value" aria-labelledby="shortName-label"><g:fieldValue bean="${serviceCardInstance}" field="shortName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="serviceCard.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${serviceCardInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="serviceCard.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:link controller="department" action="show" id="${serviceCardInstance?.department?.id}">${serviceCardInstance?.department?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.documentTypes}">
				<li class="fieldcontain">
					<span id="documentTypes-label" class="property-label"><g:message code="serviceCard.documentTypes.label" default="Document Types" /></span>
					
						<g:each in="${serviceCardInstance.documentTypes}" var="d">
						<span class="property-value" aria-labelledby="documentTypes-label"><g:link controller="documentType" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.lifeSituation}">
				<li class="fieldcontain">
					<span id="lifeSituation-label" class="property-label"><g:message code="serviceCard.lifeSituation.label" default="Life Situation" /></span>
					
						<span class="property-value" aria-labelledby="lifeSituation-label"><g:link controller="lifeSituation" action="show" id="${serviceCardInstance?.lifeSituation?.id}">${serviceCardInstance?.lifeSituation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.serviceCategory}">
				<li class="fieldcontain">
					<span id="serviceCategory-label" class="property-label"><g:message code="serviceCard.serviceCategory.label" default="Service Category" /></span>
					
						<span class="property-value" aria-labelledby="serviceCategory-label"><g:link controller="serviceCategory" action="show" id="${serviceCardInstance?.serviceCategory?.id}">${serviceCardInstance?.serviceCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.serviceReceiver}">
				<li class="fieldcontain">
					<span id="serviceReceiver-label" class="property-label"><g:message code="serviceCard.serviceReceiver.label" default="Service Receiver" /></span>
					
						<span class="property-value" aria-labelledby="serviceReceiver-label"><g:link controller="serviceReceiver" action="show" id="${serviceCardInstance?.serviceReceiver?.id}">${serviceCardInstance?.serviceReceiver?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCardInstance?.serviceResults}">
				<li class="fieldcontain">
					<span id="serviceResults-label" class="property-label"><g:message code="serviceCard.serviceResults.label" default="Service Results" /></span>
					
						<g:each in="${serviceCardInstance.serviceResults}" var="s">
						<span class="property-value" aria-labelledby="serviceResults-label"><g:link controller="serviceResult" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serviceCardInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceCardInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
