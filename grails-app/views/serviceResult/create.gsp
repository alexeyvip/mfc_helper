<%@ page import="ru.mfc22.helper.domain.ServiceResult" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="create.service.result" default="Create service result" /></title>
	</head>
	<body>
		%{--<a href="#create-serviceResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="service.result.list" default="List service results" /></g:link></li>
			</ul>
		</div>
		<div id="create-serviceResult" class="content scaffold-create" role="main">
			<h1><g:message code="create.service.result" default="Create service result" /></h1>
			<g:if test="${flash.message}">
    			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${serviceResultInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${serviceResultInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'create', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
