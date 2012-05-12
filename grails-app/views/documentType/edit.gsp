<%@ page import="ru.mfc22.helper.domain.DocumentType" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="edit.document" default="Edit document" /></title>
	</head>
	<body>
		%{--<a href="#edit-documentType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="documents.list" default="Documents list" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="create.document" default="Create document" /></g:link></li>
			</ul>
		</div>
		<div id="edit-documentType" class="content scaffold-edit" role="main">
			<h1><g:message code="edit.document" default="Edit document" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${documentTypeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${documentTypeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${documentTypeInstance?.id}" />
				<g:hiddenField name="version" value="${documentTypeInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'update', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
